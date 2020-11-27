package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

		LoginLogic loginLogic=new LoginLogic();
		loginLogic.execute(request,response);

	}

}
