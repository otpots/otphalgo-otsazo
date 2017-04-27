package com.otphalgo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;

@Controller
public class CartController {
	
	final Logger log = LoggerFactory.getLogger(CartController.class);
	
/*	@Autowired
	CartService service;*/
	
/*	@RequestMapping("cart")
	public ModelAndView cart(MemberVO mvo, CartVO cvo){
		log.info(mvo.toString());
		log.info(cvo.toString());
		ModelAndView mav = new ModelAndView();
		List<CartVO> cartList = service.selectAllCart(mvo);
		List<ProNBoardVO> proList = service.selectAllPro(cvo);
		mav.addObject("cartList", cartList);
		mav.addObject("proList",  proList);
		mav.setViewName("cart/cart");
		return mav;
	}*/
}
