package com.otphalgo.service;

import java.util.List;

import com.otphalgo.vo.SellerVO;

public interface SellerService {
	
	List<SellerVO> selectSellerAll();
	SellerVO selectSellerOne(SellerVO svo);
	SellerVO selectSellerCheck(SellerVO svo);
	void insertSeller(SellerVO svo);
	void updateSeller(SellerVO svo);
	void deleteSeller(SellerVO svo);

}
