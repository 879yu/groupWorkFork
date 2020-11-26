package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO extends ConnectionDAO{
	// 実行するSQL文を文字列として事前に設定
		final String SQL = "select * from users where user_id = ? in (select * password = ? from users)";

	public List<Login> findByLogin(Login login) {

		// ログイン情報（ID、パスワード）を変数に格納
		int userId = login.getUserId();
		String password = login.getPassword();

		// ログインしたユーザーの情報を格納するリスト（戻り値の準備）
		List<Login> list = new ArrayList<>();

		try(Connection conn = getConn();
				PreparedStatement pstm = conn.prepareStatement(SQL)){


			pstm.setInt(1,userId);
			pstm.setString(2,password);

			ResultSet rs = pstm.executeQuery();

		}catch (SQLException e) {
			System.out.println("DB処理で問題が発生しました");
		}

		return list;
	}
}





