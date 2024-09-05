/**
 * prdNoCheck.js
 	상품번호 중복 확인 : axiox 사용 get 방식
 */
 
 $(document).ready(function() {
 	// prdNoCheckBtn 버튼 클릭했을 때
 	$('#prdNoCheckBtn').on('click', function() {
 		event.preventDefault();
 		
 		let prdNo = $('#prdNo').val();
 		
 		if(prdNo == "") {
 			alert("상품번호를 입력하세요5");
 			// return false;
 		} else {
			const data = {prdNo : prdNo}
			axios.post("/mybatis/product/prdNoCheck5", data)
	 		.then(function(response){
	 			console.log(response);
	 			if(response.data == "available") {
	 					alert("사용 가능한 번호입니다5");
	 			} else {
	 					alert("사용할 수 없는 번호입니다5");
	 			}
	 		})
	 		.catch((error) => {
	 			console.log(error.response)
	 		})
 		} // else 끝
 	
 	}); // click 끝
 
 });