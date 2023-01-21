package br.com.eduardo.produtos.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.eduardo.produtos.modelos.BancoDeDados;

@WebServlet("/listaProdutos")
public class ListaProdutosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("lista", BancoDeDados.getProdutos());
		RequestDispatcher rd = request.getRequestDispatcher("listaProdutos.jsp");
		rd.forward(request, response);
		
	}

}
