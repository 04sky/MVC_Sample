package dao;

import java.util.List;

import pojo.PData;
import pojo.Person;

public interface PersonDao {
	//按出生年范围进行查询
	List<PData> selectByBirth(Integer beginYear, Integer endYear);
	
	//按飞行里程进行查询
	List<PData> selectByDistance(Integer beginDistance, Integer endDistance);
	
	//按飞行时间进行查询
	List<PData> selectByTime(Integer beginTime, Integer endTime);
}
