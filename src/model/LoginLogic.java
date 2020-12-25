package model;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginLogic {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// idとpasswordを取得
		request.setCharacterEncoding("utf-8");
		int userId = Integer.parseInt(request.getParameter("user_id"));
		String password = request.getParameter("password");

		// 取得したログイン情報をLoginLogicに渡す
		Login login = new Login(userId, password);

		// Usersテーブルの検索
		UserDAO userDAO = new UserDAO();
		User user = new User();
		user = userDAO.findByLogin(login);

		String forwardPass;
		if (user == null) {
			forwardPass = "/WEB-INF/jsp/fail.jsp";
		} else if (user.getUserId() == 0) {
			forwardPass = "/WEB-INF/jsp/admin.jsp";
		} else {
			forwardPass = "/WEB-INF/jsp/mypage.jsp";
			// 登録書籍一覧の表示
			BookLendDAO bookLendDAO = new BookLendDAO();
			List<BookLendData> bookLendList = new ArrayList<>();
			bookLendList = bookLendDAO.findAllLendingData();
			request.setAttribute("bookLendList", bookLendList);

		}

		// セッションスコープの利用開始
		HttpSession session = request.getSession();

		// 取得したArrayListをセッションスコープに保存
		session.setAttribute("user", user);

		RequestDispatcher dsp = request.getRequestDispatcher(forwardPass);
		dsp.forward(request, response);
	}

}