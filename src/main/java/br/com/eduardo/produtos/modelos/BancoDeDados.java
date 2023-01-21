package br.com.eduardo.produtos.modelos;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class BancoDeDados {

	private static List<Produto> produtos = new ArrayList<>();
	
	static {
		produtos.add(new Produto("Chave de fenda", 15, 25.20d));
		produtos.add(new Produto("Alicate", 4, 42.60d));
		produtos.add(new Produto("Tubo CPVC SCH40 - 1.1/2 pol - 6m", 6, 154.26d));		
	}
	
	public void adicionaProduto(Produto produto) {
		produtos.add(produto);
	}
	
	public static List<Produto> getProdutos() {
		return produtos;
	}
	
	public static void removeProdutoByID(Integer id) {
		Iterator<Produto> iterator = produtos.iterator();
		
		while(iterator.hasNext()) {
			Produto produto = iterator.next();
			if (produto.getIdInteger() == id) {
				iterator.remove();
			}
		}
	}
	
	public static Produto getProdutoById(Integer id) {
		for (Produto produto : produtos) {
			if (produto.getIdInteger() == id) {
				return produto;
			}
		}
		
		return null;
	}

	public static void alteraProdutoById(Integer id, String descricao, Integer quantidade, Double valorUnit) {

		for (Produto produto : produtos) {
			if (produto.getIdInteger() == id) {
				produto.setDescricao(descricao);
				produto.setQuantidade(quantidade);
				produto.setPrecoUnitario(valorUnit);
			}
		}
	}
	
}
