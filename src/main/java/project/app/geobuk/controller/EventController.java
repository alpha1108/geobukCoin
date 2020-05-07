package project.app.geobuk.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import project.app.geobuk.service.EventService;
import project.app.geobuk.vo.EventVo;

@Controller
public class EventController {
	@Autowired private EventService evs;
	
	@RequestMapping(value="/board/event" , method=RequestMethod.GET)
	public String eventinsert(){
		return ".board.event";
	}
	
	@RequestMapping(value="/board/regi" , method=RequestMethod.POST)
	public String eventregi(EventVo vo){
		int n=evs.insert(vo);
		if(n>0) {
			return "redirect:/";
		}else {
			return "redirect:/";
		}
	}
	
}
