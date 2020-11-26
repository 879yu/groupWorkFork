package model;

public class LoginLogic {
	public boolean execute(Login login) {

		// ユーザーID：0000 パスワード：passでログインする（仮）
		if((login.getUserId() == 0000) && (login.getPassword().equals("pass"))) {
			return true;
		}

		// ユーザーIDかパスワードのどちらかが誤っている場合、falseを返す
		return false;
	}

}
