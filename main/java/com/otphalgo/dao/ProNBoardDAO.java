package com.otphalgo.dao;

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
    public List<ProNBoardVO> selectAllPro(){
        return session.selectList("pro.selectAllPro");
    }
    
}
