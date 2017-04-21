package com.otphalgo.controller;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.otphalgo.dao.SellerDAO;
import com.otphalgo.vo.SellerVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class SellerTest {

	@Inject
	SellerDAO dao;
	
	final Logger log = LoggerFactory.getLogger(BuyerTest.class);
	
	/*@Test
	public void insertseller() throws Exception{
		SellerVO svo = new SellerVO();
		svo.setNum("00000");
		svo.setId("sellertest");
		svo.setPw("seller");
		svo.setName("판매자");
		svo.setEmail("seller@seller.com");
		svo.setPhone("0000000000");
		svo.setAddress("주소");
		svo.setLicense("사업자번호");
		svo.setAccount("계좌번호");
		log.info(svo.toString());
		dao.insertSeller(svo);
	}*/
	
	/*@Test
	public void updateseller() throws Exception{
		SellerVO svo = new SellerVO();
		svo.setNum("00000");
		svo.setPhone("1111112222");
		svo.setAddress("수정된 주소");
		dao.updateSeller(svo);
	}*/
	
	/*@Test
	public void deleteseller() throws Exception{
		SellerVO svo = new SellerVO();
		svo.setNum("00000");
		dao.deleteSeller(svo);
	}*/
	
	/*@Test
	public void selectseller() throws Exception{
		SellerVO svo = new SellerVO();
		svo.setNum("sc056c05eb3a841aa969707428cff1d72");
		dao.selectSellerOne(svo);
	}*/
	
	@Test
	public void selectsellerall() throws Exception{
		List<SellerVO> list = dao.selectSellerAll();
		for(SellerVO svo : list){
			log.info(svo.toString());
		}
		
	}
	
}
