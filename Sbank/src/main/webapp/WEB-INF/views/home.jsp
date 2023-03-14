<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko" class="">

<!--
	Stellar by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>S:Bank</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		
		<link rel="stylesheet"type = "text/css" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
		<noscript><linkrel="stylesheet" type ="text/css"  href="${pageContext.request.contextPath}/resources/assets/css/noscript.css" /></noscript>
		
	
	<script>
	
      let msg = '${msg}';
      if(msg != '') {
        alert(msg);
      }

    </script>
    
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

			<!-- 헤더 -->
    		<%@include file="/WEB-INF/views/include/header.jsp" %>

				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li><a href="#login" class="active">LOGIN</a></li>
							<li><a href="#join">JOIN</a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- login -->
							<section id="login" class="main special">
								<div class="spotlight">
									<div class="content">
						
										<header class="major">
											<h2>LOGIN</h2>
										</header>
										
										<div class="text-align: center">
											<form id="loginForm" action="loginPost" method="post">
												<div class="form-group row">
													<label for="mem_id" class="col-sm-3 col-form-label">아이디</label>
													<div>
												      <input type="text" class="form-control" id="mem_id" name="mem_id" placeholder="아이디를 입력하세요" required>
												    </div>
												</div>
												
												<div class="form-group row">
												    <label for="mem_pw" class="col-sm-3 col-form-label">비밀번호</label>
												    <div >
												      <input type="password" class="form-control" id="mem_pw" name="mem_pw" placeholder="비밀번호를  입력하세요" required>
												    </div>
												  </div>
												  <br>
												 <div class="form-group row">
													  <div>
													  <input type="submit"  value="LOGIN" class="button" id="btnLogin"> 
													  
													  </div>			
												  </div>
												  
												  <div class=form-group mb-3>
					                                <a href=#
					                                id=btnLoginKakao onclick=addButtonLoader('#'+this.id); class="button">
					                                    	카카오 아이디로 로그인
					                                </a>
                                				  </div>
											  </form>
										  </div>

									</div>
									
								</div>
							</section>

						<!-- First Section -->
							<section id="join" class="main special">
								<header class="major">
									<h2>JOIN US</h2>
								</header>
								<div class="link-join">
									<h style="font-size: medium">
										아직 회원이아니세요? <br>
										회원가입을 통해 즐거운 계모임을 시작해보세요🥰
									</h>
									<br><br>
							        <a href="/member/join" class="button" >JOIN</a>
							        <br><br>
								</div>

							</section>

					</div>

				<!-- 푸터 -->
    			<%@include file="/WEB-INF/views/include/footer.jsp" %>

			</div>

		<!-- Scripts -->
			<script src="<c:url value = "/resources/assets/js/jquery.min.js"/>"></script>
			<script src="<c:url value = "/resources/assets/js/jquery.scrollex.min.js"/>"></script>
			<script src="<c:url value = "/resources/assets/js/jquery.scrolly.min.js"/>"></script>
			<script src="<c:url value = "/resources/assets/js/browser.min.js"/>"></script>
			<script src="<c:url value = "/resources/assets/js/breakpoints.min.js"/>"></script>
			<script src="<c:url value = "/resources/assets/js/util.js"/>"></script>
			<script src="<c:url value = "/resources/assets/js/main.js"/>"></script>

	</body>
</html>