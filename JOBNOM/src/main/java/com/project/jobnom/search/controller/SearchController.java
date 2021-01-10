package com.project.jobnom.search.controller;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.project.jobnom.common.pagebar.PageBarFactory;
import com.project.jobnom.enterprise.model.vo.Enterprise;
import com.project.jobnom.openapi.model.vo.openApiVo;
import com.project.jobnom.search.model.service.SearchService;
import com.project.jobnom.search.page.SearchPageBar;

@Controller
public class SearchController {
	
	@Autowired
	private SearchService service;
	
	//검색 결과 화면
	@RequestMapping(value ="/searchResult.do", method = RequestMethod.GET, produces = "application/xml; charset=utf-8;")
	@ResponseBody
	public ModelAndView searchResultList(ModelAndView mv, @RequestParam String keyword) throws Exception {
		
		System.out.println(keyword);
			if(keyword == "") {
				mv.setViewName("search/searchResultList");
				return mv;
				
			}else {
				
				keyword = URLDecoder.decode(keyword, "UTF-8"); // 디코딩 하기

				// servicekey : 공공데이터 신청한 api 인증키
				String servicekey = "ZE%2FyNNIkFe7TiKpeKRdbPC4WdjWNPX76FEeHfwGKdcTQMkXBnHJ8FbADGE9oIEcx%2B8ZCO8aTfD39YcSFyPgrpw%3D%3D";
				String spec = "http://apis.data.go.kr/B552015/NpsBplcInfoInqireService/getBassInfoSearch?"; // 공공데이터 포탈에서 받은 주소
				spec += "wkpl_nm=" + URLEncoder.encode(keyword, "utf-8") // 기업명
						+ "&serviceKey=" + servicekey; // 서비스 키

				DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance(); //DOM 방식의 파싱 처리 위해서 해당 클래스 생성(추상클래스)

				DocumentBuilder builder = factory.newDocumentBuilder(); // DOM 방식의 파싱 처리 하는 파서 객체

				Document doc = builder.parse(spec); // 파싱할 xml 위치 -> 공공포털 api 주소 + 인증키 + 기업명
				doc.getDocumentElement().normalize();

				Element root = doc.getDocumentElement();
				
				NodeList nList = root.getElementsByTagName("item"); //태그 이름이 item인 모든 노드들을 선택 (노드 ->태그 라고 생각하면 이해 하기 쉬움)
				List<openApiVo> apiList = new ArrayList<>(); // 받아야 하는 xml 태그 명과 동일한 객체 생성 후 리스트
				
				for(int i = 0; i<nList.getLength(); i++) {
					Node item = nList.item(i);
					NodeList cList = item.getChildNodes(); // nList만큼 반복한  모든 자식 노드들
					openApiVo o = new openApiVo();
					
					for(int k = 0; k<cList.getLength(); k++) {
						Node items = cList.item(k);
						String value = items.getNodeName();
						if(value.equals("#text")) continue;						//xml 태그명과 객체 명이 동일하면 태그 내용 담는 반복문
						if(value.equals("seq")) o.setSeq(items.getTextContent()); //  seq : 시퀀스
						if(value.equals("wkplNm")) o.setWkplNm(items.getTextContent()); // wkplNm :  기업명
						if(value.equals("wkplRoadNmDtlAddr")) o.setWkplRoadNmDtlAddr(items.getTextContent()); // wkplRoadNmDtlAddr : 도로명 주소
					}
					apiList.add(o);
				}
				mv.addObject("api",apiList);
				mv.addObject("list",service.selectSearchResult(keyword));
				mv.addObject("list2",service.selectSercjResultRec(keyword));
				mv.setViewName("search/searchResultList");
				return mv;
				
				
			}
	}
	
	//기업 더보기 화면
	@RequestMapping("/search/searchResultMore.do")
	public ModelAndView searchResultMore(ModelAndView mv,@RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "5") int numPerpage) {
		List<Map> list = service.searchResultMore(cPage,numPerpage);
		System.out.println(list);
		int totalData = service.selectCount(); /* 이거페이징바 */
		
		mv.addObject("entFollow",service.entFollowCheck()); // 기업 팔로잉
		mv.addObject("pageBar", SearchPageBar.getPageBar(totalData, cPage, numPerpage, "searchResultMore.do"));
		mv.addObject("totalData", totalData);
		mv.addObject("list", list);
		mv.setViewName("search/searchResultMoreList");
		return mv;
		
	}
	
	//기업 더보기 화면 카테고리별 ajax
	@RequestMapping("/ajaxCateList")
	public ModelAndView ajaxCategoryList(ModelAndView mv, String entCategory,@RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "5") int numPerpage) {
		
		int totalDataSu = service.selectCountCate(entCategory);
		System.out.println(totalDataSu);
		mv.addObject("pageBar8", PageBarFactory.getPageBar9(totalDataSu, cPage, numPerpage, entCategory,"/ajaxCateList"));
		mv.addObject("totalData", totalDataSu);
		
		if(entCategory.equals("cate1")) {
			List<Map> firstCate = service.ajaxCategoryList2(cPage, numPerpage);
			mv.addObject("ajaxList",firstCate);
			mv.addObject("entFollow",service.entFollowCheck());
			mv.setViewName("search/ajax/ajaxCategoryList");
			
		}else {
			
			List<Map> list = service.ajaxCategoryList(entCategory,cPage, numPerpage);
			mv.addObject("entFollow",service.entFollowCheck());// 기업 팔로잉
			mv.addObject("ajaxList",list);
			mv.setViewName("search/ajax/ajaxCategoryList");
		}
		
		return mv;
	}
	
	
	
	//기업 팔로잉
	@RequestMapping("/search/entFollow.do")
	@ResponseBody
	public void entFollow(ModelAndView mv, String memNo,String entNo,@RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "5") int numPerpage) {
		// 기업 팔로잉
		Map param = new HashedMap();
		param.put("memNo", memNo);
		param.put("entNo",entNo);
		
		int result = service.entFollow(param);
		
		
	}
	
	//기업 언팔로잉
	@RequestMapping("/search/entUnFollow.do")
	@ResponseBody
	public void entUnFollow(ModelAndView mv,String memNo,String entNo,@RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "5") int numPerpage ) {
		
		// 기업 언팔로잉
		Map param = new HashedMap();
		param.put("memNo", memNo);
		param.put("entNo",entNo);
		
	}
	
	//검색창 자동 완성
	@RequestMapping("/search/searchAuto.do")
	@ResponseBody
	public String streamAjax(ModelAndView mv, String key) throws Exception{
		
		System.out.println(key);
		List<Enterprise> list = service.selectOneRecruitment(key);
		System.out.println(list);
		
		String csv = "";
		for(int i = 0; i<list.size(); i++) {
			if(i != 0) csv += ",";
			csv += list.get(i).getEntName();
		}
		
		return csv;
	}

}

