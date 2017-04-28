package com.otphalgo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.otphalgo.service.CartService;
import com.otphalgo.vo.CartVO;
import com.otphalgo.vo.MemberVO;
import com.otphalgo.vo.ProNBoardVO;

@Controller
public class CartController {
		
	@Autowired
	CartService cartService;
	
	@RequestMapping("cart")
	public ModelAndView cart(CartVO cvo){
		ModelAndView mav = new ModelAndView();
		//still working on it : Song
		//List<ProNBoardVO> cartItemsList = cartService.selectAllCart(cvo);
		//mav.addObject("cartItemsList",  cartItemsList);
		//mav.setViewName("cart/cart");
		return mav;
	}
}
