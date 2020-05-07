<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <!-- Left side column. contains the logo and sidebar -->
<style>
.menu dl, ol, ul {
    margin-left: 50px;
    margin-top: 0;
    margin-bottom: 1rem;
    border-bottom: inset;
    }
</style>
 
<input type="button" id="btn_add" onclick="action_add()" value="공지사항 등록"/>

<ul class="menu">

	<li><a href="${pageContext.request.contextPath}/news/news">공지사항</a></li>

</ul> 
 
<input type="button" id="btn_add1" onclick="action_add1()" value="종목 추가"/>

<ul class="menu">

	<li><a href="${pageContext.request.contextPath}/board/fiveboard">5일 전 떡상한 종목</a></li>
	<li><a href="${pageContext.request.contextPath}/board/tenboard">10일 전 떡상한 종목</a></li>
	<li><a href="${pageContext.request.contextPath}/board/fifteenboard">15일 전 떡상한 종목</a></li>
	<li><a href="${pageContext.request.contextPath}/board/twentyboard">20일 전 떡상한 종목</a></li>
	<li><a href="${pageContext.request.contextPath}/board/twentyfiveboard">25일 전 떡상한 종목</a></li>
	<li><a href="${pageContext.request.contextPath}/board/thirtyboard">30일 전 떡상한 종목</a></li>
	<li><a href="${pageContext.request.contextPath}/board/Sixtyboard">60일 전 떡상한 종목</a></li>
	
</ul>

<input type="button" id="btn_add2" onclick="action_add2()" value="나의 일지 등록"/>

<ul class="menu">

	<li><a href="${pageContext.request.contextPath}/history/history">나의 일지</a></li>

</ul>

<input type="button" id="btn_add3" onclick="action_add3()" value="종목 별 사이트 등록"/>

<ul class="menu">

	<li><a href="${pageContext.request.contextPath}/eventsite/eventsite">종목 별 사이트</a></li>

</ul>

<script>
	function action_add(){
		location.href="${pageContext.request.contextPath}/history/history";
	}
	
	function action_add1(){
		location.href="${pageContext.request.contextPath}/board/event";
	}
	
	function action_add2(){
		location.href="${pageContext.request.contextPath}/news/news";
	}
	
	function action_add3(){
		location.href="${pageContext.request.contextPath}/eventsite/eventsite";
	}
	
</script>