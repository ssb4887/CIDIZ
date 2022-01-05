<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>SIDIZ</title>
  <link rel="stylesheet" type="text/css" href="${path}/resources/css/default.css"><!-- 공통 css -->
  <link rel="stylesheet" type="text/css" href="${path}/resources/css/product.css"><!-- 컨텐츠 css -->
  <script src="${path}/resources/js/jquery-2.0.0.js"></script><!-- jquery js -->
  <script src="${path}/resources/js/jquery.easing.1.3.js"></script><!-- easing js-->
   <script src="${path}/resources/js/vendor.js"></script><!-- vendor js -->
  <!-- <script src="/js/common.js"></script> --><!-- 공통 js_body밑에 -->
  <script src="${path}/resources/js/script.js"></script><!-- 제이쿼리 --> 
  <script src="${path}/resources/js/nav_jquery.js"></script><!-- 네비 js --> 
  <script src="${path}/resources/js/product.js"></script><!-- 제품 js --> 
  <!-- font --------------------------------------------->
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
      integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
      crossorigin="anonymous"
    />
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
		         		<img src="${path}/resources/images/nav_images/logout.png" alt="" />Login
		         		</a>
		         	</c:if>
		         	
		         	<!-- 로그인 했을 때 표시  -->
		         	<c:if test = "${not empty user_id}" >
		         		<a href = "${path}/logout">
		         		<img src="${path}/resources/images/nav_images/logout.png" alt="" />Logout
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
                <a href="comparison">
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
	<!-- [네비 끝 ] -->
	
	<!-- [내용(contents)] 부분  -->

        <!--------------- 제품 상세 -------------------->
        <section id="product">
        <article class="p_header">
            <div class="ph_head">
            <ul>
                <li>제품</li>
                <li><i class="fas fa-chevron-right"></i></li>
                <li><a href="productMenu ">사무용의자</a></li>
                <li><i class="fas fa-chevron-right"></i></li>
                <li>T55</li>
                <li><i class="fas fa-chevron-right"></i></li>
                <li>T550HLDAS 천연가죽</li>
            </ul>
            </div>
        </article>
        <article class="ph_main">
            <div class="phm_box">
            <!-- box_img -->
            <div class="phmb_img">
                <img src="${path}/resources/images/sidiz_img/p2_main1.png">
                <img src="${path}/resources/images/sidiz_img/p2_main2.png">
                <img src="${path}/resources/images/sidiz_img/p2_main3.png">
                <img src="${path}/resources/images/sidiz_img/p2_main4.png">
                <img src="${path}/resources/images/sidiz_img/p2_main5.png">
            </div>
            <form method = "POST" action = "./addBasketAction">
            <!-- box_txt -->
            <div class="phmb_txt">
                <div class="txt_box">
                <h4>T550HLDAS 천연가죽</h4>
                <!-- 상품 이름 넘기기 -->
                <input type = "hidden" name = "product_name" value = "T550HLDAS 천연가죽" />
                <p>CODE &#35; TNA550HLDAS</p>
                <h5>&#8361;694&#44;000</h5>
                <!-- 색상 선택 박스 -->
                <p>COLOR &#47; 색상</p>
                <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
                <!-- 색상 표시 박스 -->
                <a href="#">L096</a>
                <p id="color_box">L096&#95;블랙</p>
                <!-- 수량 버튼 -->
                <p id="txt_box">QUANTITY &#47; 수량</p>
                <div id="btn_count">
                    <ul>
                    <li><a href="#" id="bc_up"><i class="fas fa-caret-up"></i></a></li>
                    <li><input type="text" value="1" id="bc_num" name = "product_count"></li>
                    <li><a href="#" id="bc_down"><i class="fas fa-caret-down"></i></a></li>
                    </ul>
                </div>
                <!-- 구매하기, 장바구니 버튼 -->
                <div>
                    <ul id="btn_box">
                    <li>
                    	<a href="order">
                        	<img src="${path}/resources/images/sidiz_img/p_btn1.png" alt=""/>
                        </a>
                    </li>
                    <li>
                    	<a href="/addBasketAction" id="addBasketBtn">
                        	<input type = "image" src = "${path}/resources/images/sidiz_img/p_btn2.png" alt="제출용 버튼" />
                        </a>
                    </li>
                    </ul>
				                    
                </div>
                </div>
            </div>
            </form>
            </div>
        </article>
        
        <article class="ph_foot">
            <ul id="img_btn">
	            <li><a href="${path}/resources/images/sidiz_img/p2_main1.png" class="ibc_btn"><img src="${path}/resources/images/sidiz_img/p2_f_imgBtn1.jpeg" alt=""/></a></li>
	            <li><a href="${path}/resources/images/sidiz_img/p2_main2.png" class="ibc_btn"><img src="${path}/resources/images/sidiz_img/p2_f_imgBtn2.jpeg" alt=""/></a></li>
	            <li><a href="${path}/resources/images/sidiz_img/p2_main3.png" class="ibc_btn"><img src="${path}/resources/images/sidiz_img/p2_f_imgBtn3.jpeg" alt=""/></a></li>
	            <li><a href="${path}/resources/images/sidiz_img/p2_main4.png" class="ibc_btn"><img src="${path}/resources/images/sidiz_img/p2_f_imgBtn4.jpeg" alt=""/></a></li>
	            <li><a href="${path}/resources/images/sidiz_img/p2_main5.png" class="ibc_btn"><img src="${path}/resources/images/sidiz_img/p2_f_imgBtn5.jpeg" alt=""/></a></li>
            </ul>
        </article>
        <!-- 제품 정보 테이블 -->
        <article class="p_info">
            <!-- 제목 위 보더 스타일 -->
            <div class="pi_boad1"></div>
            <div class="pi_boad1 pib_t"></div>
            <!-- 제목 위 보더 스타일 끝 -->
            <div class="pi_head">
            <h5>Basic Information</h5>
            </div>
            
            <div class="pi_txt">
            <ul>
                <li>
                <ul class="pit_title">
                    <li>품명 및 모델명</li>
                    <li>KC인증필유무</li>
                    <li>색상</li>
                    <li>구성품</li>
                    <li>주요소재</li>
                    <li>제조사</li>
                    <li>제조국</li>
                    <li>크기</li>
                    <li>배송&#47;설치비용</li>
                    <li>품질보증기준</li>
                    <li>A&#47;S 책임자와 전화번호</li>
                </ul>
                </li>
                <li>
                <ul class="pit_content">
                    <li>T550HLDAS 천연가죽 &#40;TNA550HLDAS&#41;</li>
                    <li>해당사항없음</li>
                    <li>블랙</li>
                    <li>의자</li>
                    <li>천연가죽&#44;소가죽&#44; 발포스폰지&#44; PP&#44; 나일론&#44; 플라스틱&#44; STEEL</li>
                    <li>시디즈</li>
                    <li>대한민국</li>
                    <li>645x675x1135&#126;1255</li>
                    <li>무료 &#40;방문설치 &#47; 단&#44; 엘리베이터 사용료&#44; 사다리차&#44; 배송차량 주차료 등 추가적으로 발생하는 비용은 고객님 부담&#41;</li>
                    <li>기본 1년 품질보증&#44; 일부 품목은 제품 등록 시 5년으로 연장 &#40;세부 리스트는 &#39;품질 보증 서비스&#39; 내 Warranty에서 확인 가능&#41;</li>
                    <li>고객만족센터 &#47; 1577&#45;5674</li>
                </ul>
                </li>
            </ul>
            </div>
        </article>
        <article class="p_FM">
            <!-- 제목 위 보더 스타일 -->
            <div class="pi_boad1"></div>
            <div class="pi_boad1 pib_t"></div>
            <!-- 제목 위 보더 스타일 끝 -->
            <div class="pi_head">
            <h5>Function &#38; Material</h5>
            </div>
            <div class="pF_imgBox">
            <ul class="pFi_imgs">
                <li>
                <img src="${path}/resources/images/sidiz_img/p_fm1.jpg" alt=""/>
                <p><i class="fas fa-plus-square"></i></p>
                </li>
                <li>
                <img src="${path}/resources/images/sidiz_img/p_fm2.jpg" alt=""/>
                <p><i class="fas fa-plus-square"></i></p>
                </li>
                <li>
                <img src="${path}/resources/images/sidiz_img/p_fm3.jpg" alt=""/>
                <p><i class="fas fa-plus-square"></i></p>
                </li>
                <li>
                <img src="${path}/resources/images/sidiz_img/p_fm4.jpg" alt=""/>
                <p><i class="fas fa-plus-square"></i></p>
                </li>
                <li>
                <img src="${path}/resources/images/sidiz_img/p_fm5.jpg" alt=""/>
                <p><i class="fas fa-plus-square"></i></p>
                </li>
                <li>
                <img src="${path}/resources/images/sidiz_img/p_fm6.jpg" alt=""/>
                <p><i class="fas fa-plus-square"></i></p>
                </li>
                <li>
                <img src="${path}/resources/images/sidiz_img/p_fm7.jpg" alt=""/>
                <p><i class="fas fa-plus-square"></i></p>
                </li>
                <li>
                <img src="${path}/resources/images/sidiz_img/p_fm8.jpg" alt=""/>
                <p><i class="fas fa-plus-square"></i></p>
                </li>
            </ul>
            </div>
        </article> 
        <!-- story -->
        <article id="p_story">
            <!-- 제목 위 보더 스타일 -->
            <div class="pi_boad1"></div>
            <div class="pi_boad1 pib_t"></div>
            <!-- 제목 위 보더 스타일 끝 -->
            <div class="pi_head">
            <h5>Story</h5>   
            </div>

            <div class="ps_video">
            <img src="${path}/resources/images/sidiz_img/p2_storyImg.jpeg" alt=""/>
            </div>

            <div class="ps_contents">
            <img src="${path}/resources/images/sidiz_img/p_s_txtImg1.jpg" alt="" />
            <img src="${path}/resources/images/sidiz_img/p_s_img.jpg" alt=""/>
            <img src="${path}/resources/images/sidiz_img/p_s_txtImg2.jpg" alt="" />
            <h5>특별한 당신을 위해</h5>
            <p>정제된 디자인 라인과 그에 어울리는 고급스러운 소재, 정교한 디테일로 앉아서 보내는 시간 위에 품격을 더합니다.</p>
            <p>정통 독일의 디자인과 시디즈의 기술이 만나 고품격의 편안함으로 완성된 T80.</p>
            <p>강하면서도 부드러운 T80의 특별함을 만끽하시길 바랍니다</p>
            <p>자세히 보기</p>
            </div>

            <!-- 1 -->
            <div class="ps_contentsPack">
            
            <div class="psc_txtPack1">
                <div></div>
                <div>
                <img src="${path}/resources/images/sidiz_img/psc_txt2.jpg" alt=""/>
                <h5>어느 각도에서도 몸에 꼭 맞는 'Ultimate Sync'</h5>
                <p>'Ultimate Sync'매커니즘은 등판을 뒤로 젖히는 어느 각도에서도</p>
                <p>의자가 몸에 꼭 맞는 형상을 유지할 수 있도록 의자의 움직임을 신체</p>
                <p>동작에 최적화 하였습니다. 6년간의 연구를 통해 검증된 최적의</p>
                <p>편안함은 오직 T80을 통해서만 경험하실 수 있습니다.</p>
                <p>자세히 보기</p>
                </div>
            </div>

            <div>
                <img src="${path}/resources/images/sidiz_img/psc_img2.jpg" alt=""/>
            </div>
            </div>

            <!-- 2 -->
            <div class="ps_contentsPack">
            <div>
                <img src="${path}/resources/images/sidiz_img/psc_img3.jpg" alt=""/>
            </div>

            <div class="psc_txtPack2">
                <div></div>
                <div>
                <img src="${path}/resources/images/sidiz_img/psc_txt3.jpg" alt=""/>
                <h5>스마트 라이프를 더욱 편안하게</h5>
                <p>더 편안한 스마트 라이프를 즐길 수 있도록 T80 시리즈의 팔걸이는</p>
                <p>등판을 중심으로 설계되었습니다. 등판에 가까운 위치에서 움직이는</p>
                <p>형태는 스마트 디바이스를 사용하는 자세를 더욱 편안하게</p>
                <p>지지합니다. 또한 메모리폼 이중구조 스펀지는 체중의 압력을 고르게</p>
                <p>분산시켜서 오랜시간 앉아도 편안함을 유지할 수 있습니다.</p>
                <p>자세히 보기</p>
                </div>
            </div>
            </div>

            <!-- 3 -->
            <div class="ps_contentsPack">
            <div class="psc_txtPack3">
                <div></div>
                <div>
                <img src="${path}/resources/images/sidiz_img/psc_txt4.jpg" alt=""/>
                <h5>T80은 좌판의 교체가 가능합니다.</h5>
                <p>의자에 오래 앉을수록 오염되기 쉽습니다.</p>
                <p>T800HLDAS는 가정에서도 좌판을 손쉽게 교체가 가능하도록 </p>
                <p>설계하여 의자를 늘 새것처럼 오래 사용할 수 있습니다.</p>
                <p>자세히 보기</p>
                </div>
            </div>

            <div>
                <img src="${path}/resources/images/sidiz_img/psc_img4.jpg" alt=""/>
            </div>
            </div>
            <div>
            <p id="p_accountTxt">위 사진들은 참고용 이미지로 제품에서는 좌판 라벨이 삭제 되었습니다.</p>
            </div>

            <!-- 공간을 주려고 div 추가 -->
            <div id="spaceBox"></div>
            
            <!-- 사용설명 가이드 -->
            <div class="ps_video2">
            <p>T80 사용설명 가이드</p>
            <iframe width="1000" height="563" src="https://www.youtube.com/embed/PMFjQkTA0ak" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="ps_imgPack">
            <div class="psi_txt">

                <div>
                <img src="${path}/resources/images/sidiz_img/p_s_Leather.jpg" alt=""/>
                <p>천연가죽의 특징 및 유지관리 방법</p>
                <p>자세히 보기</p>
                </div>
            </div>

            <div class="psi_img">
                <img src="${path}/resources/images/sidiz_img/p_s_Leather_img.jpg" alt=""/>
            </div>
            </div>

            <!-- Dimension -->
            <!-- 제목 위 보더 스타일 -->
            <div class="pi_boad1"></div>
            <div class="pi_boad1 pib_t"></div>
            <!-- 제목 위 보더 스타일 끝 -->
            <div class="pi_head">
                <h5>Dimension</h5>   
            </div>
            <div>
                <img src="${path}/resources/images/sidiz_img/p_c_dimension.jpg" alt=""/>
                <div id="pib_btn">
                <img src="${path}/resources/images/sidiz_img/p_btn3.png" alt="" />
                </div>
            </div>

            <!-- 배송시 유의사항 -->
            <div class="pi_deliver">
                <!-- 제목 위 보더 스타일 -->
                <div class="pi_boad1"></div>
                <div class="pi_boad1 pib_t"></div>
                <!-- 제목 위 보더 스타일 끝 -->
                <div class="pi_head">
                <h5>배송시 유의사항</h5>   
                </div>
                <div>
                <img src="${path}/resources/images/sidiz_img/p_f_deliver.jpg" alt=""/>
                </div>
            </div>
        </article>
        </section>

        <!-------------- 제품 상세 끝 ------------------>

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