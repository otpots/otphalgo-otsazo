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
    
    public List<ProNBoardVO> selectProductAll(int pageNum, int recordPerPage, int cate_code){
		int startRownum = recordPerPage*(pageNum-1)+1; 
		int endRownum = pageNum*recordPerPage;
		List<Integer> rownum = new ArrayList<Integer>();
		rownum.add(startRownum);
		rownum.add(endRownum);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("cate_code", cate_code);
		map.put("rownum", rownum);
		List<ProNBoardVO> list = session.selectList("pro.selectProductAll", map);
		return list;	
	}
	public List<ProNBoardVO> selectBoardAll(int pageNum, int recordPerPage){
		int startRownum = recordPerPage*(pageNum-1)+1; 
		int endRownum = pageNum*recordPerPage;
		List<Integer> rownum = new ArrayList<Integer>();
		rownum.add(startRownum);
		rownum.add(endRownum);
		HashMap<String, List<Integer>> map = new HashMap<String, List<Integer>>();
		map.put("rownum", rownum);
		List<ProNBoardVO> list = session.selectList("pro.selectBoardAll", map);
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
	public List<ProNBoardVO> selectProductOne(ProNBoardVO pnbvo){
		session.update("pro.viewcount", pnbvo);
		List<ProNBoardVO> list = session.selectOne("pro.selectProductOne", pnbvo);
		return list;
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
		session.delete("pro.updateProduct", pnbvo);
	}
	public void deleteProBoard(ProNBoardVO pnbvo){
		session.delete("pro.updateProduct", pnbvo);
	}

}
