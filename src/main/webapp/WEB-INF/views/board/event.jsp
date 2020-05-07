<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
 <link href="${pageContext.request.contextPath}/resources/css/event.css" rel="stylesheet">
<style>
	.smal{
		margin-top: -1rem!important
	}
	.breadcrumb{
		width: 730px;
		margin-left: 0px;
	}
	.form-control{
		background-color: #e9ecef;
	}
	.menu dl, ol, ul {
    margin-left: 50px;
    margin-top: 0;
    margin-bottom: 1rem;
    border-bottom: inset;
</style>

<div class="wrap">
	<div class="d1">

		<div class="container">

			<h1 class="mt-4 mb-3 smal">
				<small>종목 등록</small>
			</h1>

			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a
					href="${pageContext.request.contextPath}/">홈</a></li>
				<li class="breadcrumb-item"><a
					href="${pageContext.request.contextPath}/board/history">나의 일지 등록</a>
				</li>
				<li class="breadcrumb-item active"><a
					href="${pageContext.request.contextPath}/board/news">공지사항 등록</a>
				</li>
			</ol>

			<div class="row">
				<div class="col-lg-8 mb-4">

					<form method="post" action="${pageContext.request.contextPath}/board/regi" enctype="multipart/form-data">
						<div class="control-group form-group">
							<div class="controls">
								<label>종목 :</label> 
								<input type="text" class="form-control" name="event" required data-validation-required-message="종목을 입력해주세요." autocomplete=off>
              					<p class="help-block"></p>
							</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label>떡상 전 가격 :</label> 
								<input type="text" class="form-control" id="price" name="minprice" maxlength="25" onKeyUp="removeChar(event);inputNumberFormat(this);" onKeyDown="inputNumberFormat(this);">
								<p class="help-block"></p>
							</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label>떡상 후 가격 :</label> 
								<input type="text" class="form-control" id="price" name="maxprice" maxlength="25" onKeyUp="removeChar(event);inputNumberFormat(this);" onKeyDown="inputNumberFormat(this);">
								<p class="help-block"></p>
							</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label>떡상 시작일 :</label> <input type="date" class="form-control"
									name="ricecakeup" required
									data-validation-required-message="날짜(시작)을 선택하세요."
									autocomplete=off>
								<p class="help-block"></p>
							</div>
						</div>
						<div class="control-group form-group" onload="validDate()">
							<div class="controls">
								<label>떡상 종료일 :</label> <input type="date" class="form-control"
									name="ricecakedown" id="ricecakedown" value="" required
									data-validation-required-message="날짜(종료)을 선택하세요."
									autocomplete=off>
								<p class="help-block"></p>
							</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label>메모 :</label> 
								<textarea rows="5" class="form-control" cols="150" name="notepad"></textarea>
              					<p class="help-block"></p>
							</div>
						</div>
						<button type="submit" class="btn btn-primary" id="click-btn">등록</button>
					</form>
				</div>
			</div>
		</div>
		
	</div>
</div>    

<script>
	
	//문자 제거
	function removeChar(event) {
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if (keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39)
			return;
		else
		//숫자와 소수점만 입력가능
		event.target.value = event.target.value.replace(/[^-\.0-9]/g, "");
	}
	//콤마 찍기
	function comma(obj) {
		var regx = new RegExp(/(-?\d+)(\d{3})/);
		var bExists = obj.indexOf(".", 0);//0번째부터 .을 찾는다.
		var strArr = obj.split('.');
		while (regx.test(strArr[0])) {//문자열에 정규식 특수문자가 포함되어 있는지 체크
			//정수 부분에만 콤마 달기 
			strArr[0] = strArr[0].replace(regx, "$1,$2");//콤마추가하기
		}
		if (bExists > -1) {
			//. 소수점 문자열이 발견되지 않을 경우 -1 반환
			obj = strArr[0] + "." + strArr[1];
		} else { //정수만 있을경우 //소수점 문자열 존재하면 양수 반환 
			obj = strArr[0];
		}
		return obj;//문자열 반환
	}
	//콤마 풀기
	function uncomma(str) {
		str = "" + str.replace(/,/gi, ''); // 콤마 제거 
		str = str.replace(/(^\s*)|(\s*$)/g, ""); // trim()공백,문자열 제거 
		return (new Number(str));//문자열을 숫자로 반환
	}
	
	//input box 콤마달기
	function inputNumberFormat(obj) {
		obj.value = comma(obj.value);
	}
	

	//날짜 형식 format => YYYY-MM-DD 형식으로 변환
	function getFormatDate(date) {
		var year = date.getFullYear(); //yyyy
		var month = (1 + date.getMonth()); //M
		month = month >= 10 ? month : '0' + month; //month 두자리로 저장
		var day = date.getDate(); //d
		day = day >= 10 ? day : '0' + day; //day 두자리로 저장
		return year + '-' + month + '-' + day;
	}

	$(function() {
		$("#ricecakedown").on("keyup paste input",function() {
			var date = new Date();
			date = getFormatDate(date);
			var enddate = $('#ricecakedown').val();
			var dateArray = date.split('-');
			var endArray = enddate.split('-');
			//배열에 담겨있는 연,월,일을 사용해서 Date 객체 생성
			var dateArray = new Date(dateArray[0],dateArray[1], dateArray[2]);
			var end_date = new Date(endArray[0], endArray[1],endArray[2]);
			if (end_date.getTime() > dateArray.getTime()) {
				alert("떡상 종료일이 현재날짜보다 큽니다.");
				document.getElementById("ricecakedown").valueAsDate = new Date(date);
			}
		});
	})
	

</script>