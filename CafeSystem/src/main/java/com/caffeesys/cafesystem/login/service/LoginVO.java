package com.caffeesys.cafesystem.login.service;

public class LoginVO {
	// 세션에 저장될 내용 : 이름, 직원코드, 본사/지점, 직급/부서, 아이디, 비밀번호(생년월일)
	private String id;
	private String pw;
	private String division;	// 본사/지점 구분
	private String name;
	private String empCode;		// 직원코드
	private String position;	// 직급/부서
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmpCode() {
		return empCode;
	}
	public void setEmpCode(String empCode) {
		this.empCode = empCode;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	
	@Override
	public String toString() {
		return "Login [id=" + id + ", pw=" + pw + ", division=" + division + ", name=" + name + ", empCode=" + empCode
				+ ", position=" + position + "]";
	}
}
