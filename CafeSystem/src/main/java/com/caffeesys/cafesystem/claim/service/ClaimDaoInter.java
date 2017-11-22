package com.caffeesys.cafesystem.claim.service;

import java.util.List;
import com.caffeesys.cafesystem.Category;

public interface ClaimDaoInter {
	public int insertClaim(ClaimVO claim) throws Exception;
	
	public List<ClaimVO> selectAllClaim() throws Exception;
	
	public ClaimVO selectOneForDetail(int customerClaimCode) throws Exception;
	
	public List<Category> selectCategoryForClaim() throws Exception;
	
	public int updateClaim(ClaimVO claim) throws Exception;
}
