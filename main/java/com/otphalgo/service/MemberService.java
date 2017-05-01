package com.otphalgo.service;

import com.otphalgo.vo.MemberVO;
import com.otphalgo.vo.SellerVO;

public interface MemberService {
	
	MemberVO selectOneMember(MemberVO mvo);
	void insertBuyer(MemberVO mvo);
	void insertSeller(MemberVO mvo, SellerVO svo);
	void updateBuyer(MemberVO mvo);
	void updateSeller(MemberVO mvo, SellerVO svo);

}
