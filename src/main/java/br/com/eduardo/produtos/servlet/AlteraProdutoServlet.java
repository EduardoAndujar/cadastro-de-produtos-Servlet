package br.com.eduardo.produtos.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.eduardo.produtos.modelos.BancoDeDados;

@WebServlet("/alteraProduto")
public class AlteraProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Integer id = Integer.parseInt(request.getParameter("id"));
		String novaDescricao = request.getParameter("descricao");
		Integer novaQuantidade = Integer.parseInt(request.getParameter("quantidade"));
		Double novoValorUnit = this.formatarDouble(request.getParameter("valorUnit"));
		
		BancoDeDados.alteraProdutoById(id, novaDescricao, novaQuantidade, novoValorUnit);
		
		response.sendRedirect("listaProdutos");
		
	}
	
	private Double formatarDouble(String string) {
		
		string = string. replaceAll("[\\D]", "");
		
		return Double.parseDouble(string) / 100;
	}

	
}
