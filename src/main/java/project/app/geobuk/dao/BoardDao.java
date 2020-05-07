package project.app.geobuk.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.app.geobuk.vo.EventVo;


@Repository
public class BoardDao {
	@Autowired
	private SqlSessionTemplate SqlSessionTemplate;
	private final String NAMESPACE="project.mybatis.mapper.EventMapper";
	
	public List<EventVo> list(HashMap<String,Object> map){
		return SqlSessionTemplate.selectList(NAMESPACE + ".list", map);
	}
	
	public int update(EventVo vo){
		return SqlSessionTemplate.update(NAMESPACE + ".update", vo);
	}
	
	public int count(HashMap<String,Object> map){
		return SqlSessionTemplate.selectOne(NAMESPACE +".count",map);
	}
	
	
}
