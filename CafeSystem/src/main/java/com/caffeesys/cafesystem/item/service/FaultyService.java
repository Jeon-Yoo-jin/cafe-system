package com.caffeesys.cafesystem.item.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.caffeesys.cafesystem.shop.service.AllJustService;

@Service
public class FaultyService {
	
	@Autowired
	AllJustService allJustService; // 페이징 및 검색(shop.controller폴더에)
	@Autowired
	private FaultyDao faultyDao;
	
	// 불량품목리스트 및 조회 상세전(본사)
	public void selectFaultyList(Model model, String searchOption, String keyword, int currentPage) {
		System.out.println("FaultyService.java / selectFaultyList method 확인");
		System.out.println("FaultyService.java / selectFaultyList Param model :" + model);
		System.out.println("FaultyService.java / selectFaultyList Param searchOption :" + searchOption);
		System.out.println("FaultyService.java / selectFaultyList Param keyword :" + keyword);
		System.out.println("FaultyService.java / selectFaultyList Param currentPage :" + currentPage);
		Map<String, String> map;
		if(searchOption != "") {
			map = new HashMap<String, String>();
			map.put("searchOption", searchOption);
			map.put("keyword",keyword);			
		}else {
			map = null;
		}
		System.out.println("FaultyService.java"+map);
		map = allJustService.paging(model, currentPage, 10, faultyDao.selectFaultyCount(map), map);
		model.addAttribute("faultyList", faultyDao.selectFaultyList(map));
		model.addAttribute("faultyCount", faultyDao.selectFaultyCount(map));
	}
	// 불량품목등록 과정(지점)
	public int insertFaulty(FaultyVO faulty) {
		System.out.println("FaultyService.java / insertFaulty method 확인");
		System.out.println("FaultyService.java / insertFaulty Param item :" + faulty);
		return faultyDao.insertFaulty(faulty);
	}
}
