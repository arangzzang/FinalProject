package com.project.jobnom.openapi.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.DefaultUriBuilderFactory;
import org.springframework.web.util.UriBuilder;

@RestController
public class TestYs {
	 

	@RequestMapping("/api2")
	public String getMoney(@RequestParam String wkpl_nm) throws UnsupportedEncodingException {
		
		RestTemplate restTemplate = new RestTemplate();
		
		String callUrl = "http://apis.data.go.kr";
		String serviceKey = "ZE%2FyNNIkFe7TiKpeKRdbPC4WdjWNPX76FEeHfwGKdcTQMkXBnHJ8FbADGE9oIEcx%2B8ZCO8aTfD39YcSFyPgrpw%3D%3D";
		String serviceKey_Decoder =  URLDecoder.decode(serviceKey.toString(), "UTF-8"); 
		
		DefaultUriBuilderFactory urlBuilderFactory = new DefaultUriBuilderFactory(callUrl);
		urlBuilderFactory.setEncodingMode(DefaultUriBuilderFactory.EncodingMode.NONE);
		
		UriBuilder uriBuilder = urlBuilderFactory.builder();
		uriBuilder
					.path("/B552015/NpsBplcInfoInqireService/getBassInfoSearch")
					.queryParam("ServiceKey", serviceKey_Decoder)
					.queryParam("wkpl_nm", wkpl_nm)
					.queryParam("_type", "json");
		ResponseEntity responseEntity = restTemplate.exchange(uriBuilder.build(), HttpMethod.GET, null, String.class);
        String response = (String) responseEntity.getBody();
        System.out.println(response);
        return response;
	}
}
