package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Student;

/**
 * Servlet implementation class GPA_Servlet
 */
@WebServlet("/GPA_Servlet")
public class GPA_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GPA_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Getting the exam grade that was submitted
		
		String grade1 = request.getParameter("gradeOne");
		String grade2 = request.getParameter("gradeTwo");
		String grade3 = request.getParameter("gradeThree");
		
		//Formula for counting GPA
		
		int credit = 12;
		double gpa = ((Integer.parseInt(grade1)*credit) + (Integer.parseInt(grade2)*credit) 
						+ ((Integer.parseInt(grade3)*credit)))/45;
		
		//get the student object from the session and update the GPA
		
		HttpSession session = request.getSession(true);
		Student student = (Student)session.getAttribute("student");
		student.setGpa(gpa);
		
		//Add the student value to the session object and for the user to the account page
		
		session.setAttribute("student", student);
		RequestDispatcher rs = request.getRequestDispatcher("account.jsp");
		rs.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
