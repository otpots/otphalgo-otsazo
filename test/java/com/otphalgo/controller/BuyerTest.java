package com.otphalgo.controller;

import javax.inject.Inject;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.otphalgo.dao.BuyerDAO;
import com.otphalgo.vo.BuyerVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class BuyerTest {
	
	@Inject
	BuyerDAO dao;
	
	final Logger log = LoggerFactory.getLogger(BuyerTest.class.getName());
	
	/*@Test
	public void insertTest() throws Exception{
		BuyerVO bvo = new BuyerVO();
		bvo.setNum("1235");
		bvo.setId("testid2");
		bvo.setPw("testpw");
		bvo.setName("testname");
		bvo.setEmail("test2@test.com");
		bvo.setGender(1);
		bvo.setBirth("00000000");
		dao.insertBuyer(bvo);
		log.info("insert");
	}*/
	
	@Test
	public void selectoneTest() throws Exception{
		BuyerVO vo = new BuyerVO();
		vo.setNum("1235");
		log.info(dao.selectBuyerOne(vo).toString());
	}

}
