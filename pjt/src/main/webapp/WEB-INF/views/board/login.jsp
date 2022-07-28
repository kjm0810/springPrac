<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
	*{
		margin:0;
		padding:0;
	}
	a{
		text-decoration:none;
		color:#000;
	}
	.container{
		width:90%;
		margin:auto;		
	}
	.post_list_wrap{
		margin-top:20px;		
	}
	.post_list{
		margin-bottom:10px;
		padding:20px;
		box-sizing:border-box;
		border:1px solid #CCC
	}
	header{
		width:100%;
		height:60px;
		box-shadow:0 0 10px #CCC;
	}
	header nav{
		display:flex;
	}
	header nav>a{
		margin-left:20px;
		line-height:60px;
		font-size:13px;
	}
	header h1{
		line-height:60px;
		font-size:18px;
	}
	input{
		width:100%;
		padding:10px;
		height:40px;
		box-sizing:border-box;
	}
	h2{
		margin-top:60px;
	}
	.mt40{
		margin-top:40px;
	}
	table{
		width:100%;
		margin-top:20px;
	}
	table td{
		text-align:center;
		padding:20px;
		box-sizing:border-box;
	}
	a.button{
		display:block;
		width:80px;
		text-align:center;
		padding: 10px;
		background-color:#777;
		color:#FFF;
		float:left;		
	}
	form{
		width:100%;
	}
	.btn_login{
		display:block;
		width:100%;		
		height:40px;
		line-height:40px;
		box-sizing:border-box;
		background-color:#999;
		color:#FFF;
		font-weight:bold;
		border:none;
		cursor:pointer;
	}
</style>
</head>
<body>
	<div class="container">
		<form action="" class="login_form">
			<input type="text" name="user_id" placeholder="id"/>
			<input type="text" name="user_pw" placeholder="pw"/>
			<button type="submit" class="btn_login">로그인</button>
		</form>			
	</div>
</body>
</html>