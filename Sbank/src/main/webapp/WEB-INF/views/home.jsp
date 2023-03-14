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
		<noscript><link rel="stylesheet" "text/css" href="${pageContext.request.contextPath}/resources/assets/css/noscript.css" /></noscript>
		
	
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
										<p>Sed lorem ipsum dolor sit amet nullam consequat feugiat consequat magna
										adipiscing magna etiam amet veroeros. Lorem ipsum dolor tempus sit cursus.
										Tempus nisl et nullam lorem ipsum dolor sit amet aliquam.</p>
										<ul class="actions">
											<li><a href="generic.html" class="button">Learn More</a></li>
										</ul>
									</div>
									
								</div>
							</section>

						<!-- First Section -->
							<section id="join" class="main special">
								<header class="major">
									<h2>JOIN</h2>
								</header>
								<ul class="features">
									<li>
										<span class="icon solid major style1 fa-code"></span>
										<h3>Ipsum consequat</h3>
										<p>Sed lorem amet ipsum dolor et amet nullam consequat a feugiat consequat tempus veroeros sed consequat.</p>
									</li>
									<li>
										<span class="icon major style3 fa-copy"></span>
										<h3>Amed sed feugiat</h3>
										<p>Sed lorem amet ipsum dolor et amet nullam consequat a feugiat consequat tempus veroeros sed consequat.</p>
									</li>
									<li>
										<span class="icon major style5 fa-gem"></span>
										<h3>Dolor nullam</h3>
										<p>Sed lorem amet ipsum dolor et amet nullam consequat a feugiat consequat tempus veroeros sed consequat.</p>
									</li>
								</ul>
								<footer class="major">
									<ul class="actions special">
										<li><a href="generic.html" class="button">Learn More</a></li>
									</ul>
								</footer>
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