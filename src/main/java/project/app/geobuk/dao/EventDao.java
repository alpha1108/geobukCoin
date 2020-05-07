package project.app.geobuk.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.app.geobuk.vo.EventVo;

@Repository
public class EventDao {
	@Autowired
	private SqlSessionTemplate SqlSessionTemplate;
	private final String NAMESPACE="project.mybatis.mapper.EventMapper";
	public int insert(EventVo vo){
		return SqlSessionTemplate.insert(NAMESPACE + ".insert" , vo);
	}
}
