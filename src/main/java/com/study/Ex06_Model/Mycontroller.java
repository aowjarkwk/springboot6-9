package com.study.Ex06_Model;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Mycontroller {

	@RequestMapping("/")
	public @ResponseBody String root() {
		
		return "Model & View 프로젝트입니다.";
	}
	//URL:localhost:8090/test1
	@RequestMapping("/test1")
	public String test1(Model model) {
		//서블릿에선 request객체나 session객체에 setAttribute()함수를 이용했다.
		//스프링에서 지원하는 Model객체에 addAtrribute()함수를 이용해도 됨.
		//model과 request 생명주기가 비슷하다.
		model.addAttribute("name","홍길동");
		return "test1"; //test1.jsp가 디스패치됨.
	}
	//URL:localhost:8090/test1
	@RequestMapping("/test2")
	public ModelAndView test2() {
		//ModelAndView : 모델(데이터)와 View(HTML)을 동시에 설정 가능함.
		ModelAndView mv = new ModelAndView();
		
		ArrayList<String> list = new ArrayList<String>();
		list.add("hong");
		list.add("tom");
		list.add("hana");
		
		mv.addObject("list", list);
		mv.addObject("name","변사또");
		
		mv.setViewName("sub/test2"); //test2.jsp를 디스패치함.
		
		return mv;
	}
}
