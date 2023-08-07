<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="/resources/css/register/registerCss.css">
</head>
<body>
	<div class="container">
        <header>
            <div class="header">
                <div class="logo">
                    <div class="logoImg">
                        <img src="/resources/images/computet_icon.png" />
                    </div>
                    <a href="/index.jsp">
                    	<div class="logoTitle">DANAONDA SHOP</div>
                    </a>
                </div>
                <div class="title">
                    <h1>회원가입</h1>
                </div>
            </div>
        </header>
        <main>
        	<form action="/user/register.do" method="post">
            <div class="userInfo_Field">
                <div class="user_id">
                    <input type="text" name="user_id" id="user_id" placeholder="아이디">
                </div>
                <div class="user_pw">
                    <input type="password" name="user_pw" id="user_pw" placeholder="비밀번호">
                </div>
                <div class="email">
                    <input type="text" name="email" id="email" placeholder="이메일">
                </div>
                <div class="nickname">
                    <input type="text" name="nickname" id="nickname" placeholder="닉네임">
                </div>
                <div class="name">
                    <input type="text" name="name" id="name" placeholder="이름">
                </div>
                <div class="tel">
                    <input type="text" name="tel" id="tel" placeholder="전화번호">
                </div>
                <div class="gender">
                    <input type="radio" name="gender" id="male" value="M" checked>
                    <label for="male">남자</label>
                    <input type="radio" name="gender" id="female" value="F">
                    <label for="female">여자</label>
                </div>
                <div class="registerBtn">
                    <input type="submit" value="회원가입">
                </div>
            </div>
            </form>
        </main>
        <footer>
            <div class="footer">

            </div>
        </footer>
    </div>
</body>
</html>