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
		
	<link rel="stylesheet" type = "text/css" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
	<noscript><link rel="stylesheet" type ="text/css" href="${pageContext.request.contextPath}/resources/assets/css/noscript.css" /></noscript>
		
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
			<li><a href="#join" class="active">JOIN</a></li>
		</ul>
	</nav>
	
	<!-- Main -->
	<div id="main">

		<section id="join" class="main special">
			<div class="spotlight">
				<div class="content">
					<header class="major">
						<h2>JOIN</h2>
					</header>
					<br>
				
					<div class="mb-2 text-center">
		  			<form id="joinForm" action="join" method="post">
		  			
			  			<div class="form-group row ">
			    			<label for="mem_id" class="col-6" style= text-align:left >아이디</label>
			   			<div class="col-sm-10">
			      			<input type="text" class="form-control"  id="mem_id" name="mem_id" placeholder="아이디를  15자이내로 입력하세요">
			   			 </div>
			   			 
					    <div class="col-sm-3">
					      <button type="button" class="form-control btn btn-success" id="btnIDCheck" >ID중복체크</button>
					    </div>
					    <label class="col-sm-2 col-form-label" style="display:none;" id="idCheckStatus">중복체크결과</label>
					  </div>
					  
					  <div class="form-group row">
					    <label for="mem_pw" class="col-sm-2 col-form-label" style= text-align:left>비밀번호</label>
					    <div class="col-sm-10">
					      <input type="password" class="form-control" id="mem_pw" name="mem_pw">
					    </div>
					  </div>
					  <div class="form-group row">
					    <label for="mem_pw_2" class="col-sm-2 col-form-label" style= text-align:left >비밀번호확인</label>
					    <div class="col-sm-10">
					      <input type="password" class="form-control" id="mem_pw_2">
					    </div>
					  </div>
					  
					  <div class="form-group row">
					    <label for="mem_name" class="col-sm-2 col-form-label" style= text-align:left>이름</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" id="mem_name" name="mem_name">
					    </div>
					  </div>
					  
					  <div class="form-group row">
					    <label for="mem_nick" class="col-sm-2 col-form-label" style= text-align:left>닉네임</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" id="mem_nick" name="mem_nick">
					    </div>
					  </div>
					  
					  <div class="form-group row">
					    <label for="mem_email" class="col-sm-2 col-form-label" style= text-align:left>이메일</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" id="mem_email" name="mem_email">
					    </div>
					  </div>
					  
					  <div class="form-group row">
					  	<label for="mem_authcode" class="col-sm-2 col-form-label" style= text-align:left>메일인증코드</label>
					    <div class="col-sm-4">
					      <input type="text" class="form-control" id="mem_authcode" name="mem_authcode">
					    </div>
					    <div class="col-sm-3">
					      <button type="button" class="form-control btn btn-success" id="btnAuthcode">메일인증요청</button>
					    </div>
					    <div class="col-sm-3">
					      <button type="button" class="form-control btn btn-success" id="btnConfirmAuthcode" >메일인증확인</button>
					    </div>
					  </div>
					  
					  <div class="form-group row">
					    <label for="mem_phone" class="col-sm-2 col-form-label" style= text-align:left>휴대폰 번호</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" id="mem_phone" name="mem_phone">
					    </div>
					  </div>
					  
			 
					  <div class="form-group row">
					      <label class="form-check-label col-sm-2" for="mem_accept_e" style= text-align:left>메일 수신동의</label>
						  <div class="col-sm-10 text-left">
						  	<input class="form-check-input" type="checkbox" id="mem_accept_e" name="mem_accept_e">
						  </div>			
					  </div>
					  <br><br>
					  <div class="form-group row">
						  <div class="col-12">
						  	<button type="button" class="button primary fit" id="btnJoin">회원가입</button>
						  </div>			
					  </div>
		 			</form>
		
				 </div>
				 </div>
				 </div>
				 </div>
				 </div>
				</div>
			</section>
		</div>
	</div>
		
	  

 
<br>


 <!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>

<!-- 푸터 -->
<%@include file="/WEB-INF/views/include/footer.jsp" %>
    
		<!-- Scripts -->
			<script src="<c:url value = "/resources/assets/js/jquery.min.js"/>"></script>
			<script src="<c:url value = "/resources/assets/js/jquery.scrollex.min.js"/>"></script>
			<script src="<c:url value = "/resources/assets/js/jquery.scrolly.min.js"/>"></script>
			<script src="<c:url value = "/resources/assets/js/browser.min.js"/>"></script>
			<script src="<c:url value = "/resources/assets/js/breakpoints.min.js"/>"></script>
			<script src="<c:url value = "/resources/assets/js/util.js"/>"></script>
			<script src="<c:url value = "/resources/assets/js/main.js"/>"></script>
			
<script>

  $(document).ready(function(){

    let joinForm = $("#joinForm");

    //아이디 중복체크 사용
    let isCheckID = false;
    //메일인증 사용
    let isMailAuth = false;

    // ID중복체크
    $("#btnIDCheck").on("click", function() {
      if($("#mem_id").val() == "") {
        alert("아이디를 입력하세요.");
        $("#mem_id").focus();
        return;
      }

      $.ajax({
        url: '/member/idCheck',
        type: 'get',
        dataType: 'text',
        data: { mem_id : $("#mem_id").val() },
        success: function(data) {
          console.log("아이디 사용유무: " + data);

          $("#idCheckStatus").css({'display':'inline', 'color':'red'});

          if(data == "yes") {
            $("#idCheckStatus").html("<b>" + $("#mem_id").val() + " 가능</b>");
            isCheckID = true;
          }else{
            $("#idCheckStatus").html("<b>" + $("#mem_id").val() + " 불가능</b>");
            $("#mem_id").val("");
            $("#mem_id").focus();
          }
        }
      });
    });   
    
    
    //메일인증코드 요청
    $("#btnAuthcode").on("click", function(){
      if($("#mem_email").val() == "") {
        alert("메일주소를 입력하세요.");
        $("#mem_email").focus();
        return;
      }

      $.ajax({
        url: '/email/send',
        type: 'get',
        dataType: 'text',  // 'xml', 'html', 'json', 'text'
        data : {receiverMail: $("#mem_email").val()}, // Javascript Ojbect구문.
        success: function(data) {
          if(data == "success") {
            alert("인증메일이 발송되었습니다. 인증코드를 확인해주세요.");
          }else{
            alert("메일 발송이 실패되었습니다. 관리자에게 문의해주세요.");
          }
        }
      });
    });

    //메일인증확인
    $("#btnConfirmAuthcode").on("click", function() {
      let authCode = $("#mem_authcode").val();

      $.ajax({
        url: '/email/confirmAuthCode',
        type: 'post',
        dataType: 'text', 
        data: {authCode : authCode},
        success: function(data) {
          if(data == "success") {
            alert("인증이 일치합니다.");
            isMailAuth = true;
          }else if(data == "fail") {
            alert("인증이 불일치 합니다. \n메일인증요청을 다시 해주세요.");
          }
        }
      });
    });

    //회원가입 전송 클릭
    $("#btnJoin").on("click", function() {

      //회원정보 유효성검사

      if(isCheckID == false) {
        alert("아이디 중복체크를 해주세요.");
        return;
      }
      
      if(isMailAuth == false) {
        alert("메일인증을 해주세요.");
        return;
      }
      
      
      joinForm.submit(); // 폼의 정보가 서버로 진행된다.

    });


  });

</script>

  </body>
</html>
