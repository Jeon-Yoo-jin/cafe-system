package com.caffeesys.cafesystem.employee.service;

public class BranchManager {

	private String branchEmployeeCode; //�����ڵ�
	private String localCategoryCode; //�����ڵ�
	private String shopCode; //�����ڵ�
	private String positionCategoryCode; //�����ڵ�
	private String branchEmployeeId; //���̵�
	private String branchEmployeeName; //�̸�
	private int branchEmployeeBirth; //�������
	private String branchEmployeePhone; //����ó
	private String branchEmployeeAddress; //�ּ�
	private String branchEmployeeCetificate; //������
	private String branchManagerWorknum; //����ڹ�ȣ
	private String branchManagerStart; //���������
	private String branchManagerBank; //������������
	private String branchManagerBanknum; //������¹�ȣ
	
	//�ټ�
	public String getBranchEmployeeCode() {
		return branchEmployeeCode;
	}
	public void setBranchEmployeeCode(String branchEmployeeCode) {
		this.branchEmployeeCode = branchEmployeeCode;
	}
	public String getLocalCategoryCode() {
		return localCategoryCode;
	}
	public void setLocalCategoryCode(String localCategoryCode) {
		this.localCategoryCode = localCategoryCode;
	}
	public String getShopCode() {
		return shopCode;
	}
	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}
	public String getPositionCategoryCode() {
		return positionCategoryCode;
	}
	public void setPositionCategoryCode(String positionCategoryCode) {
		this.positionCategoryCode = positionCategoryCode;
	}
	public String getBranchEmployeeId() {
		return branchEmployeeId;
	}
	public void setBranchEmployeeId(String branchEmployeeId) {
		this.branchEmployeeId = branchEmployeeId;
	}
	public String getBranchEmployeeName() {
		return branchEmployeeName;
	}
	public void setBranchEmployeeName(String branchEmployeeName) {
		this.branchEmployeeName = branchEmployeeName;
	}
	public int getBranchEmployeeBirth() {
		return branchEmployeeBirth;
	}
	public void setBranchEmployeeBirth(int branchEmployeeBirth) {
		this.branchEmployeeBirth = branchEmployeeBirth;
	}
	public String getBranchEmployeePhone() {
		return branchEmployeePhone;
	}
	public void setBranchEmployeePhone(String branchEmployeePhone) {
		this.branchEmployeePhone = branchEmployeePhone;
	}
	public String getBranchEmployeeAddress() {
		return branchEmployeeAddress;
	}
	public void setBranchEmployeeAddress(String branchEmployeeAddress) {
		this.branchEmployeeAddress = branchEmployeeAddress;
	}
	public String getBranchEmployeeCetificate() {
		return branchEmployeeCetificate;
	}
	public void setBranchEmployeeCetificate(String branchEmployeeCetificate) {
		this.branchEmployeeCetificate = branchEmployeeCetificate;
	}
	public String getBranchManagerWorknum() {
		return branchManagerWorknum;
	}
	public void setBranchManagerWorknum(String branchManagerWorknum) {
		this.branchManagerWorknum = branchManagerWorknum;
	}
	public String getBranchManagerStart() {
		return branchManagerStart;
	}
	public void setBranchManagerStart(String branchManagerStart) {
		this.branchManagerStart = branchManagerStart;
	}
	public String getBranchManagerBank() {
		return branchManagerBank;
	}
	public void setBranchManagerBank(String branchManagerBank) {
		this.branchManagerBank = branchManagerBank;
	}
	public String getBranchManagerBanknum() {
		return branchManagerBanknum;
	}
	public void setBranchManagerBanknum(String branchManagerBanknum) {
		this.branchManagerBanknum = branchManagerBanknum;
	}
	@Override
	public String toString() {
		return "BranchManager [branchEmployeeCode=" + branchEmployeeCode + ", localCategoryCode=" + localCategoryCode
				+ ", shopCode=" + shopCode + ", positionCategoryCode=" + positionCategoryCode + ", branchEmployeeId="
				+ branchEmployeeId + ", branchEmployeeName=" + branchEmployeeName + ", branchEmployeeBirth="
				+ branchEmployeeBirth + ", branchEmployeePhone=" + branchEmployeePhone + ", branchEmployeeAddress="
				+ branchEmployeeAddress + ", branchEmployeeCetificate=" + branchEmployeeCetificate
				+ ", branchManagerWorknum=" + branchManagerWorknum + ", branchManagerStart=" + branchManagerStart
				+ ", branchManagerBank=" + branchManagerBank + ", branchManagerBanknum=" + branchManagerBanknum + "]";
	}
	
	
	
	
}
