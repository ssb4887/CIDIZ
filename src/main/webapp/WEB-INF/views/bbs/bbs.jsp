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
  
<script>

$(document).ready(function(){
	
	$('form').submit(function(event){
		var title 		= $('#title').val();
		var contents	= $('#contents').val();
		
		// 게시물 검증
		if(title == '') {
			alert('제목을 입력하세요.');
			event.preventDefault();
			return;
		}
		
		if(contents == '') {
			alert('내용을 입력하세요.');
			event.preventDefault();
			return;
		}
		
	});
});

</script>

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

	
	<%-- 메인 게시판 --%>
	<div class = "container" style="margin-top:15%">
			<div class = "row">
				<div class ="form-group col-sm-12 col-md-12 col-lg-12">
					<h2>SIDIZ 공지사항</h2>
				</div>
			</div>

			<div class = "row">
					<table class = "table table-striped" style = "text-align: center; border: 1px solid #bbbbbb">
								<thead>
										<tr>
												<th style="background-color: #dddddd; text-align: center;">번호</th>
												<th style="background-color: #dddddd; text-align: center;">제목</th>
												<th style="background-color: #dddddd; text-align: center;">조회수</th>
												<th style="background-color: #dddddd; text-align: center;">작성자</th>
												<th style="background-color: #dddddd; text-align: center;">작성일</th>
										</tr>
								</thead>
								<tbody>
										<c:forEach var = "boarder" items = "${map.list}">
										<tr>
												<td>${boarder.boarder_id}</td>
												<td><a href = "${path}/bbs/view?boarder_id=${boarder.boarder_id}" style="color: #333;">${boarder.title}</a></td>
												<td>${boarder.count}</td>
												<td>${boarder.writer}</td>
												<td>${boarder.reg_date}</td>
										</tr>
										</c:forEach>
								</tbody>
								
					</table>
					<!-- GET 방식 전송 : URL에 ? 찍고, 파라미터 = 데이터 & 파라미터 = 데이터 -->
					<ul class="pagination">
					
						<!-- 이전 section 버튼 -->
						<c:if test = "${map.paging.pageNumber > 5}">
					
							<li><a href="./bbs?pageNumber=${map.paging.before}"><span class = "glyphicon glyphicon-triangle-left" ></span></a></li>
					
						</c:if>
							
							<c:forEach var = "i" begin = "${map.paging.minPage}" end = "${map.paging.maxPage}">
								
								<c:if test = "${i == map.paging.pageNumber}">
									<li class = "active">
										<a style="background-color: #F15345; border: 1px solid #F15345">${i}</a>
									</li>
								</c:if>
								
								<c:if test = "${i != map.paging.pageNumber}">
									<li>
										<a href="./bbs?pageNumber=${i}">${i}</a>
									</li>
								</c:if>
								
							</c:forEach>						
	
						<!-- 다음 section 버튼 -->	
						<c:if test = "${map.paging.next}">
							
							<li><a href="./bbs?pageNumber=${map.paging.forward}"><span class = "glyphicon glyphicon-triangle-right"></span></a></li>
							
						</c:if>	
							
					</ul>		
					
					
					<a href = "${path}/bbs/write" class = "btn btn-default pull-right">글쓰기</a>
			</div>
	</div>
	<%-- 메인 게시판 종료 --%>

  
      <!-- [하단(footer)] 부분 -->
      <footer id="footer" style="margin-top: 15%">
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
  
  
    <script src="${path}/resources/js/common.js"></script><!-- 메인-공통 js -->




<script>

$(document).ready(function(){
	var msg = '${msg}';
	if(msg != null && msg != '') alert(msg);
});

</script>
</body>
</html>
