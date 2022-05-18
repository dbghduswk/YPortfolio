package org.yhy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.yhy.model.BoardDTO;
import org.yhy.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService bservice;
	// 글쓰기화면
	@RequestMapping(value="board/write", method = RequestMethod.GET)
	public String getwrite() {
		return "/board/write";
	}
	// 글쓰기 실행
	@RequestMapping(value="board/write", method = RequestMethod.POST)
	public String postList(BoardDTO bdto) {
		System.out.println(bdto);
		bservice.write(bdto);
		return "redirect:/board/list";
	}
	// 리스트 화면
	@RequestMapping(value="board/list", method=RequestMethod.GET)
	public String boardLisrGet(Model model) {
		model.addAttribute("list", bservice.list());
		return "board/list";
	}
	
	// 게시글 화면
	@RequestMapping(value="board/detail", method=RequestMethod.GET)
	public String boardDetailGet(Model model,int bno) {
		model.addAttribute("bdetail",bservice.detail(bno));
		return "board/detail";
	}
	// 게시글 수정 화면
	@RequestMapping(value="board/modify", method=RequestMethod.GET)
	public String modifyGet(Model model, int bno) {
		model.addAttribute("modify",bservice.detail(bno));
		return "board/modify";
	}
	// 게시글 수정 실행
	@RequestMapping(value="/board/modify", method=RequestMethod.POST)
	public String modifyPost(BoardDTO bdto) {
		bservice.modify(bdto);
		return "redirect:/board/detail?bno=" + bdto.getBno();
	}
	@RequestMapping(value="board/remove", method=RequestMethod.GET)
	public String removeGet(int bno) {
		bservice.remove(bno);
		return "redirect:/board/list";
	}
}
