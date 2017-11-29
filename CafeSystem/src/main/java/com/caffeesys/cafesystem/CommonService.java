package com.caffeesys.cafesystem;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class CommonService {
	// 검색 목록 페이징 (목록 페이징 매개변수 + map 검색조건과 검색어가 담겨서 옴)
	public Map<String, String> paging(Model model, int currentPage, int pagePerRow, int count, Map<String, String> map) {
		if (map != null) {
			model.addAttribute("cate", map.get("cate"));
			model.addAttribute("input", map.get("input"));
		} else {
			map = new HashMap<String, String>();
		}
		
		int page = 1;
		int maxPage = (int)((double)count/pagePerRow+0.95);
		int startPage = (((int)((double)page / 10 + 0.9)) - 1 ) * 10 + 1;
		int endPage = startPage+10-1;
		if(endPage > maxPage) endPage = maxPage;
		
		int lastPage = count / pagePerRow;
		if ((count % pagePerRow) != 0) {
			lastPage += 1;
		}
		
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		
		map.put("start", Integer.toString((currentPage - 1) * pagePerRow));
		map.put("pagePerRow", Integer.toString(pagePerRow));
		return map;
	}

}