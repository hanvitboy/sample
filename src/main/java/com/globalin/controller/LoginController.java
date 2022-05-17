package com.globalin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.globalin.domain.MemberVO;
import com.globalin.service.MemberServiceImpl;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

    @Autowired
    private MemberServiceImpl memberServiceImpl;

    @RequestMapping(value = "/Login", method = RequestMethod.GET)
    public String LoginPage() {
        return "home";
    }

    @RequestMapping(value = "/Login", method = RequestMethod.POST)
    public String Login(@RequestParam("id") String id
                       , @RequestParam("password") String pw) throws Exception {

        String path = "";

        MemberVO vo = new MemberVO();

        vo.setId(id);
        vo.setPw(pw);

        int result = memberServiceImpl.Login(vo);

        if(result == 1) {
            path = "home";
        } else {
            path = "loginpage";
        }

        return path;

    }

}
