<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/js/jquery-ui.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Hahmlet:wght@500;600;700&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<style>
		*{
			margin:0;
			padding:0;
		}
		.container{
			width: 500px;
			margin: 0 auto;
			padding: 25px
		}
		.container h1{
			text-align: left;
			padding: 5px 5px 5px 15px;
			color: #FFBB00;
			border-left: 3px solid #FFBB00;
			margin-bottom: 20px;
		}
		.chating{
			background-color: #000;
			width: 500px;
			height: 500px;
			overflow: auto;
		}
		.chating p{
			color: #fff;
			text-align: left;
		}
		input{
			width: 330px;
			height: 25px;
		}
		#yourMsg{
			display: none;
		}
	</style>
<body>
<h1>채팅방</h1>
<div id="container" class="container">
		<h1>채팅</h1>
		<input type="hidden" id="sessionId" value="">
		
		<div id="chating" class="chating">
		</div>
		
		<div id="yourName">
			<table class="inputTable">
				<tr>
					<th>사용자명</th>
					<th><input type="text" name="userName" id="userName"></th>
					<th><button onclick="chatName()" id="startBtn">이름 등록</button></th>
				</tr>
			</table>
		</div>
		<div id="yourMsg">
			<table class="inputTable">
				<tr>
					<th>메시지</th>
					<th><input id="chatting" placeholder="보내실 메시지를 입력하세요."></th>
					<th><button onclick="send()" id="sendBtn">보내기</button></th>
				</tr>
			</table>
		</div>
	</div>
</body>
<script type="text/javascript">
var ws;

function wsOpen(){
	ws = new WebSocket("ws://" + location.host + "/final/chating");
	wsEvt();
}
function wsEvt() {
	ws.onopen = function(data){
		//소켓이 열리면 초기화 세팅하기
	}
	
	ws.onmessage = function(data) {
		//메시지를 받으면 동작
		var msg = data.data;
		if(msg != null && msg.trim() != ''){
			var d = JSON.parse(msg);
			if(d.type == "getId"){
				var si = d.sessionId != null ? d.sessionId : "";
				if(si != ''){
					$("#sessionId").val(si); 
				}
			}else if(d.type == "message"){
				if(d.sessionId == $("#sessionId").val()){
					$("#chating").append("<p class='me'>나 :" + d.msg + "</p>");	
				}else{
					$("#chating").append("<p class='others'>" + d.userName + " :" + d.msg + "</p>");
				}
					
			}else{
				console.warn("unknown type!")
			}
		}
	}

	document.addEventListener("keypress", function(e){
		if(e.keyCode == 13){ //enter press
			send();
		}
	});
}
function chatName(){
	var userName = $("#userName").val();
	if(userName == null || userName.trim() == ""){
		alert("사용자 이름을 입력해주세요.");
		$("#userName").focus();
	}else{
		wsOpen();
		$("#yourName").hide();
		$("#yourMsg").show();
	}
}

function send() {
	var option ={
		type: "message",
		sessionId : $("#sessionId").val(),
		userName : $("#userName").val(),
		msg : $("#chatting").val()
	}
	ws.send(JSON.stringify(option))
	$('#chatting').val("");
}
</script>