<%@page import="dao.MessageDAO"%>
<%@page import="bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.10.1/lodash.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	
 <!--javascript-->
    <!--css-->
    <link rel="stylesheet" href="/view/CSS/dashBoard.css">
    




</head>
<body>

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




<span class="bckg"></span>
<header>
  <h1>Project</h1>
  <nav>
    <ul>
      <li>
        <a href="javascript:void(0);" data-title="Projects">Projects</a>
      </li>
      <li>
        <a href="javascript:void(0);" data-title="Team">Team</a>
      </li>
      <li>
        <a href="javascript:void(0);" data-title="Diary">Diary</a>
      </li>
      <li>
        <a href="javascript:void(0);" data-title="Timeline">Timeline</a>
      </li>
      <li>
        <a href="javascript:void(0);" data-title="Settings">Settings</a>
      </li>
      <li>
        <a href="javascript:void(0);" data-title="Search">Search</a>
      </li>
    </ul>
  </nav>
</header>
<nav class="navbar navbar-default navbar-fixed-top" style="width: 100%;margin-left :200px ; padding-right : 200px;height: 61px;">
    <div class="title">
    <h2>Projects</h2>
    <div class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                        <% if (!userImg.equals("") && !userImg.equals("/upload/없음")) { %> <img src="<%=userImg%>" alt="" width="30" height="30" class="img-rounded"> <%--이미지 있을 시 이미지 사용--%>
                        <% } else { %> <span class="glyphicon glyphicon-user" aria-hidden="true"></span> <% } %>                    <%--이미지 없을 시 아이콘 사용--%>
                        <%=nickname+"님"%>
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
            </div>
  </div>
</nav>
<main>
  <article class="larg">
    <div>
      <h3>Project 1 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 2 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 3 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
  </article>
   <article class="larg">
    <div>
      <h3>Project 1 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 2 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 3 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
  </article>
   <article class="larg">
    <div>
      <h3>Project 1 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 2 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 3 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
  </article>
   <article class="larg">
    <div>
      <h3>Project 1 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 2 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 3 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
  </article>
   <article class="larg">
    <div>
      <h3>Project 1 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 2 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 3 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
  </article>
   <article class="larg">
    <div>
      <h3>Project 1 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 2 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 3 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
  </article>
   <article class="larg">
    <div>
      <h3>Project 1 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 2 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 3 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
  </article>
   <article class="larg">
    <div>
      <h3>Project 1 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 2 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 3 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
  </article>
   <article class="larg">
    <div>
      <h3>Project 1 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 2 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 3 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
  </article>
   <article class="larg">
    <div>
      <h3>Project 1 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 2 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 3 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
  </article>
   <article class="larg">
    <div>
      <h3>Project 1 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 2 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 3 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
  </article>
   <article class="larg">
    <div>
      <h3>Project 1 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 2 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
    <div>
      <h3>Project 3 <span class="entypo-down-open"></span></h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus iste quia incidunt ad provident ullam quo assumenda expedita quae sapiente ipsa qui esse similique! Modi obcaecati natus sapiente quaerat omnis.</p>
    </div>
  </article>
</main>
<script type="text/javascript">
$(document).ready( function() {
	  
	  $('body').on("click", ".larg div h3", function(){
	    if ($(this).children('span').hasClass('close')) {
	      $(this).children('span').removeClass('close');
	    }
	    else {
	      $(this).children('span').addClass('close');
	    }
	    $(this).parent().children('p').slideToggle(250);
	  });
	  
	  $('body').on("click", "nav ul li a", function(){
	    var title = $(this).data('title');
	    $('.title').children('h2').html(title);
	  });
	});

</script>

</body>
</html>