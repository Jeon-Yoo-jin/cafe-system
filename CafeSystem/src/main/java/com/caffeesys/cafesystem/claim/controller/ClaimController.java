package com.caffeesys.cafesystem.claim.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.caffeesys.cafesystem.Category;
import com.caffeesys.cafesystem.claim.service.Claim;
import com.caffeesys.cafesystem.claim.service.ClaimDao;

@Controller
public class ClaimController { 
	@Autowired
	private ClaimDao claimDao;
	
	private static final Logger logger = LoggerFactory.getLogger(ClaimController.class);


	// 클레임 입력 폼 요청
	@RequestMapping(value = "/claimInsert", method = RequestMethod.GET)
	public String claimInsert(Model model) throws Exception {
		logger.debug("[ClaimController.java/claimInsert Method] claimInsertForm.jsp Loading");
		List<Category> categoryList = claimDao.selectCategoryForClaim();
		//logger.debug("[ClaimController.java/claimInsert Method] categorylist param" + clist);
		model.addAttribute("categoryList", categoryList);
		return "/claim/claimInsertForm";
	}
	
	// 클레임 입력 처리
	@RequestMapping(value = "/claimInsert", method = RequestMethod.POST)
	public String claimInsert(Claim claim) throws Exception {
		logger.debug("[ClaimController.java/claimInsert Method] Claim Insert Action");
		claimDao.insertClaim(claim);
		return "redirect:/claimList";
	}
	// 클레임 리스트 요청
	@RequestMapping(value ="/claimList", method = RequestMethod.GET)
	public String claimList(Model model) throws Exception {
		logger.debug("[ClaimController.java/claimList Method] claimList.jsp Loading");
		List<Claim> claimList = claimDao.selectAllClaim();
		//System.out.println("[ClaimController.java/insertClaim Method param] " + clist);
		model.addAttribute("claimList", claimList);
		return "/claim/claimList";
	}
	
	// 클레임 게시글 상세보기 페이지 요청
	@RequestMapping(value = "/claimDetail", method = RequestMethod.GET)
	public String claimDetail(Model model, @RequestParam(value = "customerClaimCode", required = true) int customerClaimCode) throws Exception {
		logger.debug("[ClaimController.java/claimDetail Method] claimDetail.jsp Loading");
		logger.debug("[ClaimController.java/claimDetail.Method] customerClaimCode param: " + customerClaimCode);
		Claim claim = claimDao.selectOneForDetail(customerClaimCode);
		logger.debug("[ClaimController.java/claimDetail.Method] claim param: " + claim);
		model.addAttribute("claim", claim);
		return "/claim/claimDetail";
	}
}
