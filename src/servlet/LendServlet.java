package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import model.LendData;
import model.User;

@WebServlet("/LendServlet")
public class LendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * 貸出履歴表示、貸出・返却処理
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// ボタン（？）の判別
		// aタグ使うのかbuttonタグ使うのかによって修正します
		String button=request.getParameter("button");

		LendDAO lendDAO=new LendDAO();
		RequestDispatcher dsp;
		Date date;
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy/MM/dd");


		switch(button) {
		// 履歴ボタン
		case "history":
			// 管理者か従業員か判別
			String disc=request.getParameter("disc");
			List<LendData> lendList = new ArrayList<>();

			switch(disc) {
			// 全従業員の履歴表示
			case "admin":
				lendList=lendDAO.findAllLendHistory();
				break;

			// 個人の履歴表示
			case "employee":
				// userIdの取得
				HttpSession session=request.getSession();
				User user=(User) session.getAttribute("user");
				int userId=user.getUserId();
				lendList=lendDAO.findMyLendBooks(userId);

			}

			request.setAttribute("lendList", lendList);
			dsp=request.getRequestDispatcher("/WEB-INF/jsp/lend_borrow.jsp.jsp");

			break;

		// 貸出中ボタン
		case "lending":
			List<BookData> bookList=new ArrayList<>();
			bookList=lendDAO.findMyLendingBooks();
			dsp=request.getRequestDispatcher("/WEB-INF/jsp/貸出中一覧.jsp");
			break;

		// 貸出ボタン（途中）
		case "lend":
			// 貸出日（今日）の日付を取得
			date=new Date();
			String lendDate=sdf.format(date);

			break;

		// 返却ボタン（途中）
		case "return":
			// jspからLendテーブルのidを取得
			// わからない
			int lendId=(int)request.getAttribute("lendId");

			// 返却日（今日）の日付を取得
			date=new Date();
    		String returnDate=sdf.format(date);

			boolean isReturn=lendDAO.setRetrunDate(lendId, returnDate);
			if(isReturn) {
				dsp=request.getRequestDispatcher("/WEB-INF/jsp/success.jsp");

			}else {
				dsp=request.getRequestDispatcher("/WEB-INF/jsp/fail.jsp");

			}
		}

		dsp.forward(request, response);


	}

//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//	}

}
