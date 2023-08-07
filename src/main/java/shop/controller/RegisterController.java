package shop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shop.model.service.UserService;
import shop.model.vo.User;

/**
 * Servlet implementation class registerController
 */
@WebServlet("/user/register.do")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/user/register.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("user_id");
		String userPw = request.getParameter("user_pw");
		String userName = request.getParameter("name");
		String userNickName = request.getParameter("nickname");
		String userEmail = request.getParameter("email");
		String userPhone = request.getParameter("tel");
		String userGender = request.getParameter("gender");
		
		User user = new User(userId, userPw, userName, userNickName, userEmail, userPhone, userGender);
		
		UserService service = new UserService();
		// INSERT INTO USER_TBL VALUES(?,?,?,?,?,?,?);
		int result = service.insertUser(user);
		if(result > 0) {
			request.setAttribute("msg", "회원가입 성공했습니다.");
			request.setAttribute("url", "/WEB-INF/views/user/loginPage.jsp");
			request.getRequestDispatcher("/WEB-INF/views/common/serviceSuccess.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/WEB-INF/views/common/serviceFailed.jsp").forward(request, response);
		}
	}

}
