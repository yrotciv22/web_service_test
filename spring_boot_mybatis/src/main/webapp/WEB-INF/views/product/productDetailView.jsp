<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 상세 정보 조회</title>
	</head>
	<body>
		<h3>상품 상세 조회 결과</h3>
	      상품번호 : ${prd.prdNo}<br>
	      상품명 : ${prd.prdName}<br>
	      가격 : ${prd.prdPrice}<br>
	      제조회사 : ${prd.prdCompany}<br>
	      재고 : ${prd.prdStock}<br>
	      제조일 : <fmt:formatDate value="${prd.prdDate}" pattern="YYYY-MM-dd" /><br>
	      
	      <a href="<c:url value='/product/updateProductForm/${prd.prdNo}'/>">[상품 정보 수정]</a><br>
	      <a href="javascript:deleteCheck();">[상품 정보 삭제]</a><br>
	      <!-- 삭제 확인 메시지 출력 -->
	      <script>
	      	function deleteCheck() {
				let answer = confirm("삭제하시겠습니까?");
				if (answer) {
					location.href="/product/deleteProduct/${prd.prdNo}";
				}
			}
	      </script>
	      
	    <!--  index 페이지로 이동 링크 추가 -->
	    <a href="<c:url value='/' />">홈으로 이동</a>
	</body>
</html>