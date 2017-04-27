package com.otphalgo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.otphalgo.vo.CartVO;
import com.otphalgo.vo.MemberVO;
import com.otphalgo.vo.ProNBoardVO;

@Repository
public class CartDAO {

	SqlSession session;
	
	public List<CartVO> selectAllCart(MemberVO mvo){
		return session.selectList("cart.selectAllCart", mvo);
	}
	
	public List<ProNBoardVO> selectAllPro(CartVO cvo){
		return session.selectList("cart.selectAllPro", cvo);
	}
}
