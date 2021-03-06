package com.caffeesys.cafesystem.shop.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.caffeesys.cafesystem.shop.service.ShopDao;
import com.caffeesys.cafesystem.shop.service.ShopService;
import com.caffeesys.cafesystem.shop.service.ShopVO;

@Controller
public class ShopController {
	
	@Autowired
	private ShopService shopService;
	@Autowired
	private ShopDao shopDao;
	
	// 매장리스트 및 조회 상세전
	@RequestMapping(value = "/shopList")
	public String listShop(Model model
			,@RequestParam(value="searchOption", required=false, defaultValue="all")String searchOption
			,@RequestParam(value="keyword", required=false, defaultValue="") String keyword
			,@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) throws Exception {
		System.out.println("ShopController.java / listShop method");
		System.out.println("ShopController.java"+model);
		System.out.println("ShopController.java"+searchOption);
		System.out.println("ShopController.java"+keyword);
		System.out.println("ShopController.java"+currentPage);
		shopService.selectShopList(model, searchOption, keyword, currentPage);
		return "/shop/shopList";
	}
	// 매장등록 페이지요청
	@RequestMapping(value="/insertShop", method = RequestMethod.GET)
	public String insertShop(Model model) {
		System.out.println("ShopController.java / insertShop method GET방식 ");
		List<ShopVO> ContractCodeList = shopDao.selectShopContractCode();
		List<ShopVO> CategoryLocalList = shopDao.selectShopCategorySmall();
		model.addAttribute("ContractCodeList",ContractCodeList);
		model.addAttribute("CategoryLocalList",CategoryLocalList);
		return "/shop/shopInsertForm";
	}
	// 매장등록(액션)요청
	@RequestMapping(value="/insertShop", method = RequestMethod.POST)
	public String insertShop(ShopVO shop) {
		System.out.println("ShopController.java / insertShop method POST방식 " + shop);
		shopService.insertShop(shop);
		return "redirect:/shopList";
	}
	// 매장상세조회
	@RequestMapping(value = "/shopDetail", method = RequestMethod.GET)
	public String detailShop(Model model, @RequestParam(value = "contractCode", required = true) String contractCode) {
		System.out.println("ShopController.java / detailShop method GET방식 " + contractCode);
		ShopVO shop = shopDao.selectShop(contractCode);
		model.addAttribute("shop", shop);
		return "/shop/shopDetail";
	}
	// 계약서수정 페이지요청
	@RequestMapping(value = "/updateShop", method = RequestMethod.GET)
	public String updateShop(Model model, @RequestParam(value = "contractCode", required = true) String contractCode) {
		System.out.println("ShopController.java / updateShop method GET방식 " + contractCode);
		ShopVO shop = shopDao.selectShop(contractCode);
		model.addAttribute("shop", shop);
		return "/shop/shopUpdateForm";
	}
	// 계약서수정(액션)요청
	@RequestMapping(value = "/updateShop", method = RequestMethod.POST)
	public String updateShop(ShopVO shop) {
		System.out.println("ShopController.java / updateShop method POST방식 " + shop);
		shopDao.updateShop(shop);
		return "redirect:/shopDetail?contractCode=" + shop.getContractCode();
	}
	// 매장삭제 페이지요청(점포명 입력)
	@RequestMapping(value = "/deleteShop", method = RequestMethod.GET)
	public String deleteShop(@RequestParam(value = "contractCode", required = true) String contractCode) {
		System.out.println("ShopController.java / deleteShop method GET방식 " + contractCode);
		return "/shop/shopDeleteForm";
	}
	// 매장삭제(액션)요청
	@RequestMapping(value = "/deleteShop", method = RequestMethod.POST)
	public String deleteShop(@RequestParam(value = "contractCode", required = true) String contractCode,
			@RequestParam(value = "shopName", required = true) String shopName) {
		System.out.println("ShopController.java / deleteShop method POST방식 " + contractCode);
		System.out.println("ShopController.java / deleteShop method POST방식 " + shopName);
		shopDao.deleteShop(contractCode, shopName);
		return "redirect:/shopList";
	}

	// 매장연락망리스트 및 조회
	@RequestMapping(value = "/branchCallList")
	public String listBranchCall(Model model
			,@RequestParam(value="searchOption", required=false, defaultValue="all")String searchOption
			,@RequestParam(value="keyword", required=false, defaultValue="") String keyword
			,@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) throws Exception {
		System.out.println("ShopController.java / listBranchCall method");
		System.out.println("ShopController.java"+model);
		System.out.println("ShopController.java"+searchOption);
		System.out.println("ShopController.java"+keyword);
		System.out.println("ShopController.java"+currentPage);
		shopService.selectBranchCallList(model, searchOption, keyword, currentPage);
		return "/shop/branchCallList";
	}
	
	// 매장상세조회(지점)
	@RequestMapping(value = "/branchShopList", method = RequestMethod.GET)
	public String branchShopList(Model model,HttpSession session) throws IOException{
		System.out.println("ShopController.java / branchShopList method GET방식 ");
		shopService.branchShopList(model, session);
		return "/shop/branchShopList";
	}
}
