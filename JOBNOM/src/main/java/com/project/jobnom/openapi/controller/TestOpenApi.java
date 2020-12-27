package com.project.jobnom.openapi.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class TestOpenApi {
	
	@RequestMapping("/api1")
	public void callResult(@RequestParam String wkpl_nm) {
		
		
			try {
				
		
//			String addr = "http://apis.data.go.kr/B552015/NpsBplcInfoInqireService/getBassInfoSearch?";
//			String serviceKey = "ZE%2FyNNIkFe7TiKpeKRdbPC4WdjWNPX76FEeHfwGKdcTQMkXBnHJ8FbADGE9oIEcx%2B8ZCO8aTfD39YcSFyPgrpw%3D%3D";
//			String serviceKey_Decoder = URLDecoder.decode(serviceKey.toString(), "UTF-8");   
//			String parameter = "";
//			parameter = parameter + "&" + "wkpl_nm=" + wkpl_nm;
//			parameter = parameter + "&" + "_type=json";
// 			addr = addr + parameter + "&serviceKey=" + serviceKey_Decoder;
			
			StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B552015/NpsBplcInfoInqireService/getBassInfoSearch");
			urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=ZE%2FyNNIkFe7TiKpeKRdbPC4WdjWNPX76FEeHfwGKdcTQMkXBnHJ8FbADGE9oIEcx%2B8ZCO8aTfD39YcSFyPgrpw%3D%3D");
			urlBuilder.append("&" + URLEncoder.encode("wkpl_nm","UTF-8") + "=" + "삼성전자");
//			urlBuilder.append("&" + URLEncoder.encode("_type","UTF-8") + "=" + URLEncoder.encode("json","UTF-8"));
			URL url = new URL(urlBuilder.toString());
			
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        System.out.println("Response code: " + conn.getResponseCode());
	        BufferedReader rd;
	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        } else {
	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	        }
	        StringBuilder sb = new StringBuilder();
	        String line;
	        while ((line = rd.readLine()) != null) {
	            sb.append(line);
	        }
	        rd.close();
	        conn.disconnect();
	        System.out.println(sb.toString());
		}catch (Exception e) {

			e.printStackTrace();
		}
		
	}

}
