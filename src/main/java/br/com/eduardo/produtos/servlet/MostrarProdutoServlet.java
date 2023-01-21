package br.com.eduardo.produtos.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.eduardo.produtos.modelos.BancoDeDados;
import br.com.eduardo.produtos.modelos.Produto;


@WebServlet("/mostrarProduto")
public class MostrarProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("id"));
		Produto produto = BancoDeDados.getProdutoById(id);
		
		request.setAttribute("produto", produto);
		RequestDispatcher rd = request.getRequestDispatcher("/mostraProduto.jsp");
		rd.forward(request, response);
		
	}

}
