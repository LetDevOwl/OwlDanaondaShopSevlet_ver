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
 * Servlet implementation class UpdateController
 */
@WebServlet("/user/update.do")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("user_id");
		String userPw = request.getParameter("user_pw");
		String userEmail = request.getParameter("email");
		String userNickName = request.getParameter("nickname");
		String userName = request.getParameter("name");
		String userPhone = request.getParameter("tel");
		String userGender = request.getParameter("gender");
		UserService service = new UserService();
		User user = new User(userId, userPw, userName, userNickName, userEmail, userPhone, userGender);
		int result = service.updateUser(user);
		if(result > 0) {
			response.sendRedirect("/index.jsp");
		}else {
			request.setAttribute("msg", "회원 수정이 완료되지 않았습니다.");
			request.getRequestDispatcher("/WEB-INF/views/common/serviceFailed.jsp").forward(request, response);
		}
	}

}
