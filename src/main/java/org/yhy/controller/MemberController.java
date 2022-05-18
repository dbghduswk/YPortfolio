package org.yhy.controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.yhy.dao.MemberDao;
import org.yhy.model.MemberDTO;


@Controller
public class MemberController {
	@Autowired
	MemberDao mdao;
	
	
	@RequestMapping(value="/member/join", method=RequestMethod.GET)
	public void memberGet(){
		
	}
	
	@RequestMapping(value="/member/join", method=RequestMethod.POST)
	public String memberPost(MemberDTO mdto) {
		mdao.MemberInsert(mdto);
		return "redirect:/member/login";
	}

	
}
