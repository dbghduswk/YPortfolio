package org.yhy.service;

import javax.servlet.http.HttpSession;

import org.yhy.model.MemberDTO;

public interface MemberService {
	public boolean Memberlogin(MemberDTO mdto, HttpSession session);
	
}
