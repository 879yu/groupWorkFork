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
import javax.servlet.http.HttpSession;

import model.BookData;
import model.BookLendDAO;
import model.BookLendData;
import model.LendDAO;
import model.User;


@WebServlet("/BookLendServlet")
public class BookLendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final HttpSession User = null;


	/**
	 *
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String forwardPass;

		// 検索キーワードの取得
		String keyword=request.getParameter("keyword");
		String radioButton=request.getParameter("radioButton");
		// 貸出中を表示するためのパラメータ
		String str=request.getParameter("");

		if(keyword!=null && radioButton!=null) {
			// 検索用DAOにキーワードを渡す
			List<BookLendData> bookLendList=new ArrayList<>();
			bookLendList=SearchBookDAO.searchBook(keyword, radioButton);
			request.setAttribute("bookList",bookLendList);
			forwardPass="/WEB-INF/jsp/mypage.jsp";

		}else if(str!=null) {
			// 貸出中表示
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("user");
			int userId = user.getUserId();
			BookLendDAO bookLendDAO=new BookLendDAO();
			List<BookLendData> bookLendList = new ArrayList<>();
			bookLendList = bookLendDAO.findMyLendingBooks(userId);
			request.setAttribute("bookLendList", bookLendList);
			forwardPass="/WEB-INF/jsp/borrowing.jsp";
		}else if() {
			// 人気順に表示
			List<BookData> bookList=new ArrayList<>();
			LendDAO lendDAO=new LendDAO();
			bookList=lendDAO.sortBooks();
			request.setAttribute("bookList", bookList);
			forwardPass="/WEB-INF/jsp/lendRanking/jsp";
		}
		RequestDispatcher dsp=request.getRequestDispatcher(forwardPass);
		dsp.forward(request,response);

		// ２週間以上経った本を表示
	}

	/**
	 *
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	}

}