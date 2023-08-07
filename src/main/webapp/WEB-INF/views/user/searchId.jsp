<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet" href="/resources/css/register/searchIdCss.css">
</head>
<body>
	<div class="container">
        <header>
            <div class="header">
                <div class="logo">
                    <div class="logoImg">
                        <img src="/resources/images/computet_icon.png" alt="로고">
                    </div>
                    <a href="/index.jsp">
                    	<div class="logoTitle">DANAONDA SHOP</div>
                    </a>
                </div>
                <div class="title">
                    <h1>아이디 찾기</h1>
                </div>
            </div>
        </header>

        <body>
            <div class="userInfoField">
                <div class="searchCategory">
                    <input type="radio" name="category" id="searchId" checked>
                    <label for="searchId">아이디 찾기</label>
                    <input type="radio" name="category" id="searchPw">
                    <label for="searchPw"><a href="/register/searchPw.jsp">비밀번호 찾기</a></label>
                </div>
                <div class="email">
                    <input type="email" name="" id="email" placeholder="이메일">
                </div>
                <div class="userName">
                    <input type="text" name="" id="userName" placeholder="이름">
                </div>
                <div class="searchIdBtn">
                    <input type="submit" value="아이디 찾기">
                </div>
            </div>
        </body>
        <footer>

        </footer>
    </div>
</body>
</html>