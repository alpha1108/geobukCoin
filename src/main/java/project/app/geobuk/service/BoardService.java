package project.app.geobuk.service;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.app.geobuk.dao.BoardDao;
import project.app.geobuk.vo.EventVo;

@Service
public class BoardService {
	@Autowired private BoardDao dao;
	public List<EventVo> list(HashMap<String,Object> map){
		return dao.list(map);
	}
	public int update(EventVo vo){
		return dao.update(vo);
	}
	
	public int count(HashMap<String,Object> map){
		return dao.count(map);
	}

}
