package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookDAO extends ConnectionDAO{

	public List<BookData> findAllBooks() {
		// 実行するSQL文を文字列として事前に設定
				final String SQL = "SELECT * FROM BOOKS";

				// 戻り値をセットするリストの準備
				List<BookData> bookList = new ArrayList<>();

				try (Connection conn = getConnection();
						PreparedStatement pstm = conn.prepareStatement(SQL)) {

					// クエリの実行
					ResultSet rs = pstm.executeQuery();

					// DBを一行ずつ読み込んで本情報をインスタンスにセット
					while (rs.next()) {
						BookData bookData = new BookData();
						bookData.setTitle(rs.getString(1));
						bookData.setAuthor(rs.getString(2));
						bookData.setPublishedDate(rs.getString(3));
						bookData.setPublisher(rs.getString(4));
						bookData.setDescription(rs.getString(5));
						bookData.setImg(rs.getString(6));

						// インスタンスにセットした情報をリストに格納
						bookList.add(bookData);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
				return bookList;

	}

}
