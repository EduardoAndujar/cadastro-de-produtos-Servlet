package br.com.eduardo.produtos.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.eduardo.produtos.modelos.BancoDeDados;

@WebServlet("/removeProduto")
public class RemoveProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	Integer id = Integer.parseInt(request.getParameter("id"));
    	BancoDeDados.removeProdutoByID(id);
    	
    	response.sendRedirect("listaProdutos");
    	
    }

}
