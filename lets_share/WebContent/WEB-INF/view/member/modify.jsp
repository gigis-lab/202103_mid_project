<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/head.jsp" %>
<head>
		<title>Let's Share</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/resources/css/modify.css" />
		<link rel="stylesheet" href="/resources/css/main.css" />
		<noscript><link rel="stylesheet" href="/resources/css/noscript.css" /></noscript>
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
					<div class="left_menu">
						<div><i class="fas fa-trophy"></i>  회원 랭킹</div>
						<div><i class="fas fa-edit"></i>  회원 정보 수정</div>
					</div>
					<h1 class="modify_title">회원정보 수정</h1>
					<div class="pw_secure contents">
						<span>보안을 위해 비밀번호를 입력해주세요.</span>
						<form class="pw_secure_auth">
							<span>비밀번호</span>
							<input type="password">
							<button>확인</button>
						</form>
					</div>
					<div class="modify_info contents">
						<form class="wrap_info">
							<div class="id infobox">
								<span class="name">아이디</span>
								<span class="value">접속한 유저 아이디(수정 불가)</span>
							</div>
							<div class="password infobox">
								<span class="name">비밀번호 변경</span>
								<input type="password" placeholder="변경할 비밀번호를 입력하세요." class="value">
							</div>
							<div class="password_confirm infobox">
								<span class="name">비밀번호 확인</span>
								<input type="password" placeholder="변경할 비밀번호를 다시 입력하세요." class="value">
							</div>
							<div class="nickname infobox">
								<span class="name">닉네임</span>
								<input type="text" placeholder="현재 사용중인 닉네임" class="value">
								<button>중복확인</button>
							</div>
							<div class="confirm_msg">
							<span class="name"></span>
							<!-- 중복확인 클릭시에만 텍스트 표시(페이지로드시에는 내용x) -->
							<span class="value">중복된 아이디입니다.</span>
							</div>
							<div class="email infobox">
								<span class="name">이메일</span>
								<span class="value">아이디를 인증한 이메일(수정 불가)</span>
							</div>
							<div class="wrap_btn">
								<button id="leave_btn">회원 탈퇴하기</button>
								<button id="cancel_btn">돌아가기</button>
								<button id="save_btn">저장</button>
							</div>
						</form>
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

	</body>
</html>