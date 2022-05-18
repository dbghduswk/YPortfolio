/**
 * 
 */

$(document).ready(function(){
	$("#dRemove").on("click",function(){
		if($("#writer").val() == ""){
			alert("로그인하세요")
			return false;
		}else{
			if(!confirm("확인 또는 취소를 선택해주세요")){
				return false;
			} else{
				alert("삭제되었습니다.")
				return true;
			}
		}
		
	})
	$("#dModify").on("click",function(){
		if($("#writer").val() == ""){
			alert("로그인하세요")
			return false;
		}
	})
})