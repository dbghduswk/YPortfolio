/**
 * 
 */

$(document).ready(function(){
	$("#join").on("click",function(){
		location.href = "/member/join";
	})
	$("#login").on("click",function(){
		if($("#userid").val() == "" || $("#passwd").val() == "" ){
			alert("다시 입력해주세요")
			return false;
		
		}
	})
})