package com.otphalgo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otphalgo.vo.CartVO;
import com.otphalgo.vo.MemberVO;
import com.otphalgo.vo.ProNBoardVO;

@Repository
public class CartDAO {
	
	@Autowired
	SqlSession session;
	
	public List<CartVO> selectCertainCart(CartVO cvo){
		return session.selectList("cart.selectCertainCart", cvo);
	}

}
