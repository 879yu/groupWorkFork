package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SearchBookDAO extends ConnectionDAO{

	public List<BookLendData> searchBook(String keyword, String radioBtn){

		// 実行するSQL文を変数に定義
		String sql = "";

		// 0の場合タイトル検索、1の場合ISBN検索
		if(radioBtn.equals("0")) {
			sql = "SELECT * FROM BOOKS JOIN LEND ON BOOKS.BOOK_ID = LEND.BOOK_ID WHERE BOOKS.TITLE=" + keyword ;
		} if(radioBtn.equals("1")) {
			sql = "SELECT * FROM BOOKS JOIN LEND ON BOOKS.BOOK_ID = LEND.BOOK_ID WHERE BOOKS.ISBN =" + keyword;
		}

		// 戻り値をセットするリストの準備
		List<BookLendData> lendingList = new ArrayList<>();

		try (Connection conn = getConnection();
				PreparedStatement pstm = conn.prepareStatement(sql)) {

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

}
