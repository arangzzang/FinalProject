package com.project.jobnom.openapi.controller;

import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import net.sf.json.JSONObject;
@Controller
public class OpenApiController {
	
	@RequestMapping("/search/openapi.do")
	public void openApiResult(HttpServletRequest request, HttpServletResponse response, @RequestParam String wkpl_nm)throws Exception {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("test/html; charset=utf-8");
		
		String addr = "http://apis.data.go.kr/B552015/NpsBplcInfoInqireService/getBassInfoSearch?";
		String serviceKey = "ZE%2FyNNIkFe7TiKpeKRdbPC4WdjWNPX76FEeHfwGKdcTQMkXBnHJ8FbADGE9oIEcx%2B8ZCO8aTfD39YcSFyPgrpw%3D%3D";
		String parameter = "";
		String parameter2 = "";
		PrintWriter out = response.getWriter();
		
		URLEncoder.encode(wkpl_nm,"UTF-8");
		parameter =  "&" + "wkpl_nm=";
		parameter2 = "&" + "_type=json";
		
		addr = addr + parameter + wkpl_nm + parameter2 + "&serviceKey=" + serviceKey;
		URL url = new URL(addr);
		System.out.println(url);
		
		InputStream in = url.openStream();
		
		ByteArrayOutputStream bos1 = new ByteArrayOutputStream();
		IOUtils.copy(in, bos1);
		in.close();
		bos1.close();
		
		String mbos = bos1.toString();
		
		byte[] b = mbos.getBytes();
		String s = new String(b);
		System.out.println(s);
		out.println(s);
		JSONObject json = new JSONObject();
		json.put("data", s);
	}

}
