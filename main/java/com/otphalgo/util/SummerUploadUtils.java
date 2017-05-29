package com.otphalgo.util;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

public class SummerUploadUtils {	
	private static final Logger logger = LoggerFactory.getLogger(SummerUploadUtils.class);

	public static Map<String, Object> uploadFile(String uploadPath, MultipartFile multipartFile) throws Exception{
		String originalName = multipartFile.getOriginalFilename();
		byte[] fileData = multipartFile.getBytes();
		Map<String, Object> resultInfo = new HashMap<String, Object>();
		// uploadPath : 기본 저장 경로
		// originalName : 업로드 한 파일 이름
		// fileData : 파일 크기
				
		// 확장자 확인 (이미지파일 아니면 업로드 X)
		String formatName = originalName.substring(originalName.lastIndexOf(".")+1);
		if(MediaUtils.getMediaType(formatName) == null){
			resultInfo.put("result", -1);
			return resultInfo;
		}
		long filesize = multipartFile.getSize();
        long limitFileSize = 10*1024*1024; 
        if(limitFileSize < filesize){ // 업로드한 이미지가 제한한 이미지 크기보다 큼
        	resultInfo.put("result", -2);
			return resultInfo;
        }
		
        // 중복되지 않는 파일이름 만들기
        UUID uid = UUID.randomUUID();		
     	String saveName = (uid.toString()+"_"+originalName).replace(" ", "_");
     	// 매일 바뀌는 저장 경로 만들기 (/년도/월/일)		
     	String savedPath = CalcPath(uploadPath);
     	// 업로드한 이미지를 최종 저장경로에 최종 파일이름으로 복사(저장)
     	File target = new File(uploadPath+savedPath, saveName);
     	FileCopyUtils.copy(fileData, target);
     	// 브라우저에 찍힐 주소 이름 (http://ip.port/ 다음부터)
     	String uploadedFileName = savedPath.replace("\\", "/")+"/"+saveName;	
     	//logger.info("uploaded File Name : "+uploadedFileName);
	
		resultInfo.put("result", 1);
		resultInfo.put("urlpath", uploadedFileName);
		resultInfo.put("saveName", saveName);
		resultInfo.put("originalname", originalName.replace(" ", "_"));
		resultInfo.put("formatName", formatName);
		resultInfo.put("filesize", filesize);
		return resultInfo;
	}
	
	public static String CalcPath(String uploadPath){
		Calendar cal = Calendar.getInstance();
		String yearPath = File.separator+cal.get(Calendar.YEAR);
		String monthPath = yearPath+File.separator+new DecimalFormat("00").format(cal.get(Calendar.MONTH)+1);	
		String datePath = monthPath+File.separator+new DecimalFormat("00").format(cal.get(Calendar.DATE));		
		makeDir(uploadPath, yearPath, monthPath, datePath);
		logger.info(datePath);
		
		return datePath;
	}
	
	private static void makeDir(String uploadPath, String...paths){
		logger.info("file : "+paths[paths.length-1]);
		
		if(new File(paths[paths.length-1]).exists()){
			return;
		}
		for(String path : paths){
			File dirPath = new File(uploadPath + path);
			logger.info("make file? : "+ uploadPath + path);	
			if(! dirPath.exists()){
				dirPath.mkdir();
			}
		}
	}
	
	
	
	
}