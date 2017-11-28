<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="top_nav">
	<div class="nav_menu">
		<nav>
			<div class="nav toggle">
				<a id="menu_toggle"><i class="fa fa-bars"></i></a>
			</div>

			<ul class="nav navbar-nav navbar-right">
				<li>
					<c:choose>
						<c:when test="${empty sessionScope.loginInfo }">
							<a href="${pageContext.request.contextPath}/login"
								class="user-profile dropdown-toggle"> LOGIN </a>
						</c:when>
						<c:otherwise>
							<a href="javascript:;" class="user-profile dropdown-toggle"
								data-toggle="dropdown" aria-expanded="false">
								${sessionScope.loginInfo.name} 님 <span class=" fa fa-angle-down"></span>
							</a>
							<ul class="dropdown-menu dropdown-usermenu pull-right">
								<li><a href="${pageContext.request.contextPath}/#"> Profile</a></li>
								<li><a href="${pageContext.request.contextPath}/logout"> <i
										class="fa fa-sign-out pull-right"> </i> Log Out
								</a></li>
							</ul>
						</c:otherwise>
					</c:choose>
				</li>
			</ul>
		</nav>
	</div>
</div>