package db;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public class ConnDB {

    //数据库的用户名和密码
    public static String username = "root";
    public static String password = "root";

    //获得连接对象，statement对象和结果集
    public static  Connection conn = null;
    public static Statement state = null;
    public static ResultSet  rs = null; 

    //数据库驱动，在刚开始下载的文件中
    public static String driver_class = "com.mysql.jdbc.Driver";

    //oilServer是数据库名，其他的不变
    public static String url = "jdbc:mysql://localhost/citel_3";


    //获得数据库的连接的方法
    public static Connection getConnection(){
    try {
        Class.forName(driver_class);//指定连接类型 
        System.out.println("load db driver success......");
        conn = DriverManager.getConnection(url,username,password);//获取连接 
           System.out.println("get db connection success....");

            } catch (Exception e) {
                e.printStackTrace();
            }
            return  conn;
        }


    //执行数据库的查询操作，返回的为结果集
public static ResultSet excuteQuery(String sql){
    try {
        state = conn.createStatement();
        rs = state.executeQuery(sql);
        return rs;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return rs;
    }


    //关闭数据库
    public static void closeDb(){
        try {
            if(rs != null)
                rs.close();
            if(conn != null)
                conn.close();
            if(state != null)
                state.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
