package com.otphalgo.serviceImpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otphalgo.dao.ProOptionDAO;
import com.otphalgo.service.ProOptionSerivce;
import com.otphalgo.vo.ProOptionVO;

@Service("prooptionservice")
public class ProOptionServiceImpl implements ProOptionSerivce {
	@Autowired
	ProOptionDAO podao;
	
	@Override
	public List<ProOptionVO> selectProOption(int code) {
		return podao.selectProOption(code);
	}

	@Override
	public void insertProOption(String sizes, int stock, String color) {
		podao.insertProOption(sizes, stock, color);
	}

	@Override
	public void updateProOption(int code) {
		podao.updateProOption(code);
	}

	@Override
	public void deleteProOption(int code) {
		podao.deleteProOption(code);
	}
	

	

}
