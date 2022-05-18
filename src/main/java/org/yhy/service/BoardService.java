package org.yhy.service;

import java.util.ArrayList;

import org.yhy.model.BoardDTO;

public interface BoardService {
	public void write(BoardDTO bdto);
	
	public ArrayList<BoardDTO> list();
	
	public BoardDTO detail(int bno);
	
	public void modify(BoardDTO bdto);
	
	public void remove(int bno);
}
