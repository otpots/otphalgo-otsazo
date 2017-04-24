package com.otphalgo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otphalgo.vo.BuyerVO;

@Repository
public class BuyerDAO {
	
	@Autowired
	SqlSession session;
	
	public List<BuyerVO> selectBuyerAll(){
		return session.selectList("buy.selectall");
	}
	
	public BuyerVO selectBuyerOne(BuyerVO bvo){
		return session.selectOne("buy.selectone", bvo);
	}
	
	public BuyerVO selectBuyerCheck(BuyerVO bvo){
		return session.selectOne("buy.selectcheck", bvo);
	}
	
	public void insertBuyer(BuyerVO bvo){
		session.insert("buy.insert", bvo);
	}
	
	public void updateBuyer(BuyerVO bvo){
		session.update("buy.update", bvo);
	}
	
	public void deleteBuyer(BuyerVO bvo){
		session.delete("buy.delete", bvo);
	}

}
