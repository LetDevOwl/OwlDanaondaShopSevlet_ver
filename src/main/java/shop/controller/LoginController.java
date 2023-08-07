package shop.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shop.model.service.UserService;
import shop.model.vo.User;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/user/login.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String prevUrl = request.getHeader("referer");
		request.setAttribute("prevUrl", prevUrl);
		request.getRequestDispatcher("/WEB-INF/views/user/loginPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("user_id");
		String userPw = request.getParameter("user_pw");
		String prevUrl = request.getParameter("prev_url");
		User user = new User(userId, userPw);
		
		// SELECT * FROM MEMBER_TBL WHERE MEMBER_ID = ? AND MEMBER_PW = ?
		UserService service = new UserService();
		User uOne = service.selectCheckLogin(user);
		if(uOne != null) {
//			String prevUrl = request.getHeader("referer");
			HttpSession session = request.getSession();
			session.setAttribute("userId", uOne.getUserId());
			session.setAttribute("userNickName", uOne.getUserNickName());
			request.setAttribute("msg", "로그인 성공!");
			request.setAttribute("url", prevUrl);
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/serviceSuccess.jsp");
			view.forward(request, response);
		}else {
			request.setAttribute("msg", "로그인 되지 않았습니다.");
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/serviceFailed.jsp");
			view.forward(request, response); // 누락 주의
		}
	}

}
