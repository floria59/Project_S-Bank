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

			

				<!-- Main -->
					<div id="main">

						<!-- login -->
							<section id="#welcome" class="main special">
								<div class="spotlight">
									<div class="content">
										<header class="major">
											<h2>WELCOME</h2>
										</header>
										<div class="link-join">
											<h style="font-size: medium">
												S:Bank는 <br>
												~~입니다. 
											</h>
											<br><br>
											<a href="/member/login" class="button primary" >LOGIN 바로가기</a>
										</div>
									</div>
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