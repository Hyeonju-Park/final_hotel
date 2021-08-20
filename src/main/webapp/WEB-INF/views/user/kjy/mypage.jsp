<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/js/jquery-ui.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Hahmlet:wght@500;600;700&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style>
	* {
		font-family: 'Stylish', sans-serif;
	}
	#headbox{
		position: absolute;
		top:100px;
		left: 400px;
		height: 400px;
		width: 1000px;
		border-top: 1px solid gray;
		border-bottom: 1px solid gray;
	}
	.name{
		position: absolute;
		top:50px;
		left: 0px;
		font-size: 25px;
		font-weight: normal;
	}
	.memt{
		position: absolute;
		top:100px;
		left: 0px;
		font-size: 50px;
		font-weight: normal;
	}
	.profile{
		position: absolute;
		top:50px;
		right: 0px;
		width: 200px;
		height: 200px;
		border-radius: 100px;
		background: #489CFF;
	}
	.initial{
		position:absolute;
		font-size:100px;
		color: white;
		top:0px;
		left:70px;
	}
	#proimg{
		position: absolute;
		top:0px;
		right: 0px;
		width: 200px;
		height: 200px;
		border-radius: 100px;
	}
	.profiledel{
		position: absolute;
		top:0px;
		right:0px;
		font-size:20px;
		cursor:pointer;
	}
	#profileup{
		position: absolute;
		top:160px;
		right:-10px;
		width:50px;
		height: 40px;
		cursor: pointer;
		border-radius: 100px;
	}
	
	#contentbox{
		position:absolute;
		left:400px;
		top:450px;
		width:1000px;
		margin:0; 
		padding:0;
	}
	/*tab css*/
	div,ul,li {
		list-style:none;
	}
	.tab{
		position:absolute;
		left:0px;
		float:left; 
		width:600px; 
		height:290px;
	}
	.tabnav{
		position:relative;
		left:0px;
		font-size:0; 
		width:1000px; 
		border:1px solid #ddd;
	}
	.tabnav li{
		position:relative;
		left:0px;
		display: inline-block;  
		width:197px;
		height:46px; 
		text-align:center; 
		border-right:1px solid #ddd;
	}
	.tabnav li a:before{
		content:""; 
		position:absolute; 
		left:0; 
		top:0px; 
		width:100%; 
		height:3px; 
	}
	.tabnav li a.active:before{
		background:blue;
	}
	.tabnav li a.active{
		border-bottom:1px solid #fff;
	}
	.tabnav li a{ 
		position:relative; 
		display:block; 
		background: #f8f8f8; 
		color: #000; 
		padding:0 30px; 
		line-height:46px; 
		text-decoration:none; 
		font-size:16px;
	}
	.tabnav li a:hover,.tabnav li a.active{
		background:#fff; color:blue; 
	}
	.tabcontent{
		position:relative;
		top:0px;
		width:1000px;
		height:600px; 
		 
		
	}
</style>
</head>
<body>
<div id="headbox">
	<p class="name">${vo.mname }님</p>
	<p class="memt">돌아오셔서 반갑습니다.</p>
	<div class="profile">
		<c:choose>
			<c:when test="${!empty vo.mprofile}">
				<img src="${pageContext.request.contextPath }/resources/images/members/${vo.mprofile}" id="proimg">
				<!-- C:\jhta\final\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\final_hotel1\resources\images\kjy\mypage -->
				<p class="profiledel">&times;</p>
				<img src="${pageContext.request.contextPath }/resources/images/members/profileup.jpg" id="profileup">				
			</c:when>
			<c:otherwise>
				<p class=" initial">${initial }</p>
				<img src="${pageContext.request.contextPath }/resources/images/members/profileup.jpg" id="profileup">
			</c:otherwise>
		</c:choose>
		<form id="fileForm" method="post" enctype="multipart/form-data" style="display: none;">
    		<input type="file" id="fileInput" name="filename">
		</form>
	</div>
</div>
<div id="contentbox">
	<div class="tab">
    	<ul class="tabnav">
      		<li><a href="#tab01">계정관리</a></li>
      		<li><a href="#tab02">환경설정</a></li>
      		<li><a href="#tab03">예약내역</a></li>
      		<li><a href="#tab04">문의내역</a></li>
      		<li><a href="#tab05">회원탈퇴</a></li>
    	</ul>
    <div class="tabcontent">
    <div id="tab01">
    	<jsp:include page="/WEB-INF/views/user/jhr/mypageUpdate.jsp"/>
    </div>
    <div id="tab02">
    	<jsp:include page="/WEB-INF/views/user/kjy/mypage_preferences.jsp"/>
	</div>
	<div id="tab03">
    	<jsp:include page="/WEB-INF/views/user/kjy/mypage_reservation.jsp"/>
	</div>
	<div id="tab04">
    	<jsp:include page="/WEB-INF/views/user/jhr/mypageQnalist.jsp"/>
	</div>
	<div id="tab05">
    	<jsp:include page="/WEB-INF/views/user/kjy/mypage_accountdelete.jsp"/>
	</div>
  	</div>
  </div><!--tab-->
</div>	
</body>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
	  $('.tabcontent > div').hide();
	  $('.tabnav a').click(function () {
	    $('.tabcontent > div').hide().filter(this.hash).fadeIn();
	    $('.tabnav a').removeClass('active');
	    $(this).addClass('active');
	    return false;
	  }).filter(':eq(0)').click();
	});
	
	$(".profiledel").click(function(){
		if(confirm("정말 삭제하시겠습니까?") == true){
			$.ajax({
				type:'get',
				url:"${pageContext.request.contextPath }/user/kjy/profiledel",
				dataType:"json",
				success:function(d){
					if(d==1){
						alert("삭제가 완료되었습니다.");
						refresh();//현재 페이지 새로고침
					}
				}
			});
		}else{
			return;
		}
	});
	
	$("#profileup").click(function(){
		$("#fileInput").click();
	});
	
	$("#fileInput").change(function(){
		var form = $('#fileForm')[0];
		var data = new FormData(form);
		$.ajax({
			type:'post',
			enctype: 'multipart/form-data',
			url:"${pageContext.request.contextPath }/user/kjy/profileup",
			data: data,
			dataType:"json",
			processData: false,    
		    contentType: false,      
		    cache: false,  
			timeout: 600000,
			success: function(data){
				if(data==1){
					location.reload();
				}else{
					alert("작업에 실패하였습니다.");
				}
			}
		});
	});
	
	function refresh(){
		location.reload();
	}     
</script>
</html>