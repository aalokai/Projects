package CrudF.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import CrudF.model.UsersModel;
import CrudF.entity.User;


@WebServlet("/site")
public class Site extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page=request.getParameter("page").toLowerCase();
		switch (page) {
		case "listusers": {
			listUsers(request, response);
			break;
		}
		case "adduser": {
			addUser(request, response);
			break;
		}
		
		case "updateuser": {
			updateUser(request, response);
			break;
		}
		
		case "deleteuser": {
			new UsersModel().deleteUser(Integer.parseInt(request.getParameter("userid")));
			listUsers(request, response);
			break;
		}
		
		
		default:
			request.setAttribute("title", "Error page");
			request.getRequestDispatcher("error.jsp").forward(request,response);
			break;
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String form=request.getParameter("form").toLowerCase();
		switch (form) {
		case "adduseroperation": {
			User user = new User(request.getParameter("username"),request.getParameter("email"));
			new UsersModel().addUser(user);
			listUsers(request, response);
			break;
		}
		
		case "updateuseroperation": {
			User updated_user = new User(Integer.parseInt(request.getParameter("userid")),request.getParameter("username"),request.getParameter("email"));
			new UsersModel().updateUser(updated_user);
			listUsers(request, response);
			break;
		}
		
		default:
			request.setAttribute("title", "Error page");
			request.getRequestDispatcher("error.jsp").forward(request,response);
			break;
		
		
		}
		
	}
	protected void listUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> users=new ArrayList<>();
		users=new UsersModel().listuser();
		request.setAttribute("listusers", users);
		request.setAttribute("title", "List Users");
		
		request.getRequestDispatcher("listusers.jsp").forward(request,response);
		
	}
	
	protected void addUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("title", "Add user");
		request.getRequestDispatcher("adduser.jsp").forward(request,response);
	}
	
	protected void updateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("title", "Update user");
		request.getRequestDispatcher("updateuser.jsp").forward(request,response);
	}
	
	

}
