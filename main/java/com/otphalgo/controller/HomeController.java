package com.otphalgo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.otphalgo.service.ProNBoardService;
import com.otphalgo.vo.MemberVO;

@Controller
public class HomeController {
	
    @Autowired
    ProNBoardService proNBoardService;
    
    @RequestMapping("/")
    public ModelAndView home(HttpSession session) {
        ModelAndView mav = new ModelAndView();
        MemberVO mvo = new MemberVO();
        mvo.setNum("test_member_001");
        mvo.setId("test_001");
        session.setAttribute("user", mvo);
        // need to change it to connecting the board, not the product
        //List<ProNBoardVO> featuresItemsList = proNBoardService.selectAllPro();
        //mav.addObject("featuresItemsList", featuresItemsList);
        mav.setViewName("home");
        return mav;
    }
	
}
