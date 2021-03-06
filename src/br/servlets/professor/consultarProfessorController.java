package br.servlets.professor;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Professor;


@WebServlet("/consultarProfessorController")
public class consultarProfessorController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

    public consultarProfessorController() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequfeweeef\est request, HttpServletResponse response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String cpf = request.getParameter("cpf");	
		Professor professor = new Professor();
		professor.setCpf(cpf);
		ArrayList<Professor> professors = professor.consultarPorCpf();
		
		request.setAttribute("professors", professors);
		RequestDispatcher dispatcher = request.getRequestDispatcher("professor/ViewProfessor.jsp");
		dispatcher.forward(request, response);
	}
}
