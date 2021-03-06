package model;

public class User {

	private int    userId;
	private String userName;
	private String password;


	// デフォルトコンストラクタ
	public User(){}

	public User(int userId, String userName, String password){
		this.userId = userId;
		this.userName = userName;
		this.password = password;
	}


	// ゲッターメソッド
	public int getUserId() {
		return userId;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

	// セッターメソッド
	public void setUserId(int userId) {
		this.userId = userId;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setPassword(String password) {
		this.password = password;
	}


}
