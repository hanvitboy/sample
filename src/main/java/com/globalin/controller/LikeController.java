package com.globalin.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.globalin.domain.LikeVO;
import com.globalin.service.LikeService;

@Controller
@RequestMapping("/like/*")
public class LikeController {
	
	@Autowired
	private LikeService likeservice;
	
	private static final Logger logger = LoggerFactory.getLogger(LikeController.class);
	
	@PostMapping("/likeupdate")
	public Map<String,String> likeupdate(@RequestBody LikeVO likebean){
		logger.info("likeupdate");
		
		Map<String,String> map = new HashMap<String, String>();
		
		logger.info(likebean.toString());
		
		try {
			likeservice.likeupdate(likebean);
			map.put("result", "success");
			
		}catch(Exception e) {
			e.printStackTrace();
			map.put("result", "fail");
		}
		
		return map;
	}


}
