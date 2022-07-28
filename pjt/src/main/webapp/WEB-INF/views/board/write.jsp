<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
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
	}
	h2{
		margin-top:60px;
	}
	.mt40{
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
	<form method="post">
		<div class="container">
			<h2>Write Page</h2>
			<div class="mt40">제목</div>
			<input type="text" name="post_title" placeholder="제목을 입력해 주세요."/>
			<div>내용</div>
			<input type="text" name="post_content" placeholder="내용을 입력해 주세요."/>
			<div>바닥글</div>
			<input type="text" name="post_footer" placeholder="바닥글을 입력해 주세요."/>
			<div>글번호</div>
			<input type="text" name="no" placeholder="글번호을 입력해 주세요."/>
			<button type="submit">등록</button>
		</div>		
	</form>
</body>
</html>