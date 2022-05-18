package org.yhy.service;

import java.util.ArrayList;

import org.yhy.model.ReplyDTO;

public interface ReplyService {
	public int add(ReplyDTO rdto);
	public ArrayList<ReplyDTO> list(int bno);
	public ReplyDTO detail(int rno);
	public int modify(ReplyDTO rdto);
	public int remove(int rno);
}
