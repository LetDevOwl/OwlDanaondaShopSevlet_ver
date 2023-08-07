<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="/resources/css/register/myPageCss.css">
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
                    <h1>마이페이지</h1>
                </div>
            </div>
        </header>
        <main>
        	<form action="/user/update.do" method="post">
            <div class="userInfo_Field">
                <div class="user_id">
                    <input type="text" name="user_id" id="user_id" placeholder="아이디" value ="${user.userId }" readonly>
                </div>
                <div class="user_pw">
                    <input type="password" name="user_pw" id="user_pw" placeholder="비밀번호" value = "${user.userPw }" readonly>
                </div>
                <div class="email">
                    <input type="text" name="email" id="email" placeholder="이메일" value = "${user.userEmail }">
                </div>
                <div class="nickname">
                    <input type="text" name="nickname" id="nickname" placeholder="닉네임" value = "${user.userNickName }">
                </div>
                <div class="name">
                    <input type="text" name="name" id="name" placeholder="이름" value = "${user.userName }" readonly>
                </div>
                <div class="tel">
                    <input type="text" name="tel" id="tel" placeholder="전화번호" value = "${user.userPhone }">
                </div>
                <div class="gender">
                	<input type="hidden" id="gender" name="gender" value="${user.userGender }">
					<c:if test="${user.userGender eq 'M' }">남자</c:if>
					<c:if test="${user.userGender eq 'F' }">여자</c:if>
                </div>
                <div class="submitBtn">
               		<button class="submitBtn">수정하기</button>
               		<button class="deleteBtn"><a href="javascript:void(0)" onclick="checkDelete();">탈퇴하기</a></button>
                </div>
            </div>
            </form>
        </main>
        <footer>
            <div class="footer">

            </div>
        </footer>
    </div>
    
    <script>
			function checkDelete() {
				const userId = '${sessionScope.userId}';
				if(confirm("탈퇴하시겠습니까?")) {
					location.href = "/user/delete.do?userId="+userId;
				}				
			}
	</script>
</body>
</html>