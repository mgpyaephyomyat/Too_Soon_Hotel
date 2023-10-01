package com.controller;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import com.db.*;
import com.model.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.model.ReadSheet;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/Reg")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ReadSheet rs = new ReadSheet();
		List<String> courseList = rs.getCourses();
		req.setAttribute("cl", courseList);
		RequestDispatcher RequetsDispatcherObj =req.getRequestDispatcher("/registrationform.jsp");
		RequetsDispatcherObj.forward(req, res);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String userName = request.getParameter("name");
		String Email = request.getParameter("email");
		String Course = request.getParameter("course");
		Register r = new Register(userName , Email, Course);
		RegisterCRUD rcrud = new RegisterCRUD();
		try {
			rcrud.insertRegistrationData(r);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String session = "Default";
		String schedule = "Default";
		if(Course.toLowerCase().contains("morning")) {
			session = "morning";
			schedule = "7:00 AM to 9:00 AM";
		}
		else if(Course.toLowerCase().contains("evening")) {
			session = "evening";
			schedule = "4:00 PM to 6:00 PM";
		}
		else{
			session = "afternoon";
			schedule = "1:00 PM to 3:00 PM";
		}
		String sub = "Too Soon Hotel";
		String message = "Hello! This is from Too Soon Hotel. Thank you for Accommodation to our Hotel"
				+ " Don't worry for "+ Course+"\n Since you choose to ဒုချိဒုချိ with your Gf in the "+session+" and your sleeping time is from "+schedule+" in the "+session;;
				
		SendEmail sm = new SendEmail();
		sm.send("pyaephyomyat28102004@gmail.com","xunnwexyghhejway",Email,sub,message);
		request.setAttribute("message", message);
		RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/thankyou.jsp");
		RequetsDispatcherObj.forward(request, response);
		}
	}


