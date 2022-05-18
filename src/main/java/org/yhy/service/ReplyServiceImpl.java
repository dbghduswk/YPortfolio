package org.yhy.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yhy.dao.ReplyDao;
import org.yhy.model.ReplyDTO;

@Service
public class ReplyServiceImpl implements ReplyService{
	@Autowired
	ReplyDao rdao;
	public int add(ReplyDTO rdto) {
		return rdao.add(rdto);
	}
	public ArrayList<ReplyDTO> list(int bno){
		return rdao.list(bno);
	}
	public ReplyDTO detail(int rno) {
		return rdao.detail(rno);
	}
	public int modify(ReplyDTO rdto) {
		return rdao.modify(rdto);
	}
	public int remove(int rno) {
		return rdao.remove(rno);
	}
}
