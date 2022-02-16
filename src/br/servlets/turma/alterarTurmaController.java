package br.servlets.turma;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Aluno;
import Model.Professor;


@WebServlet("/alterarTurmaController")
public class alterarTurmaController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

    public alterarTurmaController() {
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


		int idprofessor = Integer.parseInt(request.getParameter("idprofessor"));
		String nome = request.getParameter("nome");
		String dataNascimento = request.getParameter("datanascimento");
		String estado = request.getParameter("estado");
		String cidade = request.getParameter("cidade");
		String estadoCivil = request.getParameter("estadocivil");
		String cpf = request.getParameter("cpf");
		

		Professor professor = new Professor(idprofessor, nome, nome + "@gbi.com", cpf, dataNascimento, estado, cidade, estadoCivil, true);
		professor.alterarDados();
		
		new Thread();
		try {
			Thread.sleep(1300);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		response.sendRedirect("professor/ConsultarProfessor.jsp");
	}
}
