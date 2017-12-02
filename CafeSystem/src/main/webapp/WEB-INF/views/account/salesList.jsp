<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
	$(document).ready(function() {
		$('a[data-toggle="tab"]').on('shown.bs.tab', function(e) {
			$.fn.dataTable.tables({
				visible : true,
				api : true
			}).columns.adjust();
		});

		$.get("/dailySalesListJson", function(data) {
			var list = JSON.parse(data);
			console.log(data);
			$('#dailySalesTable').DataTable({
				processing : true,
				serverSide : false,
				data : list,
				columns : [ {
					"data" : "dailySalesCode"
				}, {
					"data" : "statementNum"
				}, {
					"data" : "shopName"
				}, {
					"data" : "dailySalesDate"
				}, {
					"data" : "dailySalesAmount"
				} ]
			});
		});
		$.get("/monthlySalesListJson", function(data) {
			var list = JSON.parse(data);
			console.log(data);
			$('#monthlySalesTable').DataTable({
				processing : true,
				serverSide : false,
				data : list,
				columns : [ {
					"data" : "monthlySalesCode"
				}, {
					"data" : "statementNum"
				}, {
					"data" : "shopName"
				}, {
					"data" : "monthlySalesDate"
				}, {
					"data" : "monthlySalesAmount"
				}, {
					"data" : "monthlySalesMoneydue"
				} ]
			});
		});
		var chartLabels = [];
		var chartData = [];
		$.get("/dailyTopJson", function(data) {
			var list = JSON.parse(data);
			console.log(data);
			$(list).each(function(i, list) {
				chartLabels.push(list.shop_name);
				chartData.push(list.daily_sales_amount);
			});
			createTopChart();
		});
		var topLineChartData = {
				labels : chartLabels,
				datasets : [
			        {
			            label: "일매출",
			            data : chartData,
			            lineTension: 0,
			            fill: false,
			            borderColor: 'skyblue',
			            backgroundColor: 'transparent',
			            borderDash: [5, 5],
			            pointBorderColor: 'rgba(47,182,230,1)',
			            pointBackgroundColor: 'rgba(47,182,230,1)',
			            pointRadius: 5,
			            pointHoverRadius: 10,
			            pointHitRadius: 30,
			            pointBorderWidth: 2,
			            pointStyle: 'rectRounded'
			        }
			    ]
			}
			function createTopChart(){
				var ctx = document.getElementById("dailyTop").getContext("2d");
				var myLine = new Chart(ctx, {
					type : 'line',
					data : topLineChartData,
					responsive : true
				});
			}
	});
</script>

<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h3>
					매출 <small>Sales</small>
				</h3>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>매출 조회</h2>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<div role="tabpanel" data-example-id="togglable-tabs">
							<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
								<li role="presentation" class="active"><a
									href="#dailySales" id="dailySales-tab" role="tab"
									data-toggle="tab" aria-expanded="true">일 매출</a></li>
								<li role="presentation" class=""><a role="tab"
									href="#monthlySales" id="monthlySales-tab" data-toggle="tab"
									aria-expanded="false">월 매출</a></li>
							</ul>
							<div id="myTabContent" class="tab-content">
								<div role="tabpanel" class="tab-pane fade active in" id="dailySales" aria-labelledby="dailySales-tab">
									<div class="col-md-8 col-sm-8 col-xs-12">
										<div class="x_panel">
											<div class="x_title">
												<h2>2017-10-19 매출 TOP5<small>Daily Sales TOP5</small></h2>
												<div class="clearfix"></div>
											</div>
											<div class="x_content"><iframe class="chartjs-hidden-iframe" style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
													<canvas id="dailyTop" width="584" height="292" style="width: 584px; height: 292px;"></canvas>
											</div>
										</div>
									</div>
									<div class="clearfix"></div>
									<br/>
									<div class="form-group" style="float: right;">
										<form action="${pageContext.request.contextPath}/dailySalesSearch" method="get">
											<select class="input-sm" style="float: left;">
												<option value="">날짜</option>
												<option value="">매장</option>
											</select>
											<input type="search" name="search" class="input-sm" style="text-align: center; float: left;"
												placeholder="검색어 입력" aria-controls="datatable">
											&nbsp; &nbsp;
											<button type="submit" class="btn btn-primary btn-sm" id="searchButton"
												style="float: right; padding: 0.75mm 1.2mm 0.75mm 1.2mm;">
												검색</button>
										</form>
									</div>
									<table id="dailySalesTable"
										class="table table-striped table-bordered">
										<thead>
											<tr>
												<th>일매출 관리코드</th>
												<th>전표번호</th>
												<th>매장명</th>
												<th>날짜</th>
												<th>일매출액</th>
											</tr>
										</thead>
									</table>
								</div>
								<div role="tabpanel" class="tab-pane fade active" id="monthlySales" aria-labelledby="monthlySales-tab">
									<div class="form-group" style="float: right;">
										<form action="${pageContext.request.contextPath}/monthlySalesSearch" method="get">
											<select class="input-sm" style="float: left;">
												<option value="">날짜</option>
												<option value="">매장</option>
											</select>
											<input type="search" name="search" class="input-sm" style="text-align: center; float: left;"
												placeholder="검색어 입력" aria-controls="datatable">
											&nbsp; &nbsp;
											<button type="submit" class="btn btn-primary btn-sm" id="searchButton"
												style="float: right; padding: 0.75mm 1.2mm 0.75mm 1.2mm;">
												검색</button>
										</form>
									</div>
									<table id="monthlySalesTable"
										class="table table-striped table-bordered">
										<thead>
											<tr>
												<th>월매출 관리코드</th>
												<th>전표번호</th>
												<th>매장명</th>
												<th>연월</th>
												<th>월매출액</th>
												<th>예정 수수료</th>
											</tr>
										</thead>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>