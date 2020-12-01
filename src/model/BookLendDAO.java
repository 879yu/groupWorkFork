package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookLendDAO extends ConnectionDAO{

	/**
	 * 全ユーザーの貸し借り履歴全てを表示する
	 * @param userId
	 * @return List
	 */
	public List<BookLendData> findAllLendingData(){
		// 実行するSQL文を文字列として事前に設定
		final String SQL = "SELECT * FROM BOOKS JOIN LEND ON BOOKS.BOOK_ID = LEND.BOOK_ID";

		// 戻り値をセットするリストの準備
		List<BookLendData> lendingList = new ArrayList<>();

		try (Connection conn = getConnection();
				PreparedStatement pstm = conn.prepareStatement(SQL)) {

			// クエリの実行
			ResultSet rs = pstm.executeQuery();

			// DBを一行ずつ読み込んで書籍情報をインスタンスにセット
			while (rs.next()) {
				BookLendData bookLendData = new BookLendData();
				bookLendData.setBookId(rs.getInt(1));           // 書籍ID
				bookLendData.setTitle(rs.getString(2));         // 書籍タイトル
				bookLendData.setAuthor(rs.getString(3));        // 著者
				bookLendData.setPublishedDate(rs.getString(4)); // 出版日
				bookLendData.setPublisher(rs.getString(5));     // 出版社
				bookLendData.setDescription(rs.getString(6));   // 書籍概要
				bookLendData.setIsbn(rs.getString(7));          // ISBN
				bookLendData.setImageLinks(rs.getString(8));    // 表紙画像リンク
				bookLendData.setPurchaseDate(rs.getString(9));  // 購入日
				bookLendData.setLendId(rs.getInt(10));          // 貸出ID
				bookLendData.setUserId(rs.getInt(11));          // ユーザーID
				bookLendData.setLendDate(rs.getString(12));     // 購入日
				bookLendData.setReturnDate(rs.getString(13));   // 返却日

				// インスタンスにセットした情報をリストに格納
				lendingList.add(bookLendData);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lendingList;
	}

	/**
	 * ログイン中のユーザーが現在借りている本の一覧を表示する
	 * @return List
	 */
	public List<BookLendData> findMyLendingBooks(int userId){
		// 実行するSQL文を文字列として事前に設定
		final String SQL = "SELECT * FROM BOOKS JOIN LEND ON BOOKS.BOOK_ID = LEND.BOOK_ID";

		// 戻り値をセットするリストの準備
		List<BookLendData> lendingList = new ArrayList<>();

		try (Connection conn = getConnection();
				PreparedStatement pstm = conn.prepareStatement(SQL)) {

			// クエリの実行
			ResultSet rs = pstm.executeQuery();

			// DBを一行ずつ読み込んで書籍情報をインスタンスにセット
			while (rs.next()) {
				BookLendData bookLendData = new BookLendData();
				bookLendData.setBookId(rs.getInt(1));           // 書籍ID
				bookLendData.setTitle(rs.getString(2));         // 書籍タイトル
				bookLendData.setAuthor(rs.getString(3));        // 著者
				bookLendData.setPublishedDate(rs.getString(4)); // 出版日
				bookLendData.setPublisher(rs.getString(5));     // 出版社
				bookLendData.setDescription(rs.getString(6));   // 書籍概要
				bookLendData.setIsbn(rs.getString(7));          // ISBN
				bookLendData.setImageLinks(rs.getString(8));    // 表紙画像リンク
				bookLendData.setPurchaseDate(rs.getString(9));  // 購入日
				bookLendData.setLendId(rs.getInt(10));          // 貸出ID
				bookLendData.setUserId(rs.getInt(11));          // 貸出ID
				bookLendData.setLendDate(rs.getString(12));     // 購入日
				bookLendData.setReturnDate(rs.getString(13));   // 返却日

				// インスタンスにセットした情報をリストに格納
				lendingList.add(bookLendData);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lendingList;
	}
}
