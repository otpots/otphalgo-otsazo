package com.otphalgo.service;

import java.util.List;

import com.otphalgo.vo.ProNBoardVO;

public interface ProNBoardService {
    //public List<ProNBoardVO> selectAllPro();//added by Song
	public List<ProNBoardVO> selectProductAll(int pageNum, int recordPerPage);
	public List<ProNBoardVO> selectProductAll2(int pageNum, int recordPerPage, int cate_code);
	public List<ProNBoardVO> selectBoardAll(int pageNum, int recordPerPage);
	public int countAllProduct();
	public int countAllBoard();
	public ProNBoardVO selectProductOne(int code);
	public ProNBoardVO selectBoardOne(int code);
	public void insertProduct(ProNBoardVO pnbvo);
	public void updateProduct(ProNBoardVO pnbvo);
	public void deleteProduct(ProNBoardVO pnbvo);
}
