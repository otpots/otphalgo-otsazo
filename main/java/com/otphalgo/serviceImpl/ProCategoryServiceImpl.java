package com.otphalgo.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.otphalgo.dao.ProCategoryDAO;
import com.otphalgo.service.ProCategoryService;
import com.otphalgo.vo.ProCategoryVO;

@Service("proCategoryService")
public class ProCategoryServiceImpl implements ProCategoryService {

    @Autowired
    ProCategoryDAO pcdao;
    
    @Override
    public List<ProCategoryVO> selectProCategoryAll() {
        return pcdao.selectProCategoryAll();
    }
    @Override
	public List<ProCategoryVO> classifyProCategory1() {
		return pcdao.classifyProCategory1();
	}
    @Override
	public List<ProCategoryVO> classifyProCategory2(int cate_code) {
		return pcdao.classifyProCategory2(cate_code);
	}
    /*@Override
    public List<ProCategoryVO> selectProCategoryAll4(ProCategoryVO pcvo) {
        return dao.selectProCategoryAll4(pcvo);
    }*/

}
