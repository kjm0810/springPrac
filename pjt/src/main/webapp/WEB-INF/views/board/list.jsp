<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
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
</style>
</head>
<body>
	<header>
		<div class="container">
			<nav>
				<h1><a href="/pjt">List page</a></h1>
				<a href='<c:url value='/board/write'/>' role="button" class="btn btn-outline-info">작성하기</a>
				<a href='<c:url value='/board/list'/>' role="button" class="btn btn-outline-info">목록보기</a>
				<a href='<c:url value='/board/login'/>' role="button" class="btn btn-outline-info">로그인</a>			
			</nav>		
		</div>	
	</header>
	<form name="userForm">
		<div class="container">		
			<div class="post_list_wrap">
				<c:forEach items="${list}" var="list">
					<div class="post_list">
						<span>
							${list.no}.
						</span>
						<span>
							${list.post_title}.
						</span>
						<span>
							<a href="/pjt/board/detail?no=${list.no}">
								${list.post_content}.
							</a>							
						</span>					
					    <span>
					    	${list.post_footer}
					    </span>
					    <span>
					    	<fmt:formatDate value="${list.post_date}" pattern="yyyy년MM월dd일" />
					    </span>
					    <span>
					    	<fmt:formatDate value="${list.post_time}" pattern="HH시mm분ss초" />
					    </span>				               				    				    
					</div>			     	
				</c:forEach>
				<a href="<c:url value='/board/write'/>" role="button" class="btn btn-outline-info">글쓰기</a>
			</div>
		</div>	
	</form>
</body>
</html>