package com.otphalgo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.otphalgo.service.CartService;
import com.otphalgo.vo.CartVO;
import com.otphalgo.vo.MemberVO;

@Controller
public class CartController {
	
	private static final Logger log = LoggerFactory.getLogger(CartController.class);
	
	@Autowired
	CartService cartService;
	
	@RequestMapping("/cart")
	public ModelAndView cart(HttpSession session){
		ModelAndView mav = new ModelAndView();
		log.info(session.getAttribute("user").toString());
		MemberVO mvo = (MemberVO)session.getAttribute("user");
		CartVO cvo = new CartVO();
		cvo.setNum(mvo.getNum());
		log.info(cvo.toString());
		List<CartVO> cartItemsList = cartService.selectCertainCart(cvo);
		mav.addObject("cartItemsList",  cartItemsList);
		mav.setViewName("cart/cart");
		return mav;
	}
}
