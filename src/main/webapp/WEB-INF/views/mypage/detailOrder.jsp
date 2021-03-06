<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 부트스트랩 -->
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- Bootstrap icon CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.0/font/bootstrap-icons.css" />
    <!-- kakao SDK -->
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <!-- naver SDK -->
    <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
    <!-- facebook SDK -->
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>
	
	<script>var contextPath = "${pageContext.request.contextPath}"</script>
    
	<title>주문상세정보 - 홈프렌즈</title>
	
		
	<link href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/nav.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/mypage/detailOrder.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/footer.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/header.js"></script>
	<script src="${pageContext.request.contextPath}/js/nav.js"></script>
	
</head>
<body>
	<%@ include file="../header.jsp" %>
	<%@ include file="../nav.jsp" %> 
	
	<!-- 본문 영역 -->	
	<section>
	<div class="container">
			<div class="row">
				<div class="col-12 coll-pull-12 coll-md-12 col-lg-12 col-xl-12 odrWrap">
					<div class="order_title">
						 주문상세보기
					</div>
					<hr>
					<div id="detail_order">
						<c:forEach items="${detailOrder}" var="detailOrder">
						<div class="number_order">주문번호:${detailOrder.ordernumber} (${detailOrder.buying_date})</div>
						<hr>
						<div class="row">
							<div class="col-3 imgDiv"><img src="${pageContext.request.contextPath}/image/${detailOrder.img_system}"></div>
							<div class="col-9">
								<div class="row">
									<div class = "col-4 ligtD">${detailOrder.title}</div>
									<div class = "col-4 ligtD">
										<span  id ="price"></span><br>
                              			<script>$("#price").text((${detailOrder.price}).toLocaleString()+" 원");</script>
										<span class="small">(${detailOrder.cnt}개)</span>
									</div>
									<div class = "col-4 ligtD">
										${detailOrder.progress}<br>
										<span class="small">(일반택배)</span>
									</div>
								</div>
							</div>
						</div>
						
						<hr><!-- ====================================================================================== -->
						<div class="number_order">
							배송지정보
						</div>
						<hr>
						<div class="row">
							<div class="delInfo col-3">${detailOrder.membername}</div> 
							<div class="delInfo col-3">${detailOrder.phone}</div>
							<div class="delInfo col-3">${detailOrder.addr}</div>
							<div class="delInfo col-3">배송메모&#58;<br>${detailOrder.memo}</div>
							<input type="hidden" value="spidx">
						</div>
						</c:forEach>
					</div>
				</div><!-- odrWrap  -->
					<div class="aWrap">
					<a href="${pageContext.request.contextPath}/mypage/order_list.do" id="backOrderlist">주문배송조회로 돌아가기</a>
					</div>
			</div><!-- row -->
		</div><!-- container -->
	</section>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="${pageContext.request.contextPath}/js/login/join2.js"></script>

	<%@ include file="../footer.jsp" %>
	<!-- 부트스트랩 -->	

	<!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	-->
	


</body>
</html>