package org.yhy.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.yhy.model.MemberDTO;
import org.yhy.service.MemberService;

@Controller
public class loginController {
	@Autowired
	MemberService mservice;

	
	@RequestMapping(value="board/site", method=RequestMethod.GET)
	public void getsite() {}
	
	@RequestMapping(value="/member/login", method=RequestMethod.GET)
	public void getLogin() {}
	
	@RequestMapping(value="/member/login", method=RequestMethod.POST)
	public String postLogin(MemberDTO mdto, HttpSession session) {
		boolean result = mservice.Memberlogin(mdto, session);
		System.out.println("result="+result);
		if(result) {
			System.out.println("로그인 성공!");
			return "redirect:/board/site";
		}else {
			System.out.println("로그인 실패!");
			return "redirect:/member/login";
		}
	}
	@RequestMapping(value="/member/logout", method=RequestMethod.GET)
	public String logoutGet(HttpSession session) {
		System.out.println("로그아웃!");
		session.invalidate();
		return "redirect:/board/site";
	}

		

}	
	
