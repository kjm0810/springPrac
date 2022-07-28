package com.board.dao;
import java.util.List;
import com.board.domain.BoardVO;
public interface boardDAO {
	public List<BoardVO> list();//조회
	public void write(BoardVO vo);//작성
	public BoardVO detail(int no);//상세보기
	public void update(BoardVO vo);//수정하기
	public void delete(int no);//삭제하기
}