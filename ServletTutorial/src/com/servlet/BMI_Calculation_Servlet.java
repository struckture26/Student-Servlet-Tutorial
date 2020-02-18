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
 * Servlet implementation class BMI_Calculation
 */
@WebServlet("/BMI_Calculation_Servlet")
public class BMI_Calculation_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BMI_Calculation_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//Getting the height and weight from the BMI form page
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		
		//Formula for counting BMI
		
		double bmi = (703 * (Integer.parseInt(weight))) / (Math.pow(Integer.parseInt(height), 2));
		
		//Get the student object from the session and update the BMI
		
		HttpSession session = request.getSession(true);
		Student student = (Student)session.getAttribute("student");
		student.setBmi(bmi);
		
		//Add the student value to the session object and for the user bmi page
		
		session.setAttribute("student", student);
		RequestDispatcher rs = request.getRequestDispatcher("BMIFormPage.jsp");
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
