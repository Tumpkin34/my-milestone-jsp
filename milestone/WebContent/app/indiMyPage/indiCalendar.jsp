<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인활동 일정</title>
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/assets/css/myPage/activityCalendar.css">
</head>
<body>

   <jsp:include page="../fix/header.jsp" />

   <div id="myPage">

      <!-- 마이페이지 패스워드 입력 -->
      <!-- 헤더쪽 -->
      <div id="title">
         <div>
            마이페이지
            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
               fill="none" viewBox="0 0 24 24">
                        <path fill-rule="evenodd"
                  d="M8.5 18.5l6-6.5-6-6.5L10 4l7.5 8-7.5 8-1.5-1.5z" fill="#a2a2a2"></path>
                    </svg>
         </div>
         <div id="account">milestone1001@gmail.com</div>
      </div>


      <!-- 메뉴 -->
      <main>
         <div id="myPageMenu" style="padding-bottom: 200px;">
            <div id="menus">메뉴</div>
            <a><div class="menu"
                  onclick="location.href = '${pageContext.request.contextPath}/app/indiMyPage/indiModify.jsp'">개인정보
                  수정</div></a> <a><div class="menu"
                  onclick="location.href = '${pageContext.request.contextPath}/app/indiMyPage/indiDh.jsp'">기부내역</div></a>
            <a><div class="menu"
                  onclick="location.href = '${pageContext.request.contextPath}/app/indiMyPage/indiCalendar.jsp'">나의
                  활동일정</div></a>
         </div>




         <!-- 내용  section : 여러개의 내용이들어갈 것 -->
         <section id="content">
            <div>활동일정</div>
            <!-- 달력사진 -->
            <img
               src="${pageContext.request.contextPath}/assets/img/indiMyPage/calendarAPI.png">


         </section>
      </main>
   </div>

   <jsp:include page="../fix/footer.jsp" />

</body>
</html>