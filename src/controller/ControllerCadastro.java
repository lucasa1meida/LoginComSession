package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import entity.Login;
import persistence.LoginDao;


@WebServlet("/ControllerCadastro")
public class ControllerCadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Login l = new Login(request.getParameter("email"), request.getParameter("senha"));
		LoginDao dao = null;
		try {
			dao = new LoginDao();
			dao.create(l);
			request.setAttribute("msg", "Dados Gravados, vá para a página de login!");
		}catch(Exception ex) {
			request.setAttribute("msg", "Erro: " + ex.getMessage());
		}		
		request.getRequestDispatcher("cadastrar.jsp").forward(request, response);
	}

}
