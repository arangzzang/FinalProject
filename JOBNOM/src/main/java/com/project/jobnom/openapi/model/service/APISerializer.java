package com.project.jobnom.openapi.model.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.xml.bind.annotation.XmlAccessOrder;

import org.json.XML;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;


@Service
public class APISerializer {
	
	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	// 공공 API 등의 데이터를 xml, json 문서를 String 형태로 받기
	public String receiveToString(String spec) throws Exception {
		
		String result = null;
		
		HttpURLConnection conn = null;
		
		try {
			
			conn = (HttpURLConnection)new URL(spec).openConnection();
			
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			
			StringBuilder sb = new StringBuilder();
			String s;
			while((s = br.readLine()) != null) {
				sb.append(s);
			}
			result = sb.toString();
		} catch (Exception e) {
			logger.error(e.toString());
			
			throw e;
		} finally {
			if(conn != null) {
				try {
					conn.disconnect();
				} catch (Exception e2) {
				}
			}
		}
		
		return result;
		
	}
	

}
