<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>SIDIZ</title>
  <link rel="stylesheet" type="text/css" href="${path}/resources/css/default.css"><!-- 공통 css -->
  <link rel="stylesheet" type="text/css" href="${path}/resources/css/tip.css"><!-- 컨텐츠 css -->
  <script src="${path}/resources/js/jquery-2.0.0.js"></script><!-- jquery js -->
  <script src="${path}/resources/js/jquery.easing.1.3.js"></script><!-- easing js-->
   <script src="${path}/resources/js/vendor.js"></script><!-- vendor js -->
  <!-- <script src="/js/common.js"></script> --><!-- 공통 js_body밑에 -->
  <script src="${path}/resources/js/script.js"></script><!-- 제이쿼리 --> 
  <script src="${path}/resources/js/nav_jquery.js"></script><!-- 네비 js --> 
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

    <!-- 팁 header 부분-->

    <section id="tip">
        <div class="tip_header">
          <h5>SIDIZ STYLE</h5>
          <h1>[의자 선택 가이드] 나에게 꼭 맞는 퍼스널 체어 선택 Tip3</h1>
        </div>
        <div id="tip_box">
          <div class="header_sub">
            <p><img src="${path}/resources/images/comma.PNG" alt="" /></p>
            <p>
              의자에 오래 앉아 있으면 허리가 아파요.<br />
              허리 디스크가 있습니다. 어떤 의자를 선택해야 좋을까요?
            </p>
            <p><img src="${path}/resources/images/comma.PNG" alt="" /></p>
          </div>
          <div class="header_text">
            <p class="tip_contents">
              현대인의 고질병 중 하나인 허리 통증. 연령과 성별을 불문하고
              나타나는 증상입니다. 직장인들의 경우 10명 중 4명 이상이 허리
              통증으로 고통받고 있다고 합니다. 이를 해결할 수 있는 좋은 방법은
              없을까요? 오늘은 허리 건강을 지키기 위한 방법으로 자신의 몸에 맞는
              의자 선택 팁을 소개합니다.
            </p>
          </div>
          <div>
            <h2 class="sub_header">호모체어쿠스, 허리 건강을 수호하라!</h2>
            <p class="tip_contents">
              의자는 현대인의 생활을 편리하게 해주는 필수품이지만, 반대로 허리
              건강에 치명상을 입히기도 합니다. 그 이유는 서 있을 때보다 앉아 있
              을 때 허리에 가해지는 압력이 증가하기 때문입니다. 장시간 의자에
              앉아 있으면 척추의 쿠션 역할을 하는 디스크가 압력에 의해 손상되고,
              심해지면 허리 통증이 발생합니다. 이를 해결할 수 있는 가장 좋은
              방법은 먼저 바른 자세를 유지하는 것입니다.
            </p>
          </div>
          <div>
            <h3>바르게 앉는 습관 기르기</h3>
            <div class="photo_text">
              <img src="${path}/resources/images/tip1.PNG" alt="" />
              <p class="tip_contents">
                다리를 꼬고 앉거나 고개를 쭉 빼고 앉는 등의 나쁜 자세 습관은
                허리 통증을 유발합 니다. 그래서 허리 건강을 지키려면 먼저 바른
                자세 습관을 들이는 것이 좋습니다. 의 자에 앉는 바른 자세는 10도
                정도 뒤로 허리를 기대어 앉고, 15도 정도 위쪽을 바라 보며 앉는
                것입니다. 그리고 엉덩이를 의자 깊숙이 넣고, 등방이에 허리를
                기대게 되 면 허리에 가해지는 압력을 감소시킬 수 있습니다.
              </p>
            </div>
          </div>
          <div>
            <div class="photo_text">
              <p class="tip_contents">
                이때 허리의 오목한 부분에 쿠션을 받치면 허리에 가해지는 압력을
                좀 더 효과적으로 분산시킬 수 있는데요. 만약 의자가 너무 높아
                발이 땅에 닿지 않는다면 발 받침대를 이용해 허리에 가해지는
                부담을 줄일 수 있습니다. 이렇게 바른 자세 습관으로 허리 통증을
                예방 혹은 개선할 수 있습니다.
              </p>
              <img src="${path}/resources/images/tip2.PNG" alt="" />
            </div>
          </div>
          <div>
            <h3>자주 스트레칭하기</h3>
            <div class="photo_text">
              <img src="${path}/resources/images/tip3.PNG" alt="" />
              <p class="tip_contents">
                바른 자세로 앉는다고 해도 너무 장시간 의자에 앉게 되면 어쩔 수
                없이 허리 통증이 발생할 수밖에 없습니다. 그래서 의자에서 자주
                일어나 스트레칭을 하는 것이 중요합 니다. 1시간에 한 번 정도는 꼭
                자리에서 일어나 수시로 허리와 목, 어깨 스트레칭을 하고, 몸의
                긴장을 풀어주어야 허리 건강에 도움이 됩니다. 또한 허리 강화
                운동을 지 속적으로 해 주면 몸이 유연해지고, 허리가 튼튼해져서
                디스크와 같은 질병을 예방할 수 있습니다. 만약 근무 환경이
                뒷받침된다면 가끔은 서서 일하는 것도 좋겠죠?
              </p>
            </div>
          </div>
          <div>
            <h3>모니터 높이 확인하기</h3>
            <p class="tip_contents">
              바른 자세를 유지하려고 하는데 잘 안된다고요? 그렇다면 먼저
              모니터의 높이부터 점검하는 것이 좋습니다. 책상 앞에 앉아서 고정된
              높이 와 각도의 모니터를 장시간 바라보면 피로가 발생합니다. 이는
              모니터의 높이에 맞게 몸이 적응하려고 하다가 발생하는 현상이죠.
              이처럼 눈에 보이지 않는 피로가 누적된다면 결국은 몸에 무리가 될
              수밖에 없습니다.
            </p>
          </div>
          <div>
            <div class="photo_text">
              <p class="tip_contents">
                특히 직장인의 대부분이 컴퓨터로 업무를 보는 탓에 모니터의 높이는
                근무 환경에서 제일 먼저 점검해야 하는 사항입니다. 일반적으로
                모니터의 높이는 너무 높지도 너무 낮지도 않게, 모니터 위쪽 높이와
                눈높이를 일치시키는 것이 가장 이상적이라고 합니 다. 그렇다면
                여러분의 책상 위 모니터 높이는 어떤가요? 지금 바로 모니터 높이를
                확인해보세요!
              </p>
              <img src="${path}/resources/images/tip4.PNG" alt="" />
            </div>
          </div>
          <div>
            <h2 class="sub_header">
              사용자의 취향과 필요에 따라 구성할 수 있는 T40
            </h2>
            <div class="photo_text">
              <img src="${path}/resources/images/tip5.PNG" alt="" />
              <p class="tip_contents">
                아무리 바르게 앉는 습관을 들인다 해도 딱딱한 의자에 장시간 앉아
                있다보면 상대적 으로 피로감이 더 쌓일 수밖에 없겠죠? 허리 건강을
                지키기 위해서는 자세뿐 아니라 좋은 의자를 사용하는 것도
                중요합니다. 시디즈에서 추천하는 허리 건강과 착좌감을 위한 첫
                번째 의자는 T40입니다. T40은 꼭 필요한 기능만을 골라 담은 슬림한
                디자인으로 공간 활용도가 높을 뿐만 아니라 부드러운 컬러로 어떤
                분위기의 공간이든 잘 어울리는 의자입니다.
              </p>
            </div>
          </div>
          <div class="full_img"><img src="${path}/resources/images/tip6.PNG" alt="" /></div>
          <div>
            <div class="photo_text">
              <p class="tip_contents">
                무엇보다 의자의 중심이 되는 틸트부터 헤드레스트, 등좌판, 팔걸이
                등의 옵션을 사 용자가 선택할 수 있어 필요에 따라 의자를 구성할
                수 있습니다. 또한 자체 개발하고 제작한 '스마트 싱크'를 적용해
                손쉽게 틸팅 강도를 조절할 수 있어 직장인은 물론, 학 생들도
                자신의 몸에 맞게 빠르게 의자를 피팅 할 수 있습니다. <br /><br />
                우수한 디자인, 사용자를 위한 맞춤 기능, 그리고 합리적 가격까지!
                만약 사용 환경 과 취향에 맞게 구성할 수 있는 의자를 찾는다면
                시디즈 T40을 추천합니다.
              </p>
              <img src="${path}/resources/images/tip7.PNG" alt="" />
            </div>
          </div>
          <div class="full_img"><img src="${path}/resources/images/tip8.PNG" alt="" /></div>
          <div>
            <h2 class="sub_header">
              클리마플렉스로 쾌적한 착좌감을 제공하는 T60
            </h2>
            <div class="photo_text">
              <img src="${path}/resources/images/tip9.PNG" alt="" />
              <p class="tip_contents">
                T60을 이야기할 때 가장 많이 언급되는 것은
                클리마플렉스(Climaflex) 기능입니다. 클리마플렉스란 사용자의
                편안함을 극대화하기 위해 통기성과 유연성을 결합한 T60의 가장 큰
                특징이기 때문입니다.
              </p>
            </div>
          </div>
          <div>
            <div class="photo_text">
              <p class="tip_contents">
                먼저 T60등판의 U라인 플라스틱 쉘은 사용자의 움직임을 효과적으로
                지지하며, 어 떤 사용자가 의자에 앉아도 그에 맞게 유연하게
                반응합니다. 등판이 부드럽게 넘어가고, 어깨와 상체가 앞뒤로
                원활하게 움직일 수 있게 설계되어 사용자가 느끼는 편안함의 정도가
                매우 뛰어납니다. 또한 통기성이 좋아 오랜 시간 앉아 있어도 산뜻한
                기분을 느낄 수 있습니다.
              </p>
              <img src="${path}/resources/images/tip10.PNG" alt="" />
            </div>
          </div>
          <div>
            <div class="photo_text">
              <img src="${path}/resources/images/tip11.PNG" alt="" />
              <p class="tip_contents">
                여기에 사용자가 자신의 몸에 딱 맞게 조절할 수 있는 럼버 서포트가
                결합되어 있어 안락함도 느낄 수 있습니다. 특히 T60의 럼버
                서포트의 경우 허리를 편안한고 효과 적으로 지지할 수 있는 기술이
                적용되어 체형에 따라 위치를 위아래로 조절할 수 있 어 더욱
                편리합니다.
              </p>
            </div>
          </div>
          <div class="full_img"><img src="${path}/resources/images/tip12.PNG" alt="" /></div>
          <div>
            <p class="tip_contents">
              뿐만 아니라 심플하면서도 세련된 디자인으로 인테리어 의자로도 많은
              사랑을 받고 있는데요. 가오리의 형상에서 영감을 받아 디자인된 T60은
              세계적인 디자이너 클라우디오 벨리니의 감각을 느낄 수 있는
              제푸으로, 공간을 더욱 매력적으로 변화 시켜주기도 합니다. 편안하
              면서도 디자인까지 갖춘 의자를 찾고 계신다면 시디즈 T60 어떠실까요?
            </p>
          </div>
          <div class="full_img"><img src="${path}/resources/images/tip13.PNG" alt="" /></div>
          <div>
            <h2 class="sub_header">체중을 감지해 자동으로 조절되는 T25</h2>
            <div class="photo_text">
              <img src="${path}/resources/images/tip14.PNG" alt="" />
              <p class="tip_contents">
                기능이 많은 의자라고 꼭 좋은 의자는 아닙니다. 오히려 너무 많은
                기능은 의자 조작 을 어렵게 하는 경우도 있습니다. T25를 구입하면
                이런 걱정을 할 필요가 없습니다. 그 이유는 T25에 WAT(Weight
                Activated Tilt/체중감응형 틸트)가 적용되어 있기 때문입니다.
              </p>
            </div>
          </div>
          <div>
            <div class="photo_text">
              <p class="tip_contents">
                체충 감응형 틸트는 사용자의 하중에 따라 상기 시트 부를 상측으로
                상승시키는 힘이 자동으로 조절되는 틸트로, 별도의 조작 없이도
                등판의 강도를 적절하게 조절해 주는 역할을 합니다. 특히 체중
                감응형 틸트 기능은 시디즈 만의 기술로 오직 시디즈에서 만 경험할
                수 있습니다.
              </p>
              <img src="${path}/resources/images/tip15.PNG" alt="" />
            </div>
          </div>
          <div>
            <div class="photo_text">
              <img src="${path}/resources/images/tip16.PNG" alt="" />
              <p class="tip_contents">
                T25는 플렉스 등판으로도 유명합니다. 인체의 형상과 사용자의
                움직임을 고려하여 플렉스 등판은 서로 다른 굵기와 길이의 등판
                스트림 라인으로 밀착감과 통기성을 한 층 높여줍니다. 동시에
                사용자의 움직임을 더욱 자연스럽고 안정감 있게 지지해 줍니 다.
              </p>
            </div>
          </div>
          <div class="full_img"><img src="${path}/resources/images/tip17.PNG" alt="" /></div>
          <div class="full_img"><img src="${path}/resources/images/tip18.PNG" alt="" /></div>
          <div>
            <p class="tip_contents">
              하루의 8시간 이상을 의자에 앉아 생활하는 현대인. 의자는 더 이상
              단순한 가구 혹은 인테리어 소품이 아닌 건강을 위해 더욱 깐깐하게 선
              택해야 하는 하나의 필수 아이템입니다. 장시간 의자에 앉아
              생활하시나요? 허리 건강이 걱정이신가요? 자신의 몸에 꼭 맞는 의자를
              찾고 계시나요? 그렇다면 시디즈의 의자를 만나보세요. 시디즈 의자를
              만나면, 허리가 편안해집니다.
            </p>
          </div>
          <div id="last_img"><img src="${path}/resources/images/tip19.PNG" alt="" /></div>
        </div>
      </section>
    
      
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