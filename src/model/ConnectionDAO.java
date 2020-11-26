package model;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnectionDAO {
	public Connection getConn() throws SQLException {

		InitialContext ic;
		DataSource ds = null;

		// JNDI処理ではチェック例外に対する例外処理が必要
		try {
			ic = new InitialContext();
			ds = (DataSource) ic.lookup("java:comp/env/jdbc:db");

			return ds.getConnection();
		}
		catch(NamingException e) {
			return null;
		}
	}
}
