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
    ProCategoryService service;
    
    @RequestMapping("/")
    public ModelAndView home() {
        ModelAndView mav = new ModelAndView();
        List<ProCategoryVO> list = service.selectProCategoryAll();
        
        mav.addObject("list", list);
        mav.setViewName("home");
        return mav;
    }
}