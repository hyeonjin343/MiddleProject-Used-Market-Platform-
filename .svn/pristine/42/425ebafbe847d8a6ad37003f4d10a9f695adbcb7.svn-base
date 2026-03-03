<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 	<script src="/docs/5.3/assets/js/color-modes.js"></script> -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link href="css/styles.css" rel="stylesheet" />
<title>Insert title here</title>
<style>
html,
body {
  height: 100%;
}

.form-signin {
  max-width: 330px;
  padding: 1rem;
}

.form-signin .form-floating:focus-within {
  z-index: 2;
}

.form-signin input[type="id"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
</style>
</head>
<body>
	<main class="form-signin w-100 m-auto">
  <form class="form-signin" method="post" action="/login.do">
    <img class="mb-4" src="" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">로그인</h1>

    <div class="form-floating">
      <input type="text" class="form-control" id="userId" placeholder="id" name="userId">
      <label for="floatingInput">아이디 입력</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="userPw" placeholder="Password" name="userPw">
      <label for="floatingPassword">비밀번호 입력</label>
    </div>
<!--     <div class="form-check text-start my-3"> -->
<!--       <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault"> -->
<!--       <label class="form-check-label" for="flexCheckDefault"> -->
<!--         Remember me -->
<!--       </label> -->
<!--     </div> -->
    <button class="btn btn-primary w-100 py-2" type="submit">로그인</button><br><br>
    <input type="button" class="btn btn-primary w-100 py-2" value="회원가입" onclick="join()">
  </form>
</main>
<script>
	function join(){
		location.replace("/join.do");
	}
</script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>