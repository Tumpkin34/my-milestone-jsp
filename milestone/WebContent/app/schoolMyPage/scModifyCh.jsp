<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보육원 마이페이지</title>
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/assets/css/myPage/myPage.css">
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
                  d="M8.5 18.5l6-6.5-6-6.5L10 4l7.5 8-7.5 8-1.5-1.5z" fill="#A2A2A2"></path>
                    </svg>
         </div>
         <div id="account">milestone1001@gmail.com</div>
      </div>
      <!-- 메뉴 -->
      <main>
         <div id="myPageMenu">
            <div id="menus">메뉴</div>
            <a><div class="menu"
                  onclick="location.href = '${pageContext.request.contextPath}/app/schoolMyPage/scModify.jsp'">보육원
                  정보수정</div></a> <a><div class="menu"
                  onclick="location.href = '${pageContext.request.contextPath}/app/schoolMyPage/scDh.jsp'">기부
                  받은내역</div></a> <a><div class="menu"
                  onclick="location.href = '${pageContext.request.contextPath}/app/schoolMyPage/sccalendar.jsp'">보육원
                  활동일정</div></a>
            <!-- <a><div class="menu">회원탈퇴</div></a> -->
         </div>
         <!-- 내용  section : 여러개의 내용이들어갈 것 -->
         <section id="content">
            <div>
               <fieldset>
                  <legend>
                     <h4 style="margin-top: 10px;">보육원 정보수정</h4>
                  </legend>
                  <div id="checkPw">
                     개인 정보를 수정하시려면 비밀번호를 한번 더 입력하세요.<br> <br>비밀번호 입력
                     <form action="" style="margin-top: 10px; width: 748px;">
                        <input id="userPw" name="nurserySchoolMemberPassword"
                           type="password" placeholder="비밀번호 입력"> <input
                           id="button" type="submit" value="확인">
                     </form>
                  </div>
            </div>
            </fieldset>
         </section>
      </main>
   </div>

   <jsp:include page="../fix/footer.jsp" />
   <script src="${pageContext.request.contextPath}/assets/js/MyPage/scModifyCh.js"></script>
</body>
</html>