package com.board.dao;
import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.board.domain.BoardVO;
@Repository
public class boardDAOImpl implements boardDAO {
	 @Inject
	 private SqlSession sql;
	 
	 private static String namespace = "com.test_spring.mappers.board";
	// 게시물 목록
	 @Override
	 public List<BoardVO> list() {
	     return sql.selectList(namespace + ".list");
	 }
	 //게시물 등록
	 @Override
	 public void write(BoardVO vo) {
		 sql.insert(namespace + ".write", vo);
	 }
	 //상세보기
	 @Override
	 public BoardVO detail(int no) {
		 return sql.selectOne(namespace +".detail",no);
	 }
	 //수정
	 @Override
	 public void update(BoardVO vo) {
		 sql.update(namespace +".update",vo);
	 }
	 //삭제
	 @Override
	 public void delete(int no) {
		 sql.delete(namespace +".delete",no);
	 }
}