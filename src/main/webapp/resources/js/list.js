/**
 * 
 */

$(document).ready(function(){
	$("#writeBtn").on("click",function(){
		if($("#writer").val() == ""){
			alert("로그인하세요")
			return false;
		}
	})
	
	$("#title a").on("mouseover", function(){
		$(this).css({
			"color":"blue",
			"fontWeight":"700"
		});
	})
	$("#title a").on("mouseout", function(){
		$(this).css({
			"color":"black",
			"fontWeight":"400"
		});
	})
	
})

