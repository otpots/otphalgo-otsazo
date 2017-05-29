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
		// uploadPath : �⺻ ���� ���
		// originalName : ���ε� �� ���� �̸�
		// fileData : ���� ũ��
				
		// Ȯ���� Ȯ�� (�̹������� �ƴϸ� ���ε� X)
		String formatName = originalName.substring(originalName.lastIndexOf(".")+1);
		if(MediaUtils.getMediaType(formatName) == null){
			resultInfo.put("result", -1);
			return resultInfo;
		}
		long filesize = multipartFile.getSize();
        long limitFileSize = 10*1024*1024; 
        if(limitFileSize < filesize){ // ���ε��� �̹����� ������ �̹��� ũ�⺸�� ŭ
        	resultInfo.put("result", -2);
			return resultInfo;
        }
		
        // �ߺ����� �ʴ� �����̸� �����
        UUID uid = UUID.randomUUID();		
     	String saveName = (uid.toString()+"_"+originalName).replace(" ", "_");
     	// ���� �ٲ�� ���� ��� ����� (/�⵵/��/��)		
     	String savedPath = CalcPath(uploadPath);
     	// ���ε��� �̹����� ���� �����ο� ���� �����̸����� ����(����)
     	File target = new File(uploadPath+savedPath, saveName);
     	FileCopyUtils.copy(fileData, target);
     	// �������� ���� �ּ� �̸� (http://ip.port/ ��������)
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