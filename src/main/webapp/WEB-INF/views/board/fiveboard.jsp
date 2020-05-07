<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="${pageContext.request.contextPath}/resources/css/_board1.css" rel="stylesheet">

<style>
	#confirm_btn{
		padding: initial;
   	 	WIDTH: 25px;
    	font-size: 1rem;
	}
</style>

<div class="wrap">
	
		<div class="d1">
			
			<div class="container">

				<table class="type11">
				<tbody>
					<tr>
						<th>순번</th>
						<th>종목</th>
						<th>떡상전가격</th>
						<th>떡상후가격</th>
						<th id="calc">상승률</th>
						<th>떡상시작일</th>
						<th>떡상종료일</th>
						<th>현재일</th>
						<th>삭제</th>
					</tr>
					<c:forEach var="vo" items="${list }">
					<tr>
						<td>${vo.eventnum }</td>
						<td>${vo.event }</td>
						<td>${vo.minprice } 원</td>
						<td>${vo.maxprice } 원</td>
						<td>${vo.minprice }/${vo.maxprice }/</td>
						<td>${vo.ricecakeup }</td>
						<td>${vo.ricecakedown }</td>
						<td>${vo.regdate }</td>
						<td>
							<button type="button" class="btn btn-info btn-lg"
								data-toggle="modal" data-target="#myModal" id="confirm_btn">
								<span style="color: black; font-weight: bold;">
								X</span>
							</button>
						</td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
				
				<!-- 페이징 -->
				
					<c:choose>
						<c:when test="${pu.startPageNum>10 }">
							<a href="${pageContext.request.contextPath}/board/fiveboard?pageNum=${pu.startPageNum-1}">[이전]</a>
						</c:when>
						<c:otherwise>
							[이전]
						</c:otherwise>
					</c:choose>
				
					<c:forEach var="i" begin="${pu.startPageNum}"  end="${pu.endPageNum }">
						<c:choose>
							<c:when test="${i==pu.pageNum }">
								<a href="${pageContext.request.contextPath}/board/fiveboard?pageNum=${i}">
								<span style='color:red'>[${i }]</span></a>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/board/fiveboard?pageNum=${i}">
								<span style='color:blue'>[${i }]</span></a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					
					<c:choose>
						<c:when test="${pu.endPageNum<10 }">
							<a href="${pageContext.request.contextPath}/board/fiveboard?pageNum=${pu.endPageNum+1}">[다음]</a>
						</c:when>
						<c:otherwise>
							[다음]
						</c:otherwise>
					</c:choose>
					
				
				
				<c:forEach var="vo" items="${list }">
				<!-- Modal -->
				<div id="myModal" class="modal fade" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>
							<c:forEach var="vo" items="${list }">
							<div class="modal-body" style="text-align: center;">
								<div>
									<div>
										<span style="font-size: larger;">[${vo.event }] 종목을 삭제하시겠습니까?</span>
									</div>
								</div>
							</div>	
							</c:forEach>
							<div class="modal-footer">
								<form action="${pageContext.request.contextPath}/board/update"method="post">
									<input type="text" name="eventnum" value="${vo.eventnum}">
									<input type="hidden" name="status" value="${vo.status}">
									<button type="submit" class="btn btn-primary">삭제하기</button>
								</form>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
</div>

<script>
	function numberFormat(inputNumber) {
		return inputNumber.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	
	// 상승률 구하기 오전11시부터 오후 5시까지 함
	$(function(){
		
			var td = $('.type11 td:nth-child(5)').text();
			console.log("td:"+td);
		
			for(var i=2; i < td.length; i++){
				var a = $('.type11 tr:nth-child('+i+') > td:nth-child(5)').text();
				var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
				var casplit = a.split('/');
				console.log("casplit:"+casplit);
				if(a.indexOf(".") != -1){
					var num = Number((casplit[0]*100)/100);
					var num1 = Number((casplit[1]*100)/100);
					var result1 = num + num1;
					console.log("num:"+num);
					console.log("num1:"+num1);
					$('.type11 tr:nth-child('+i+') > td:nth-child(5)').text(result1);
				}else{
					var aa = parseInt(casplit[0].replace(regExp,""));
					var bb = parseInt(casplit[1].replace(regExp,""));
					var result = (bb / aa) * 100 - 100;
					if()
					$('.type11 tr:nth-child('+i+') > td:nth-child(5)').text(result.toFixed(2)+" %");
				}
			}
			
	});
	
	function regExp_test(){
	    //함수를 호출하여 특수문자 검증 시작.
	    var str = "2017-10-31,''";
	    var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
	    if(regExp.test(str)){
	        var t = str.replace(regExp, "");
	        //특수문자를 대체. ""
	        alert("특수문자 제거. ==>" + t);
	        //특수문자 제거. ==>20171031
	    }else{
	        alert("특수문자 없음 "+str);
	    }
	}

	
</script>

