<%@ page import="kr.or.ddit.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String joinCd = (String) request.getAttribute("joinCode");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<link href="../css/styles.css" rel="stylesheet" />

<style>
#insertForm {
	left: 100px;
	margin-left: auto;
	margin-right: auto;
}

.filebox .upload-name {
	display: inline-block;
	height: 40px;
	padding: 0 10px;
	vertical-align: middle;
	border: 1px solid;
	width: 670px;
	color: #999999;
}

.filebox label {
	display: inline-block;
	padding: 10px 20px;
	color: #fff;
	vertical-align: middle;
	background-color: #999999;
	cursor: pointer;
	height: 40px;
}

.filebox input[type="file"] {
	position: absolute;
	width: 0;
	height: 0;
	padding: 0;
	overflow: hidden;
	border: 0;
}

#prodNm {
	margin-right: 30px;
}

#cate {
	margin-right: 25px;
	background-color: #999999;
	color: white;
	border: none;
	width: 200px;
}
</style>
</head>
<body>
	<!-- Navigation-->
	<%@include file="../include/navigation.jsp"%>

	<%
		if (joinCd == "join") {
	%>
	<%@include file="join.jsp"%>
	<%
		} else {
	%>
	<form action="<%=request.getContextPath() %>/insert.do" method="post" enctype="multipart/form-data">
		<table id="insertForm">
			<tr>
				<td colspan=3><h2>글쓰기</h2></td>
			</tr>
			<tr>
				<td colspan=3 class="header">Title</td>
			</tr>
			<tr>
				<td colspan=3><input type="text" placeholder="제목을 입력하세요" name="title" value=""></td>
			</tr>
			<tr>
				<td>카테고리</td>
				<td>물품명</td>
				<td>가격</td>
			</tr>
			<tr>
				<td>
					<button type="button" data-bs-toggle="dropdown" aria-expanded="false" id="cate" name="cate" value="">선택</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item">문구류</a></li>
					</ul>
				</td>
				<td style="width: 270px"><input type="text" placeholder="물품명" name="prodName" id='prodNm' size="30px" value=""></td>
				<td><input type="text" placeholder="가격" name="prodPrice" size="30px" value=""></td>
			</tr>
			<tr>
				<td colspan=3>첨부파일</td>
			</tr>
			<tr>
				<td colspan=3>
					<div class="filebox">
						<input class="upload-name" value="첨부파일" placeholder="첨부파일"> <label for="file">파일찾기</label> <input type="file" id="file" name="atchFile" multiple="multiple">
					</div>
				</td>
			</tr>
			<tr>
				<td class="header" colspan=3>Comment</td>
			</tr>
			<tr>
				<td colspan=3><textarea placeholder="내용을 입력하세요" name="detail" rows="20" cols="100" style="width: 100%" value=""></textarea></td>
			</tr>
		</table>
		<input type="submit" value="등록" onclick="alert('작성 완료!')"> <input type="submit" value="삭제" onclick="alert('삭제 완료')">
	</form>
	<%
		}
	%>
	<!-- Footer-->
	<%@include file="../include/footer.jsp"%>

	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="../js/scripts.js"></script>

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>

	<script>
		let i = 0;

		document.querySelector('#file').addEventListener('change', function() {
			if (i == 0) {
				document.querySelector('.upload-name').value = '';
			}
			var fileName = document.querySelector('#file').value;
			console.log(fileName);
			var file = fileName.substring((fileName.lastIndexOf('\\') + 1), fileName.length);
			console.log(file);
			if (i == 0) {
				document.querySelector('.upload-name').value += file;
				i++;
			} else {
				document.querySelector('.upload-name').value += ', ' + file;
			}

		});

		$('.dropdown-menu').on('click','li', function() {
			console.log($(this).val());
			document.getElementById('cate').value = $(this).val();
		})
	</script>
</body>
</html>