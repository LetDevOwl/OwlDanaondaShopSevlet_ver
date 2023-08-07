<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 페이지</title>
<link rel="stylesheet" href="/resources/css/products/productDetailPageCss.css" />
</head>
<body>
	<div class="container">
            <header>
                <div class="header">
                    <div class="category">
                        <details>
                            <summary></summary>
                            <ul>
                                <li>
                                    <a href="/products/productList.do">
                                        <h3>PC주요부품</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="/products/productList.do">
                                        <h3>PC저장장치</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="/products/productList.do">
                                        <h3>모니터/사운드</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="/products/productList.do">
                                        <h3>PC주변기기</h3>
                                    </a>
                                </li>
                                <li>
                                    <a href="/products/productList.do">
                                        <h3>복합기/프린터/소프트웨어</h3>
                                    </a>
                                </li>
                            </ul>
                        </details>
                    </div>
                    <div class="logoImg">
                        <img src="/resources/images/computet_icon.png" />
                    </div>
                    <a href="/mainPage.jsp">
                        <div class="title">DANAONDA SHOP</div>
                    </a>
                    <div class="login_register_box">
	                <c:if test="${userId ne null }">
				        <a href="/user/logout.do" class="logout" style="margin-right: 8px">로그아웃</a>
				        <div class="vertical_devider"></div>
				        <a href="/user/mypage.do" class="myPage">마이페이지</a>
	                </c:if>
	                <c:if test="${userId eq null }">
	                    <a href="/user/login.do" class="login">로그인</a>
	                    <div class="vertical_devider"></div>
	                    <a href="/user/register.do" class="login">회원가입</a>
	                </c:if>
                </div>
                </div>
                <hr />
            </header>
            <main>
                <div class="mainDiv">
                    <div class="productDetailDiv">
                        <div class="productImg">
                            <img src="/resources/images/product/graphic_card.jpg" alt="상품 이미지" />
                        </div>
                        <div class="productExplain">
                            <img src="/resources/images/product_explain/product_explain.png" alt="상품 설명" />
                        </div>
                    </div>
                    <div class="buyDivWrapper">
                        <div class="buyDiv">
                            <div class="buyLayout">
                                <div class="productName"><b>Geforce RTX 3070</b></div>
                                <hr />
                                <div class="priceDiv">
                                    <div class="priceText">상품 가격</div>
                                    <div class="price">100,000원</div>
                                </div>
                                <div class="countDiv">
                                    <div class="countText">주문 수량</div>
                                    <div class="count">
                                        <input type="number" name="" id="productCount" placeholder="1" />
                                    </div>
                                </div>
                                <div class="deliWayDiv">
                                    <div class="deliWayText">배송 방법</div>
                                    <div class="deliWay">
                                        <select value="productDeli">
                                            <option value="parcel">택배</option>
                                            <option value="quick ">퀵 서비스</option>
                                            <option value="pickUp">직접수령</option>
                                        </select>
                                    </div>
                                </div>
                                <hr />
                                <div class="totalPriceDiv">
                                    <div class="totalPriceText">총 합계금액 :</div>
                                    <div class="totalPrice">100,000원</div>
                                </div>
                                <div class="btnDiv">
                                    <div class="saveBtnDiv">
                                        <button class="saveBtn">장바구니</button>
                                    </div>
                                    <div class="buyBtnDiv">
                                        <button class="buyBtn">구매하기</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <footer></footer>
        </div>
</body>
</html>