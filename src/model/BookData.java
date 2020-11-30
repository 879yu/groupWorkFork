package model;

public class BookData {

	private int bookId;
    private String title;
    private String author;
    private String publishedDate;
    private String publisher;
    private String description;
    private String imageLinks;
    private String isbn;
    private String purchaseDate;


    // デフォルトコンストラクタ
    public BookData() {}

    //コンストラクタ
    public BookData(
    		int bookId,
    		String title,
    		String author,
    		String publishedDate,
    		String publisher,
    		String description,
    		String imageLinks,
    		String isbn,
    		String purchaseDate) {
    	this.bookId        = bookId;
		this.title         = title;
		this.author        = author;
		this.publishedDate = publishedDate;
		this.publisher     = publisher;
		this.description   = description;
		this.imageLinks    = imageLinks;
		this.purchaseDate  = purchaseDate;
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

	public String getImageLinks() {
		return imageLinks;
	}

	public String getIsbn() {
		return isbn;
	}

	public String getPurchaseDate() {
		return purchaseDate;
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

	public void setImageLinks(String imageLinks) {
		this.imageLinks = imageLinks;
	}


	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public void setPurchaseDate(String purchaseDate) {
		this.purchaseDate = purchaseDate;
	}

}
