<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<style>
	.logo{width:20%; text-align:right; }
	.category-box{margin-left:200px;text-align:center !important; min-width:500px;}
	.category-box .category{color:black !important;font-size: 1.5em; display:inline-block; padding:0px 20px; font-weight:bold; text-decoration:none;}
	#search{min-width:265px; width:20%; text-align:center;margin-left:50px;}
	#search .searchBtn{border:1px solid darkorange;background-color:darkorange; margin-left:5px;}
	
	.badge-notification {
		 position: relative;
	}
	.badge-notification[data-badge]::after {
	  content: attr(data-badge);
		position: absolute;
		top: -11px;
		right: -10px;
		display: flex;
		justify-content: center;
		align-content: center;
		width: 22px;
		height: 22px;
	  line-height: 22px;
	  font-size: 12px;
	  font-weight: 600;
		border-radius: 50%;
	  background: var(--secondary);
	  background-color:red;
	  color: #fff;
	}
	#alarmList{
		overflow-y:scroll;
		width:350px; max-height:600px;
		margin-top:12px;
	}

	#login-box{width:260px; text-align:right;}
	

	
	.tablink-alarm{
		width:33.33%;
	  background-color: white;
	  color: black;
	  float: left;
	  border: none;
	  outline: none;
	  cursor: pointer;
	  padding: 14px 16px;
	  font-size: 1.2em;
	}
	.tablink-alarm:hover{
		background-color:#EAEAEA;
	}
	.tabcontent-alarm{
	  color: black;
	  display: none;
	}
	.confirm-alarm{background-color:#EAEAEA;}
	.confirm-alarm:hover{background-color:#EAEAEA;}
</style>


