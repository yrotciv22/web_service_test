<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>스프링부트</title>
	</head>
	<body>
		<h3>SpringBoot 사용 DB 연동 : 상품 관리</h3>
		
		<a href="<c:url value='/product/listAllProduct'/>">전체 상품 조회</a><br>
		<a href="<c:url value='/product/newProductForm'/>">상품 등록</a><br>
		
		<!-- 이미지 출력 -->		
		<img src="<c:url value='/resources/image/apple.png'/>">
		<!-- 맵핑 이름 사용해서 이미지 출력 -->
		<img src="<c:url value='project_image/apple.png'/>">
		
		
		<h3>상품 검색</h3>
		<a href="<c:url value='/product/productSearchForm1'/>">상품검색1</a><br>
		<a href="<c:url value='/product/productSearchForm2'/>">상품검색2</a><br>
		<a href="<c:url value='/product/productSearchForm3'/>">상품검색3</a><br>
		
	</body>
</html>