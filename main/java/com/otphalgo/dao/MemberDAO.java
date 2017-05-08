package com.otphalgo.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otphalgo.vo.MemberVO;
import com.otphalgo.vo.SellerVO;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSession session;
	
	public MemberVO selectOneMember(MemberVO mvo){
		return session.selectOne("member.selectone", mvo);
	}
	
	public void insertBuyer(MemberVO mvo){
		session.insert("member.insert", mvo);
	}
	
	public void insertSeller(MemberVO mvo, SellerVO svo){
		session.insert("member.insert", mvo);
		session.insert("member.s_insert", svo);
	}
	
	public void updateBuyer(MemberVO mvo){
		session.update("member.update", mvo);
	}
	
	public void updateSeller(MemberVO mvo, SellerVO svo){
		session.update("member.update", mvo);
		session.update("member.s_update", svo);
	}

}
