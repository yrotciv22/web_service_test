<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전체 상품 조회</title>
	</head>
	<body>
		<h3>전체 상품 조회</h3>
		<table border="1">
			<tr>
				<th>상품번호</th>
				<th>상품이름</th>
				<th>상품가격</th>
				<th>상품회사</th>
				<th>상품재고</th>
				<th>상품날짜</th>
				<th>상품사진</th>
			</tr>
			<c:forEach var="prd" items="${prdList}">
				<tr>
					<td><a href="<c:url value='/product/detailViewProduct/${prd.prdNo}' />">${prd.prdNo}</a></td>
					<td>${prd.prdName}</td>
					<td>${prd.prdPrice}</td>
					<td>${prd.prdCompany}</td>
					<td>${prd.prdStock}</td>
					<td><fmt:formatDate value="${prd.prdDate}" pattern="YYYY-MM-dd"/></td>
					<td><img src="<c:url value='/prd_images/${prd.prdNo}.jpg'/>" width="30" height="20"></td>
				</tr>
			</c:forEach>
		</table>
		
		<br>
		<a href="/mybatis">index 페이지로 이동</a>
	</body>
</html>