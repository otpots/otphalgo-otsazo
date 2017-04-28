package com.otphalgo.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otphalgo.dao.CartDAO;
import com.otphalgo.service.CartService;
import com.otphalgo.vo.CartVO;

@Service("cartService")
public class CartServiceImpl implements CartService {
	
	@Autowired
	CartDAO dao;
	
	@Override
	public List<CartVO> selectCertainCart(CartVO cvo) {
		return dao.selectCertainCart(cvo);
	}

}
