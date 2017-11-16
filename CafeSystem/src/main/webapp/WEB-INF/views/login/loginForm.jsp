<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="right_col" role="main">
	<div class="login_wrapper">
		<div class="animate form login_form">
			<section class="login_content">
				<form id="login" method="post">
					<h1>Login</h1>
					<div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div id="gender" class="btn-group" data-toggle="buttons">
                            <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                              <input type="radio" name="gender" value="male"> &nbsp; Male &nbsp;
                            </label>
                            <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                              <input type="radio" name="gender" value="female"> Female
                            </label>
                          </div>
                        </div>
                      </div>
					<div>
						<input type="text" name="id" class="form-control" placeholder="ID" />
					</div>
					<div>
						<input type="password" name="pw" class="form-control" placeholder="Password" />
					</div>
					<div>
						<a class="btn btn-primary" href="javascript:login.submit();">log in</a>
					</div>

					<div class="clearfix"></div>

					<div class="separator">
						<div class="clearfix"></div>
						<br />

						<div>
							<h1>
								<i class="fa fa-coffee"></i> Bean Place
							</h1>
						</div>
					</div>
				</form>
			</section>
		</div>
	</div>
</div>
