package com.otphalgo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otphalgo.vo.ProQnaVO;

@Repository
public class ProQnaDAO {
	@Autowired
	SqlSession session;
	
	public List<ProQnaVO> selectProQnaAll(int code){
		List<ProQnaVO> list = session.selectList("proqna.selectProQna", code);
		return list;
	}
	public ProQnaVO selectProQna(int seq){
		ProQnaVO pqvo = session.selectOne("proqna.selectProQnaOne", seq);
		return pqvo;
	}
	public void insertProQna(ProQnaVO pqvo){
		session.insert("proqna.insertProQna",pqvo);
	}
	public void deleteProQna(int seq){
		session.delete("proqna.deleteProQna", seq);
	}
}
