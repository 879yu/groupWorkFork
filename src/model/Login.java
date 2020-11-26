package model;

import java.io.Serializable;

public class Login implements Serializable {
	private int userId;
	private String password;

	// デフォルトコンストラクタ
	public Login() {}

	public Login(int userId, String password) {
		this.userId = userId;
		this.password = password;
	}

	public int getUserId() {
		return userId;
	}

	public String getPassword() {
		return password;
	}

}
