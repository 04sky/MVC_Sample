package util;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;
/**
 * Jdbc工具类
 * @author footprint
 *	数据库连接池如何使用C3p0
 */
public final class JdbcUtils {
	
	//数据库连接池，C3P0
	private static DataSource dataSource = null;//连接池只有一个
	static {
		dataSource = new ComboPooledDataSource("mvcapp");
	}
	
	/**
	 * 获取到数据库Mysql的数据连接的对象connection
	 * @return
	 */
	public static Connection getConnection() {
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	/**
	 * 关闭数据库连接对象的方法
	 * @param conn
	 */
	public static void closeConn(Connection conn) {
		if(null != conn) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	/**
	 * 
	 * @param conn
	 */
	public static void rollbackTransation(Connection conn) {
		if(conn != null) {
			try {
				conn.rollback();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}