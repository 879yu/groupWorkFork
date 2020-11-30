package model;

public class LendData {
	private int lendId;
	private int userId;
	private int bookId;
	private String lendDate;
	private String returnDate;

	// デフォルトコンストラクタ
	public LendData() {}

	// コンストラクタ
	public LendData(int lendId, int userId, int bookId, String lendDate, String returnDate) {
		this.lendId = lendId;
		this.userId = userId;
		this.bookId = bookId;
		this.lendDate = lendDate;
		this.returnDate = returnDate;
	}

	// ゲッターメソッド
	public int getLendId() {
		return lendId;
	}

	public int getUserId() {
		return userId;
	}

	public int getBookId() {
		return bookId;
	}

	public String getLendDate() {
		return lendDate;
	}

	public String getReturnDate() {
		return returnDate;
	}

	// セッターメソッド
	public void setLendId(int lendId) {
		this.lendId = lendId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public void setLendDate(String lendDate) {
		this.lendDate = lendDate;
	}

	public void setReturnDate(String returnDate) {
		this.returnDate = returnDate;
	}
}
