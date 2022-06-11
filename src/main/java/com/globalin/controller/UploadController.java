 package com.globalin.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.globalin.domain.AttachFileVO;
import com.globalin.domain.BoardVO;
import com.globalin.service.BoardAttachService;
import com.globalin.service.BoardService;

import net.coobird.thumbnailator.Thumbnailator;

@Controller
public class UploadController {
	
	private static Logger log = LoggerFactory.getLogger(UploadController.class); 
	@Autowired
	private BoardAttachService bas;
	@Autowired
	private BoardService service;
	
	@PostMapping("/board/register")
	public String register(BoardVO board, RedirectAttributes rttr, HttpServletRequest req, HttpServletResponse resp) throws UnsupportedEncodingException {
		req.setCharacterEncoding("UTF-8");
		
		
		return null;
		//service.register(board);
//		rttr.addFlashAttribute("result", "regist success");
//		return "redirect:/board/boardpage";
		
	}	
	
	
	
	@GetMapping("/uploadForm")
	public void uploadForm() {
	}
	
	@PostMapping("/uploadFormAction")
	public void uploadFormPost(MultipartFile[] uploadFile, Model model) {
		try {
			for(MultipartFile file : uploadFile) {
				
				String uploadPath = "C:\\tmp";
				File saveFile = new File(uploadPath, file.getOriginalFilename());
				file.transferTo(saveFile);

			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	@GetMapping("/uploadAjax")
	public void uploadAjax() {
	}

	
	
	@PostMapping(value = "/uploadAjaxAction", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<AttachFileVO>> uploadAjaxPost(MultipartFile[] uploadFile, String writer, String content, String title)
	{
		List<AttachFileVO> list = new ArrayList<AttachFileVO>();
		String uploadFolder = "c:\\tmp";
		
		//게시판 insert
		BoardVO board = new BoardVO();
		
		board.setWriter(writer);
		board.setContent(content);
		board.setTitle(title);
		
		int bno = service.register(board);
		
		
		String uploadFolderPath = getFolder();
		//폴더 만들기
		File uploadPath = new File(uploadFolder, getFolder());
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		List<String> uuid_list = new ArrayList<String>();
		
		for(MultipartFile file : uploadFile) {
			
			
			AttachFileVO attachVO = new AttachFileVO();			
			
			attachVO.setBno(board.getBno());
			
			String uploadFileName = file.getOriginalFilename();
			
			// file path
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
			attachVO.setFileName(uploadFileName);
			
			UUID uuid = UUID.randomUUID();
			uploadFileName = uuid.toString() + "_" + uploadFileName;
			//파일 저장
		
			try {
				File savefile = new File(uploadPath,uploadFileName);
				file.transferTo(savefile);
				attachVO.setUuid(uuid.toString());
				attachVO.setUploadPath(uploadPath.toString());
				
				//image파일인지 확인
				if(checkImageType(savefile)) {
					attachVO.setFileType(true);
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath,"s_"+uploadFileName));
					Thumbnailator.createThumbnail(file.getInputStream(),thumbnail,100,100);
					thumbnail.close();
				}
				bas.insert(attachVO);
				list.add(attachVO);
				//데이라베이스 업로드
				uuid_list.add(attachVO.getUuid());
				
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
				
			}//end catch
		}//end for
		
		
		

		
		//rttr.addFlashAttribute("result", "regist success");
		//return "redirect:/board/boardpage";
		
		return new ResponseEntity<List<AttachFileVO>>(list,HttpStatus.OK);
		
	}
	
	private boolean checkImageType(File file) {
		try {
			String contentType = Files.probeContentType(file.toPath());
			return contentType.startsWith("image");
		}catch(IOException e) {
			e.printStackTrace();
		}
		return false;
	}
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);
				
	}
	//썸네일 가져오기
	@GetMapping("/display")
	@ResponseBody
	public ResponseEntity<byte[]>getFile(String fileName){
		File file = new File(fileName);
		ResponseEntity<byte[]> result = null;
		
		try {
			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<byte[]>(FileCopyUtils.copyToByteArray(file),headers,HttpStatus.OK);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		return result;
		
	}
	
	//파일 다운로드
	@GetMapping(value="/download", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
	@ResponseBody
	public ResponseEntity<Resource> downloadFile(@RequestHeader("user-Agent") String userAgent, String fileName){
		Resource resource = new FileSystemResource(fileName);
		if(resource.exists() == false) {
			return new ResponseEntity<Resource>(HttpStatus.NOT_FOUND);
		}
		String resourceName = resource.getFilename();
		
		//uuid 제거
		String resourceOriginalName = resourceName.substring(resourceName.indexOf("_")+1);
		HttpHeaders header = new HttpHeaders();
		
		try {
			String downloadName = null;
			if(userAgent.contains("Trident")) {
				downloadName = URLEncoder.encode(resourceOriginalName,"UTF-8").replaceAll("\\", " ");
			}else if(userAgent.contains("Edge")) {
				downloadName = URLEncoder.encode(resourceOriginalName,"UTF-8");
			}else {
				downloadName = new String(resourceOriginalName.getBytes("UTF-8"),"ISO-8859-1");
		}
			header.add("Content-Disposition", "attachment; filename="+downloadName);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return new ResponseEntity<Resource>(resource,header,HttpStatus.OK);
	}
	
	@PostMapping("/deleteFile")
	@ResponseBody
	public ResponseEntity<String> deleteFile(String fileName,String type){
		File file;
		try {
			file = new File(URLDecoder.decode(fileName,"UTF-8"));
			if(type.equals("image")) {
				String largeFileName = file.getAbsolutePath().replace("s_", "");
				file = new File(largeFileName);
				file.delete();
			}
		}catch(UnsupportedEncodingException e) {
			e.printStackTrace();
			return new ResponseEntity<String>(HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity<String>(HttpStatus.OK);	
	
	}
}