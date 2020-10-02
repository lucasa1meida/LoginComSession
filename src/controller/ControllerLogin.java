package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Login;
import persistence.LoginDao;

@WebServlet("/ControllerLogin")
public class ControllerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	HttpSession session;	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession(true);
		Login login = new Login(request.getParameter("email"), request.getParameter("senha"));
		LoginDao dao = null;
		try {
			dao = new LoginDao();
			Login resp = dao.findByEmailAndId(login);
			if(resp!=null){
				session.setAttribute("login", resp);
				response.sendRedirect("login.jsp");
			}else {
				session.setAttribute("msg", "Erro, revise seu email ou sua senha!");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}catch(Exception ex) {
			 request.setAttribute("msg","Error: " + ex.getMessage());
	    	 request.getRequestDispatcher("login.jsp").forward(request, response);
		    }
		}

}
