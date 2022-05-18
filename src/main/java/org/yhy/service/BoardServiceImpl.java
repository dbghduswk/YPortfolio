package org.yhy.service;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yhy.dao.BoardDao;
import org.yhy.model.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	BoardDao bdao;
	public void write(BoardDTO bdto) {
		bdao.write(bdto);
	}
	public ArrayList<BoardDTO> list(){
		return bdao.list();
	}
	public BoardDTO detail(int bno) {
		return bdao.detail(bno);
	}
	public void modify(BoardDTO bdto) {
		bdao.modify(bdto);
	}
	
	public void remove(int bno) {
		bdao.remove(bno);
	}
}
