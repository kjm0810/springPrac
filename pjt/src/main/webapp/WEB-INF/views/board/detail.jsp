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
	a.button{
		display:block;
		width:80px;
		text-align:center;
		padding: 10px;
		background-color:#777;
		color:#FFF;
		float:left;		
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
		<h2>Detail page</h2>
	    <table border="1">
	    	<tr>
		    	<th>정보</th>
		        <th>데이터</th>
	    	</tr>	        
	        <tr>
	            <td>작성일자</td>
	            <td><fmt:formatDate value="${data.post_date}" pattern="yyyy-MM-dd" />
	            </td>
	        </tr>
	        <tr>
	            <td>글번호</td><td>${data.no}</td>
	        </tr>
	        <tr>
	            <td>제목</td><td>${data.post_title}</td>
	        </tr>
	        <tr>
	            <td>내용</td><td>${data.post_content}</td>
	        </tr>
	        <tr><td>바닥글</td><td>${data.post_footer}</td></tr>
	    </table>
	    <a href="/pjt/board/update?no=${data.no}" class="button">수정하기</a>
	    <a href="/pjt/board/delete?no=${data.no}" class="button" style="margin-left:20px;">삭제하기</a>
	</div>
    
</body>
</html>