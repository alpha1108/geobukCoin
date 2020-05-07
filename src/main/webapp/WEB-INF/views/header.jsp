<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<style>
	.bg-dark1{
		padding-bottom: 0rem!important;
		padding-top: 2rem!important;
		display: block;
		box-sizing: border-box;
	}
	
	#usingFunction{
		padding-bottom: 10px;
   		margin-left: 90%;
   		font-family: auto;
    	color: floralwhite;
	}
</style>

<link href="${pageContext.request.contextPath}/resources/css/_head.css" rel="stylesheet">

	<header class="bg-dark1" style="background-color:#403643 !important" >
	    
	      <p class="headwrap" onclick="location.href='/geobuk/'" style="cursor:pointer; -webkit-text-emphasis-style: double-circle;">Geobuk</p>
	  
	  	  <p id="usingFunction"></p>
	</header>

<script type="text/javascript">
	
	function locale (){
		return new Date().toLocaleString();
	} 
	document.getElementById( 'usingFunction' ).innerHTML = locale(); 
	
	// 추가로, 실시간 타이머 표시 방법 ㅡ 1000 밀리초(=1초)에 한번씩 함수 실행하기 
	setInterval ( function() { 
		document.getElementById("usingFunction").innerHTML = locale(); 
	} , 1000 );

</script>