package com.otphalgo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.otphalgo.service.ProCategoryService;
import com.otphalgo.vo.ProCategoryVO;

@Controller
public class HomeController {
	    
    @Autowired
    ProCategoryService proCategoryService;
    
    @RequestMapping("/")
    public ModelAndView home() {
        ModelAndView mav = new ModelAndView();
        List<ProCategoryVO> list = proCategoryService.selectProCategoryAll();
        //영철이 오면 mapper쓰는거 물어보고, 서비스 어떤식으로 만들었는지도 물어보기
        mav.addObject("list", list);
        mav.setViewName("home");
        return mav;
    }
	
}
