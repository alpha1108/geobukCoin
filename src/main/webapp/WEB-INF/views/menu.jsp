<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <!-- Left side column. contains the logo and sidebar -->
 
<input type="button" id="btn_add" onclick="action_add()" value="종목 추가"/>

<ul class="menu">

	<li><a href="${pageContext.request.contextPath}/board/fiveboard">5일이하 떡상한 종목</a></li>
	<li><a href="${pageContext.request.contextPath}/board/tenboard">10일이하 떡상한 종목</a></li>
	<li><a href="${pageContext.request.contextPath}/board/fifteenboard">15일이하 떡상한 종목</a></li>
	<li><a href="${pageContext.request.contextPath}/board/twentyboard">20일이하 떡상한 종목</a></li>
	<li><a href="${pageContext.request.contextPath}/board/twentyfiveboard">25일이하 떡상한 종목</a></li>
	<li><a href="${pageContext.request.contextPath}/board/thirtyboard">30일이하 떡상한 종목</a></li>

</ul>

<input type="button" id="btn_add1" onclick="action_add1()" value="나의 일지 등록"/>

<ul class="menu">

	<li><a href="${pageContext.request.contextPath}/board/history">나의 일지</a></li>

</ul>

<script>
	function action_add(){
		location.href="${pageContext.request.contextPath}/board/event";
	}
	
	
	function action_add1(){
		location.href="${pageContext.request.contextPath}/board/history";
	}
	
</script>