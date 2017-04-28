package com.otphalgo.service;

import java.util.List;

import com.otphalgo.vo.CartVO;
import com.otphalgo.vo.MemberVO;
import com.otphalgo.vo.ProNBoardVO;

public interface CartService {
	
	List<CartVO> selectAllCart(MemberVO mvo);
}
