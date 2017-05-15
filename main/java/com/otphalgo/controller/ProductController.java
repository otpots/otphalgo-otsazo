package com.otphalgo.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.otphalgo.service.ProCategoryService;
import com.otphalgo.service.ProNBoardService;
import com.otphalgo.vo.ProCategoryVO;
import com.otphalgo.vo.ProNBoardVO;

@Controller
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@Autowired
	ProNBoardService proservice;
	@Autowired
	ProCategoryService proCategoryService;
	
	//모든 상품 조회
	@RequestMapping("/listproduct")
	public ModelAndView selectProductAll(
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum, 
			@RequestParam(value="recordPerPage", required=false, defaultValue="5") int recordPerPage){
		ModelAndView mav = new ModelAndView();
		List<ProNBoardVO> prolist = proservice.selectProductAll(pageNum, recordPerPage);
		List<ProNBoardVO> proboardlist = proservice.selectBoardAll(pageNum, recordPerPage);
		int procount = proservice.countAllProduct();
		mav.addObject("prolist", prolist);
		mav.addObject("proboardlist", proboardlist);
		mav.addObject("recordPerPage", recordPerPage);
		mav.addObject("procount", procount);
		mav.setViewName("pronboard/pronboardList");
		return mav;
	}
		
	//카테고리별 상품 조회
	@RequestMapping("/listproduct2")
	public ModelAndView selectProductAll2(
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum, 
			@RequestParam(value="recordPerPage", required=false, defaultValue="5") int recordPerPage, 
			@RequestParam(value="cate_code", required=false, defaultValue="2") int cate_code){
		ModelAndView mav = new ModelAndView();
		List<ProNBoardVO> prolist = proservice.selectProductAll2(pageNum, recordPerPage, cate_code);
		int procount = proservice.countAllProduct();
		mav.addObject("prolist", prolist);
		mav.addObject("recordPerPage", recordPerPage);
		mav.addObject("procount", procount);
		mav.setViewName("pronboard/pronboardList");
		return mav;
	}
	
	@RequestMapping("/detailproduct")
	public ModelAndView selectProductOne(int code){
		ProNBoardVO pnbvo = proservice.selectProductOne(code);
		ProNBoardVO pnbvo2 = proservice.selectBoardOne(code);
		ModelAndView mav = new ModelAndView();
		mav.addObject("pnbvo", pnbvo);
		mav.addObject("pnbvo2", pnbvo2);
		mav.setViewName("pronboard/productdetail");
		return mav;
	}
	
	@RequestMapping(value="/writepronboard", method=RequestMethod.GET)
	public ModelAndView insertProduct(){
		ModelAndView mav = new ModelAndView();
		List<ProCategoryVO> pcvolist = proCategoryService.classifyProCategory1();
		mav.addObject("pcvolist", pcvolist);
		mav.setViewName("pronboard/pronboardwrite");
		return mav;
	}
	@RequestMapping(value="/writepronboard", method=RequestMethod.POST)
	public String insertProduct(ProNBoardVO pnbvo) throws IOException{
		logger.info("인서트전: "+pnbvo);
		//컴퓨터에 이미지 저장될 경로 확인하세여~
		String path="C:/Users/killersin/Desktop/workspace_webproject/otphlgo_otsazo/src/main/webapp/resources/images/product/";
		File f = new File(path+pnbvo.getThumbnail_image());
        if(!f.isDirectory()){
            f.mkdir();
        }
        pnbvo.getImagefile().transferTo(f);
		pnbvo.setNum("s46307110739e47ed9c7b3727dbcfd51b");
		//proservice.insertProduct(pnbvo);
		//logger.info("인서투성공! "+pnbvo);
		return "pronboard/pronboardwritesuccess";
	}

	@ResponseBody
	@RequestMapping(value="/cateclassify", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
	public String cateClassify(int cate_code) {
		//logger.info("중분류 카트코트: "+cate_code);
		List<ProCategoryVO> pcvolist = proCategoryService.classifyProCategory2(cate_code);
		//JSON-SIMPLE-1-.jar 를 import해줘야함
		JSONArray array = new JSONArray();
		for(ProCategoryVO pcvo : pcvolist){
			JSONObject obj = new JSONObject();
			obj.put("cate_code", pcvo.getCate_code() );
			obj.put("name", pcvo.getName() );
			array.add(obj); 
		}
		String result = "";
		result = array.toJSONString();
		//logger.info("프로카테고리중분류하기: "+pcvolist.toString());
	    return result;
	}
	@ResponseBody
	@RequestMapping(value="/cateclassify2", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
	public String cateClassify2(int cate_code) {
		//logger.info("소분류 카트코트: "+cate_code);
		List<ProCategoryVO> pcvolist = proCategoryService.classifyProCategory2(cate_code);
		JSONArray array = new JSONArray();
		for(ProCategoryVO pcvo : pcvolist){
			JSONObject obj = new JSONObject();
			obj.put("cate_code", pcvo.getCate_code() ); 
			obj.put("name", pcvo.getName() ); 
			array.add(obj);
		}
		String result = "";
		result = array.toJSONString();
		//logger.info("프로카테고리소분류하기: "+pcvolist.toString());
	    return result;
	}
	
}
