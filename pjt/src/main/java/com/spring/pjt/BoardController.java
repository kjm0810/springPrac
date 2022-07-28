package com.spring.pjt;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.board.domain.BoardVO;
import com.board.service.boardService;
@Controller
@RequestMapping("/board/*")
public class BoardController {
	@Inject
	private boardService service;	
    @RequestMapping(value="/list", method=RequestMethod.GET)
    public String getList(Model model) throws Exception{
        List<BoardVO> list = service.list();
        model.addAttribute("list", list);
        //board/list.jsp로 포워딩
        return "board/list";
    }

    @RequestMapping(value = "/write", method = RequestMethod.GET)
    public String getwrite() throws Exception{
    	return "board/write";
    }
    // 게시물 작성 post
    @RequestMapping(value = "/write", method = RequestMethod.POST)
    public String postwrite(BoardVO vo) throws Exception {
    	service.write(vo);
       return "redirect:list";
    }
 // 게시물 상세 페이지로 이동
    @RequestMapping(value = "/detail", method = RequestMethod.GET)
    public String getdetail(Model model, int no) {
    	BoardVO data = service.detail(no);//no값 넘김
    	model.addAttribute("data",data);
       return "board/detail";
    }
    // 게시물 수정 페이지로 이동
    @RequestMapping(value = "/update", method = RequestMethod.GET)
    public String getupdate(int no, Model model) throws Exception {
    	BoardVO data = service.detail(no);
    	model.addAttribute("data", data);
       return "board/update";
    }
    // 게시글 수정 post
    @RequestMapping(value="/update", method=RequestMethod.POST)
    public String postupdate(BoardVO vo) throws Exception {
        service.update(vo);
        return "redirect:list"; // 리스트로 리다이렉트
    }    
    //게시물 삭제
    @RequestMapping(value = "/delete",method = RequestMethod.GET)
    public String postdelete(int no)throws Exception{
    	service.delete(no);
    	return "redirect:list";
    }
    
    @RequestMapping(value="/login", method=RequestMethod.GET)
    public String getlogin(Model model) throws Exception{        
        //board/list.jsp로 포워딩
        return "board/login";
    }
    
}