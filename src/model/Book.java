package model;

public class Book {
	private int bookId;
	private String bookTitle;
	private String buyDate;
	private int isbn;

	// デフォルトコンストラクタ
	public Book() {}

	public Book(int bookId, String bookTitle, String buyDate, int isbn) {
		this.bookId = bookId;
		this.bookTitle = bookTitle;
		this.buyDate = buyDate;
		this.isbn = isbn;
	}

	// ゲッターメソッド
	public int getBookId() {
		return bookId;
	}

	public String getBookTitle() {
		return bookTitle;
	}

	public String getBuyDate() {
		return buyDate;
	}

	public int getIsbn() {
		return isbn;
	}

	// セッターメソッド
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}

	public void setBuyDate(String buyDate) {
		this.buyDate = buyDate;
	}

	public void setIsbn(int isbn) {
		this.isbn = isbn;
	}

}
