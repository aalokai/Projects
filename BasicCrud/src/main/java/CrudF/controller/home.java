package CrudF.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import CrudF.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/home")
public class home extends HttpServlet {
	private static final long serialVersionUID = 1L;

  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String page=request.getParameter("page").toLowerCase();
		switch (page) {
		case "home": {
			request.setAttribute("title", "Homepage");
			request.getRequestDispatcher("index.jsp").forward(request,response);
			break;
		}
		
		default:
			request.setAttribute("title", "Error page");
			request.getRequestDispatcher("error.jsp").forward(request,response);
			break;
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
