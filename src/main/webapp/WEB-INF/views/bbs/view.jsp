<%@ page language="java" contentType="text/html; charset=UTF-8"
    	pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

<title>JSP 게시판</title>
<meta http-equiv="Conetent-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="${path}/resources/css/bootstrap.css">
<link rel="stylesheet" href="${path}/resources/css/custom.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="${path}/resources/js/bootstrap.js"></script>

<script>
$(document).ready(function(){
	$('#likeyBtn').click(function(){
		var boarder_id = '${map.boarder.boarder_id}';
		$.ajax({
				type	: 'GET',
				url		: './likeyAction',
				data		: {
						boarder_id : boarder_id
				},
				dataType	: 'text',
				success : function(data) {
					if(data == -1) {
						alret('로그인이 필요합니다.');
					}
					else {
						$('#likey_count').text(data);
					}
				}
		});
		
	});
	<%-- 댓글 추가 기능 --%>
	$('#replyBtn').click(function(){
		var boarder_id = '${map.boarder.boarder_id}';
		var contents = $('#r_contents').val();
		$.ajax({
				type	: 'GET',
				url		: './insertReply',
				data		: {
							boarder_id : boarder_id,
							contents 	: contents
				},
				dataType	: 'JSON',
				success		: function(data) {
							if(data == null) {
									alret('로그인이 필요합니다.');
									return;
							}
							$('#replyBody').empty();
							for(var i = 0; i < data.length; i++) {
									var str = ' ';
									str += '<tr>';
										str += '<td width = "50%">' + data[i].contents + '</td>';
										str += '<td width = "20%">' + data[i].writer + '</td>';
										str += '<td width = "20%">' + data[i].reg_date + '</td>';
										str += '<td width = "10%"><button class = "btn btn-danger btn-block">삭제</button></td>';
									str += '</tr>';
									$('#replyBody').append(str);
							}
				}
				// 지금 Java -> Java Script로 넘기는 것이다. 다른 언어라 중간에 통역사가 필요하다. 그것이 JSON
				// 객체 형태로 받고 싶으면 JSON을 사용해야 한다. 객체를 문자열로 다루기 위해서 사용
				// JSON -> 문자포멧 : {'key' : 'value'} -> ex) {'boarder_id' : 1, 'user_id' : 'lacls159'} -> 1:1형태로 넘어온다.
				
		});
	});
});
</script>

<%-- 댓글 삭제 기능 --%>
<script>
		function deleteReply(reply_id) {
			var boarder_id = '${map.boarder.boarder_id}';
			$.ajax({
					type	: 'GET',
					url		: './deleteReply',
					data		: {
								reply_id 		: reply_id,
								boarder_id : boarder_id,
					},
					dataType	: 'JSON',
					success		: function(data) {
								if(data == null) {
										alret('로그인이 필요합니다.');
										return;
								}
								$('#replyBody').empty();
								for(var i = 0; i < data.length; i++) {
										var str = ' ';
										str += '<tr>';
											str += '<td width = "50%">' + data[i].contents + '</td>';
											str += '<td width = "20%">' + data[i].writer + '</td>';
											str += '<td width = "20%">' + data[i].reg_date + '</td>';
											str += '<td width = "10%">';
											if('${user_id}' == data[i].writer) {
												str += '<button class = "btn btn-danger btn-block" onclick="deleteReply(' + data[i].reply_id + ')">삭제</button>';
												}
											
											str += '</td>';
										str += '</tr>';
										$('#replyBody').append(str);
								}
					}
			});
		}
</script>

</head>
<body>

<%-- 메인 네비게이션 --%>
<jsp:include page="../bbsNav.jsp" />

<%-- 글쓰기 양식 --%>
<div class = "container">
		<div class = "row">
						<table class = "table table-striped" style = "text-align: center; border: 1px solid #bbb;">
								<thead>
										<tr>
												<th colspan = "2" style = "background-color: #eeeeee; text-alifn: center;">게시물</th>
										</tr>
								</thead>
								<tbody>
										<tr>
												<!-- 맨 처음 요소 스타일 지정시 따라간다. -->
												<td style = "width: 20%;">제목</td>
												<td>${map.boarder.title}</td>
										</tr>
										<tr>
												<td>작성자</td>
												<td>${map.boarder.writer}</td>
										</tr>
										<tr>
												<td>조회 수</td>
												<td>${map.boarder.count}</td>
										</tr>
										<tr>
												<td>공감 수</td>
												<td id = "likey_count">${map.boarder.likey}</td>
										</tr>
										<tr>
												<td>작성일</td>
												<td>${map.boarder.reg_date}</td>
										</tr>
										<tr>
												<td>내용</td>
												<td style= "min-height: 200px; text-align: left;">${map.boarder.contents}</td>
										</tr>
										<!-- JSTL 에서는 ${map.uploadFile == null}을 사용할 수 없다.-->
										<c:if test = "${not empty map.uploadFile}">
										<tr>
												<td>첨부파일</td>
												<td><a href = "./downloadAction?boarder_id=${map.uploadFile.boarder_id}&file_realName=${map.uploadFile.file_realName}">${map.uploadFile.file_name}</a>[ ${map.uploadFile.count} ]</td>
										</tr>
										</c:if>
								</tbody>
						</table>
						<table class = "table table-striped" style = "text-align: center; border: 1px solid #bbb;">
								<thead>
										<tr>
												<td colspan = "4">댓글</td>
										</tr>
								</thead>
								<tbody id = "replyBody">
										<c:forEach var = "reply"  items = "${map.replyList}">
										<tr>
												<td width = "50%">${reply.contents}</td>
												<td width = "20%">${reply.writer}</td>
												<td width = "20%">${reply.reg_date}</td>
												<td width = "10%">
													<c:if test="${user_id == reply.writer }">
													<button class = "btn btn-danger btn-block" onclick="deleteReply(${reply.reply_id})">삭제</button>
													</c:if>
												</td>
										</tr>
										</c:forEach>
								</tbody>
								<tfoot>
										<tr>
												<td colspan="3">
														<input type = "text" class = "form-control"  id = "r_contents" placeholder = "댓글 내용">
												</td>
												<td>
														<button type = "button" class = "btn btn-default btn-block"  id = replyBtn>등록</button>
												</td>
										</tr>
								</tfoot>
						</table>
						<a href = "../bbs" class="btn btn-default">목록</a>
						<c:if test = "${user_id eq map.boarder.writer }">
						<a href = "./update?boarder_id=${map.boarder.boarder_id}" class="btn btn-success">수정</a>			
						<a onclick = "return confirm('정말 삭제하시겠습니까?')" href = "./deleteAction?boarder_id=${map.boarder.boarder_id}" class="btn btn-danger">삭제</a>			
						<!-- ↑ onclick : a 태그를 클릭하면 -->
						</c:if>
						<button class = "btn btn-info" id = "likeyBtn">공감</button>
					
		</div>
</div>
<%-- 글쓰기 양식 종료 --%>
<script>

$(document).ready(function(){
	var msg = '${msg}';
	if(msg != null && msg != '') alert(msg);
});

</script>

</body>
</html>