package com.otphalgo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.otphalgo.service.ProNBoardService;
import com.otphalgo.vo.ProNBoardVO;

@Controller
public class HomeController {
	    
    @Autowired
    ProNBoardService proNBoardService;
    
    @RequestMapping("/")
    public ModelAndView home() {
        ModelAndView mav = new ModelAndView();
        // need to change it to connecting the board, not the product
        List<ProNBoardVO> featuresItemsList = proNBoardService.selectAllPro();
        mav.addObject("featuresItemsList", featuresItemsList);
        mav.setViewName("home");
        return mav;
    }
	
}
