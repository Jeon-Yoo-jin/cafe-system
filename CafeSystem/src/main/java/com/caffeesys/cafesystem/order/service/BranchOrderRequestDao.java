package com.caffeesys.cafesystem.order.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class BranchOrderRequestDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private static final Logger logger = LoggerFactory.getLogger(BranchOrderRequestDao.class);
	private final static String NS = "com.caffeesys.cafesystem.order.service.BranchOrderRequestMapper.";

	//리스트(1) 지역매장코드 확인
	public BranchOrderRequestVO selectLocalShopCode(String branchEmployeeCode) {
		logger.debug("[seleteLocalShopCode] 지역코드 매장코드 구하기 실행");	
		return sqlSessionTemplate.selectOne(NS + "seleteLocalShopCode",branchEmployeeCode);
	}
	
	//리스트(2) 리스트 가져오기
	public List<BranchOrderRequestVO> selectOderRequestList(Map<String, String> map) {
		logger.debug("[seleteOderRequestList] 매장에 따른 발주리스트 가져오기");	
		System.out.println("map : " + map);
		return  sqlSessionTemplate.selectList(NS + "selectOderRequestList",map);
	}
	
	//선택전표번호 상세조회
	public List<BranchOrderRequestVO> selectOrderRequestDetail(String statementNumber) {
		logger.debug("[selectOrderRequestDetail] 선택 전표번호 상세내용 가져오기 실행");
		return sqlSessionTemplate.selectList(NS + "selectOrderRequestDetail",statementNumber);		
	}

	//전표번호 가격 구하기
	public List<HashMap<String,Object>> selectPrice(String statementNumber) {
		logger.debug("[selectPrice] 전표번호 가격 구하기 실행");
		return sqlSessionTemplate.selectList(NS + "selectPrice",statementNumber);		
	}
	
	//배송상태를 배송완료로 바꾸기
	public int upadateDeliveryOk (String statementNumber) {
		logger.debug("[upadateDeliveryOk] 배송상태 수정 ");
		return sqlSessionTemplate.update(NS + "upadateDeliveryOk",statementNumber);		
	}
}