package com.otphalgo.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otphalgo.dao.ProQnaDAO;
import com.otphalgo.service.ProQnaService;
import com.otphalgo.vo.ProQnaVO;

@Service("proqnaservice")
public class ProQnaServiceImpl implements ProQnaService {
	@Autowired
	ProQnaDAO pqdao;
	
	@Override
	public List<ProQnaVO> selectProQna(int code) {
		return pqdao.selectProQnaAll(code);
	}

	@Override
	public ProQnaVO selectProQnaOne(int seq) {
		return pqdao.selectProQna(seq);
	}

	@Override
	public void insertProQna(ProQnaVO pqvo) {
		pqdao.insertProQna(pqvo);
	}

	@Override
	public void deleteProQna(int seq) {
		pqdao.deleteProQna(seq);
	}
	
}
