package com.project.jobnom.openapi.controller;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.project.jobnom.enterprise.model.service.EnterpriseService;
import com.project.jobnom.openapi.model.service.APISerializer;
import com.project.jobnom.openapi.model.vo.openApiVo;

@Controller
public class openApi {

	@Autowired
	private APISerializer apiSerializer;
	
	@Autowired
	EnterpriseService service;

	@RequestMapping(value = "/openApi.do", method = RequestMethod.GET, produces = "application/xml; charset=utf-8;")
	@ResponseBody
	public ModelAndView openApi(@RequestParam(value = "keyword", required = false) String keyword, ModelAndView mv,int entNo)
			throws Exception {

		
		// 기업 이름으로 api 한번 접근 해서 seq 값 뽑아오기
		keyword = URLDecoder.decode(keyword, "UTF-8"); // 디코딩 하기

		// servicekey : 공공데이터 신청한 api 인증키
		String servicekey = "ZE%2FyNNIkFe7TiKpeKRdbPC4WdjWNPX76FEeHfwGKdcTQMkXBnHJ8FbADGE9oIEcx%2B8ZCO8aTfD39YcSFyPgrpw%3D%3D";
		String spec = "http://apis.data.go.kr/B552015/NpsBplcInfoInqireService/getBassInfoSearch?"; // 공공데이터 포탈에서 받은 주소
		spec += "wkpl_nm=" + URLEncoder.encode(keyword, "utf-8") // 기업명
				+ "&serviceKey=" + servicekey; // 서비스 키

		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();

		DocumentBuilder builder = factory.newDocumentBuilder();

		Document doc = builder.parse(spec);
		doc.getDocumentElement().normalize();

		Element root = doc.getDocumentElement();

		NodeList nList = root.getElementsByTagName("item");
		List<openApiVo> apiList = new ArrayList<>();
		
		for(int i = 0; i<nList.getLength(); i++) {
			Node item = nList.item(i);
			NodeList cList = item.getChildNodes();
			openApiVo o = new openApiVo();
			
			for(int k = 0; k<cList.getLength(); k++) {
				Node items = cList.item(k);
				String value = items.getNodeName();
				if(value.equals("#text")) continue;
				if(value.equals("seq")) o.setSeq(items.getTextContent());
				if(value.equals("wkplNm")) o.setWkplNm(items.getTextContent());
				if(value.equals("wkplRoadNmDtlAddr")) o.setWkplRoadNmDtlAddr(items.getTextContent());
				
			}
			apiList.add(o);
		}
		// 기업 이름으로 api 한번 접근 해서 seq 값 뽑아오기 끝
		
		// 뽑아온 seq 값으로 기업 상세 조회 접근하기
		
		
		if(apiList.isEmpty()) {
			
			System.out.println(entNo);
			mv.addObject("list",service.companyInfo(entNo));
			mv.setViewName("enterprise/com_info");
			
			
			
		}else {
			// DB에서 기업 번호로 기업 데이터 가져옴
			System.out.println(entNo);
			System.out.println(apiList.get(0).getSeq());
			mv.addObject("list",service.companyInfo(entNo));
			// DB에서 기업 번호로 기업 데이터 가져옴 끝
			String seq = apiList.get(0).getSeq(); // seq 값
			seq = URLDecoder.decode(seq,"UTF-8"); //디코딩
			
			String servicekey2 = "ZE%2FyNNIkFe7TiKpeKRdbPC4WdjWNPX76FEeHfwGKdcTQMkXBnHJ8FbADGE9oIEcx%2B8ZCO8aTfD39YcSFyPgrpw%3D%3D";// 서비스 인증키
			String spec2 = "http://apis.data.go.kr/B552015/NpsBplcInfoInqireService/getDetailInfoSearch?"; // 공공데이터 포탈에서 받은 주소
			spec2 += "seq=" + URLEncoder.encode(seq, "utf-8") // 시퀀스
					+ "&serviceKey=" + servicekey2; // 서비스 키
			
			DocumentBuilderFactory fac = DocumentBuilderFactory.newInstance();
			
			DocumentBuilder bd = fac.newDocumentBuilder();
			
			Document doc2 = bd.parse(spec2);
			doc2.getDocumentElement().normalize();
			
			Element root2 = doc2.getDocumentElement();
			
			NodeList nodList = root2.getElementsByTagName("item");
			List<openApiVo> openList = new ArrayList<>();
			for(int a = 0; a<nodList.getLength(); a++ ) {
				Node nod = nodList.item(a);
				NodeList childList = nod.getChildNodes();
				openApiVo av = new openApiVo();
				
				for(int b =0; b<childList.getLength(); b++) {
					Node nods = childList.item(b);
					String val = nods.getNodeName();
					if(val.equals("#text")) continue;
					if(val.equals("wkplNm")) av.setWkplNm(nods.getTextContent());
					if(val.equals("wkplRoadNmDtlAddr")) av.setWkplRoadNmDtlAddr(nods.getTextContent());
					if(val.equals("crrmmNtcAmt")) av.setCrrmmNtcAmt(nods.getTextContent());
					if(val.equals("jnngpCnt")) av.setJnngpCnt(nods.getTextContent());
					if(val.equals("adptDt")) av.setAdptDt(nods.getTextContent());
				}
				openList.add(av);
				mv.addObject("apiList",openList);
				mv.addObject("list",service.companyInfo(entNo));
				mv.setViewName("enterprise/com_info");
			}
						
		}
		return mv;
	}
	
	

}
