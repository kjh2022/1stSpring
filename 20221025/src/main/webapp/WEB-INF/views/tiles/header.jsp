<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
<meta name="generator" content="Hugo 0.88.1">
<title>Headers · Bootstrap v5.1</title>

<link rel="canonical"
	href="https://getbootstrap.kr/docs/5.1/examples/headers/">



<!-- Bootstrap core CSS -->
<link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon"
	href="/docs/5.1/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg"
	color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>


<!-- Custom styles for this template -->
<link href="headers.css" rel="stylesheet">
</head>
<body>
	<div class="b-example-divider"></div>

	<header>
		<div class="px-3 py-2 bg-dark text-white">
			<div class="container">
				<div
					class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
					<a href="/"
						class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-white text-decoration-none">
						<svg class="bi me-2" width="40" height="32" role="img"
							aria-label="Bootstrap">
							<use xlink:href="#bootstrap" /></svg>
					</a>
					<ul
						class="nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small">
				<!-- 메뉴 추가하는 자리 -->
						<li><a href="${pageContext.request.contextPath}/bookinsert" class="nav-link text-secondary"> <svg
									class="bi d-block mx-auto mb-1" width="24" height="24">
									<use xlink:href="#home" /></svg> 도서 등록
						</a></li>
						<li><a href="${pageContext.request.contextPath}/booklist" class="nav-link text-white"> <svg
									class="bi d-block mx-auto mb-1" width="24" height="24">
									<use xlink:href="#speedometer2" /></svg> 도서 목록 조회 / 수정 
						</a></li>
						<li><a href="${pageContext.request.contextPath}" class="nav-link text-secondary"> <svg
									class="bi d-block mx-auto mb-1" width="24" height="24">
									<use xlink:href="#home" /></svg> 대여 현황 조회
						</a></li>						
						<li><a href="${pageContext.request.contextPath}" class="nav-link text-secondary"> <svg
									class="bi d-block mx-auto mb-1" width="24" height="24">
									<use xlink:href="#home" /></svg> 홈으로
						</a></li>						

						<li><a href="${pageContext.request.contextPath}/mainlist" class="nav-link text-white"> <svg
									class="bi d-block mx-auto mb-1" width="24" height="24">
									<use xlink:href="#speedometer2" /></svg> 메인-전체회원 조회
						</a></li>						
					</ul>
				</div>
			</div>
		</div>
		<div class="px-3 py-2 border-bottom mb-3">
			<div class="container d-flex flex-wrap justify-content-center">
				<form class="col-12 col-lg-auto mb-2 mb-lg-0 me-lg-auto">
					<input type="search" class="form-control" placeholder="Search..."
						aria-label="Search">
				</form>

				<div class="text-end">
					<button type="button" class="btn btn-light text-dark me-2">Login</button>
					<button type="button" class="btn btn-primary" onclick="location.href=''">회원가입</button>
				</div>
			</div>
		</div>
	</header>

	<div class="b-example-divider"></div>
</body>
</html>