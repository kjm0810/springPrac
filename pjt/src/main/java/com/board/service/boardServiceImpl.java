package com.board.service;
import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.board.dao.boardDAO;
import com.board.domain.BoardVO;
@Service
public class boardServiceImpl implements boardService {
	 @Inject
	 private boardDAO dao;
	 
	 // 회원 목록
	 @Override
	 public List<BoardVO> list() {
	     return dao.list();
	 }
	 @Override
	 public void write(BoardVO vo) {
		 dao.write(vo);
	 }
	 //상세보기
	 @Override
	 public BoardVO detail(int no) {
		 return dao.detail(no);
	 }
	 //수정하기
	 @Override
	 public void update(BoardVO vo) {
		 dao.update(vo);
	 }
	 //삭제하기
	 @Override
	 public void delete(int no) {
		 dao.delete(no);
	 }
}
