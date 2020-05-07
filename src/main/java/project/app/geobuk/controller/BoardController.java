package project.app.geobuk.controller;


import java.util.HashMap;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import project.app.geobuk.service.BoardService;
import project.app.geobuk.util.PageUtil;
import project.app.geobuk.vo.EventVo;

@Controller
public class BoardController {
	@Autowired private BoardService bs;
	
	@RequestMapping("/board/fiveboard")
	public ModelAndView list(@RequestParam(value="pageNum",defaultValue="1")int pageNum) {
		HashMap<String,Object> map=new HashMap<String, Object>();
		int totalRowCount=bs.count(map);//전체 글의 갯수 구하기
		PageUtil pu=new PageUtil(pageNum, totalRowCount,10,10);
		int startRow=pu.getStartRow();
		int endRow=pu.getEndRow();	
		map.put("startRow",startRow);
		map.put("endRow",endRow);
		List<EventVo> mlist = bs.list(map);
		ModelAndView mv = new ModelAndView(".board.fiveboard"); //.jsp파일명
		mv.addObject("list",mlist);
		mv.addObject("pu",pu);//페이지처리에 대한 정보를 갖는 객체
		return mv;
	}
	
	@RequestMapping(value="/board/update",method=RequestMethod.POST)
	public String update(EventVo vo){
		bs.update(vo);
		return ".board.fiveboard";
		
	}	
	
}
