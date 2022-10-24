package com.yedam.java.free.web;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yedam.java.free.service.FBService;
import com.yedam.java.free.service.FBVO;

@Controller
@RequestMapping("freeBoard")
public class FreeBoardController {
	@Autowired
	FBService fbService;
	
	//등록 - 폼
	@GetMapping("insert")
	public String insertForm(Model model) {
		model.addAttribute("no", fbService.getBoardNo());
		return "freeBoard/insertForm";
	}
	//등록 - DB에 insert진행하는 컨트롤러
	@PostMapping("insert")
	public String insertFreeBoard(FBVO fbVO, RedirectAttributes ratt) {
		Map<String, Object> result = fbService.insertBoardInfo(fbVO);
		ratt.addFlashAttribute("msg", result.get("result") + "건이 등록되었습니다.");
		return "redirect:list";
	}
	//전체조회
	@GetMapping("list")
	public String selectFreeBoardList(Model model)
			/*, @RequestParam(required=false) String msg)*/ {
//		System.out.println("Message : " +  msg);
		model.addAttribute("boardList", fbService.selectBoardList());
		return "freeBoard/boardList";
	}
	//단건조회
	@GetMapping("info")
	public String selectBoardInfo(FBVO fbVO, Model model) {
		model.addAttribute("board", fbService.selectBoardInfo(fbVO));
		
		return "freeBoard/boardInfo";
	}
	//수정 - 폼
	//수정 - DB에 update 진행하는 컨트롤러
	
	//삭제
}
