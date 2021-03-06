<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- page content -->
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h3>불량품목관리</h3>
				<a class="btn btn-primary" href="${pageContext.request.contextPath}/branchFaultyList">불량품목(지점리스트)</a>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>불량품목등록</h2>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<form id="faultyInsertForm" action="${pageContext.request.contextPath}/insertFaulty" method="post"
							class="form-horizontal form-label-left" novalidate>
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12"
									for="name">불량발생전표번호<span>*</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input id="statementNumber"
										class="form-control col-md-7 col-xs-12"
										data-validate-length-range="6" data-validate-words="2"
										name="statementNumber" type="text"
										value='${StatementNumber.statementNumber}' readonly="readonly">
								</div>
							</div>
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12"
									for="name">품목명<span>*</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input id="itemCode"
										class="form-control col-md-7 col-xs-12"
										data-validate-length-range="6" data-validate-words="2"
										name="itemCode" type="text"
										value='${ItemCode.itemCode}' readonly="readonly">
								</div>
							</div>
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12"
									for="name">불량카테고리명<span>*</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<select id="faultyCategory" name="faultyCategory">
										<c:forEach var="CategoryFaultyList" items="${CategoryFaultyList}">
											<option value='${CategoryFaultyList.categoryCode}'>${CategoryFaultyList.categorySmall}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12"
									for="name">불량수량<span>*</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input id="faultyAmount"
										class="form-control col-md-7 col-xs-12"
										data-validate-length-range="6" data-validate-words="2"
										name="faultyAmount" type="text">
								</div>
							</div>
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12"
									for="name">불량이미지<span>*</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input id="faultyImage"
										class="form-control col-md-7 col-xs-12"
										data-validate-length-range="6" data-validate-words="2"
										name="faultyImage" type="file">
								</div>
							</div>
							<div class="item form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12"
									for="name">불량상세사유<span>*</span>
								</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input id="faultyReason"
										class="form-control col-md-7 col-xs-12"
										data-validate-length-range="6" data-validate-words="2"
										name="faultyReason" type="text">
								</div>
							</div>
							<div class="ln_solid"></div>
							<div class="form-group">
								<div class="col-md-6 col-md-offset-3">
									<a type="submit" class="btn btn-primary" href="${pageContext.request.contextPath}/branchFaultyList">취소</a>
									<button id="send" type="submit" class="btn btn-success">등록</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /page content -->
