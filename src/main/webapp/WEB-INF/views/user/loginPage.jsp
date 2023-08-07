<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" href="/resources/css/register/loginPageCss.css" />
</head>
<body>
	<div class="container">
        <header>
            <div class="header">
                <div class="logoImg">
                    <img src="/resources/images/computet_icon.png" />
                </div>
                <a href="/index.jsp">
                	<div class="title">DANAONDA SHOP</div>
                </a>
            </div>
        </header>
        <div class="auto_login_field">
            <input type="checkbox" class="auto_login" />자동 로그인
        </div>
        <form action="/user/login.do" method="post">
        	<input type="hidden" name="prev_url" value="${prevUrl }">
	        <div class="login_field">
	            <div class="id_field">
	                <input type="text" id="user_id" name="user_id" placeholder="아이디" />
	            </div>
	            <div class="pw_field">
	                <input type="password" id="user_pw" name="user_pw" placeholder="비밀번호" />
	            </div>
	            <button class="loginBtn">로그인</button>
	        </div>
	        <div class="login_footer">
	            <a href="/register/register.do">회원가입</a>
	            <div class="vertical_devider"></div>
	            <a href="/register/searchId.do">아이디 패스워드 찾기</a>
	        </div>
        </form>

        <footer>
            <div></div>
        </footer>
    </div>
</body>
</html>