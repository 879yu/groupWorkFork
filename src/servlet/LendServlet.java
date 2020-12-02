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
import model.BookLendData;
import model.LendDAO;
import model.LendData;
import model.User;

@WebServlet("/LendServlet")
public class LendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * 貸出履歴表示、貸出・返却処理
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 呼び出し元の判別
		String disc=request.getParameter("disc");

		// 画面遷移
		String forwardPass=null;
		// 日付の取得
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		String date = sdf.format(d);

		// 従業員か管理者かの判別
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		int userId = user.getUserId();

		LendDAO lendDAO;
		List<BookData> lendList;
		List<BookLendData> bookLendList;
		int lendId;

		switch(disc) {
			case "history":	// 貸出履歴の表示
				lendDAO=new LendDAO();
				lendList=new ArrayList<>();
				if(userId==0) {
					// 全履歴表示（admin）
					lendList = lendDAO.findAllLendHistory();
				}else {
					// 個人履歴表示
					lendList = lendDAO.findMyLendHistory(userId);
				}
				request.setAttribute("lendList", lendList);
				forwardPass="/WEB-INF/jsp/borrow_return.jsp";
				break;

			case "lend":// 貸出処理
				lendDAO=new LendDAO();
				lendList=new ArrayList<>();
				// ****jspから受け取る****
				int bookId=(int)request.getAttribute("bookId");

				LendData lendData=new LendData(lendId, userId, bookId, date, null);
				boolean isLend=lendDAO.setLendData(lendData);
				if(isLend) {
					forwardPass="/WEB-INF/jsp/success.jsp";
				}else {
					forwardPass="/WEB-INF/jsp/fail.jsp";
				}
				break;

			case "return":	// 返却処理
				lendDAO=new LendDAO();
				lendList=new ArrayList<>();
				lendId = (int) request.getAttribute("lendId");
				boolean isReturn = lendDAO.setRetrunDate(lendId, date);
				if(isLend) {
					forwardPass="/WEB-INF/jsp/success.jsp";
				}else {
					forwardPass="/WEB-INF/jsp/fail.jsp";
				}

	RequestDispatcher dsp = request.getRequestDispatcher(forwardPass);
	dsp.forward(request,response);

}}

//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//	}

}