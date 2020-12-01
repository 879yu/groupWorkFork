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
		// 貸出回数が多い順に表示
		List<BookData> bookList=new ArrayList<>();
		LendDAO lendDAO=new LendDAO();
		bookList=lendDAO.sortBooks();
		request.setAttribute("bookList",bookList);
		// 従業員か管理者かの判別
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		int userId=user.getUserId();
		String forwardPass;
		if(userId==0) {
			// 管理者用
			// とりあえず全書籍一覧に飛ばしてます
			forwardPass="/WEB-INF/jsp/registered_book.jsp";
		}else {
			forwardPass="/WEB-INF/jsp/mypage.jsp";
		}
		// 従業員用
		RequestDispatcher dsp=request.getRequestDispatcher(forwardPass);
		dsp.forward(request,response);

		// ２週間以上経った本を表示
	}

	/**
	 * 検索機能
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 検索キーワードの取得
//		String str=request.getParameter("");
		// 検索用DAOにキーワードを渡す
//		List<> bookList=new ArrayList<>();
//		bookList=DAO.メソッド名();
//		request.setAttribute("bookList",bookList);
//		RequestDispatcher dsp=request.getRequestDispatcher();
//		dsp.forward(request,response);

	}

}