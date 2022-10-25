package com.yedam.java.book.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.yedam.java.book.service.BookService;
import com.yedam.java.book.service.BookVO;

@Controller
public class BookController {
	
	@Autowired
	BookService service;
//	1.도서목록조회
	@GetMapping("booklist")
	public String selectBookList(Model model) {
		model.addAttribute("list", service.selectBookList());
		return "book/list";
	}
	
	//2.도서등록 페이지 이동 + 현재 등록 될 예상되는 번호를 같이 보내줘야하므로 model클래스 사용 필요
	@GetMapping("bookinsert")
	public String insertBookForm(Model model) {
		model.addAttribute("info", service.selectBookNo());
		return "book/insert";
	}
	//2.form에서 사용한 action태그 명을 사용하여 도서정보를 DB에 등록
	@PostMapping("bookinsert")
	public String insertBookInfo(BookVO bookVO) {
//		ㄴ모든 정보가 bookVO에 담겨있기때문에 다른 어노테이션 필요없이 bookVO만 사용하면 된다.
		service.insertBookInfo(bookVO);
		return "redirect:booklist";
		//ㄴ등록 완료 후 redirect(경로재호출)을 이용하여 booklist페이지로 다시 되돌려줌
	}
}
