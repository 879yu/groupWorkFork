package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Login;
import model.LoginLogic;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * トップページからログイン画面に遷移
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dsp=request.getRequestDispatcher("/WEB-INF/jsp/login.jsp");
		dsp.forward(request,response);
	}

	/**
	 * フォームのログインボタンで成功画面にフォワード/失敗でリダイレクト
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// idとpasswordを取得
		int userId=Integer.parseInt(request.getParameter("user_id"));
		String password=request.getParameter("password");

		// Loginモデルのインスタンスを生成
		Login login=new Login(userId, password);

		// LoginLogicのメソッドを実行
		LoginLogic loginLogic=new LoginLogic();
		boolean isLogin =loginLogic.execute(login);

		// if文でtrue/false分岐
		String forwardPass;
		if(isLogin) {
//			// AccountDAOのメソッドでuserテーブルを検索
//			AccountDAO 変数名2=new AccountDAO();


			// 正しいデータがあればAccountモデルのインスタンスを生成
//			User user=new User(login);

			// accountをセッションスコープに保存

			// 管理者かどうかの判別
			// 管理者ページに遷移
			forwardPass="/WEB-INF/jsp/admin.jsp";

			// 従業員用マイページに遷移
//			forwardPass="/WEB-INF/jsp/mypage.jsp";

		}else {
			forwardPass="/WEB-INF/jsp/fail.jsp";
		}
		RequestDispatcher dsp=request.getRequestDispatcher(forwardPass);
		dsp.forward(request,response);

	}

}
