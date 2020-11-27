package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDAO {

	// DB接続情報の設定
	final String URL  = "jdbc:mysql://172.16.71.101:3306/group_work?serverTimezone=JST";
	final String USER = "webuser02";
	final String PASS = "1234";

	public Connection getConnection() throws SQLException{
		return DriverManager.getConnection(URL, USER, PASS);
	}

//	public Connection getConn() throws SQLException {
//
//		InitialContext ic;
//		DataSource ds = null;
//
//		// JNDI処理ではチェック例外に対する例外処理が必要
//		try {
//			ic = new InitialContext();
//			ds = (DataSource) ic.lookup("java:comp/env/jdbc:db");
//
//			return ds.getConnection();
//		}
//		catch(NamingException e) {
//			return null;
//		}
//	}
}
