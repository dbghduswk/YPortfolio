/**
 * 
 */

$(document).ready(function(){
		$("#subBtn").on("click",function(){
			if($("#title").val()==""){
				alert("다시 입력해주세요")
				return false;
			}
		})
})