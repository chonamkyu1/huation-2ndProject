	let idCheck = false; // 아이디
	let pwCheck = false; // 비밀번호
	let reserveCheck = false; // 예약페이지에서 로그인
	
$(document).ready(function(){
		$(".login_button").click(function(){
		 console.log("클릭~");
		// 로그인 메서드 서버 요청
		
		console.log("reserveCheck", reserveCheck);
		
		let id = $('.id_input').val();
		let pw = $('.pw_input').val();
		
		// id 유효성 검사
		if (id == "") {
			$('.final_id_ck').css('display', 'block');
			idCheck = false;
		} else {
			$('.final_id_ck').css('display', 'none');
			idCheck = true;
		}
		
		// 비밀번호 유효성 검사
			if (pw == "") {
				$('.final_pw_ck').css('display', 'block');
				pwCheck = false;
			} else {
				$('.final_pw_ck').css('display', 'none');
				pwCheck = true;
			}
			
			if (idCheck && pwCheck ) {
				$("#loginForm").attr("action", "/user/login");
				$("#loginForm").submit();
			}
			
			
			reserveCheck = true;
			if (idCheck && pwCheck && reserveCheck) {
				
				$("#loginForm").attr("action", "/user/login/reserve/select");
				$("#loginForm").submit();
			}
			
			return false;		
	});	

});