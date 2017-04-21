package com.otphalgo.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otphalgo.vo.BuyerVO;

@Repository
public class BuyerDAO {
	
	@Autowired
	SqlSession session;
	
	public void insertBuyer(BuyerVO bvo){
		session.insert("buy.insertBuyer", bvo);
	}
	
	public void updateBuyer(BuyerVO bvo){
		session.update("buy.updateBuyer", bvo);
	}
	
	public void deleteBuyer(BuyerVO bvo){
		session.delete("buy.deleteBuyer", bvo);
	}
	
	public BuyerVO selectBuyerOne(BuyerVO bvo){
		return session.selectOne("buy.selectBuyerOne", bvo);
	}

}
