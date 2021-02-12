<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.notice.controller.NoticeController" %>
<%@page import="java.util.List"%>
<%@ include file="/WEB-INF/view/include/head.jsp" %>
<head>
		<title>Let's Share</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/resources/css/main.css" />
		<link rel="stylesheet" href="../../../resources/css/notice/notice_list.css"/>
		<noscript><link rel="stylesheet" href="/resources/css/noscript.css" /></noscript>
</head>
<body class="no-sidebar is-preload">
<%

%>

	<div id="page-wrapper">
	
	<!-- Header -->
	<div id="header">

		<!-- Inner -->
		<div class="inner">
			<header>
				<h1><a href="index.html" id="logo">Let's Share</a></h1>
			</header>
		</div>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="#">구매자 모집</a></li>
				<li><a href="left-sidebar.html">구매 참여</a></li>
				<li><a href="right-sidebar.html">신고 게시판</a></li>
				<li><a href="no-sidebar.html">공지 사항</a></li>
			</ul>
		</nav>

	</div>

<!-- Main -->
<!-- <div class="wrapper style1"> -->
	<div id="main">
		<div class="section">
		<h2>공지사항</h2>
			
		<ul class="tab_menu">
			<li class="n_menu">
				<a href="/notice/noticeList">공지사항</a>
			</li>
			<li class="e_menu">
				<a href="/notice/eventList">이벤트</a>
			</li>
		</ul>
		
		<div class="tab_content">
			<div id="search_bar">
				<select id="search_sel" name="select">
					<option value="sel_all">전체  ▼ </option>
					<option value="sel_title">제목</option>
					<option value="sel_content">내용</option>
				</select>
				<input type="text" class="searchText" name="searchText" placeholder="검색어를 입력하세요.">
				<button class="search_btn" onclick="searchList">조회</button>
			</div>
	
			<div class="table_wrap">
				<table class="tb_list">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성날짜</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
					
					<c:forEach var="noticeList" items="${noticeList}">
						<tr>
							<td class="num">
								${noticeList.noticeNo}
							</td>
							<td class="title">
                      		  <a href="/notice/noticeDetail?noticeNo=${noticeList.noticeNo}">
                        	  	${noticeList.noticeTitle}
                        		</a>
                     		</td>
							<td class="writer">
								관리자
							</td>
							<td class="date">
								${noticeList.noticeDate}
							</td>
							<td class="hit">
								${noticeList.noticeView}
							</td>
						</tr>
					</c:forEach>
						
					
					</tbody>				
				</table>

			</div>
				
			<c:set var="page" value="${(requestScope.p = null)?1:requestScope.p}" />
            <c:set var="startNum" value="${page-(page-1)%5}" />
            <c:set var="lastNum" value="${requestScope.page}" />
            
            <!-- 이전버튼 -->
            <c:if test="${startNum>1}"> 
               <a href="?p=${startNum-1}" class="page_btn btn_left">이전</a> <!-- ${startNum-1} : 이전번호를 눌렀을때 마지막번호를 띄워주기 -->
            </c:if>
            <c:if test="${startNum<=1}">
               <span onclick="alert('이전 페이지가 없습니다.');"></span>
            </c:if>

			<!-- 12345 -->
			<ul class="paging">
				<c:forEach var="i" begin="0" end="4">
					<li><a class="page_btn" href="?p=${startNum+i}">${startNum+i}</a></li>
				</c:forEach>
			</ul>

			<!-- 다음버튼 -->
			<c:if test="${startNum<lastNum}">
               <a href="/notice/noticeList?p=${startNum+5}" class="page_btn btn_right">다음</a>
            </c:if>
            <c:if test="${startNum+5>=lastNum}">
               <span class="" onclick="alert('다음 페이지가 없습니다.');"></span>
            </c:if>
			
			<!-- 게시판 페이지 번호 
			<div class="paging">
				<a class="page_btn" href="">1</a>
				<a class="page_btn" href="">2</a>
				<a class="page_btn" href="">3</a>
				<a class="page_btn" href="">4</a>
			</div>-->
			
			
				
					
				<!-- 글쓰기 버튼 -->
				<c:if test="${sessionScope.user.mbId != null && sessionScope.user.mbId eq 'admin'}">
					<div class="write_btn">
						<button id="write" onclick="changeWriter()">글쓰기</button>				
					</div>	
				</c:if>
					
					<script type="text/javascript">
						function changeWriter(){
							location.href="writer";
						}
					</script>
							
						
				<div class="write_btn">
					<button id="write" onclick="changeWriter()">글쓰기</button>				
				</div>						
			<%--  관리자 로그인 승현님 --%>
	        <c:if test="${sessionScope.sessionID !=null && sessionScope.MB_LEVEL=='MB10'}">
	            <button id="memberViewBtn" class="btn btn-warning" onclick="changeView(5)">회원보기</button>
	        </c:if>
				
				
			</div>
		</div>
		
	</div>
<%-- </div> --%>
								
		         <%--  관리자 로그인 승현님 --%>
           <c:if test="${sessionScope.sessionID !=null && sessionScope.MB_LEVEL=='MB10'}">
               <button id="memberViewBtn" class="btn btn-warning" onclick="changeView(5)">회원보기</button>
           </c:if>
            
            
         </div>
      </div>
      
   </div>

<!-- Footer -->
	<div id="footer">
		<div style="text-align: center;">
			Copyright © 1998-2021 KH Information Educational Institute All Right Reserved
		</div>
	</div>

	</div>

	<!-- Scripts -->
	<script src="/resources/js/jquery.min.js"></script>
	<script src="/resources/js/jquery.dropotron.min.js"></script>
	<script src="/resources/js/jquery.scrolly.min.js"></script>
	<script src="/resources/js/jquery.scrollex.min.js"></script>
	<script src="/resources/js/browser.min.js"></script>
	<script src="/resources/js/breakpoints.min.js"></script>
	<script src="/resources/js/util.js"></script>
	<script src="/resources/js/main.js"></script>
	
	<!-- Javascript  -->
	

	</body>
</html>