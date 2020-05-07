package project.app.geobuk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.app.geobuk.dao.EventDao;
import project.app.geobuk.vo.EventVo;

@Service
public class EventService {
	@Autowired private EventDao edao;
	public int insert(EventVo vo){
		return edao.insert(vo);
	}
}
