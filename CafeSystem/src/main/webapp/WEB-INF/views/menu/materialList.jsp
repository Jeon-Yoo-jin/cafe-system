<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<script>
function deleteb(){
	if (confirm("한번 삭제하면 다시 생성할 수 없습니다.") == true){  //삭제처리
		document.$('#DeleteButton').submit();
	}else{   
			return false; //삭제 취소
	};
};
</script>

<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h3>메뉴관리</h3>
				<a class="btn btn-default" href="${pageContext.request.contextPath}/insertMaterial">메뉴원가등록</a>
			</div>
		</div>

		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>메뉴 원가 관리 <small></small></h2>

						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<p class="text-muted font-13 m-b-30"></p>
						메뉴 원가 리스트 
				
						<form id="SearchForm" action="${pageContext.request.contextPath}/materialList" method="post">
							<div>
								<div>
									<select name="cate" id="cate" required class="input-sm">
										<option id="opt" value="${cate}" class="input-sm">검색 조건 선택</option>
										<option value="menu_code" class="input-sm">메뉴명</option>
										<option value="item_name" class="input-sm">품목명</option>
									</select>
									<div class="input-group">
										<input type="text" name="input" id="input" value="${input}" required class="input-sm"> <span>
		 								<input type="submit" class="btn btn-default" id="SearchBtn" value="검색">
										</span>
									</div>
								</div>
							</div>
						</form>		
					
						<table id="datatable" class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>메뉴명</th>
									<th>사이즈</th>
									<th>품목명</th>
									<th>Hot/Ice</th>
									<th>단위(ml,g)</th>
									<th>단가</th>
									<th>수정</th>
									<th>삭제</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="menu" items="${materialList}">
									<tr>
										<td>${menu.menuName}</td>
										<td>${menu.sizecate}</td>
										<td>${menu.itemName}</td>
										<td>${menu.tempcate}</td>
										<td>${menu.materialMeasure}</td>
										<td>${menu.materialCost}</td>
										<td><a href="${pageContext.request.contextPath}/updateMaterial?materialCode=${menu.materialCode}">수정</a></td>
										<td><a onclick="deleteb()" id="DeleteButton" href="${pageContext.request.contextPath}/deleteMaterial?materialCode=${menu.materialCode}">삭제</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>