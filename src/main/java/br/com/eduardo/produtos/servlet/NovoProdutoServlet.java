package br.com.eduardo.produtos.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.eduardo.produtos.modelos.BancoDeDados;
import br.com.eduardo.produtos.modelos.Produto;

@WebServlet("/novoProduto" )
public class NovoProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String descricao = request.getParameter("descricao");
		Integer quantidade = Integer.parseInt(request.getParameter("quantidade"));
		Double valorUnitario = this.formatarDouble(request.getParameter("valorUnit"));
		
		BancoDeDados bancoDeDados = new BancoDeDados();
		Produto produto = new Produto(descricao, quantidade, valorUnitario);
		bancoDeDados.adicionaProduto(produto);
		
		response.sendRedirect("listaProdutos");
	}
	
	private Double formatarDouble(String string) {
		
		string = string. replaceAll("[\\D]", "");
		
		return Double.parseDouble(string) / 100;
	}

}
