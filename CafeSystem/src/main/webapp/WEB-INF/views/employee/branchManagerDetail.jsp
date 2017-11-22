<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- page content -->
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h3>지점인사관리</h3>
				<a class="btn btn-default" href="${pageContext.request.contextPath}/branchManagerList">목록</a>
				<a class="btn btn-default" href="${pageContext.request.contextPath}/insertformbranchManager">점주등록</a>
			</div>

		</div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>점주상세조회</h2>
						
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<table id="datatable" class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>직원코드</th>
									<th>점포명</th>
									<th>아이디</th>
									<th>이름</th>
									<th>생년월일</th>
									<th>연락처</th>
									<th>주소</th>
									<th>보건증</th>
									<th>사업자번호</th>
									<th>사업시작일</th>
									<th>사업계좌은행명</th>
									<th>사업계좌</th>
								</tr>
							</thead>
							<tbody>
							 <c:forEach var="Detail" items="${branchManagerDetail}">
								<tr>
									<td>${Detail.branchEmployeeCode}</td>
									<td>${Detail.shopName}</td>
									<td>${Detail.branchEmployeeId}</td>
									<td>${Detail.branchEmployeeName}</td>
									<td>${Detail.branchEmployeeBirth}</td>
									<td>${Detail.branchEmployeePhone}</td>
									<td>${Detail.branchEmployeeAddress}</td>
									<td>${Detail.branchEmployeeCetificate}</td>
									<td>${Detail.branchManagerWorknum}</td>
									<td>${Detail.branchManagerStart}</td>
									<td>${Detail.branchManagerBank}</td>
									<td>${Detail.branchManagerBanknum}</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
						<a class="btn btn-default" href="${pageContext.request.contextPath}">수정</a>
						<a class="btn btn-default" href="${pageContext.request.contextPath}/deleteBranchManager?branchEmployeeCode=${Detail.branchEmployeeCode}">삭제</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /page content -->