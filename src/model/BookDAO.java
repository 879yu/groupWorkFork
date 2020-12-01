package model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

public class BookDAO extends ConnectionDAO{

	/**
	 * booksテーブル内の全データを返す
	 * @return List 購入済みの全書籍データを格納したArrayList
	 * @see BookData
	 */
	public List<BookData> findAllBooks() {
		// 実行するSQL文を文字列として事前に設定
		final String SQL = "SELECT * FROM BOOKS";

		// 戻り値をセットするリストの準備
		List<BookData> bookList = new ArrayList<>();

		try (Connection conn = getConnection();
				PreparedStatement pstm = conn.prepareStatement(SQL)) {

			// クエリの実行
			ResultSet rs = pstm.executeQuery();

			// DBを一行ずつ読み込んで書籍情報をインスタンスにセット
			while (rs.next()) {
				BookData bookData = new BookData();
				bookData.setBookId(rs.getInt(1));           // 書籍ID
				bookData.setTitle(rs.getString(2));         // 書籍タイトル
				bookData.setAuthor(rs.getString(3));        // 著者
				bookData.setPublishedDate(rs.getString(4)); // 出版日
				bookData.setPublisher(rs.getString(5));     // 出版社
				bookData.setDescription(rs.getString(6));   // 書籍概要
				bookData.setIsbn(rs.getString(7));          // ISBN
				bookData.setImageLinks(rs.getString(8));    // 表紙画像リンク
				bookData.setPurchaseDate(rs.getString(9));  // 購入日

				// インスタンスにセットした情報をリストに格納
				bookList.add(bookData);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bookList;
	}

	/**
	 * 購入した書籍をbooksテーブルにinsertする
	 * @param request
	 * @return boolean
	 * @throws ServletException
	 * @throws IOException
	 */
	public boolean addBook (HttpServletRequest request) throws ServletException, IOException {
		// 実行するSQL文を文字列として事前に設定
		final String SQL =
				"INSERT INTO BOOKS "
				+ "(title, author, published_date, publisher, description, isbn_13, image_links, purchase_date)"
				+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?)";

		try (Connection conn = getConnection();
				PreparedStatement pstm = conn.prepareStatement(SQL)) {

			// リクエストスコープから本のデータを取得
			BookData bookData = (BookData)request.getAttribute("bookData");

			// プレースホルダに取得したデータをセット
			pstm.setString(1,bookData.getTitle());         // 書籍タイトル
			pstm.setString(2,bookData.getAuthor());        // 著者
			pstm.setString(3,bookData.getPublishedDate()); // 出版日
			pstm.setString(4,bookData.getPublisher());     // 出版社
			pstm.setString(5,bookData.getDescription());   // 書籍概要
			pstm.setString(6,bookData.getIsbn());          // ISBN
			pstm.setString(7,bookData.getImageLinks());    // 表紙画像リンク
			pstm.setString(8,bookData.getPurchaseDate());  // 購入日

				// 更新された行数を変数に格納（クエリ成功なら1が格納される）
				int result = pstm.executeUpdate();

				// 更新成功（resultが1）ならtrueを返す
				if(result == 1) {
					return true;
				}

			// 更新失敗（resultが1以外）ならfalseを返す
			return false;

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
}
