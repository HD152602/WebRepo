<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KangTaeJun | Student in Dimigo</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<script src="../js/blog.js"></script>
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light"
		style="background-color: #13FFB5;">
		<a class="navbar-brand" href="home.jsp"> <img src="../image/t.png"
			width="35" height="35" class="d-inline-block align-top" alt="">
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="me.html">About
						me</a></li>
				<li class="nav-item"><a class="nav-link" href="like.html">What
						I Like</a></li>
				<li class="nav-item"><a class="nav-link" href="todo.html">What
						to do</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<div class="btn-group" role="group" aria-label="Basic example">
					<button type="button" class="btn btn-secondary" onclick="sin();">Sign
						in</button>
					<button type="button" class="btn btn-secondary" onclick="sup();">Sign
						up</button>
				</div>
			</form>
		</div>
	</nav>



		<div class="modal" id="signin">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">로그인</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form id="login">
							<div class="form-group">
								<label>Id</label> <input type="text"
									class="form-control" id="Id" required="required">
							</div>
							<div class="form-group">
								<label>Password</label> <input
									type="password" class="form-control"
									required="required">
							</div>
							<button type="submit" class="btn btn-primary" >Login</button>
							<button type="submit" class="btn btn-primary" data-dismiss="modal">Close</button>
						</form>
					</div>
				</div>
			</div>
		</div>


		<div class="modal" id="signup">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">회원가입</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form id="s">
							<div class="form-group">
								<label>학년</label><br>
								<div class="form-check form-check-inline">
	  							<label class="form-check-label">
	    							<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" checked> 1학년
	  							</label>
								</div>
								<div class="form-check form-check-inline">
	  							<label class="form-check-label">
	    							<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 2학년
	  							</label>
								</div>
								<div class="form-check form-check-inline">
	  							<label class="form-check-label">
	    							<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3"> 3학년
	  							</label>
								</div>
							</div>
							<div class="form-group">
								<label>반</label>
								<div class="form-group">
	    						<select class="form-control" id="exampleFormControlSelect1">
	      						<option>1반</option>
	      						<option>2반</option>
	      						<option>3반</option>
	      						<option>4반</option>
										<option>5반</option>
										<option>6반</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label>이름</label> <input type="text"
									class="form-control" required="required">
							</div>
							<div class="form-group">
								<label>Id</label> <input type="text"
									class="form-control" id="Id1" required="required">
							</div>
							<div class="form-group">
								<label>Password</label> <input
									type="password" class="form-control" required="required"
									>
							</div>
							<button type="submit" class="btn btn-primary" >Submit</button>
							<button type="submit" class="btn btn-primary" data-dismiss="modal">Close</button>
						</form>
					</div>
				</div>
			</div>
		</div>



		<div class="modal" id="mymodal">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">환영합니다!</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<p></p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal" onclick="c();">Close</button>
					</div>
				</div>
			</div>
		</div>

		<div class="jumbotron">
			<h1 class="display-3">어서오세요!</h1>
			<p class="lead">강태준의 개인 블로그 입니다.</p>
			<hr class="my-4">
			<p>
				<br>made by 2602
			</p>
		</div>

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>
	<script src="../js/submit.js"></script>
</body>
</html>
