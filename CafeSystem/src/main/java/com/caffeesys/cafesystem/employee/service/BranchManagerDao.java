package com.caffeesys.cafesystem.employee.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BranchManagerDao {

	private final String NS = "com.caffeesys.cafesystem.employee.service.BranchManagerMapper.";

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	// �����ڵ���ȸ
	public List<BranchManager> selectBranchManagerbyLocalCode() {
		System.out.println("[BranchManagerDao] �żҵ����");
		return sqlSessionTemplate.selectList(NS + "selcetByLocalCode");
	}

}
