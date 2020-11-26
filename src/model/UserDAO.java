package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO extends ConnectionDAO{

	// ログイン画面で入力されたユーザー情報がDBに存在するか確認するメソッド
	public User findByLogin(Login login) {

		// 実行するSQL文を文字列として事前に設定
		final String SQL = "SELECT * FROM USERS WHERE USER_ID = ? HAVING PASSWORD = ?;";

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

	// ユーザー一覧を表示するメソッド
	public List<User> findAllUser(){

		// 戻り値をセットするリストの準備
		List<User> list = new ArrayList<>();
		final String SQL = "SELECT * FROM USERS WHERE NOT USER_ID = 0;";




	}

}





