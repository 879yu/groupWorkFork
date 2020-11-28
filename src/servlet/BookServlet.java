package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AddBookLogic;
import model.BookDAO;
import model.BookData;


@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 *
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 登録書籍一覧の表示
		List<BookData> bookList=new ArrayList<>();
		BookDAO bookDAO=new BookDAO();
		bookList=bookDAO.findAllBooks();
		request.setAttribute("bookList", bookList);
		RequestDispatcher dsp=request.getRequestDispatcher("/書籍一覧.jsp");
		dsp.forward(request, response);

	}

	/**
	 *
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 書籍の登録
		AddBookLogic addBookLogic=new AddBookLogic();
		String forwardPass=addBookLogic.add(request, response);
		RequestDispatcher dsp=request.getRequestDispatcher(forwardPass);
		dsp.forward(request, response);

	}

}
