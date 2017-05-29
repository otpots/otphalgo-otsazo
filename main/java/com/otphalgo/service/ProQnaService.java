package com.otphalgo.service;

import java.util.List;

import com.otphalgo.vo.ProQnaVO;

public interface ProQnaService {
	public List<ProQnaVO> selectProQna(int code);
	public ProQnaVO selectProQnaOne(int seq);
	public void insertProQna(ProQnaVO pqvo);
	public void deleteProQna(int seq);
	
	
}
