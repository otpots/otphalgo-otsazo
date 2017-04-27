package com.otphalgo.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otphalgo.dao.CartDAO;
import com.otphalgo.service.CartService;
import com.otphalgo.vo.CartVO;
import com.otphalgo.vo.MemberVO;
import com.otphalgo.vo.ProNBoardVO;

@Service("cartService")
public class CartServiceImpl implements CartService {
	
	@Autowired
	CartDAO dao;
	
	@Override
	public List<CartVO> selectAllCart(MemberVO mvo) {
		return dao.selectAllCart(mvo);
	}

	@Override
	public List<ProNBoardVO> selectAllPro(CartVO cvo) {
		return dao.selectAllPro(cvo);
	}

}
