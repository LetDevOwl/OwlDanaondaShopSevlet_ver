<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>다나온다 숍</title>
		<link rel="stylesheet" href="/resources/css/mainPage/mainPageCss.css" />
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
                    <a href="/index.jsp">
                        <div class="title">DANAONDA SHOP</div>
                    </a>
	                    <div class="login_register_box">
                    		<c:if test="${userId ne null }">
		                        <a href="/user/logout.do" class="logout" style="margin-right: 8px">로그아웃</a>
		                        <div class="vertical_devider"></div>
		                        <a href="/user/mypage.do?user-id=${userId }" class="myPage">마이페이지</a>
                   	 		</c:if>
                    		<c:if test="${userId eq null }">
		                        <a href="/user/login.do" class="login">로그인</a>
		                        <div class="vertical_devider"></div>
		                        <a href="/user/register.do" class="register">회원가입</a>
                    		</c:if>
	                    </div>
                </div>
                <hr />

                <div class="banner_box">
                    <div class="banner_contents">
                        <div class="banner">
                            <div class="banner_information_box">
                                <div class="banner_title"><a href="/notice/list.do?currentPage=1">공지사항</a></div>
                                <div class="banner_description">description</div>
                            </div>
                            <div class="image"></div>
                        </div>
                        <div class="bullet_list">
                            <li></li>
                            <li></li>
                            <li></li>
                        </div>
                    </div>
                </div>

                <div class="main_contents_box">
                    <div class="array">
                        <div class="item">
                            <a href="/products/productDetail.do">
                                <div class="thumbnail">
                                    <img src="/resources/images/product/graphic_card_thumbnail.png" />
                                </div>
                                <div class="product_information">
                                    <div class="name">상품이름: 상품이름</div>
                                    <div class="description">상품설명: 상품설명</div>
                                    <div class="amount">상품가격: 100,000</div>
                                </div>
                            </a>
                        </div>

                        <div class="item">
                            <a href="/products/productDetail.do">
                                <div class="thumbnail">
                                    <img src="/resources/images/product/graphic_card_thumbnail.png" />
                                </div>
                                <div class="product_information">
                                    <div class="name">상품이름: 상품이름</div>
                                    <div class="description">상품설명: 상품설명</div>
                                    <div class="amount">상품가격: 100,000</div>
                                </div>
                            </a>
                        </div>

                        <div class="item">
                            <a href="/products/productDetail.do">
                                <div class="thumbnail">
                                    <img src="/resources/images/product/graphic_card_thumbnail.png" />
                                </div>
                                <div class="product_information">
                                    <div class="name">상품이름: 상품이름</div>
                                    <div class="description">상품설명: 상품설명</div>
                                    <div class="amount">상품가격: 100,000</div>
                                </div>
                            </a>
                        </div>

                        <div class="item">
                            <a href="/products/productDetail.do">
                                <div class="thumbnail">
                                    <img src="/resources/images/product/graphic_card_thumbnail.png" />
                                </div>
                                <div class="product_information">
                                    <div class="name">상품이름: 상품이름</div>
                                    <div class="description">상품설명: 상품설명</div>
                                    <div class="amount">상품가격: 100,000</div>
                                </div>
                            </a>
                        </div>

                        <div class="item">
                            <a href="/products/productDetail.do">
                                <div class="thumbnail">
                                    <img src="/resources/images/product/graphic_card_thumbnail.png" />
                                </div>
                                <div class="product_information">
                                    <div class="name">상품이름: 상품이름</div>
                                    <div class="description">상품설명: 상품설명</div>
                                    <div class="amount">상품가격: 100,000</div>
                                </div>
                            </a>
                        </div>

                        <div class="item">
                            <a href="/products/productDetail.do">
                                <div class="thumbnail">
                                    <img src="/resources/images/product/graphic_card_thumbnail.png" />
                                </div>
                                <div class="product_information">
                                    <div class="name">상품이름: 상품이름</div>
                                    <div class="description">상품설명: 상품설명</div>
                                    <div class="amount">상품가격: 100,000</div>
                                </div>
                            </a>
                        </div>

                        <div class="item">
                            <a href="/products/productDetail.do">
                                <div class="thumbnail">
                                    <img src="/resources/images/product/graphic_card_thumbnail.png" />
                                </div>
                                <div class="product_information">
                                    <div class="name">상품이름: 상품이름</div>
                                    <div class="description">상품설명: 상품설명</div>
                                    <div class="amount">상품가격: 100,000</div>
                                </div>
                            </a>
                        </div>

                        <div class="item">
                            <a href="/products/productDetail.do">
                                <div class="thumbnail">
                                    <img src="/resources/images/product/graphic_card_thumbnail.png" />
                                </div>
                                <div class="product_information">
                                    <div class="name">상품이름: 상품이름</div>
                                    <div class="description">상품설명: 상품설명</div>
                                    <div class="amount">상품가격: 100,000</div>
                                </div>
                            </a>
                        </div>

                        <div class="item">
                            <a href="/products/productDetail.do">
                                <div class="thumbnail">
                                    <img src="/resources/images/product/graphic_card_thumbnail.png" />
                                </div>
                                <div class="product_information">
                                    <div class="name">상품이름: 상품이름</div>
                                    <div class="description">상품설명: 상품설명</div>
                                    <div class="amount">상품가격: 100,000</div>
                                </div>
                            </a>
                        </div>
                        <div class="item">
                            <a href="/products/productDetail.do">
                                <div class="thumbnail">
                                    <img src="/resources/images/product/graphic_card_thumbnail.png" />
                                </div>
                                <div class="product_information">
                                    <div class="name">상품이름: 상품이름</div>
                                    <div class="description">상품설명: 상품설명</div>
                                    <div class="amount">상품가격: 100,000</div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="fixed_bar"></div>
                </div>
            </header>

            <main>
                <!-- 배너 -->
                <div></div>
                <!-- 메인 컨텐츠 -->
                <div>
                    <!-- 최신 상품목록 -->
                    <div>
                        <div></div>
                    </div>
                    <!-- 사이드바 -->
                    <div>
                        <div></div>
                    </div>
                </div>
            </main>

            <footer>
                <div></div>
            </footer>
        </div>
	</body>
<script>
        const cardArray = [
            {
                img: null,
                name: 'name',
                description: 'description',
                amount: 100000,
            },
            {
                img: null,
                name: 'name',
                description: 'description',
                amount: 100000,
            },
            {
                img: null,
                name: 'name',
                description: 'description',
                amount: 100000,
            },
            {
                img: null,
                name: 'name',
                description: 'description',
                amount: 100000,
            },
            {
                img: null,
                name: 'name',
                description: 'description',
                amount: 100000,
            },
            {
                img: null,
                name: 'name',
                description: 'description',
                amount: 100000,
            },
        ];
    </script>
</html>