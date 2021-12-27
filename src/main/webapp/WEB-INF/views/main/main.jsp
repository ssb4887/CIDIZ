<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "java.io.PrintWriter" %>

<!DOCTYPE html>
<html>
<head>

<title>SIDIZ</title>
<link rel="stylesheet" href="${path}/resources/css/bootstrap.css"><!-- 부트스트랩 -->
<link rel="stylesheet" href="${path}/resources/css/custom.css"><!-- 부트스트랩 -->

<link rel="stylesheet" type="text/css" href="${path}/resources/css/default.css"><!-- 공통 css -->
<link rel="stylesheet" type="text/css" href="${path}/resources/css/main.css"><!-- 컨텐츠 css -->

<script src="${path}/resources/js/jquery-2.0.0.js"></script><!-- jquery js -->
<script src="${path}/resources/js/jquery.easing.1.3.js"></script><!-- easing js-->
<script src="${path}/resources/js/vendor.js"></script><!-- vendor js -->
<!-- <script src="/js/common.js"></script> --><!-- 공통 js_body밑에 -->
<script src="${path}/resources/js/script.js"></script><!-- 제이쿼리 --> 
<script src="${path}/resources/js/nav_jquery.js"></script><!-- 네비 js --> 
</head>

<body>
  <div class="wrapper">
    <!-- [상단(header)] -->
    <header id="header">
      <!-- 상단 : 로고 -->
      <h1 class="logo"><a href="${path }/">SIDIZ</a></h1>
    </header>
    <!-- 상단-네비 : 우측 아이콘 -->
    <div id="header_icon">
    			
      <ul class="nav-group">

        <li>
            <a href="#"><img src="${path}/resources/images/main_images/nav_my.png" alt="" /></a>
        </li>
        <li>
            <img src="${path}/resources/images/main_images/nav_write.png" alt="" class="write"/>
            <div class="search">
              <input type="text" id="search_form" name="keyword" class="top_srarch_text" title="" placeholder="검색" autocomplete="off">
              <input type="image" src="${path}/resources/images/main_images/nav_glass12.png" id="btnSearchTop" class="btn_top_srarch" title="검색" value="검색" alt="검색">
              <p class="search-box-close">
                X
              </p>
            </div>
        </li>
      </ul>
      <a href="#" class="nav-viewer">
        <i></i>
        <i></i>
        <i></i>
        
      </a>
    </div>

    <!-- [네비] -->
    <nav id="main_mn">
      <div class="nav-inner">
        <article id="side_mn">  
          <ul>
          <li>
	         <p>
		         	<!-- 로그인 안했을 때 표시  -->
		         	<c:if test = "${empty user_id}" >
		         		<a href = "${path}/login">
		         		<img src="${path}/resources/images/nav_images/nav_login_mypge.png" alt="" />Login
		         		</a>
		         	</c:if>
		         	
		         	<!-- 로그인 했을 때 표시  -->
		         	<c:if test = "${not empty user_id}" >
		         		<a href = "${path}/logout">
		         		<img src="${path}/resources/images/nav_images/nav_login_mypge.png" alt="" />Logout
		         		</a>
		         	</c:if>
		         
	         </p>
          </li>
            <li class="has-sp sp-1">
              <p>
                <a href="#">
                  <img src="${path}/resources/images/nav_images/nav_login_mypge.png" alt="" />My Page
                </a>
              </p>
            </li>
            <li class="has-sp sp-2">
              <p>
                <a href="basket">
                  <img src="${path}/resources/images/nav_images/nav_ShoppingBasket.png" alt="" />Shopping Basket
                </a>
              </p>
            </li>
            <li class="has-sp sp-3">
              <p>
                <a href="review">
                  <img src="${path}/resources/images/nav_images/nav_Review.png" alt="" />Review
                </a>
              </p>
            </li>
            <li class="has-sp sp-4">
              <p>
                <a href="#">
                  <img src="${path}/resources/images/nav_images/nav_Compare.png" alt="" />Compare
                </a>
              </p>
            </li>
            <li class="has-sp sp-5">
              <p>
                <a href="event">
                  <img src="${path}/resources/images/nav_images/nav_Event2.png " alt="" />Event
                </a>
              </p>
            </li>
            <li class="has-sp sp-6">
              <p>
                <a href="comparison">
                  <img src="${path}/resources/images/nav_images/nav_Event2.png " alt="" />comparison
                </a>
              </p>
            </li>
          </ul>
        </article>

        <article id="menu">
          <ul>
            <li id="about">
              <h4 class="has-sp sp-6">
                <p> <b>ABOUT SIDIZ</b> </p>
              </h4>
              <div class="contents">
                <ul id="first">
                  <li class="nav_title">
                    <a href="brand_story">
                      BRAND STORY
                      <img src="${path}/resources/images/nav_images/nav_ABOUT SIDIZ_1.png" alt="" id="brand_img"/>
                    </a>
                  </li>
                  <li class="nav_title">
                    <a href="news ">
                      NEWS<img src="${path}/resources/images/nav_images/nav_ABOUT SIDIZ_2.png" alt="" />
                    </a>
                  </li>
                </ul>
              </div>
            </li>
            <li id="products"  class="nav_title">
              <h4 class="has-sp sp-7" style="font-size:80px">
                <p> <b>PRODUCTS</b> </p>
              </h4>
              <div class="contents">
                <ul id="second">
                  <li>
                    <a href="productMenu">
                      사무용
                      <img src="${path}/resources/images/nav_images/nav_PRODUCTS_1.png" alt="" />
                    </a>
                  </li>
                  <li>
                    <a href="productMenu">
                      학생용
                      <img src="${path}/resources/images/nav_images/nav_PRODUCTS_2.png" alt="" />
                    </a>
                  </li>
                  <li>
                    <a href="productMenu">
                      유아용
                      <img src="${path}/resources/images/nav_images/nav_PRODUCTS_3.jpg" alt="" />
                    </a>
                  </li>
                  <li>
                    <a href="productMenu">
                      인테리어
                      <img src="${path}/resources/images/nav_images/nav_PRODUCTS_4.png" alt="" id="interior_img"/>
                    </a>
                  </li>
                  <li>
                    <a href="productMenu">
                      모든제품
                      <img src="${path}/resources/images/nav_images/nav_PRODUCTS_5.png" alt="" id="all_img"/>
                    </a>
                  </li>
                  
                </ul>
              </div>
            </li>
            <li id="support">
              <h4 class="has-sp sp-8">
                <p> <b>SUPPORT</b> </p>
              </h4>
              <div class="contents">
                <ul id="third">
                  <li>
                    <a href="bbs">
                      Q&A
                      <img src="${path}/resources/images/nav_images/nav_SUPPORT_1.png" alt="" />
                    </a>
                  </li>
                  <li>
                    <a href="https://bizmessage.kakao.com/chat/5bp5waCQLFl4-xgLbLGeNgf8qH_smEtv_c_acLTkgmU/5p0dRciBenRIQOKmSzS7Ag">
                      친절상담
                      <img src="${path}/resources/images/nav_images/nav_SUPPORT_2.png" alt="" id="counsel_img"/>
                    </a>
                  </li>
                  <li>
                    <a href="search_store">
                      매장찾기
                      <img src="${path}/resources/images/nav_images/nav_SUPPORT_3(1).png" alt="" id="map_img"/>
                    </a>
                  </li>
                </ul>
              </div>
            </li>
          </ul>
        </article>
      </div>
    </nav>

    <!-- [메인] -->
    <section id="main">

      <!-- [메인] 이미지_슬라이드 부분 -->
        <!-- 메인 : 왼쪽 배너 -->
        <div class="main-top-banner">
          <ul class="">
            <li class="tx-line"><a href="#main_slide1" class="on">sidiz</a></li>
            <li class="tx-line"><a href="#main_slide2">ible</a></li>
            <li class="tx-line"><a href="#main_slide3">molti</a></li>
          </ul>
        </div>
  
        <!-- 메인 : 왼쪽 첫번째 상단 글귀, 오른쪽 이미지 -->
        <div class="main-top">
          <!-- 메인 : 왼쪽 첫번째 상단 글귀 -->
          <div class="top-p">
            <div class="tx-line"><p>인생의 많은 순간,  </p></div>
            <div class="tx-line"><p>우리는 의자와 함께합니다. </p></div>
            <div class="tx-line"><p>시디즈는 앉음과 움직임을 연구합니다.</p></div>
          </div>    
          <!-- 메인 : 오른쪽 이미지 -->
          <div class="slide-inner-bg-w">
            <div class="r-cts">
              <div class="mid-pt">
                <div class="inner">
                  <img src="${path}/resources/images/main_images/main_1.png" alt=""> 
                </div>
              </div>
              <div class="mid-pt">
                <div class="inner">
                  <img src="${path}/resources/images/main_images/main_2.png" alt="">
                  <div class="caption">
                    학생용 의자<br>
                    ible
                </div>  
                </div>
              </div>
              <div class="mid-pt">
                  <div class="inner">
                    <img src="${path}/resources/images/main_images/main_3.png" alt="">
                      <div class="caption">
                        유아용 의자<br>
                        molti
                      </div>
                  </div>
              </div>
            </div>
          </div>
          <!-- 메인 : 왼쪽 글귀 -->
          <div class="slide-inner-w">
            <!-- 메인 : 왼쪽 글귀_1 -->
            <div class="slide-inner" id="main_slide1">
              <div class="l-cts">
                <h3 class="mid-p1">
                  <div class="tx-line"><p>의자 위 인생은</p></div>
                  <div class="tx-line"><p>진행중</p></div>
                </h3>
                <div class="bot-p-ani">
                  <div class="p">
                    sidiz
                    <p>
                      <div class="play">
                        <img src="${path}/resources/images/main_images/video-recorder-gc4117309d_1280.png" alt="">
                      </div>
                    </p>
                  </div>
                </div>
                <div class="bot-lk basic-tx-ani">
                  <div class="has-line"><p><a href="productMenu ">제품 보기</a></p></div>
                </div>
              </div>
            </div>
            <!-- 메인 : 왼쪽 글귀_2 -->
            <div class="slide-inner" id="main_slide2">
              <div class="l-cts">
                <h3 class="mid-p1">
                  <div class="tx-line"><p>바퀴는 빼고</p></div>
                  <div class="tx-line"><p>집중력은 더하다</p></div>
                </h3>
                <div class="bot-p-ani">
                  <div class="p">
                    ible
                    <br>
                    <p>
                      <div class="play">
                        <img src="${path}/resources/images/main_images/video-recorder-gc4117309d_1280.png" alt="">
                      </div>
                    </p>
                  </div>
                </div>
                <div class="bot-lk basic-tx-ani">
                  <div class="has-line"><p><a href="productMenu ">제품 보기</a></p></div>
                </div>
              </div>
            </div>
            <!-- 메인 : 왼쪽 글귀_3 -->
            <div class="slide-inner" id="main_slide3">
              <div class="l-cts">
                <h3 class="mid-p1">
                  <div class="tx-line"><p>앉음마부터 </p></div>                    
                  <div class="tx-line"><p>좋은 자세로</p></div>
                </h3>
                <div class="bot-p-ani">
                  <div class="p">
                    molti
                    <br>
                    <p>
                      <div class="play">
                        <img src="${path}/resources/images/main_images/video-recorder-gc4117309d_1280.png" alt="">
                      </div>
                    </p>
                  </div>
                </div>
                <div class="bot-lk basic-tx-ani">
                  <div class="has-line"><p><a href="${path}/resources/productMenu ">제품 보기</a></p></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
  
      <!-- [내용(contents)] 부분 -->
      <section id="contents">
        <!--내용 : 1. products 부분-->
        <div class="c_products"> 
          <h3>
            PRODUCTS
            <div class="shadow"></div>
          </h3>

          <ul class="list"> 
            <li class="grid1">
              <div class="inner">
                <div class="txtbox">
                  <!-- 밖 텍스트(가로글자) -->
                  <span class="text">사무용</span>
                  <!-- 안 텍스트(세로글자) -->
                  <img src="${path}/resources/images/main_images/contents1_samu2.png" alt="" class="txt-hover">
                </div>
                <!-- bg-hover에는 css로 백그라운드 이미지 줌 -->
                <div class="bg-hover">
                  <a href="productMenu " target="_self">
                    <!-- 안 css 백그라운드 이미지 옆에 텍스트 이미지 -->
                    <img src="${path}/resources/images/main_images/contents1_1_front_text.png" alt="">
                  </a>
                </div>
                <!-- 밖 -->
                <div class="bg-black"></div>
              </div>
            </li>
            <li class="grid2">
              <div class="inner">
                <div class="txtbox">
                  <span class="text">학생용</span>
                  <img src="${path}/resources/images/main_images/contents1_hak2.png" alt="학생용" class="txt-hover">
                </div>
                <div class="bg-hover">
                  <a href="productMenu" target="_self">
                    <img src="${path}/resources/images/main_images/contents1_2_front_text.png" alt="">
                  </a>
                </div>
                <!-- 밖 -->
                <div class="bg-black"></div>
              </div>
            </li>
            <li class="grid3">
              <div class="inner">
                <div class="txtbox">
                  <span class="text">유아용</span>
                  <img src="${path}/resources/images/main_images/contents1_young2.png" alt="유아용" class="txt-hover">
                </div>
                <div class="bg-hover">
                  <a href="productMenu " target="_self">
                    <img src="${path}/resources/images/main_images/contents1_3_front_text.png" alt="">
                  </a>
                </div>
                <!-- 밖 -->
                <div class="bg-black"></div>
              </div>
            </li>
            <li class="grid4">
              <div class="inner">
                <div class="txtbox">
                  <span class="text">인테리어</span>
                  <img src="${path}/resources/images/main_images/contents1_inte2.png" alt="인테리어" class="txt-hover">
                </div>
                <div class="bg-hover">
                  <a href="productMenu " target="_self">
                    <img src="${path}/resources/images/main_images/contents1_4_front_text.png" alt="">
                  </a>
                </div>
                <!-- 밖 -->
                <div class="bg-black"></div>
              </div>
            </li>
          </ul>
        </div>
  
        <!--내용 : 2. 리뷰 부분-->
        <div class="c_review">
          <article class="slider">
            <section class="text">
              <h3>REVIEW
                <div class="shadow"></div>
              </h3>
              <!-- 0은 버리는 부분 -->
              <div class="text0">
                <h4>T800HLDAS 좌판가죽</h4>
                <p>재택근무시 좋은 의자<br>
                  프리미엄 기능들은 다 갖춤<br>                  
                  장시간 앉아 있어도 너무 편함</p>
                <div class="star">
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                </div>
                <span class="c_id">by. 엠오티님</span>
              </div>
              <!-- //0은 버리는 부분 -->
              <div class="text1">
                <h4><a href="product ">T800HLDAS 좌판가죽</a></h4>
                <p>재택근무시 좋은 의자<br>
                  프리미엄 기능들은 다 갖춤<br>                  
                  장시간 앉아 있어도 너무 편함</p>
                <div class="star">
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                </div>
                <span class="c_id">by. 엠오티님</span>
              </div>
              <div class="text2">
                <h4><a href="product ">ible 화이트쉘</a></h4>
                <p>아이들 공부 의자로 최고<br>
                  바퀴는 빼고 집중력은 더하다.<br>                      
                  서울대 도서관에서 사용하는 의자</p>
                <div class="star">
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                </div>
                <span class="c_id">by. 알사탕님</span>
              </div>
              <div class="text3">
                <h4><a href="product ">몰티_하이체어</a></h4>
                <p>아기 몸에 딱 맞는 편한 의자<br>   
                  아이가 미끄러질까 하는 걱정이 쭘<br>                     
                  9개월 ~ 27개월 아이까지 모두 사용</p>
                <div class="star">
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                </div>
                <span class="c_id">by. 임솔님</span>
              </div>
              <div class="text4">
                <h4><a href="product ">MN801EY 등좌판커버</a></h4>
                <p>유럽감성의 디자인<br>  
                  다양한 디자인으로 분위기를 자유롭게 연출<br>                
                  곡선형 디자인이 자세를 부드럽게 받쳐 편안함</p>
                <div class="star">
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                  <span><img src="${path}/resources/images/main_images/contens_star11.png" alt=""></span>
                </div>
                <span class="c_id">by. 포니홈님</span>
              </div>                             
              <button id="prev"><b>&#60;</b></button> <!--버튼태그를 slider안에 넣음-->
              <span id="txt_num_area"><span class="txt_num">1 </span> / 4</span>
              <button id="next"><b>&#62;</b></button>
            </section>
  
            <section class="viewer">
              <ul>
                <!-- 0은 버리는 부분 -->
                <li class="img0">img0 <div class="ani">a</div></li>
                <!-- //0은 버리는 부분 -->
                <li class="img1">
                  <img src="${path}/resources/images/main_images/review1.jpg" alt="">
                  <div class="ani"><p>T800HLDAS 좌판가죽<br>L096X_블랙<br>&#92;882,000</p></div>
                </li>
                <li class="img2">
                  <img src="${path}/resources/images/main_images/review2.jpg" alt="">
                  <div class="ani"><p>ible 화이트쉘<br>452N_샌드 베이지<br>&#92;221,000</p></div>
                </li>
                <li class="img3">
                  <img src="${path}/resources/images/main_images/review3.jpg" alt="">
                  <div class="ani"><p>몰티_하이체어<br>A441P_Sandy Beige<br>&#92;319,000</p></div>
                </li>
                <li class="img4">
                  <img src="${path}/resources/images/main_images/review4.jpg" alt="">
                  <div class="ani"><p>MN801EY 등좌판커버<br>371_그레이<br>&#92;196,000</p></div>
                </li>
                <li class="img5">
                  <!-- <img src="images/main_images/review1.jpg" alt="">
                  <div class="ani"><p>T800HLDAS 좌판가죽<br>L096X_블랙<br>&#92;882,000</p></div> -->
                   <a href="review ">+ Review more</a>
                </li>
              </ul>
              <div class="bg_box"></div>
            </section>
          </article>
        </div>
  
        <!-- 내용 : 3. 인포 부분 -->
        <div id="c_info">
          <article class="qna">
            <h3>Q&A</h3>
            <p>궁금증을 풀어드립니다.</p>
            <a href="#">문의하기</a>
          </article>
          <article class="line"></article>
          <article class="tip">
            <h3>CHAIR CHOICE TIP</h3>
            <p>나에게 꼭 맞는 퍼스널 체어 선택 tip 3</p>
            <a href="tip ">more</a>
          </article>
        </div>
      </section>
  
      <!-- 동영상 -->
      <video id="video" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"  width="100%">
        <source src="${path}/resources/images/main_images/sidiz.mp4">
      </video>
      <p>
        <div class="stop">
          X
        </div>
      </p>
      
      <button onclick="location.href='search_store '" class="shop_btn">매장찾기</button><!-- 매장찾기 버튼 -->
      <button onclick="window.open('https://bizmessage.kakao.com/chat/open/%40sidiz_official?bot=true&amp;event=WEB_WELCOME')" class="chat_btn">챗봇문의</button><!-- 챗본문의 버튼 -->
  
      <!-- [하단(footer)] 부분 -->
      <footer id="footer">
          <!--하단 : 탑 부분-->
          <div id="f_top">
            <h2>
              <a href="index ">
                <img src="${path}/resources/images/main_images/footer_logo.png" alt="">
              </a>
            </h2>
            <span class="f_sns">
              <ul>
                <li>
                  <a href="https://www.facebook.com/sidizchair" target="_blank">
                    <img src="${path}/resources/images/main_images/footer_facebook.png" alt="">
                  </a>
                </li>
                <li>
                  <a href="https://www.instagram.com/sidiz_official/" target="_blank">
                    <img src="${path}/resources/images/main_images/footer_insta.png" alt="">
                  </a>
                </li>
                <li>
                  <a href="https://blog.naver.com/chairblues" target="_blank">
                    <img src="${path}/resources/images/main_images/footer_blog.png" alt="">
                  </a>
                </li>
              </ul>
            </span>
          </div>
    
          <!--하단 : 바텀 부분-->
          <div id="f_bom">
            <article class="wp30">
              <p class="lh18">
                  Copyright (c) 2019 SIDIZ, INC.<br>
                  All rights reserved.<br><br>
              </p>
              <p class="lh22">
                  (주)시디즈<br><br>
              </p>
              <p class="lh20">
                  대표이사 · 이상배<br>
                  경기도 평택시 세교산단로 67-20 (세교동)<br><br>
                  사업자등록번호 · 215-87-48121<br>
                  통신판매신고번호 · 2018-경기평택-0099<br>
                  부가통신사업신고필증 · 022094<br><br>
                  FAX · 02-3400-4800<br>
                  개인정보관리책임자 · 이상배 I sidiz_official@fursys.com<br><br><br>
              </p>
              
              <a class="wp100" href="https://www.sidiz.com/img/footer/ESCROW_SIDIZ.jpg" target="_blank">
                  <img src="${path}/resources/images/main_images/footer.png" alt="">
                  <span class="lh21">에스크로 가입사실 확인</span>
              </a>
            </article>
            <article class="wp70">
              <div class="h55">
                  <ul class="subUl subUlTop">
                    <li class="mgr74">
                      <a href="https://www.sidiz.com/policy/view.do?policyNo=11">이용약관</a>
                    </li>
                    <li class="mgr74">
                      <a class="fntClr_1a59ff" href="https://www.sidiz.com/policy/view.do?policyNo=12">개인정보처리방침</a>
                    </li>
                  </ul>
              </div>
              <div>
                  <ul>
                    <li class="menuTitle">투자정보
                      <ul class="subUl mgt20">
                        <li><a href="https://www.sidiz.com/ir/noticeList?page=1">공고·IR</a></li>
                      </ul>
                    </li>
                  <li class="menuTitle">ABOUT SIDIZ
                    <ul class="subUl mgt20">
                      <li><a href="brand_story ">BRAND STORY</a></li>
                      <li><a href="news ">NEWS</a></li>
                    </ul>
                  </li>
                  <li class="menuTitle">제품
                    <ul class="subUl mgt20">
                      <li><a href="productMenu ">마블x시디즈 태스크</a></li>
                      <li><a href="productMenu ">디즈니x시디즈 키즈</a></li>
                      <li><a href="productMenu ">사무용의자</a></li>
                      <li><a href="productMenu ">학생용의자</a></li>
                      <li><a href="productMenu ">유아용의자</a></li>
                      <li><a href="productMenu ">중역용의자</a></li>
                      <li><a href="productMenu ">회의실/컨퍼런스의자</a></li>
                      <li><a href="productMenu ">인테리어의자</a></li>
                      <li><a href="productMenu ">스툴/좌식의자</a></li>
                      <li><a href="productMenu ">액세서리</a></li>
                    </ul>
                  </li>
                  <li class="menuTitle">고객센터
                    <ul class="subUl mgt20">
                      <li><a href="productMenu ">FAQ</a></li>
                      <li><a href="productMenu ">친절상담</a></li>
                      <li><a href="productMenu ">A/S신청</a></li>
                      <li><a href="#">A/S안내</a></li>
                      <li><a href="search_store ">매장 찾기</a></li>
                      <li><a href="productMenu ">품질 보증 서비스</a></li>
                      <li><a href="productMenu ">제품설명서 다운로드</a></li>
                      <li><a href="productMenu ">카탈로그 다운로드</a></li>
                      <li><a href="productMenu ">시디즈 서비스</a></li>
                    </ul>
                  </li>
                  <li class="mgr34 menuTitle">문의사항
                    <p class="f24 mgt20">1899 - 3176</p>
                    <p class="f13 mgt20">
                    <strong>평일</strong> | 09:30 - 17:30<br> <span class="col999">* 점심시간 | 12:30 - 13:30</span><br><br>토요일 | 09:30 - 12:30<br>일요일, 공휴일 휴무<br></p>
                  </li>
                </ul>
              </div>
            </article>
          </div>
      </footer>
    </div>
  
  
    <script src="${path}/resources/js/common.js"></script><!-- 메인-공통 js -->




<script>

$(document).ready(function(){
	var msg = '${msg}';
	if(msg != null && msg != '') alert(msg);
});

</script>

</body>
</html>