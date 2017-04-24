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

<%
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader("Expires",0);
    if (request.getProtocol().equals("HTTP/1.1"))
        response.setHeader("Cache-Control", "no-cache");
%>

<%
    UserBean userBean = new UserBean();
    userBean = (UserBean)session.getAttribute("userBean");


    String nickname = "";
    String userImg = "";
    String root = "/upload/";
    int applicationsize = 0;
    int invitationsize = 0;

    if (userBean != null) {
    	nickname = userBean.getNickname();
        MessageDAO messageDAO = MessageDAO.getInstance();
        invitationsize = messageDAO.do_search_invitation(userBean.getEmail()).size();
        applicationsize = messageDAO.do_search_application(userBean.getEmail()).size();
        userImg = root + userBean.getImage();
        System.out.println(userImg);
    }

%>

<%--상단바--%>
<nav class="navbar navbar-default navbar-fixed-top ">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <img src="/view/image/logo/logo.png" alt="" width="150" height="50" class="btn" <% if (userBean != null) { %> onclick="location.href='/view/nonPopup/projectboard.jsp'" <% } %> >

        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <%
                    // 로그인 했을 때만 projects page, 일정페이지 보여줌
                    if (userBean != null) {
                %>
                <li style="font-size: 20px; "><a href="/controller/Project_Page_Controller.jsp">Projects</a></li>
                <li style="font-size: 20px;"><a href="/controller/User_Schedule_Controller.jsp" >Schedule</a></li>
                <%
                    }
                %>
                <li style="font-size: 20px;"><a href="/view/nonPopup/about.jsp">About</a></li>
            </ul>
            <%
                // 로그인 했을 때만 드롭다운 보여줌
                if (userBean != null) {
            %>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                        <% if (!userImg.equals("") && !userImg.equals("/upload/없음")) { %> <img src="<%=userImg%>" alt="" width="30" height="30" class="img-rounded"> <%--이미지 있을 시 이미지 사용--%>
                        <% } else { %> <span class="glyphicon glyphicon-user" aria-hidden="true"></span> <% } %>                    <%--이미지 없을 시 아이콘 사용--%>
                        <%=nickname%>
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="/controller/Invitation_Message_Controller.jsp">초대가 <strong><%=invitationsize%></strong>건 있습니다.</a></li>
                        <li><a href="/controller/Application_Message_Controller.jsp">지원이 <strong><%=applicationsize%></strong>건 있습니다.</a></li>
                        <li class="divider"></li>
                        <li><a href="/view/nonPopup/profileedit.jsp">회원정보 수정</a></li>
                        <li><a href="/controller/Logout_Controller.jsp">로그아웃</a></li>
                    </ul>
                </li>
            </ul>
            <%
                }
            %>
        </div>
    </div>
</nav>


<div>
	<%--컨텐츠---------------------------------------------------------------------%>
  <section class="background">
    <div class="content-wrapper">
      <p class="content-title" style="margin-right: 21%">Grouppl</p>
      <p class="content-subtitle" style="margin-right: 21%">Scroll down and up to see the effect!</p>
    </div>
    <div class="sidebar" style="padding-top: 3%;margin-top: 0px;top: 17%;">
  <span class="rtitle">Login</span>
  <br>
  <br>
  <form>
    <input class="textinput" type="text" name="username" autofocus="autofocus" placeholder="Username">
    <br>
    <br>
    <input class="textinput" type="password" name="password" placeholder="Password">
    <br>
    <br>
    <button class="submit" type="submit">
      <img src="http://www.yachtsale.se/wp-content/themes/Yachtsales/images/arrow-right.png" height="24px" />
    </button>
  </form>
</div>
  </section>
  <section class="background">
    <div class="content-wrapper">
      <p class="content-title">Cras lacinia non eros nec semper.</p>
      <p class="content-subtitle">Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras ut massa mattis nibh semper pretium.</p>
    </div>
  </section>
  <section class="background">
    <div class="content-wrapper">
      <p class="content-title">Etiam consequat lectus.</p>
      <p class="content-subtitle">Nullam tristique urna sed tellus ornare congue. Etiam vitae erat at nibh aliquam dapibus.</p>
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
</script>
	
</html>