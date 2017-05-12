package com.otphalgo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.otphalgo.vo.ProCategoryVO;

@Repository
public class ProCategoryDAO {
    
    @Autowired
    SqlSession session;
    
    /*public void insertProCategory(ProCategoryVO pcvo){
        session.insert("cate.insertCategory", pcvo);
    }*/
    
    /*public void updateProCategory(ProCategoryVO pcvo){
        session.update("cate.updateCategory", pcvo);
    }*/
    
    /*public void deleteProCategory(ProCategoryVO pcvo){
        session.delete("cate.deleteCategory", pcvo);
    }*/
    
    //class diagram 수정해야 됨
    public List<ProCategoryVO> selectProCategoryAll(){
        return session.selectList("cate.selectProCategoryAll");
    }
    public List<ProCategoryVO> classifyProCategory1() {
    	return session.selectList("cate.classifyProCategory1");
    } 
    public List<ProCategoryVO> classifyProCategory2(int cate_code) {
    	return session.selectList("cate.classifyProCategory2", cate_code );
    }
    //만들었는데 필요 없어서 주석처리
    /*public ProCategoryVO selectProCategoryOne(ProCategoryVO pcvo){
        return session.selectOne("cate.selectCategory", pcvo);
    }*/
}
