package com.otphalgo.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otphalgo.dao.ProNBoardDAO;
import com.otphalgo.service.ProNBoardService;
import com.otphalgo.vo.ProNBoardVO;

@Service("proservice")
public class ProNBoardServiceImpl implements ProNBoardService {
	
	@Autowired
	ProNBoardDAO pdao;
	
	/*@Override
	public List<ProNBoardVO> selectAllPro() {	//added by Song
		return proNBoardDAO.selectAllPro();
	}*/
	
	@Override
	public List<ProNBoardVO> selectProductAll(int pageNum, int recordPerPage) {
		return pdao.selectProductAll(pageNum, recordPerPage);
	}
	@Override
	public List<ProNBoardVO> selectBoardAll(int pageNum, int recordPerPage) {
		return pdao.selectBoardAll(pageNum, recordPerPage);
	}
	
	@Override
	public List<ProNBoardVO> selectProductAll2(int pageNum, int recordPerPage, int cate_code) {
		return pdao.selectProductAll2(pageNum, recordPerPage, cate_code);
	}
	
	@Override
	public int countAllProduct() {
		return pdao.countAllProduct();
	}
	@Override
	public int countAllBoard() {
		return pdao.countAllBoard();
	}
	@Override
	public ProNBoardVO selectProductOne(int code){
		return pdao.selectProductOne(code);
	}
	@Override
	public ProNBoardVO selectBoardOne(int code){
		return pdao.selectBoardOne(code);
	}
	@Override
	public void insertProduct(ProNBoardVO pnbvo){
		pdao.insertProduct(pnbvo);
		pdao.insertProBoard(pnbvo);
	}
	@Override
	public void updateProduct(ProNBoardVO pnbvo) {
		pdao.updateProduct(pnbvo);
		pdao.updateProBoard(pnbvo);
	}
	@Override
	public void deleteProduct(ProNBoardVO pnbvo) {
		pdao.deleteProduct(pnbvo);
		pdao.deleteProBoard(pnbvo);
	}

}

