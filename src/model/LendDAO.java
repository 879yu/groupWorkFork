package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LendDAO extends ConnectionDAO{

	/**
	 * 全ユーザーの貸出履歴一覧（管理者のみ閲覧可能）
	 * @return List 全ユーザーの貸出中履歴が格納したArrayList
	 */
	public List<BookData> findAllLendHistory() {
		// 実行するSQL文を文字列として事前に設定
		final String SQL = "SELECT * FROM BOOKS INNER JOIN LEND ON USER_ID";

		// 戻り値をセットするリストの準備
		List<BookData> bookList = new ArrayList<>();

		try (Connection conn = getConnection();
				PreparedStatement pstm = conn.prepareStatement(SQL)) {

			// クエリの実行
			ResultSet rs = pstm.executeQuery();

			// DBを一行ずつ読み込んで書籍情報をインスタンスにセット
			while (rs.next()) {
				BookData bookData = new BookData();
				bookData.setTitle(rs.getString(1));         // 書籍タイトル
				bookData.setAuthor(rs.getString(2));        // 著者
				bookData.setPublishedDate(rs.getString(3)); // 出版日
				bookData.setPublisher(rs.getString(4));     // 出版社
				bookData.setDescription(rs.getString(5));   // 書籍概要
				bookData.setImageLinks(rs.getString(6));    // 表紙画像リンク
				bookData.setIsbn(rs.getString(7));          // ISBN
				bookData.setPurchaseDate(rs.getString(8));  // 購入日

				// インスタンスにセットした情報をリストに格納
				bookList.add(bookData);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bookList;
	}

	/**
	 * ログイン中のユーザーの貸出中の書籍一覧
	 * @param userId
	 * @return List ログイン中のユーザーへ貸出中の書籍データを格納したArrayList
	 */
	public List<BookData> findMyLendingBooks(int userId){
		// 実行するSQL文を文字列として事前に設定
		final String SQL = "SELECT * FROM BOOKS INNER JOIN LEND ON USER_ID =" + userId;

		// 戻り値をセットするリストの準備
		List<BookData> bookList = new ArrayList<>();

		try (Connection conn = getConnection();
				PreparedStatement pstm = conn.prepareStatement(SQL)) {

			// クエリの実行
			ResultSet rs = pstm.executeQuery();

			// DBを一行ずつ読み込んで書籍情報をインスタンスにセット
			while (rs.next()) {
				BookData bookData = new BookData();
				bookData.setTitle(rs.getString(1));         // 書籍タイトル
				bookData.setAuthor(rs.getString(2));        // 著者
				bookData.setPublishedDate(rs.getString(3)); // 出版日
				bookData.setPublisher(rs.getString(4));     // 出版社
				bookData.setDescription(rs.getString(5));   // 書籍概要
				bookData.setImageLinks(rs.getString(6));    // 表紙画像リンク
				bookData.setIsbn(rs.getString(7));          // ISBN
				bookData.setPurchaseDate(rs.getString(8));  // 購入日

				// インスタンスにセットした情報をリストに格納
				bookList.add(bookData);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bookList;
	}

	/**
	 * 返却された書籍のlendテーブルに返却日を追加する
	 * @param lendId
	 * @param date
	 * @return boolean
	 */
	public boolean setRetrunDate(int lendId, String date) {
		// 実行するSQL文を文字列として事前に設定
		final String SQL = "UPDATE LEND SET RETURN_DATE =" + date + "WHERE LEND_ID =" + lendId;

		try (Connection conn = getConnection();
				PreparedStatement pstm = conn.prepareStatement(SQL)) {

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
