<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
table {
    width: 280px;
    height: 550px;
    margin: auto;      
}
.email {
    width: 127px;
    height: 32px;
    font-size: 15px;
    border: 0;
    border-color: lightgray;
    border-radius: 15px;
    outline: none;
    padding-left: 10px;
    background-color: rgb(233,233,233);
}
.text {
    width: 250px;
    height: 32px;
    font-size: 15px;
    border: 0;
    border-radius: 15px;
    outline: none;
    padding-left: 10px;
    background-color: rgb(233,233,233);
}
select {
    width: 110px;
    height: 32px;
    font-size: 15px;
    border: 1;
    border-color: lightgray;
    border-radius: 15px;
    outline: none;
    padding-left: 10px;
}
.joinBtn {
	width: 262px;
    height: 32px;
    font-size: 15px;
    border: 0;
    border-radius: 15px;
    outline: none;
    padding-left: 10px;
    background-color: rgb(164, 199, 255);
}
.joinBtn:active {
    width: 262px;
    height: 32px;
    font-size: 15px;
    border: 0;
    border-radius: 15px;
    outline: none;
    padding-left: 10px;
    background-color: rgb(61, 135, 255);
}
</style>
</head>
<body>
	<form method="post" onsubmit="valid(event)">
	    <table>
	    <tr>
	        <td><h2>회원가입</h2></td>
	    </tr>
	    <tr><td>아이디</td></tr>
	    <tr><td><input type="text" class="text" id="id" name="mem_id"
	    required pattern="[a-zA-Z][a-zA-Z0-9]{3,7}"></td></tr>
	    
	    <tr><td>비밀번호</td></tr>
	    <tr><td><input type="password" class="text" id="pw" name="mem_pw"
	    pattern="(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$%\^&amp;\*\(\)_\+\|]).{6,}"></td></tr>
	    <tr><td>비밀번호 확인</td></tr>
	    <tr><td><input type="password" class="text" id="pw2"></td></tr>
	    
	    <tr><td>이름</td></tr>
	    <tr><td><input type="text" class="text" id="nm" name="mem_nm"
	    pattern="[가-힣]{2,8}"></td></tr>
	    
	    <tr><td>주민등록번호 입력</td></tr>
	    <tr><td><input type="text" class="text" id="reg1" name="mem_regno1" style="width:125px"
	    		pattern="[0-9]{6,6}">
	    		<input type="text" class="text" id="reg2" name="mem_regno2" style="width:125px"
	    		pattern="[0-9]{7,7}"></td></tr>
	    <tr><td><input type="submit" value="가입하기" class="joinBtn"></td></tr>
	    </table>
	</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>	
<script>
	function valid(e) {
		e.preventDefault();
		let formData = $('form').serialize(); //key1=value1&key2=value2&....&key9=value9 
		console.log(formData);
		 
		$.ajax({
			type: 'post',
			url: '/join.do',
			data: formData, //url인코딩(%인코딩)
			success:function(res){
				 console.log("응답>>", res);
				 if(res == 1){
					 alert="가입성공";
					 location.href = "loginForm.jsp";
				 }else{
					 $('#joinspan').text("가입실패..").css('color','gray');
				 }
			},
			error:function(xhr){
				alert("상태 확인: " + xhr.status);
			}
//	 	 	,dataType: '' 
		 })
	}
</script>
</body>
</html>