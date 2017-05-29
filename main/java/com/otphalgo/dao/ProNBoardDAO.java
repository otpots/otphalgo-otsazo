package com.otphalgo.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otphalgo.vo.ProNBoardVO;

@Repository
public class ProNBoardDAO {
    
    @Autowired
    SqlSession session;
    
    //added by Song
    /*public List<ProNBoardVO> selectAllPro(){
        return session.selectList("pro.selectAllPro");
    }*/
    
    public List<ProNBoardVO> selectProductAll(int pageNum, int recordPerPage){
		int startRownum = recordPerPage*(pageNum-1)+1; 
		int endRownum = pageNum*recordPerPage;
		int[] rownum = {startRownum, endRownum};
		List<ProNBoardVO> list = session.selectList("pro.selectProductAll", rownum);
		return list;
	}
	
	public List<ProNBoardVO> selectProductAll2(int pageNum, int recordPerPage, int cate_code){
		int startRownum = recordPerPage*(pageNum-1)+1; 
		int endRownum = pageNum*recordPerPage;
		List<Integer> rownum = new ArrayList<Integer>();
		rownum.add(startRownum);
		rownum.add(endRownum);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("cate_code", cate_code);
		map.put("rownum", rownum);
		List<ProNBoardVO> list = session.selectList("pro.selectProductAll2", map);
		return list;	
	}
	public List<ProNBoardVO> selectBoardAll(int pageNum, int recordPerPage){
		int startRownum = recordPerPage*(pageNum-1)+1; 
		int endRownum = pageNum*recordPerPage;
		int[] rownum = {startRownum, endRownum};
		List<ProNBoardVO> list = session.selectList("pro.selectBoardAll", rownum);
		return list;	
	}
	public List<ProNBoardVO> selectProductAll3(int pageNum, int recordPerPage, String id){
		int startRownum = recordPerPage*(pageNum-1)+1; 
		int endRownum = pageNum*recordPerPage;
		List<Integer> rownum = new ArrayList<Integer>();
		rownum.add(startRownum);
		rownum.add(endRownum);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("rownum", rownum);
		List<ProNBoardVO> list = session.selectList("pro.selectProductAll3", map);
		return list;	
	}

	public int countAllBoard(){
		int cnt = session.selectOne("pro.countAllBoard");
		return cnt;
	}
	public int countAllProduct(){
		int cnt = session.selectOne("pro.countAllProduct");
		return cnt;
	}
	public int countSelectProduct(String id){
		int cnt = session.selectOne("pro.countSelectProduct", id);
		return cnt;
	}
	public ProNBoardVO selectProductOne(int code){
		ProNBoardVO pnbvo = session.selectOne("pro.selectProductOne", code);
		return pnbvo;
	}
	public ProNBoardVO selectBoardOne(int code){
		session.update("pro.viewcount", code);
		ProNBoardVO pnbvo = session.selectOne("pro.selectBoardOne", code);
		return pnbvo;
	}
	public void insertProduct(ProNBoardVO pnbvo){
		session.insert("pro.insertProduct", pnbvo);
	}
	public void insertProBoard(ProNBoardVO pnbvo){
		session.insert("pro.insertBoard", pnbvo);
	}
	public void updateProduct(ProNBoardVO pnbvo){
		session.update("pro.updateProduct", pnbvo);
	}
	public void updateProBoard(ProNBoardVO pnbvo){
		session.update("pro.updateProBoard", pnbvo);
	}
	
	
	public void deleteProduct(ProNBoardVO pnbvo){
		session.update("pro.deleteProduct", pnbvo);
	}
	public void deleteProBoard(ProNBoardVO pnbvo){
		session.update("pro.deleteProBoard", pnbvo);
	}

}
