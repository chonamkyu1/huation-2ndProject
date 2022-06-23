	$(".login_button").click(function(){
		// alert("클릭~");
		// 로그인 메서드 서버 요청
		$("#loginForm").attr("action", "/user/login");
		$("#loginForm").submit();
	});

