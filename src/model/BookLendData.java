package model;

public class BookLendData {

	private int bookId;           // 1
    private String title;         // 2
    private String author;        // 3
    private String publishedDate; // 4
    private String publisher;     // 5
    private String description;   // 6
    private String isbn;          // 7
    private String imageLinks;    // 8
    private String purchaseDate;  // 9
    private int lendId;          // 10
	private int userId;          // 11
	private String lendDate;     // 12
	private String returnDate;   // 13

 // デフォルトコンストラクタ
    public BookLendData() {}

    //コンストラクタ
    public BookLendData(
    		int bookId,
    		String title,
    		String author,
    		String publishedDate,
    		String publisher,
    		String description,
    		String isbn,
    		String imageLinks,
    		String purchaseDate,
    		int lendId,
    		int userId,
    		String lendDate,
    		String returnDate) {
    	this.bookId        = bookId;
		this.title         = title;
		this.author        = author;
		this.publishedDate = publishedDate;
		this.publisher     = publisher;
		this.description   = description;
		this.imageLinks    = imageLinks;
		this.purchaseDate  = purchaseDate;
		this.lendId = lendId;
		this.userId = userId;
		this.lendDate = lendDate;
		this.returnDate = returnDate;
	}

    //ゲッターメソッド
    public int getBookId() {
		return bookId;
	}

	public String getTitle() {
		return title;
	}

	public String getAuthor() {
		return author;
	}

	public String getPublishedDate() {
		return publishedDate;
	}

	public String getPublisher() {
		return publisher;
	}

	public String getDescription() {
		return description;
	}


	public String getIsbn() {
		return isbn;
	}

	public String getImageLinks() {
		return imageLinks;
	}


	public String getPurchaseDate() {
		return purchaseDate;
	}
	public int getLendId() {
		return lendId;
	}

	public int getUserId() {
		return userId;
	}

	public String getLendDate() {
		return lendDate;
	}

	public String getReturnDate() {
		return returnDate;
	}

	// セッターメソッド
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public void setTitle(String booktitle) {
		this.title = booktitle;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public void setPublishedDate(String publishedDate) {
		this.publishedDate = publishedDate;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public void setDescription(String description) {
		this.description = description;
	}


	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public void setImageLinks(String imageLinks) {
		this.imageLinks = imageLinks;
	}

	public void setPurchaseDate(String purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	public void setLendId(int lendId) {
		this.lendId = lendId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public void setLendDate(String lendDate) {
		this.lendDate = lendDate;
	}

	public void setReturnDate(String returnDate) {
		this.returnDate = returnDate;
	}
}
