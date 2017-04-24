package com.otphalgo.service;

import java.util.List;

import com.otphalgo.vo.BuyerVO;

public interface BuyerService {
	
	List<BuyerVO> selectBuyerAll();
	BuyerVO selectBuyerOne(BuyerVO bvo);
	BuyerVO selectBuyerCheck(BuyerVO bvo);
	void insertBuyer(BuyerVO bvo);
	void updateBuyer(BuyerVO bvo);
	void deleteBuyer(BuyerVO bvo);

}
