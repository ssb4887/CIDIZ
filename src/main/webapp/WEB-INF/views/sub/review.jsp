<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>SIDIZ</title>
  <link rel="stylesheet" type="text/css" href="${path}/resources/css/default.css"><!-- 공통 css -->
  <link rel="stylesheet" type="text/css" href="${path}/resources/css/review.css"><!-- 컨텐츠 css -->
  <script src="${path}/resources/js/jquery-2.0.0.js"></script><!-- jquery js -->
  <script src="${path}/resources/js/jquery.easing.1.3.js"></script><!-- easing js-->
   <script src="${path}/resources/js/vendor.js"></script><!-- vendor js -->
  <!-- <script src="/js/common.js"></script> --><!-- 공통 js_body밑에 -->
  <script src="${path}/resources/js/script.js"></script><!-- 제이쿼리 --> 
  <script src="${path}/resources/js/nav_jquery.js"></script><!-- 네비 js --> 
  <script src="${path}/resources/js/review.js"></script><!-- 리뷰 js -->
  <!-- font --------------------------------------------->
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
      integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
      crossorigin="anonymous"
    />
</head>
<body>
<body>
  <body>
  <div class="wrapper">
    <!-- [상단(header)] -->
    <header id="header">
      <!-- 상단 : 로고 -->
      <h1 class="logo"><a href="#">SIDIZ</a></h1>
    </header>
    <!-- 상단-네비 : 우측 아이콘 -->
    <div id="header_icon">
      <ul class="nav-group">
        <li>
            <img src="${path}/resources/images/main_images/nav_my.png" alt="" />
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
            <li class="has-sp sp-1">
              <p>
                <a href="#">
                  <img src="${path}/resources/images/nav_images/nav_login_mypge.png" alt="" />My Page
                </a>
              </p>
            </li>
            <li class="has-sp sp-2">
              <p>
                <a href="#">
                  <img src="${path}/resources/images/nav_images/nav_ShoppingBasket.png" alt="" />Shopping Basket
                </a>
              </p>
            </li>
            <li class="has-sp sp-3">
              <p>
                <a href="review ">
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
                <a href="event ">
                  <img src="${path}/resources/images/nav_images/nav_Event2.png " alt="" />Event
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
                  <li>
                    <a href="brand_story">
                      BRAND STORY
                      <img src="${path}/resources/images/nav_images/nav_ABOUT SIDIZ_1.png" alt="" id="brand_img"/>
                    </a>
                  </li>
                  <li>
                    <a href="news ">
                      NEWS<img src="${path}/resources/images/nav_images/nav_ABOUT SIDIZ_2.png" alt="" />
                    </a>
                  </li>
                </ul>
              </div>
            </li>
            <li id="products">
              <h4 class="has-sp sp-7">
                <p> <b>PRODUCTS</b> </p>
              </h4>
              <div class="contents">
                <ul id="second">
                  <li>
                    <a href="productMenu ">
                      사무용
                      <img src="${path}/resources/images/nav_images/nav_PRODUCTS_1.png" alt="" />
                    </a>
                  </li>
                  <li>
                    <a href="productMenu ">
                      학생용
                      <img src="${path}/resources/images/nav_images/nav_PRODUCTS_2.png" alt="" />
                    </a>
                  </li>
                  <li>
                    <a href="productMenu ">
                      유아용
                      <img src="${path}/resources/images/nav_images/nav_PRODUCTS_3.jpg" alt="" />
                    </a>
                  </li>
                  <li>
                    <a href="productMenu ">
                      인테리어
                      <img src="${path}/resources/images/nav_images/nav_PRODUCTS_4.png" alt="" id="interior_img"/>
                    </a>
                  </li>
                  <li>
                    <a href="productMenu ">
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
                    <a href="#">
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
                    <a href="search_store ">
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
<!-- [내용(contents)] 부분  -->

    <section id ="review">
        <div id="select_menu">
          <ul>
            <li><span>HOME</span></li>
            <li>Review</li>
          </ul>
        </div>
        <!-------------- 리뷰 헤더 시작 ---------------->
        <article class="r_header">
            <div class="rh_title">
            <span>&#35;나의</span><span> 시디즈 생활</span>
                <p>시디즈로 달라진 특별한 생활을 만나보세요</p>
            </div>
            <ul class="rh_photo">
                <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <div>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rhp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                </li>

                <li>
                    <img src="${path}/resources/images/sidiz_img/review2.jpg" alt=""/>
                    <div>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <span>알사탕님의 리뷰</span>
                    <div>
                        <p>아이들 공부 의자로 최고</p>
                        <p>바퀴는 빼고 집중력은 더하다.</p>
                        <p>서울대 도서관에서 사용하는 의자</p>
                    </div>
                    <div class="rhp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review2-1.jpg" alt=""/></div>
                        <p>ible 화이트쉘</p>
                        <p>452N_샌드 베이지</p>
                        <p>&#92;221,000</p>
                    </div>
                </li>

                <li>
                    <img src="${path}/resources/images/sidiz_img/review3.jpg" alt=""/>
                    <div>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <span>임솔님의 리뷰</span>
                    <div>
                        <p>아기 몸에 딱 맞는 편한 의자</p>
                        <p>아이가 미끄러질까 하는 걱정이 쭘</p>
                        <p>9개월 ~ 27개월 아이까지 모두 사용</p>
                    </div>
                    <div class="rhp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review3-1.jpg" alt=""/></div>
                        <p>몰티_하이체어</p>
                        <p>A441P_Sandy Beige</p>
                        <p>&#92;319,000</p>
                    </div>
                </li>

                <li>
                    <img src="${path}/resources/images/sidiz_img/review4.jpg" alt=""/>
                    <div>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <span>포니홈님의 리뷰</span>
                    <div>
                        <p>유럽감성의 디자인</p>
                        <p>다양한 디자인으로 분위기를 자유롭게 연출</p>
                        <p>곡선형 디자인이 자세를 부드럽게 받쳐 편안함</p>
                    </div>
                    <div class="rhp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review4-1.jpg" alt=""/></div>
                        <p>MN801EY 등좌판커버</p>
                        <p>371_그레이</p>
                        <p>&#92;196,000</p>
                    </div>
                </li>

            </ul>
        </article>
        <!-------------- 리뷰 헤더 종료 ---------------->

        <!-------------- 리뷰 네비 시작 ---------------->
        <nav class = "r_nav">
            <ul>
                <li>사무용</li>
                <li>학생용</li>
                <li>유아용</li>
                <li>중역용</li>
                <li>인테리어</li>
                <li>액세서리</li>
            </ul>
        </nav>
        <!-------------- 리뷰 네비 종료 ---------------->

        <!-------------- 리뷰 바디 시작 ---------------->
        <section class="r_body">
            <div class="rb_header">
                <ul>
                  <li>최신순</li>
                  <li>인기순</li>
                </ul>
            </div>
            <div class="rb_group">
                <ul class="rb_photo">
                    <li>
                      <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                      <span>엠오티님의 리뷰</span>
                      <div>
                          <p>재택근무시 좋은 의자</p>
                          <p>프리미엄 기능들은 다 갖춤</p>
                          <p>장시간 앉아 있어도 너무 편함</p>
                      </div>
                      <div class="rbp_footer">
                          <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                          <p>T800HLDAS 좌판가죽</p>
                          <p>L096X&#95;블랙</p>
                          <p>&#92;882,000</p>
                      </div>
                    </li>
                    <li>
                      <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                      <span>엠오티님의 리뷰</span>
                      <div>
                          <p>재택근무시 좋은 의자</p>
                          <p>프리미엄 기능들은 다 갖춤</p>
                          <p>장시간 앉아 있어도 너무 편함</p>
                      </div>
                      <div class="rbp_footer">
                          <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                          <p>T800HLDAS 좌판가죽</p>
                          <p>L096X&#95;블랙</p>
                          <p>&#92;882,000</p>
                      </div>
                    </li>
                    <li>
                      <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                      <span>엠오티님의 리뷰</span>
                      <div>
                          <p>재택근무시 좋은 의자</p>
                          <p>프리미엄 기능들은 다 갖춤</p>
                          <p>장시간 앉아 있어도 너무 편함</p>
                      </div>
                      <div class="rbp_footer">
                          <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                          <p>T800HLDAS 좌판가죽</p>
                          <p>L096X&#95;블랙</p>
                          <p>&#92;882,000</p>
                      </div>
                    </li>
                    <li>
                      <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                      <span>엠오티님의 리뷰</span>
                      <div>
                          <p>재택근무시 좋은 의자</p>
                          <p>프리미엄 기능들은 다 갖춤</p>
                          <p>장시간 앉아 있어도 너무 편함</p>
                      </div>
                      <div class="rbp_footer">
                          <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                          <p>T800HLDAS 좌판가죽</p>
                          <p>L096X&#95;블랙</p>
                          <p>&#92;882,000</p>
                      </div>
                    </li>
                </ul>

                <ul class="rb_photo">
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                </ul>

                <ul class="rb_photo rbp_hide">
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                </ul>

                <ul class="rb_photo rbp_hide">
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                </ul>

                <ul class="rb_photo rbp_hide">
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                </ul>

                <ul class="rb_photo rbp_hide">
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                  <li>
                    <img src="${path}/resources/images/sidiz_img/review1.jpg" alt=""/>
                    <span>엠오티님의 리뷰</span>
                    <div>
                        <p>재택근무시 좋은 의자</p>
                        <p>프리미엄 기능들은 다 갖춤</p>
                        <p>장시간 앉아 있어도 너무 편함</p>
                    </div>
                    <div class="rbp_footer">
                        <div class="profil"><img src="${path}/resources/images/sidiz_img/review1-1.jpg" alt=""/></div>
                        <p>T800HLDAS 좌판가죽</p>
                        <p>L096X&#95;블랙</p>
                        <p>&#92;882,000</p>
                    </div>
                  </li>
                </ul>
              </div>
          </div>    
        </section>

      <!-- more 버튼 -->
      <div id = "moreDown"><i class="far fa-caret-square-down"></i></div>
      <div id = "moreUp"><i class="far fa-caret-square-up"></i></div>
      
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