
package com.project.jobnom.common.pagebar;
public class PageBarFactory {
	
	public static String getPageBar(int totalData, int cPage, int numPerpage, String memNo,String uri) {
		
		String pageBar="";
		
		int pageBarSize=5;
		
		int totalPage=(int)Math.ceil((double)totalData/numPerpage);
		int pageNo=((cPage-1)/pageBarSize)*pageBarSize+1;
		int pageEnd=pageNo+pageBarSize-1;
		
		pageBar+="<ul class='pagination justify-content-center pagination-sm'>";
		
		if(pageNo==1) {
			pageBar+="<li class='page-item disabled'>";
			pageBar+="<a class='page-link' href='#'>이전</a>";
			pageBar+="</li>";
		}else {
			pageBar+="<li class='page-item'>";
			pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo-1)+")'>이전</a>";
			pageBar+="</li>";
		}
		
		while(!(pageNo>pageEnd||pageNo>totalPage)) {
			if(pageNo==cPage) {
				pageBar+="<li class='page-item active'>";
				pageBar+="<a class='page-link' href='#'>"+pageNo+"</a>";
				pageBar+="</li>";
			}else   {
				pageBar+="<li class='page-item'>";
				pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo)+")'>"+pageNo+"</a>";
				pageBar+="</li>";
			}
			pageNo++;
		}
		
		if(pageNo>totalPage) {
			pageBar+="<li class='page-item disabled'>";
			pageBar+="<a class='page-link' href='#'>다음</a>";
			pageBar+="</li>";
		}else {
			pageBar+="<li class='page-item'>";
			pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo)+")'>다음</a>";
			pageBar+="</li>";
		}
	
		pageBar+="</ul>";
		
		pageBar+="<script>";
		pageBar+="function fn_paging(cPage){";
		pageBar+="location.href='"+uri+"?cPage='+cPage+'&memNo="+memNo+"';";
		pageBar+="}";
		pageBar+="</script>";
		return pageBar;
	}
	
	

public static String getPageBar2(int totalData, int cPage, int numPerpage ,String uri) {
	
	String pageBar="";
	
	int pageBarSize=5;
	
	int totalPage=(int)Math.ceil((double)totalData/numPerpage);
	int pageNo=((cPage-1)/pageBarSize)*pageBarSize+1;
	int pageEnd=pageNo+pageBarSize-1;
	
	pageBar+="<ul class='pagination justify-content-center pagination-sm'>";
	
	if(pageNo==1) {
		pageBar+="<li class='page-item disabled'>";
		pageBar+="<a class='page-link' href='#'>이전</a>";
		pageBar+="</li>";
	}else {
		pageBar+="<li class='page-item'>";
		pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo-1)+")'>이전</a>";
		pageBar+="</li>";
	}
	
	while(!(pageNo>pageEnd||pageNo>totalPage)) {
		if(pageNo==cPage) {
			pageBar+="<li class='page-item active'>";
			pageBar+="<a class='page-link' href='#'>"+pageNo+"</a>";
			pageBar+="</li>";
		}else {
			pageBar+="<li class='page-item'>";
			pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo)+")'>"+pageNo+"</a>";
			pageBar+="</li>";
		}
		pageNo++;
	}
	
	if(pageNo>totalPage) {
		pageBar+="<li class='page-item disabled'>";
		pageBar+="<a class='page-link' href='#'>다음</a>";
		pageBar+="</li>";
	}else {
		pageBar+="<li class='page-item'>";
		pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo)+")'>다음</a>";
		pageBar+="</li>";
	}

	pageBar+="</ul>";
	
	pageBar+="<script>";
	pageBar+="function fn_paging(cPage){";
	pageBar+="location.href='"+uri+"?cPage='+cPage;";
	pageBar+="}";
	pageBar+="</script>";
	return pageBar;
}



public static String getPageBar3(int totalDataSu, int cPage, int numPerpage, String memNo,String uri) {
	
	String pageBar="";
	
	int pageBarSize=5;
	
	int totalPage=(int)Math.ceil((double)totalDataSu/numPerpage);
	int pageNo=((cPage-1)/pageBarSize)*pageBarSize+1;
	int pageEnd=pageNo+pageBarSize-1;
	
	pageBar+="<ul class='pagination justify-content-center pagination-sm'>";
	
	if(pageNo==1) {
		pageBar+="<li class='page-item disabled'>";
		pageBar+="<a class='page-link' href='#'>이전</a>";
		pageBar+="</li>";
	}else {
		pageBar+="<li class='page-item'>";
		pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo-1)+")'>이전</a>";
		pageBar+="</li>";
	}
	
	while(!(pageNo>pageEnd||pageNo>totalPage)) {
		if(pageNo==cPage) {
			pageBar+="<li class='page-item active'>";
			pageBar+="<a class='page-link' href='#'>"+pageNo+"</a>";
			pageBar+="</li>";
		}else {
			pageBar+="<li class='page-item'>";
			pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo)+")'>"+pageNo+"</a>";
			pageBar+="</li>";
		}
		pageNo++;
	}
	
	if(pageNo>totalPage) {
		pageBar+="<li class='page-item disabled'>";
		pageBar+="<a class='page-link' href='#'>다음</a>";
		pageBar+="</li>";
	}else {
		pageBar+="<li class='page-item'>";
		pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo)+")'>다음</a>";
		pageBar+="</li>";
	}

	pageBar+="</ul>";
	
	pageBar+="<script>";
	pageBar+="function fn_paging(cPage){";
	pageBar+="location.href='"+uri+"?cPage='+cPage+'&memNo="+memNo+"';";
	pageBar+="}";
	pageBar+="</script>";
	return pageBar;
}




public static String getPageBar4(int totalDataIn, int cPage, int numPerpage, String memNo,String uri) {
	
	String pageBar="";
	
	int pageBarSize=5;
	
	int totalPage=(int)Math.ceil((double)totalDataIn/numPerpage);
	int pageNo=((cPage-1)/pageBarSize)*pageBarSize+1;
	int pageEnd=pageNo+pageBarSize-1;
	
	pageBar+="<ul class='pagination justify-content-center pagination-sm'>";
	
	if(pageNo==1) {
		pageBar+="<li class='page-item disabled'>";
		pageBar+="<a class='page-link' href='#'>이전</a>";
		pageBar+="</li>";
	}else {
		pageBar+="<li class='page-item'>";
		pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo-1)+")'>이전</a>";
		pageBar+="</li>";
	}
	
	while(!(pageNo>pageEnd||pageNo>totalPage)) {
		if(pageNo==cPage) {
			pageBar+="<li class='page-item active'>";
			pageBar+="<a class='page-link' href='#'>"+pageNo+"</a>";
			pageBar+="</li>";
		}else {
			pageBar+="<li class='page-item'>";
			pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo)+")'>"+pageNo+"</a>";
			pageBar+="</li>";
		}
		pageNo++;
	}
	
	if(pageNo>totalPage) {
		pageBar+="<li class='page-item disabled'>";
		pageBar+="<a class='page-link' href='#'>다음</a>";
		pageBar+="</li>";
	}else {
		pageBar+="<li class='page-item'>";
		pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo)+")'>다음</a>";
		pageBar+="</li>";
	}

	pageBar+="</ul>";
	
	pageBar+="<script>";
	pageBar+="function fn_paging(cPage){";
	pageBar+="location.href='"+uri+"?cPage='+cPage+'&memNo="+memNo+"';";
	pageBar+="}";
	pageBar+="</script>";
	return pageBar;
}








	
	



public static String getPageBar5(int totalData, int cPage, int numPerpage, int recNo ,String uri) {
	
	String pageBar="";
	
	int pageBarSize=5;
	
	int totalPage=(int)Math.ceil((double)totalData/numPerpage);
	int pageNo=((cPage-1)/pageBarSize)*pageBarSize+1;
	int pageEnd=pageNo+pageBarSize-1;
	
	pageBar+="<ul class='pagination justify-content-center pagination-sm'>";
	
	if(pageNo==1) {
		pageBar+="<li class='page-item disabled'>";
		pageBar+="<a class='page-link' href='#'>이전</a>";
		pageBar+="</li>";
	}else {
		pageBar+="<li class='page-item'>";
		pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo-1)+")'>이전</a>";
		pageBar+="</li>";
	}
	
	while(!(pageNo>pageEnd||pageNo>totalPage)) {
		if(pageNo==cPage) {
			pageBar+="<li class='page-item active'>";
			pageBar+="<a class='page-link' href='#'>"+pageNo+"</a>";
			pageBar+="</li>";
		}else {
			pageBar+="<li class='page-item'>";
			pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo)+")'>"+pageNo+"</a>";
			pageBar+="</li>";
		}
		pageNo++;
	}
	
	if(pageNo>totalPage) {
		pageBar+="<li class='page-item disabled'>";
		pageBar+="<a class='page-link' href='#'>다음</a>";
		pageBar+="</li>";
	}else {
		pageBar+="<li class='page-item'>";
		pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo)+")'>다음</a>";
		pageBar+="</li>";
	}

	pageBar+="</ul>";
	
	pageBar+="<script>";
	pageBar+="function fn_paging(cPage){";
	pageBar+="location.href='"+uri+"?cPage='+cPage+'&recNo="+recNo+"';";
	pageBar+="}";
	pageBar+="</script>";
	return pageBar;
}



public static String getPageBar6(int totalData, int cPage, int numPerpage, int anoNum ,String uri) {
	
	String pageBar="";
	
	int pageBarSize=5;
	
	
	int totalPage=(int)Math.ceil((double)totalData/numPerpage);
	int pageNo=((cPage-1)/pageBarSize)*pageBarSize+1;
	int pageEnd=pageNo+pageBarSize-1;
	
	pageBar+="<ul class='pagination justify-content-center pagination-sm'>";
	
	if(pageNo==1) {
		pageBar+="<li class='page-item disabled'>";
		pageBar+="<a class='page-link' href='#'>이전</a>";
		pageBar+="</li>";
	}else {
		pageBar+="<li class='page-item'>";
		pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo-1)+")'>이전</a>";
		pageBar+="</li>";
	}
	
	while(!(pageNo>pageEnd||pageNo>totalPage)) {
		if(pageNo==cPage) {
			pageBar+="<li class='page-item active'>";
			pageBar+="<a class='page-link' href='#'>"+pageNo+"</a>";
			pageBar+="</li>";
		}else  {
			pageBar+="<li class='page-item'>";
			pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo)+")'>"+pageNo+"</a>";
			pageBar+="</li>";
		}
		pageNo++;
	}
	
	if(pageNo>totalPage) {
		pageBar+="<li class='page-item disabled'>";
		pageBar+="<a class='page-link' href='#'>다음</a>";
		pageBar+="</li>";
	}else {
		pageBar+="<li class='page-item'>";
		pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo)+")'>다음</a>";
		pageBar+="</li>";
	}

	pageBar+="</ul>";
	
	pageBar+="<script>";
	pageBar+="function fn_paging(cPage){";
	pageBar+="location.href='"+uri+"?cPage='+cPage+'&anoNum="+anoNum+"';";
	pageBar+="}";
	pageBar+="</script>";
	return pageBar;
}


public static String getPageBar7(int totalDataSu, int cPage, int numPerpage, String memNo,String uri) {
	
	String pageBar="";
	
	int pageBarSize=5;
	
	int totalPage=(int)Math.ceil((double)totalDataSu/numPerpage);
	int pageNo=((cPage-1)/pageBarSize)*pageBarSize+1;
	int pageEnd=pageNo+pageBarSize-1;
	
	pageBar+="<ul class='pagination justify-content-center pagination-sm'>";
	
	if(pageNo==1) {
		pageBar+="<li class='page-item disabled'>";
		pageBar+="<a class='page-link' href='#'>이전</a>";
		pageBar+="</li>";
	}else {
		pageBar+="<li class='page-item'>";
		pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo-1)+")'>이전</a>";
		pageBar+="</li>";
	}
	
	while(!(pageNo>pageEnd||pageNo>totalPage)) {
		if(pageNo==cPage) {
			pageBar+="<li class='page-item active'>";
			pageBar+="<a class='page-link' href='#'>"+pageNo+"</a>";
			pageBar+="</li>";
		}else {
			pageBar+="<li class='page-item'>";
			pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo)+")'>"+pageNo+"</a>";
			pageBar+="</li>";
		}
		pageNo++;
	}
	
	if(pageNo>totalPage) {
		pageBar+="<li class='page-item disabled'>";
		pageBar+="<a class='page-link' href='#'>다음</a>";
		pageBar+="</li>";
	}else {
		pageBar+="<li class='page-item'>";
		pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo)+")'>다음</a>";
		pageBar+="</li>";
	}

	pageBar += "</ul>";

	pageBar += "<script>";
	pageBar += "function fn_paging(cPage){";
	pageBar += "$.ajax({";
	pageBar += "url : '"+uri+"',";
	pageBar += "type : 'POST',"; 
	pageBar += "dataType :'html',";
	pageBar += "data : {cPage:'+cPage+',memNo:'"+memNo+"'},";
	pageBar += "  success :data{";
	
	pageBar += "$('.with-parent').html('')";
	pageBar += "$('.with-parent').html(data)";
	pageBar += "    }";
	pageBar += "})";
	pageBar += "}";

	pageBar += "</script>";

	return pageBar;



}
public static String getPageBar8(int ReviewCount, int cPage, int numPerpage, String memNo,String uri) {
	
	String pageBar="";
	
	int pageBarSize=5;
	
	int totalPage=(int)Math.ceil((double)ReviewCount/numPerpage);
	int pageNo=((cPage-1)/pageBarSize)*pageBarSize+1;
	int pageEnd=pageNo+pageBarSize-1;
	
	pageBar+="<ul class='pagination justify-content-center pagination-sm'>";
	
	if(pageNo==1) {
		pageBar+="<li class='page-item disabled'>";
		pageBar+="<a class='page-link' href='#'>이전</a>";
		pageBar+="</li>";
	}else {
		pageBar+="<li class='page-item'>";
		pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo-1)+")'>이전</a>";
		pageBar+="</li>";
	}
	
	while(!(pageNo>pageEnd||pageNo>totalPage)) {
		if(pageNo==cPage) {
			pageBar+="<li class='page-item active'>";
			pageBar+="<a class='page-link' href='#'>"+pageNo+"</a>";
			pageBar+="</li>";
		}else {
			pageBar+="<li class='page-item'>";
			pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo)+")'>"+pageNo+"</a>";
			pageBar+="</li>";
		}
		pageNo++;
	}
	
	if(pageNo>totalPage) {
		pageBar+="<li class='page-item disabled'>";
		pageBar+="<a class='page-link' href='#'>다음</a>";
		pageBar+="</li>";
	}else {
		pageBar+="<li class='page-item'>";
		pageBar+="<a class='page-link' href='javascript:fn_paging("+(pageNo)+")'>다음</a>";
		pageBar+="</li>";
	}

	pageBar += "</ul>";

	pageBar += "<script>";
	pageBar += "function fn_paging(cPage){";
	pageBar += "$.ajax({";
	pageBar += "url : '"+uri+"',";
	pageBar += "type : 'POST',"; 
	pageBar += "dataType :'html',";
	pageBar += "data : {cPage:'+cPage+',memNo:'"+memNo+"'},";
	pageBar += "  success :data{";
	
	pageBar += "$('.with-parent').html('')";
	pageBar += "$('.with-parent').html(data)";
	pageBar += "    }";
	pageBar += "})";
	pageBar += "}";

	pageBar += "</script>";

	return pageBar;



}
}



	



