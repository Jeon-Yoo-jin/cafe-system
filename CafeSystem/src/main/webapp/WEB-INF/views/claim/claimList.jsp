<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h3>
					CLAIM <small>고객 클레임</small> 
				</h3>
			</div>

			<div class="title_right">
				<div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search for...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">Go!</button>
						</span>
					</div>
				</div>
			</div>
		</div>

		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>
							Claim LIST <small>Claim</small>
						</h2>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<p class="text-muted font-13 m-b-30">
							DataTables has most features enabled by default, so all you need
							to do to use it with your own tables is to call the construction
							function:
							<code>$().DataTable();</code>
						</p>
						<table id="datatable" class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>번호</th>
									<th>카테고리</th>
									<th>글쓴이</th>
									<th>제목</th>
									<th>작성일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="claimList" items="${claimList}">
									<tr>
										<td>${claimList.claimCode}</td>
										<td>${claimList.claimCategoryName}</td>
										<td>${claimList.employeeCode}</td>
										<td><a href="${pageContext.request.contextPath}/claimDetail?claimCode=${claimList.claimCode}">${claimList.claimTitle}</a></td>
										<td>${claimList.claimDate}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class = "text-center"> 
							<ul class="pagination">
								<c:if test="${currentPage > 1}">
									<li class="previous"><a href="${pageContext.request.contextPath}/claimList?currentPage=${currentPage-1}">prev</a></li>
								</c:if>
								<c:forEach var="page" begin="${startPage}" end="${endPage}" step="1">
									<c:choose>
										<c:when test="${page == currentPage}">
											<li class="active"><a>${page}</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="${pageContext.request.contextPath}/claimList?currentPage=${page}">${page}</a></li>
										</c:otherwise>	
									</c:choose>	
								</c:forEach>
								<c:if test="${currentPage < lastPage}">
									<li class="next"><a href="${pageContext.request.contextPath}/claimList?currentPage=${currentPage+1}">next</a></li>
								</c:if>
							</ul>
						</div>
					</div>
					<div>
						<a class="btn btn-default" href="${pageContext.request.contextPath}/claimInsert">클레임 등록</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>