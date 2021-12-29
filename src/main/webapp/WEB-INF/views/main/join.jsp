<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "java.io.PrintWriter" %>    

<%-- VEIW 만들기 --%>
<!DOCTYPE html>
<html>
<head>

<title>SIDIZ</title>
<meta http-equiv="Conetent-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="${path}/resources/css/bootstrap.css">
<link rel="stylesheet" href="${path}/resources/css/custom.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="${path}/resources/js/bootstrap.js"></script>


<script src="//ajax.googleapis.com/ajax/libs/jquery.min.js" charset="UTF-8"></script>

<script src="${path}/resources/js/address.js" charset="UTF-8"></script>
<script src="${path}/resources/js/join.js"></script>
	<!-- sidiz -->
  <link rel="stylesheet" type="text/css" href="${path}/resources/css/default.css"><!-- 공통 css -->
  <link rel="stylesheet" type="text/css" href="${path}/resources/css/main.css"><!-- 컨텐츠 css -->
  <!-- <script src="${path}/resources/js/jquery-2.0.0.js"></script> // 주소 검색 기능이 안돼서 주석 처리 --><!-- jquery js -->
  <script src="${path}/resources/js/jquery.easing.1.3.js"></script><!-- easing js-->
   <script src="${path}/resources/js/vendor.js"></script><!-- vendor js -->
  <!-- <script src="/js/common.js"></script> --><!-- 공통 js_body밑에 -->
  <script src="${path}/resources/js/script.js"></script><!-- 제이쿼리 --> 
  <script src="${path}/resources/js/nav_jquery.js"></script><!-- 네비 js -->
  <style>
		button { margin-left: 0px;}
		button:hover {font-size: 14px}
  </style>
</head>
<body>
    <!-- [상단(header)] -->
    <header id="header">
      <!-- 상단 : 로고 -->
      <h1 class="logo"><a href="${path }/">SIDIZ</a></h1>
    </header>
    <!-- 상단-네비 : 우측 아이콘 -->
    <div id="header_icon">
      <ul class="nav-group">
        <li>
            <a href="login"><img src="${path}/resources/images/main_images/nav_my.png" alt="" /></a>
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

<%-- 메인 컨텐츠 --%>
<div class = "container" style = "margin-top: 7%; margin-bottom: 5%">
		<div class = "col-lg-3"></div>
		
		<div class = "col-lg-6">
				<div class = "jumbotron" ><!-- jumbotron : 이 클래스 때문에 앞, 뒤 공간이 비어있는 것. -->
						<form method = "POST" action = "./joinAction"> <!-- @WebServlet("/join")이랑 동일 해야한다. -->
								<h3 style = "text-align : center; margin-top: 3%; margin-bottom: 5%">회원가입</h3>	
								<!-- 
									(아이디 중복 확인 칸) 1. table 이용, 2. div로 공간배정 
									bs : <-- 는 부트스트랩 설명
									class는 띄워쓰기로 여러개의 속성 적용가능. 중복이 되면 맨 마지막 class에 속성을 적용
								-->
								
								<!--  아이디 입력에 대한 공간 할당 -->
								<!-- bs : row - 공간을 12개로 분할 -->
								<div class = "row">
										<!-- 아이디 입력 --><!-- ↓ 사이즈가 어떻게 되던간에 12중 9개의 공간을 차지해라 라는 뜻이다. -->
										<div class ="form-group col-sm-9 col-md-9 col-lg-9">
												<input type = "text" id = "user_id" class = "form-control" name = "user_id" placeholder = "아이디">
										</div><!-- placeholder : 기본으로 폼에 입력되어 있는값(클릭시 사라진다, 폼에 입력값 설명시 사용)  ↑ -->
										
										<div class = "form-group col-sm-3 col-md-3 col-lg-3">
												<button type = "button" class = "btn btn-success btn-block" id = "id_check">중복체크</button>
										</div>
								</div>
								
								<!-- 비밀번호 입력에 대한 공간 할당 -->
								<div class = "row">
									<!-- 비밀번호 입력 -->
									<div class ="form-group col-sm-12 col-md-12 col-lg-12">
											<input type = "password" class = "form-control" id = "user_pw" name = "user_pw" placeholder = "비밀번호">
									</div>		
								</div>
								
								<!-- 비밀번호 확인에 대한 공간 할당 -->
								<div class = "row">
									<!-- 비밀번호 입력 -->
									<div class ="form-group col-sm-12 col-md-12 col-lg-12">
											<input type = "password" class = "form-control" id = "user_pw2" name = "user_pw2" placeholder = "비밀번호 확인">
									</div>		
								</div>
								
								<!-- 비밀번호 체크에 대한 공간 할당 -->
								<div class = "row">
										<div class = "form-group col-sm12 col-md-12 col-lg-12">
												<h6 id = "diff_pw" class = "text-danger" style = "display: none">비밀번호가 서로 다릅니다.</h6>
												<h6 id = "equal_pw" class = "text-success" style = "display: none">확인되었습니다.</h6>
										</div>
								</div>
								
								<!-- 이름 입력에 대한 공간 할당 -->
								<div class = "row">
										<!--  이름 입력 -->
										<div class = "form-group cols-sm12 col-md-12 col-lg-12">
												<input type = "text" class = "form-control" name = "user_name" placeholder = "이름">
										</div>
								</div>
								
								<!-- 성별 선택에 대한 공간 할당 -->
								<div class = "row">
									<!-- 성별 선택 -->
									<div class ="form-group" style = " text-align : center;">
										<div class = "btn-group" data-toggle = "buttons">
												
												<!-- label : UI 요소에 라벨을 정의하는 HTML 태그 -->
												<label class = "btn btn-primary">
														<!-- autocomplete 속성 : 과거 기록을 dropdown 형식으로 보여줄지를 선택 - true : 보여줌, false : 보여주지 않음-->
														<input type = "radio" name = "user_gender" autocomplete = "off" value = "m">남자
												</label>
												<label class = "btn btn-primary">
														<input type = "radio" name = "user_gender" autocomplete = "off" value = "w">여자
												</label>
										</div>
									</div>		
								</div>
								
								<!-- 이메일 입력에 대한 공간 할당 -->
								<div class = "row">
											<!-- 이메일 입력 -->
											<div class = "form-group col-sm-9 col-md-9 col-lg-9">
													<input type = "email" class = "form-control" id = "user_email"name = "user_email" placeholder = "이메일" readonly>
											</div>
											<div class = "form-group col-sm-3 col-md-3 col-lg-3"><!-- ↓ btn-block : 할당 공간을 꽉 채우기 -->
													<button type = "button" class = "btn btn-success btn-block" 
																	data-toggle = "modal" data-target = "#emailAuthModal">인증</button>
													  				<!-- Modal : 부트스트랩에서 지원하는 팝업창 -->
											</div>
								</div>
								
								<!-- 주소 입력에 대한 공간 할당 -->
								<!-- 
										ㆍ주소 name
										- 우편번호		: addr1
										- 주	   소	: addr2
										- 상세주소		: addr3
								 -->
								<div class = "row">
										<!-- 우편번호 -->
										<div class = "form-group col-sm-3 col-md-3 col-lg-3">
												<input type = "text" class = "form-control" id = "addr1" name = "addr1" placeholder = "우편번호" readonly >
										</div>
									
										<div class = "form-group col-sm-3 col-md-3 col-lg-3">
												<button type = "button" class = "btn btn-success btn-block"
												data-toggle = "modal" data-target = "#addrModal">주소검색</button>
										</div>
										
										<!-- 주소 -->
										<div class = "form-group cols-sm12 col-md-12 col-lg-12">
												<input type = "text" class = "form-control" id = "addr2" name = "addr2" placeholder = "주소" readonly>
										</div>
										
										<!-- 상세 주소 -->
										<div class = "form-group cols-sm12 col-md-12 col-lg-12">
												<input type = "text" class = "form-control" id = "addr3" name = "addr3" placeholder = "상세 주소">
										</div>
								</div>
								
								<!-- 전화 번호 -->
								<div class="row">
										<div class = "form-group cols-sm12 col-md-12 col-lg-12">
												<input type = "text" class = "form-control" id = "user_tel" name = "user_tel" placeholder = "전화번호">
										</div>
								</div>						
								<!-- 제출 버튼 -->
								<div class ="form-group">
									<input type = "submit" class = "btn btn-primary form-control" value = "회원가입">
								</div>					
						</form>
				</div>
		</div>
		<div class = "col-lg-3"></div>
</div>
<%-- 메인 컨텐츠 종료 --%>

<%-- 이메일 인증 모달 --%>
<div id = "emailAuthModal" class = "modal fade" role = "dialog">
		<div class = "modal-dialog">
				<div class = "modal-content">
						<div class = "modal-header">														 <!-- &times; : 부트스트랩 x 아이콘 만들기 -->
								<button type = "button" class = "close" data-dismiss = "modal">&times;</button>
								<h4 class = "modal-title">이메일 인증</h4>
						</div>
						<div class = "modal-body">
								<div class = "row">
										<div class = "col-lg-8">
												<input type = "email" class = "form-control" id = "user_mail_modal" placeholder = "이메일">
										</div>
								
										<div class = "col-lg-4">
												<button type = "button" class = "btn btn-success btn-block" id = "sendAuthBtn">인증번호 전송</button>
										</div>
								</div>
								
								<div class = "row" id = "authDiv" style = "margin-top : 15px; display : none;">
										<div class = "col-lg-4">
												<input type = "text" class = "form-control" id = "auth_num" placeholder = "인증번호">
										</div>
								
										<div class = "col-lg-4">
												<button type = "button" class = "btn btn-primary btn-block" id = "authMailBtn">인증</button>
										</div>
										
										<div class = "col-lg-4">

										</div>
								</div>
						</div>
				</div>
		</div>
</div>
<%-- 이메일 인증 모달 종료 --%>

<%-- 주소 검색 모달 --%>
<div id = "addrModal" class = "modal fade" role = "dialog">
		<div class = "modal-dialog">
				<div class = modal-content>
						<div class = "modal-header">
								<button type = "button" class = "close" data-dismiss = "modal">&times;</button>
								<h4 class = "modal-title">주소 검색</h4>
						</div>
						<div class = "modal-body">
								<div class = "row" id = "postcodify">
								<script>
										$('#postcodify').postcodify({
												insertPostcode5 	: '#entry_postcode5',
												insertAddress		: '#entry_address',
												insertExtraInfo		: '#entry_extra_info',
												userFullJibeon		: true,
												mapLinkProvider	: 'google',
												
												ready : function() {
													$('#postcodify div.postcode_search_status.empty').hide();
												},
												
												beforeSearch 	: function() {
													$('#entry_box').hide();
												},
												
												afterSearch 		: function(selectedEntry) {
													$('#postcodify div.postcode_search_result').remove();
													$('#postcodify div.postcode_search_status.summary').hide();
													$('#entry_box').show();
													$('#entry_details').focus();
												}
												
										});
								</script>
							</div>
								<div>
										<p>
												<label for = "entry_postcode5">우편번호</label>
												<input type = "text" class = "form-control" id = "entry_postcode5" readonly>
										</p>
										<p>
												<label for = "entry_address">도로명주소</label>
												<input type = "text" class = "form-control" id = "entry_address" readonly>
										</p>
										<p>
												<label for = "entry_extra_info">지명주소</label>
												<input type = "text" class = "form-control" id = "entry_extra_info" readonly>
										</p>
								</div>
						</div>
						<div class = "modal-footer">
								<button type = "button" id = "getAddrBtn" class = "btn btn-primary" data-dismiss = "modal">확인</button>
						</div>
				</div>
		</div>
</div>
<%-- 주소 검색 모달 종료--%>
  
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
  
  
    <script src="${path}/resources/js/common.js"></script><!-- 메인-공통 js -->




<script>

$(document).ready(function(){
	var msg = '${msg}';
	if(msg != null && msg != '') alert(msg);
});

</script>

</body>
</html>