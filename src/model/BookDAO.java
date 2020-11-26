package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookDAO extends ConnectionDAO{

	public List<Book> findAllBooks() {
		// 実行するSQL文を文字列として事前に設定
				final String SQL = "SELECT * FROM BOOKS;";

				// 戻り値をセットするリストの準備
				List<Book> bookList = new ArrayList<>();

				try (Connection conn = getConn();
						PreparedStatement pstm = conn.prepareStatement(SQL)) {

					// クエリの実行
					ResultSet rs = pstm.executeQuery();

					// DBを一行ずつ読み込んで本情報をインスタンスにセット
					while (rs.next()) {
						Book book = new Book();
						book.setBookId(rs.getInt(1));
						book.setBookTitle(rs.getString(2));
						book.setBuyDate(rs.getString(3));
						book.setIsbn(rs.getInt(3));

						// インスタンスにセットした情報をリストに格納
						bookList.add(book);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
				return bookList;

	}

}
