<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
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
		border:1px solid #CCC;
		display:flex;
		justify-content:space-between;
	}
	header{
		width:100%;
		height:60px;
		box-shadow:0 0 10px #CCC;
	}
	header nav{
		display:flex;
	}
	header nav a{
		margin-right:20px;
		line-height:60px;
		font-size:13px;
	}
	header h1{
		line-height:60px;
		font-size:18px;
	}
	h2{
		text-align:center;
		margin-top:40px;
	}
</style>
</head>
<body>
	<header>
		<div class="container">
			<nav>
				<h1><a href="/pjt">List page</a></h1>
				<a href='<c:url value='/board/write'/>' role="button" class="btn btn-outline-info">작성하기</a>
				<a href='<c:url value='/board/list'/>' role="button" class="btn btn-outline-info">목록보기</a>
			</nav>		
		</div>	
	</header>
	<div class="container">
		<h2>게시판 입니다</h2>
	</div>		
</body>
</html>