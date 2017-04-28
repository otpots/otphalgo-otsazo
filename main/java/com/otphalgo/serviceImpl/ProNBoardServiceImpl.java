package com.otphalgo.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otphalgo.dao.ProNBoardDAO;
import com.otphalgo.service.ProNBoardService;
import com.otphalgo.vo.ProNBoardVO;

@Service("proNBoardService")
public class ProNBoardServiceImpl implements ProNBoardService {
	
	@Autowired
	ProNBoardDAO proNBoardDAO;
	
	@Override
	public List<ProNBoardVO> selectAllPro() {	//added by Song
		return proNBoardDAO.selectAllPro();
	}

}
