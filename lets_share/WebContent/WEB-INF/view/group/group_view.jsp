<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/head.jsp" %>
<head>
	<title>Let's Share</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="/resources/css/main.css" />
	<link rel="stylesheet" href="/resources/css/group/group_view.css" />
	<noscript><link rel="stylesheet" href="/resources/css/noscript.css" /></noscript>
	<!-- 모달 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
	<!-- fullCalendar 사용 -->
	<link href='../../../resources/css/cal_lib/main.css' rel='stylesheet' />
    <script src='../../../resources/css/cal_lib/main.js'></script>
    <script>
    	document.addEventListener('DOMContentLoaded', function() {
    		/* 날짜 지정  */
    		var today = new Date(); 
    		today.setDate(1); //달력은 이번달 초부터 다음달 말까지 표시해준다.
    		var endday = new Date(today.getFullYear(),today.getMonth()+2,0);
    		endday.setDate(endday.getDate()+1);
    		/* 결제일, 입금일 지정 !!(el사용하여 입력) */
    		var payDay = '2021-02-17';
    		var prepayDay = '2021-02-14';
    		/* 사용 가능한 날짜 지정 !!(el사용하여 입력) */
    		var accessableDay = '2021-03-14';
    		/* 캘린더 생성 */
    		var calendarEl = document.getElementById('calendar');
    		var calendar = new FullCalendar.Calendar(calendarEl, {
    			initialView: 'dayGridMonth',
    			validRange: {
       	        	start: today,
       	        	end: endday
       	    	},
       	    	events: [
       	    		{
       	    			id: 'payDate',
       	    			title: '결제일',
       	    			start: payDay,
       	    			color:'red'
       	    		},
       	    		{
       	    			id: 'prepayDay',
       	    			title: '입금일',
       	    			start: prepayDay,
       	    			color: 'red'
       	    		},
       	    		{
       	    			id: 'accessableDay',
       	    			start: prepayDay,
       	    			end: accessableDay,
       	    			backgroundColor:'#00fff2',
       	    			overlap:false,
       	    			display:'background'
       	    		}
       	    	],
    			
			});
    	/* 캘린더 크기 지정 */
    	calendar.setOption('contentHeight','auto');
    	/* 캘린더 언어 지정, 캘린더 출력  */
        calendar.setOption('locale','kr');
        calendar.render();
      });
    </script>
</head>
	<body class="no-sidebar is-preload">
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
			<div class="wrapper style1">
				<div class="top">
					<div class="logo_box"><img src="../../../resources/images/group/${group.getServiceCode()}.PNG" alt=""></div>
					<div class="title_box">
						<a href="">
							<c:choose>
								<c:when test="${group.getServiceCode() eq 'SR01'}">
									넷플릭스 서비스 (No.${group.getGroupId()}) 
								</c:when>
								<c:when test="${group.getServiceCode() eq 'SR02'}">
									왓챠 서비스 (No.${group.getGroupId()})
								</c:when>
								<c:when test="${group.getServiceCode() eq 'SR03'}">
									쿠팡플레이 서비스 (No.${group.getGroupId()})
								</c:when>
								<c:when test="${group.getServiceCode() eq 'SR04'}">
									웨이브 서비스 (No.${group.getGroupId()})
								</c:when>
								<c:when test="${group.getServiceCode() eq 'SR05'}">
									티빙 서비스 (No.${group.getGroupId()})
								</c:when> 
							</c:choose>
						</a>
					</div>
				</div>
				<!-- 캘린더 호출 -->
				<div class="calendar_box">
					<div id="calendar"></div>
				</div>
				<div class="calendar_box">
					<div id="tip_msg"><div id="color-box"></div>는 서비스를 이용 가능한 기간입니다. </div>	
				</div>
				<c:if test="${group.getMemberId()==sessionScope.userId}">
					<!-- 그룹장으로판명 그룹 대기 리스트 그려주자 -->
				</c:if>
				<div class="bottom">
					<div class="">
						<button>ID/PW 확인</button>
					</div>
					<div class="">
						<button>모임 탈퇴</button>
					</div>
				</div>
			</div>
			<!-- Footer -->
			<div id="footer">
				<div style="text-align: center;">Copyright © 1998-2021 KH Information Educational Institute All Right Reserved</div>
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
		<!-- 모달 -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
	</body>
</html>