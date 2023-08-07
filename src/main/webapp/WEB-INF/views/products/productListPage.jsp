<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 리스트</title>
<link rel="stylesheet" href="/resources/css/products/productListPageCss.css" />
</head>
<body>
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
                    <!-- <img src="../../src/asset/icon/item/icon.svg" /> -->
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
				        <a href="/user/mypage.do" class="myPage">마이페이지</a>
	                </c:if>
	                <c:if test="${userId eq null }">
	                    <a href="/user/login.do" class="login">로그인</a>
	                    <div class="vertical_devider"></div>
	                    <a href="/user/register.do" class="login">회원가입</a>
	                </c:if>
                </div>
            </div>
        </header>
        <hr />
        <main>
            <div class="navBar">
                <div class="search_sortDiv_navBox"></div>
                <div class="search_sortDiv">
                    <div class="searchItemBox">
                        <input type="button" value="상품검색" />
                        <input type="search" name="" id="searchItem" />
                    </div>
                    <div class="sortOptionBox">
                        <select name="" id="sort">
                            <option value="newest">최신순</option>
                            <option value="price">가격순</option>
                            <option value="favorite">인기순</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="side_listDiv">
                <div class="sideBar">
                    <div class="dropdown">
                        <button onclick="PC_MainParts()" class="button">PC주요부품</button>
                        <div style="display: none" id="PC_Main_drop_content">
                            <a href="/products/productList.do">CPU</a>
                            <a href="/products/productList.do">메인보드</a>
                            <a href="/products/productList.do">메모리</a>
                            <a href="/products/productList.do">그래픽카드</a>
                            <a href="/products/productList.do">SSD/HDD</a>
                            <a href="/products/productList.do">케이스</a>
                            <a href="/products/productList.do">키보드/마우스</a>
                        </div>
                        <button onclick="PC_SubParts()" class="button">PC주변부품</button>
                        <div style="display: none" id="PC_Sub_drop_content">
                            <a href="/products/productList.do">모니터</a>
                            <a href="/products/productList.do">스피커</a>
                            <a href="/products/productList.do">쿨러</a>
                            <a href="/products/productList.do">프린트</a>
                        </div>
                    </div>
                </div>
                <div class="productList">
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
                </div>
            </div>
        </main>
        <footer></footer>

        <script>
            function PC_MainParts() {
                let click = document.getElementById('PC_Main_drop_content');
                if (click.style.display === 'none') {
                    click.style.display = 'block';
                } else {
                    click.style.display = 'none';
                }
            }
            function PC_SubParts() {
                let click = document.getElementById('PC_Sub_drop_content');
                if (click.style.display === 'none') {
                    click.style.display = 'block';
                } else {
                    click.style.display = 'none';
                }
            }
        </script>
    </body>
</html>