<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
	<h1>Home에 오신것을 환영합니다.</h1>
	<a href="/home/hello" id="hello-href">hello페이지로 이동-href</a> <br/>
	
	<button id="hello-button">hello 페이지로 이동-button</button><br/>
	
	<form>
		<input type="hidden" id="id" value="ssar"/>
	</form>
	<button id="hello-button-form"type="submit">hello 페이지 이동-form</button><br/>
	

	<form>
		<input type="hidden"id="username"value="love"/>
		<input type="hidden"id="phone"value="102222"/>
	</form>
	<button id="hello-put-button">hello 페이지 이동-put</button><br/>
		
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>	
<script>

	// DELETE 호출
	$('#hello-button').on('click', function(){
		let data={
			id:'ssar'
		};
		$.ajax({
			type:'DELETE',
			url:'/home/hello',
			data:JSON.stringify(data),
			contentType:'application/json; charset=utf-8',
			dataType:'json'			
		}).done(function(result){
			if(result.statusCode==200){
				alert('글이 삭제되었습니다.');
				location.href='/home/hello';
			}
		}).fail(function(result){
			alert('글 삭제가 실패하였습니다.');
		});
	});
	
	// POST 호출
	$('#hello-button-form').on('click', function(){
		//let data=$('#id').val();
		let data={
			id:$('#id').val()
		};
		
		$.ajax({
			type:'POST',
			url:'/home/hello',
			data:JSON.stringify(data),
			contentType:'application/json; charset=utf-8',
			dataType:'json'			
		}).done(function(result){
			if(result.statusCode==200){
				alert('글이 등록되었습니다.');
				location.href='/home/hello';
			}
		}).fail(function(result){
			alert('글 등록이 실패하였습니다.');
		});
	});
	
	// PUT 호출
	$('#hello-put-button').on('click', function(){
		//let data=$('#id').val();
		let data={
			id:$('#id').val()
		};
		
		$.ajax({
			type:'PUT',
			url:'/home/hello',
			data:JSON.stringify(data),
			contentType:'application/json; charset=utf-8',
			dataType:'json'			
		}).done(function(result){
			if(result.statusCode==200){
				alert('글이 수정되었습니다.');
				location.href='/home/hello';
			}
		}).fail(function(result){
			alert('글 수정을 실패하였습니다.');
		});
	});
	
</script>
</body>
</html>