<%@page import="bean.InvitationBean"%>
<%@page import="bean.ApplicationBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.MessageDAO"%>
<%@ page import="bean.UserBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 
 
 
 
<head>
	<meta charset="UTF-8">
	<title>GROUPPL</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.10.1/lodash.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	
 <!--javascript-->
    <!--css-->
    <link rel="stylesheet" href="/view/CSS/login.css">
    
    
</head>

<div>
	<%--컨텐츠---------------------------------------------------------------------%>
  <section class="background">
    <div class="content-wrapper">
      <p class="content-title" style="margin-right: 21%">Grouppl</p>
      <p class="content-subtitle" style="margin-right: 21%">쉽고, 빠르고, 효율적인 프로젝트 일정관리 서비스 Grouppl</p>
    </div>
    <div class="sidebar" style="padding-top: 3%;margin-top: 0px;top: 3%;">
  <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
		
		<div class="login-form" >
			<form action="/controller/Login_Controller.jsp" method="post">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" name="user" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" name="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Keep me Signed in</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot">비밀번호를 잊으셧나요?</a>
				</div>
			</div>
			</form>
			<form class="sign-up-htm" action="/controller/Signup_Controller.jsp" method="post">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="pass" class="label">Repeat Password</label>
					<input id="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="pass" class="label">Email Address</label>
					<input id="pass" type="text" class="input">
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign Up">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<label for="tab-1">회원가입을 완료하셧나요?</a>
				</div>
			</form>
		</div>
	</div>
</div>
</div>
  </section>
  <section class="background">
    <div class="content-wrapper">
      <p class="content-title">Grouppl에는 항상 새로운 사람들, 새로운 도전이 있습니다.</p>
      <p class="content-subtitle">Grouppl은 세계 128개 나라의 1,243,546명의 개발자들이 가입되어 있습니다.</p>
      <p class="content-subtitle">수많은 사람들과 새로운 도전을 해보세요.</p>
    </div>
  </section>
  <section class="background">
    <div class="content-wrapper">
      <p class="content-title">Grouppl=포트폴리오.</p>
      <p class="content-subtitle">항상 시간이 부족한 취준생! 더이상 포트폴리오에 시간을 쏟지 마세요 Grouppl의 모든 활동내역이 당신의 포트폴리오가 됩니다.</p>
    </div>
  </section>
  </div>
  
	<script type="text/javascript">
	// ------------- VARIABLES ------------- //
	var ticking = false;
	var isFirefox = (/Firefox/i.test(navigator.userAgent));
	var isIe = (/MSIE/i.test(navigator.userAgent)) || (/Trident.*rv\:11\./i.test(navigator.userAgent));
	var scrollSensitivitySetting = 30; //Increase/decrease this number to change sensitivity to trackpad gestures (up = less sensitive; down = more sensitive) 
	var slideDurationSetting = 600; //Amount of time for which slide is "locked"
	var currentSlideNumber = 0;
	var totalSlideNumber = $(".background").length;

	// ------------- DETERMINE DELTA/SCROLL DIRECTION ------------- //
	function parallaxScroll(evt) {
	  if (isFirefox) {
	    //Set delta for Firefox
	    delta = evt.detail * (-120);
	  } else if (isIe) {
	    //Set delta for IE
	    delta = -evt.deltaY;
	  } else {
	    //Set delta for all other browsers
	    delta = evt.wheelDelta;
	  }

	  if (ticking != true) {
	    if (delta <= -scrollSensitivitySetting) {
	      //Down scroll
	      ticking = true;
	      if (currentSlideNumber !== totalSlideNumber - 1) {
	        currentSlideNumber++;
	        nextItem();
	      }
	      slideDurationTimeout(slideDurationSetting);
	    }
	    if (delta >= scrollSensitivitySetting) {
	      //Up scroll
	      ticking = true;
	      if (currentSlideNumber !== 0) {
	        currentSlideNumber--;
	      }
	      previousItem();
	      slideDurationTimeout(slideDurationSetting);
	    }
	  }
	}

	// ------------- SET TIMEOUT TO TEMPORARILY "LOCK" SLIDES ------------- //
	function slideDurationTimeout(slideDuration) {
	  setTimeout(function() {
	    ticking = false;
	  }, slideDuration);
	}

	// ------------- ADD EVENT LISTENER ------------- //
	var mousewheelEvent = isFirefox ? "DOMMouseScroll" : "wheel";
	window.addEventListener(mousewheelEvent, _.throttle(parallaxScroll, 60), false);

	// ------------- SLIDE MOTION ------------- //
	function nextItem() {
	  var $previousSlide = $(".background").eq(currentSlideNumber - 1);
	  $previousSlide.removeClass("up-scroll").addClass("down-scroll");
	}

	function previousItem() {
	  var $currentSlide = $(".background").eq(currentSlideNumber);
	  $currentSlide.removeClass("down-scroll").addClass("up-scroll");
	}
	
	
	function login() {
		 location.href = "/controller/Login_Controller.jsp";
		
	}
</script>
	
</html>