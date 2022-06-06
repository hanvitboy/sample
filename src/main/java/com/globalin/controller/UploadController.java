 package com.globalin.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.junit.jupiter.params.shadow.com.univocity.parsers.annotations.Headers;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.globalin.domain.AttachFileVO;

import net.coobird.thumbnailator.Thumbnailator;

@Controller
public class UploadController {
	
	private static Logger log = LoggerFactory.getLogger(UploadController.class); 
	
	@GetMapping("/uploadForm")
	public void uploadForm() {
		log.info("upload form");
	}
	
	@PostMapping("/uploadFormAction")
	public void uploadFormPost(MultipartFile[] uploadFile, Model model) {
		try {
			for(MultipartFile file : uploadFile) {
				log.info("-------------------------");
				log.info("upload File Name : " + file.getOriginalFilename());
				log.info("upload File Size : " + file.getSize());
				log.info(file.getName());
				
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
		log.info("upload ajax");
	}

	
	
	@PostMapping(value = "/uploadAjaxAction", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<AttachFileVO>> uploadAjaxPost(MultipartFile[] uploadFile)
	{
		List<AttachFileVO> list = new ArrayList<AttachFileVO>();
		String uploadFolder = "c:\\tmp";
		
		String uploadFolderPath = getFolder();
		//폴더 만들기
		File uploadPath = new File(uploadFolder,getFolder());
		log.info("upload path : " + uploadPath);
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		for(MultipartFile file : uploadFile) {
			log.info("------------");
			log.info("파일 이름 : " + file.getOriginalFilename());
			log.info("파일 크기 : " + file.getSize());
			
			AttachFileVO attachVO = new AttachFileVO();			
			
			String uploadFileName = file.getOriginalFilename();
			
			// file path
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
			log.info("only file name : " + uploadFileName);
			attachVO.setFileName(uploadFileName);
			
			UUID uuid = UUID.randomUUID();
			uploadFileName = uuid.toString() + "_" + uploadFileName;
			//파일 저장
			
			try {
				File savefile = new File(uploadPath,uploadFileName);
				file.transferTo(savefile);
				attachVO.setUuid(uuid.toString());
				attachVO.setUploadPath(uploadFolderPath);
				
				//image파일인지 확인
				if(checkImageType(savefile)) {
					attachVO.setImage(true);
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath,"s_"+uploadFileName));
					Thumbnailator.createThumbnail(file.getInputStream(),thumbnail,100,100);
				}
				list.add(attachVO);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
				
			}//end catch
		}//end for
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
		log.info("fileName : " + fileName);
		File file = new File("C:\\tmp" + fileName);
		log.info("file : " + file);
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
	public ResponseEntity<Resource> downloadFile(String fileName){
		Resource resource = new FileSystemResource("c:\\tmp\\" + fileName);
		if(resource.exists() == false) {
			return new ResponseEntity<Resource>(HttpStatus.NOT_FOUND);
		}
		String resourceName = resource.getFilename();
		
		//uuid 제거
		String resourceOriginalName = resourceName.substring(resourceName.indexOf("_")+1);
		HttpHeaders header = new HttpHeaders();
		
		try {
			String downloadName = null;
			downloadName = URLEncoder.encode(resourceOriginalName,"UTF-8");
			header.add("Content-Disposition", "attachment; filename="+new String(downloadName.getBytes("UTF-8"),"ISO-8859-1"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return new ResponseEntity<Resource>(resource,header,HttpStatus.OK);
	}
	
	
	
	
}