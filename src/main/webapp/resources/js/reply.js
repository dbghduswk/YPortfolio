/**
 * 
 */

$(document).ready(function(){
	var bno = $("#bno").val();
	list(bno);
	//댓글쓰기를 누르면
	$("#addreply").on("click",function(e){
		if($("#writer").val() == ""){
			alert("로그인하세요.")
			return false;
		}else{
			$("#replymodify").hide();
			$("#replyremove").hide();
			$("#replyclear").show();
			$("#reply").val("");
			$("#replyer").val($("#writer").val());
			$(".modal").modal("show");
		}
		
		
	})
	
	//작성완료 누르면
	$("#replyclear").on("click",function(){
	
		var replyer = $("#replyer").val();
		var reply = $("#reply").val();
		add({replyer:replyer,reply:reply,bno:bno});
		
	})
	$("#replyList").on("click","#change",function(){
		var rno=$(this).data("rno");
		console.log(rno);
		$("#replyclear").hide();
		$("#replymodify").show();
		$("#replyremove").show();
		$(".modal").modal("show");
		$("#rno").val(rno);
		get(rno);
		
	})
	$("#replymodify").on("click",function(){
		if($("#replyer").val() != $("#writer").val()){
			alert("불가능")
			return false;
		}else{
			modify({rno:$("#rno").val(),reply:$("#reply").val(),bno:bno});
		}
		
	})
	
	$("#replyremove").on("click",function(){
		if($("#replyer").val() != $("#writer").val()){
			alert("불가능")
			return false;
		}else{
			if(confirm("삭제하시려면 확인을 눌러주세요")){
				
				var rno = $("#rno").val();
				remove(rno,bno);
				alert("삭제되었습니다.")
			}else{
				return false;			
			}
		}
		
		
		
	})
	
	
	
})

function add(reply){
	console.log(reply);
	$.ajax({
		type : "post",
		url : "/reply/new",
		data : JSON.stringify(reply),
		contentType : "application/json; charset= UTF-8",
		success : function(result){
			console.log(result);
			if(result == "success"){
				$(".modal").modal("hide");
				list(reply.bno);
				
			}
		}
	})
}

function list(bno){
	console.log("댓글 목록리스트");
	console.log(bno);
	
	$.ajax({
		type : "get",
		url: "/reply/list/"+bno,
		contentType : "application/json; charset= UTF-8",
		success: function(result){
			console.log(result);
			var str = "";
			for(var i =0; i<result.length; i++){
				str +="<ul><li>"
				str +=result[i].replydate
				str +="<p><strong>" + result[i].replyer+"</strong><p>"
				str +="<p>" + result[i].reply + "</p>"
				str += "<input data-rno=" + result[i].rno + " type='button' id='change' value='수정'>"
				str +="</li></ul>";
			}
			$("#replyList").html(str);
		}
	})
}
function get(rno){
	$.ajax({
		type : "get",
		url: "/reply/detail/"+rno,
		contentType : "application/json; charset= UTF-8",
		success : function(result){
			console.log(result);
			$("#reply").val(result.reply);
			$("#replyer").val(result.replyer);
		}
	})
}

function modify(reply){
	console.log("수정");
	console.log(reply);
	$.ajax({
		type : "put",
		url : "/reply/modify",
		data : JSON.stringify(reply),
		contentType : "application/json; charset= UTF-8",
		success : function(result){
			if(result == "success"){
				$(".modal").modal("hide");
				list(reply.bno);
			}
			
		}
		
	})
}
function remove(rno,bno){
	console.log("삭제")
	console.log("게시물 번호" + bno)
	console.log("댓글번호" + rno)
	
	$.ajax({
		type : "delete",
		url : "/reply/remove/"+rno,
		success : function(result){
			if(result == "success"){
				$(".modal").modal("hide");
				list(bno);
			}
		}
	})
	
}


