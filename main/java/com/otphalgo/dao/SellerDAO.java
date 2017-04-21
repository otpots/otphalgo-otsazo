package com.otphalgo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otphalgo.vo.SellerVO;

@Repository
public class SellerDAO {
	
	@Autowired
	SqlSession session;
	
	public List<SellerVO> selectSellerAll(){
		return session.selectList("sell.selectall");
	}
	
	public SellerVO selectSellerOne(SellerVO svo){
		return session.selectOne("sell.selectone", svo);
	}
	
	public SellerVO selectSellerCheck(SellerVO svo){
		return session.selectOne("sell.selectcheck", svo);
	}
	
	public void insertSeller(SellerVO svo){
		session.insert("sell.insert", svo);
	}
	
	public void updateSeller(SellerVO svo){
		session.update("sell.update", svo);
	}
	
	public void deleteSeller(SellerVO svo){
		session.delete("sell.delete", svo);
	}

}
