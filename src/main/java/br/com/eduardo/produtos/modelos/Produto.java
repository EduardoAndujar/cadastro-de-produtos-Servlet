package br.com.eduardo.produtos.modelos;

public class Produto {

	private String descricao;
	private Integer quantidade;
	private Double precoUnitario;
	private static Integer contadorId = 0;
	private Integer id;
	
	public Produto(String descricao, Integer quantidade, Double precoUnitario) {
		this.descricao = descricao;
		this.quantidade = quantidade;
		this.precoUnitario = precoUnitario;
		Produto.contadorId++;
		this.id = Produto.contadorId;
	}

	public String getDescricao() {
		return descricao;
	}

	public String getQuantidade() {
		return Integer.toString(this.quantidade);
	}

	public String getPrecoUnitario() {
		return Double.toString(precoUnitario);
	}

	public String getId() {
		return Integer.toString(id);
	}
	
	public Integer getIdInteger() {
		return id;
	}
	
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	public void setQuantidade(Integer quantidade) {
		this.quantidade = quantidade;
	}
	
	public void setPrecoUnitario(Double precoUnitario) {
		this.precoUnitario = precoUnitario;
	}
}
