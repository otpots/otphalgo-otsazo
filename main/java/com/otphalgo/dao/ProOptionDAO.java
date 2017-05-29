package com.otphalgo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otphalgo.controller.ProductController;
import com.otphalgo.vo.ProOptionVO;

@Repository
public class ProOptionDAO {
	@Autowired
	SqlSession session;
	
	public List<ProOptionVO> selectProOption(int code){
		return session.selectList("prooption.selectProOption", code);
	}
	public void insertProOption(String sizes, int stock, String color){
		ProOptionVO povo = new ProOptionVO(sizes, stock, color);
		session.insert("prooption.insertProOption", povo);
	}
	public void updateProOption(int code){
		session.update("prooption.updateProOption", code);
	}
	public void deleteProOption(int code){
		session.delete("prooption.updateProOption", code);
	}

}
