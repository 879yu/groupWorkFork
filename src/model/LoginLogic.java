package model;

public class LoginLogic {
	public boolean execute(Login login, User user) {
		int userId = login.getUserId();
		String password = login.getPassword();

		// ユーザーID：0000 パスワード：passでログインする（仮）
		if((login.getUserId() == userId) && (login.getPassword().equals(password))) {
			return true;
		}

		// ユーザーIDかパスワードのどちらかが誤っている場合、falseを返す
		return false;
	}

}
