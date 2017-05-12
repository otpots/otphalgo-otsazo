package com.otphalgo.service;

import java.util.List;

import com.otphalgo.vo.ProCategoryVO;

public interface ProCategoryService {
    public List<ProCategoryVO> selectProCategoryAll();
    public List<ProCategoryVO> classifyProCategory1();
    public List<ProCategoryVO> classifyProCategory2(int cate_code);
    /*public List<ProCategoryVO> selectProCategoryAll4(ProCategoryVO pcvo);*/
}
