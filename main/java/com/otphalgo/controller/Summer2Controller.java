package com.otphalgo.controller;


import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.otphalgo.util.MediaUtils;
import com.otphalgo.util.SummerUploadUtils;

@Controller
public class Summer2Controller {
	private static final Logger logger = LoggerFactory.getLogger(Summer2Controller.class);
	
	@Resource(name="uploadPath") //기본 저장경로: root-context에서 확인!
	private String uploadPath;
	
	@ResponseBody
	@RequestMapping(value="/sendimage", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
	public ResponseEntity<Object> uploadAjax(@RequestParam("Filedata") MultipartFile multipartFile, 
					HttpSession httpSession, HttpServletRequest request) throws Exception{
		HashMap<String, Object> fileInfo = new HashMap<String, Object>();		
//		logger.info("originalName: "+multipartFile.getOriginalFilename());
//		logger.info("size: "+multipartFile.getSize());
//		logger.info("contentType: "+multipartFile.getContentType());
		
		if(multipartFile != null && !(multipartFile.getOriginalFilename().equals(""))) {
			// 폴더 생성 + 파일 저장 // return값 : 브라우저상의 이미지주소 (http://ip.port/ 다음부터)
			Map<String, Object> urlpath = SummerUploadUtils.uploadFile(uploadPath, multipartFile);       
	        if((int)urlpath.get("result") == -1){
	        	fileInfo.put("result", -1);
	        	return new ResponseEntity<Object>(fileInfo, HttpStatus.NOT_ACCEPTABLE);
	        } else if((int)urlpath.get("result") == -2){
	        	fileInfo.put("result", -2);
	        	return new ResponseEntity<Object>(fileInfo, HttpStatus.NOT_ACCEPTABLE);
	        } else{
		        String imageurl = (String) request.getRequestURL().toString().replace(request.getRequestURI(), "")+"/displayFile?fileName="+(String)urlpath.get("urlpath");
		        //logger.info("최종 imageurl : "+imageurl);   
		        fileInfo.put("imageurl", imageurl);     //상대파일경로(사이즈변환이나 변형된 파일)
		        fileInfo.put("originalname", urlpath.get("originalname"));   //원본파일명
		        fileInfo.put("filename", urlpath.get("saveName"));   //저장된파일명
		        fileInfo.put("filesize", urlpath.get("filesize"));     //파일사이즈
		        fileInfo.put("fileextension",urlpath.get("formatName"));     //파일확장자
		        fileInfo.put("result", 1);
	        }
		}	
		return new ResponseEntity<Object>(fileInfo, HttpStatus.CREATED);			
	}
	
	//byte[]데이터가 그대로 전송될 것을 명시해준다.
	@ResponseBody
	@RequestMapping("/displayFile")
	//fileName은 /년/월/일/파일명의 형태로 입력받는다. 리턴타입은 ResponseEntity<byte[]>로 실제 파일의 데이터가 된다.
	public ResponseEntity<byte[]> displayFile(String fileName) throws Exception{
	  InputStream in = null;
	  ResponseEntity<byte[]> entity = null;
      logger.info("FILE NAME : "+fileName);
      try{
         String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
         MediaType mType = MediaUtils.getMediaType(formatName); 
         HttpHeaders headers = new HttpHeaders();        
         in = new FileInputStream(uploadPath+fileName);     
         if(mType != null){
            headers.setContentType(mType);
         }else { 
            fileName = fileName.substring(fileName.indexOf("_")+1);
            headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
            headers.add("Content-Disposition", "attachment; filename=\""+new String(fileName.getBytes("UTF-8"), "ISO-8859-1")+"\"");
         }
         entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);
      } catch(Exception e){
         e.printStackTrace();
         entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
      } finally{
         in.close();
      }
      return entity;
   }
}
