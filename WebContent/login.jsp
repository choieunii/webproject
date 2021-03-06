<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
Cookie[] cookies = request.getCookies(); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<link rel="stylesheet" href="assets/css/reset19.css">
<link rel="stylesheet" href="assets/css/style19.css">
<link rel="stylesheet" href="assets/css/swiper.css">

<style>
body {
	background-color: #f8f9fa;
	margin: 100px 170px 100px 170px;
	position: relative;
}

h3 {
	margin-top: 30px;
	margin-left: 50px;
}

h5 {
	margin-top: 0px;
	margin-left: 60px;
}

#body_l {
	column-count: 2;
	column-rule: 1px solid rgb(190, 190, 190);
	margin-top: 20px;
}

#box {
	background-color: white;
	margin: auto;
	height: 390px;
	width: 650px;
	border-width: 1px;
	border-style: solid;
	border-color: rgb(190, 190, 190);
	height: 390px;
}

#title {
	height: 21px;
	padding: 16px;
	font-style: bold;
	font-size: 15px;
	color: white;
	background: #3a0e6a;
}
		#title #close{
			background: #3a0e6a;
			width: auto;
			height: auto;
			max-height: 17px;
			max-width: 17px;
			position: relative;
			left: 525px;			
		}

#input_login {
	position: relative;
	margin-top: 30px;
	margin-left: 10px;
	left: 15px;
	height: 200px;
	font-size: 13px;
	vertical-align: center;
}

#login {
	text-align: center;
	width: 250px;
	border-width: 0px;
	border-radius: 5px;
	padding: 5px;
}

#id, #pw {
	border: 1px solid rgb(190, 190, 190);
	width: 240px;
	height: 20px;
	padding: 5px;
	margin: 5px;
	margin-bottom: 10px;
}

.slide {
	height: 295px;
	object-fit: contain;
}
#error{
color: red;
font-size: 10px;
}
</style>

<script src="https://code.jquery.com/jQuery-3.5.1.js"></script>
<script>
		$(document).ready(function () {
			var slideIndex = 0;
			poster_slide();	// poster slide 

			function poster_slide() {
				var i;
				var x = document.getElementsByClassName("slide");
				for (i = 0; i < x.length; i++) {
					x[i].style.display = "none";
				}
				slideIndex++;
				if (slideIndex > x.length) {
					slideIndex = 1
				}
				x[slideIndex - 1].style.display = "block";
				setTimeout(poster_slide, 2500); // Change image every 2 seconds
			}
			
			$(document).on('submit','#login_form', function(){		  
			      if($("#id").val() == ""){
			         alert("아이디를 입력해주세요");
			         $("#id").focus(); 
			         return false; 
			      }
			      if($("#pw").val() == ""){
			         alert("패스워드를 입력해주세요");
			         $("#pw").focus(); 
			         return false; 
			      }
			});

			var userId = getCookie("ID");
			var userPw = getCookie("PW");				
			
			$("input[name='id']").val(userId);
			$("input[name='pw']").val(userPw);	
		});
		
		function getCookie(cookieName) {
		    cookieName = cookieName + '=';
		    var cookieData = document.cookie;
		    var start = cookieData.indexOf(cookieName);
		    var cookieValue = '';
		    if(start != -1){
		        start += cookieName.length;
		        var end = cookieData.indexOf(';', start);
		        if(end == -1)end = cookieData.length;
		        cookieValue = cookieData.substring(start, end);
		    }
		    return unescape(cookieValue);
		}
</script>
</head>
<body>
	<header id="header">
		<div class="container">
			<div class="row">
				<div class="header clearfix">
					<h1>
						<a href="#"> <em><img src="assets/img/teamlogo_made.png"
								alt="teamlogo" onclick="location.href='main.jsp'"></em><br>
						</a>
					</h1>
					
                </div>
            </div>
        </div>
	</header>
	<!-- //header -->
	<br>
	
	<div id="box">
		<div id="title">
			&nbsp;&nbsp;로그인	
		</div>
		<div id="body_l">
		<form id="login_form" action="./login-db.jsp" method="post">
			<div id="input_login">
				<input name="id" id="id" type="text" placeholder="아이디"><br>
				<input name="pw" id="pw" type="password" placeholder="비밀번호"><br>
				&nbsp;<input type="checkbox" name="save" id="save"> 아이디 저장하기<br>
				<br> <input type="submit" value="로그인" id="login">
				<br> <br> <small>&emsp;&emsp;
				<a href="./findIdPw.jsp">ID/PW찾기</a>&emsp; 
				<a href="./signin.jsp">회원가입</a>&emsp;
				<a href="">비회원 예매확인</a>
				</small>
			</div>
		</form>
			<div id="poster">
				<img class="slide"
					src="https://img.megabox.co.kr/SharedImg/2020/10/14/0XKJAjlb4CrG96RLtjYASyiqOgfaWdcc_420.jpg">
				<img class="slide"
					src="https://img.megabox.co.kr/SharedImg/2020/11/12/k76XsiG5cwzZg964MFa11N3Rb7zsfA8j_420.jpg">
				<img class="slide"
					src="https://img.megabox.co.kr/SharedImg/2020/11/10/ynRbb1JP8iV5HvEvLGiEdDRXtpYgu0Ul_420.jpg">
			</div>
			</div>
		</div>
</body>
</html>
