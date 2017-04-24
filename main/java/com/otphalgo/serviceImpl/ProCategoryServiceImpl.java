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
    ProCategoryDAO dao;
    
    @Override
    public List<ProCategoryVO> selectProCategoryAll() {
        return dao.selectProCategoryAll();
    }

    /*@Override
    public List<ProCategoryVO> selectProCategoryAll4(ProCategoryVO pcvo) {
        return dao.selectProCategoryAll4(pcvo);
    }*/

}
