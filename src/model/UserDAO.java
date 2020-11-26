package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO extends ConnectionDAO{
	// 実行するSQL文を文字列として事前に設定
		final String SQL = "SELECT * FROM USERS WHERE USER_ID = ? HAVING PASSWORD = ?;";

	public User findByLogin(Login login) {

		// ユーザーが入力したログイン情報（ID、パスワード）を変数に格納
		int userId = login.getUserId();
		String password = login.getPassword();

		// 戻り値をセットするインスタンスを生成
		User user = new User();

		try(Connection conn = getConn();
				PreparedStatement pstm = conn.prepareStatement(SQL)){


			// プレースホルダにユーザーが入力した情報をセット
			pstm.setInt(1,userId);
			pstm.setString(2,password);

			ResultSet rs = pstm.executeQuery();

			if(rs.next()) {
				// 見つかったユーザー情報をインスタンスにセットする（戻り値の準備）

				user.setUserId(rs.getInt(1));
				user.setUserName(rs.getString(2));
				user.setPassword(rs.getString(3));

			}else {
				// 無い場合はnullを返す
				return null;
			}

		}catch (SQLException e) {
			System.out.println("DB処理で問題が発生しました");
			return null;
		}

		return user;
	}
}





