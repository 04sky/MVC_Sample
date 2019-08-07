package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import pojo.PData;
import pojo.Person;
import util.DBUtils;

public class PersonDaoImpl implements PersonDao{

	List<PData> list = null;
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	@Override
	public List<PData> selectByBirth(Integer beginYear, Integer endYear) {
		try {
			conn = DBUtils.getConnection();
			ps = conn.prepareStatement("select birth as year, count(*) as number from ` persons` where birth between ? and ? group by birth");
			ps.setInt(1, beginYear);
			ps.setInt(2, endYear);
			
			rs = ps.executeQuery();
			list = new ArrayList<PData>();
			while(rs.next()){
				String year = rs.getString(1);
				int number = rs.getInt(2);
				
				PData data = new PData(year, number);
				
				list.add(data);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeAll(rs, ps, conn);
		}
		return list;
	}

	@Override
	public List<PData> selectByDistance(Integer beginDistance, Integer endDistance){
		try {
			conn = DBUtils.getConnection();
			ps = conn.prepareStatement("select total_distance as distance, count(*) as number from ` persons` where total_distance between ? and ? group by total_distance");
			ps.setInt(1, beginDistance);
			ps.setInt(2, endDistance);
			
			rs = ps.executeQuery();
			list = new ArrayList<PData>();
			while(rs.next()){
				String distance = rs.getString(1);
				int number = rs.getInt(2);
				
				PData data = new PData(distance, number);
				
				list.add(data);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeAll(rs, ps, conn);
		}
		return list;
	}

	@Override
	public List<PData> selectByTime(Integer beginTime, Integer endTime) {
		try {
			conn = DBUtils.getConnection();
			ps = conn.prepareStatement("select total_time as time, count(*) as number from ` persons` where total_time between ? and ? group by total_time");
			ps.setInt(1, beginTime);
			ps.setInt(2, endTime);
			
			rs = ps.executeQuery();
			list = new ArrayList<PData>();
			while(rs.next()){
				String time = rs.getString(1);
				int number = rs.getInt(2);
				
				PData data = new PData(time, number);
				
				list.add(data);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeAll(rs, ps, conn);
		}
		return list;
	}

}
