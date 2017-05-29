package com.otphalgo.service;

import java.util.List;
import com.otphalgo.vo.ProOptionVO;

public interface ProOptionSerivce {
	public List<ProOptionVO> selectProOption(int code);
	public void insertProOption(String sizes, int stock, String color);
	public void updateProOption(int code);
	public void deleteProOption(int code);
	
}
