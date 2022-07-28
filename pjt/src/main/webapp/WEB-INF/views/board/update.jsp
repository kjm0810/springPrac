<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	table{
		width:100%;
		margin-top:20px;
	}
	table td{
		text-align:center;
		padding:20px;
		box-sizing:border-box;
	}
	.button{
		display:block;
		width:80px;
		text-align:center;
		padding: 10px;
		background-color:#777;
		color:#FFF;
		cursor:pointer;
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
		<h2 style="margin-bottom:20px;">Update page</h2>
	    <form name="update" method="POST" action="/pjt/board/update?no=${data.no}">
	        <div>글번호 : ${data.no}</div>
	        <div>글제목 : </div>
	        <div><input name="post_title" value="${data.post_title}" type="text"/></div>
	        <div>글내용 : </div>
	        <div><input name="post_content" value="${data.post_content}" type="text"/></div>
	        <div>바닥글 :</div>
	        <div><input name="post_footer" value="${data.post_footer}" type="text"/></div>
	        <div>작성일자</div>
	        <div><fmt:formatDate value="${data.post_date}" pattern="yyyy/MM/dd" /></div>
	        <div>작성시간</div>
	        <div><fmt:formatDate value="${data.post_time}" pattern="HH:mm:ss" /></div>
	        
	        <div>        
	            <input type="submit" class="button" value="완료"/>
	            <input type="reset" class="button" value="리셋"/>
	        </div>
	    </form>
	</div>       
</body>
</html>