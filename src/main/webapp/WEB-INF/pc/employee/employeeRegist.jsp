<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<meta name="viewport" content="width=device-width initial-scale=1">			
<script src="<c:url value='/js/common/jquery-3.1.1.min.js' />"></script>
<script src="<c:url value='/bootstrap/js/bootstrap.js' />"></script>
<link rel="stylesheet" href="<c:url value='/bootstrap/css/bootstrap.css' />">
<script src="<c:url value='/js/common/common.js' />"></script>
<script src="<c:url value='/js/employee/employeeRegist.js' />"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
<h1>직원등록(관리자)</h1>

<input type="button" id="employeeRegistBtnModal" class="btn btn-success" data-toggle="modal" data-backdrop="static" data-target="#employeesRegistModal" value="직원 추가">

<div class="modal fade" id="employeesRegistModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">직원 추가</h4>
      </div>
      <form:form id="employeeRegistFrm" modelAttribute="employeeDto">
	      <div class="modal-body">        
				사원번호 : <input type="text" id="empNo" name="empNo" class="form-control" placeholder="사원번호"> <br>
				비밀번호 : <input type="text" id="empPw" name="empPw" class="form-control" placeholder="비밀번호"> <br>
				사원이름 : <input type="text" id="empName" name="empName" class="form-control" placeholder="사원이름"> <br>
				전화번호 : <input type="text" id="empPh" name="empPh" class="form-control" placeholder="전화번호"> <br>
				우편번호 : <input type="text" id="empPc" name="empPc" placeholder="우편번호" /> <br>
				<input type="button" id="addressBtn" name="addressBtn" class="btn btn-primary" value="우편번호 찾기" /> <br>
				주소 : <input type="text" id="empCad" name="empCad" class="form-control" placeholder="주소" /> <br>
				상세주소 : <input type="text" id="empDad" name="empDad" class="form-control" placeholder="상세주소" /> <br>
				회사 전화번호 : <input type="text" id="empCph" name="empCph" class="form-control" placeholder="전화번호" /> <br>
				이메일 : <input type="text" id="empEmail" name="empEmail" class="form-control" placeholder="이메일" /> <br>
				입사일 : <input type="date" id="empJoinDate" name="empJoinDate" class="form-control" placeholder="입사일" /> <br>
				부서번호 : <input type="text" id="depNo" name="depNo" class="form-control" placeholder="부서번호" /> <input type="button" id="searchDepartmentBtn" class="form-control" value="부서 조회"/><br>
				직급번호 : <input type="text" id="positionNo" name="positionNo" class="form-control" placeholder="직급번호" /> <br>		
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        <input type="button" id="employeeRegistBtn" class="btn btn-primary" value="사원등록">
	      </div>
      </form:form>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->



</body>
</html>