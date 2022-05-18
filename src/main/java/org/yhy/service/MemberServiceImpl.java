package org.yhy.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yhy.dao.MemberDao;
import org.yhy.model.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDao mdao;
	
	public boolean Memberlogin(MemberDTO mdto, HttpSession session) {
		MemberDTO login = mdao.Memberlogin(mdto);
		boolean result=false;
		
		if(login!=null) {
			System.out.println("세션 값");
			session.setAttribute("login", login);
			System.out.println("세션 값 = " + session.getAttribute("login"));
			result=true;
		}
		return result;
	}
	
}
