<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/home" var="linkHome" />
<c:url value="/formulario" var="linkFormsProduto" />
<c:url value="/listaProdutos" var="linkListaProdutos" />
<c:url value="/alteraProduto" var="linkNovoProduto" />
<fmt:setLocale value="pt-BR"/>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link type="text/css" rel="stylesheet" href="./resources/css/reset.css" />
        <link type="text/css" rel="stylesheet" href="./resources/css/style.css" />
        <title>Cadastro de materiais</title>
    </head>
    <body>
        <header>
            <a id="logo-nav" href="${linkHome}">
                <img src="./resources/img/minhaLogo.png" alt="whatever" />
            </a>
            <nav>
                <a href="${linkFormsProduto}"> Cadastrar produto</a>
                <a href="${linkListaProdutos}"> Produtos cadastrados</a>
            </nav>
        </header>

        <main>
	        <div class="div-geral">
		        <p class="titulo-principal"> Alteração do produto #${produto.id}</p>
		        <form action="${linkNovoProduto}?id=${produto.id}" method="post">
		            <div class="div-descricao">
		                <label for="idDescricao">Descrição do produto</label>
		                <input id="idDescricao" type="text" name="descricao" value="${produto.descricao}" required/>
		            </div>
		            <div class="div-quant-valor">
			            <div>
			                <label for="idQuantidade">Quantidade</label>
			                <input id="idQuantidade" type="number" name="quantidade" min="0" value="${produto.quantidade}" required/>
			            </div>
			            <div>
			                <label for="idValorUnit">Valor Unitário</label>
			                <input id="idValorUnit" type="text" onInput="mascaraMoeda(event);" name="valorUnit" value="<fmt:formatNumber value="${produto.precoUnitario}" minFractionDigits="2" maxFractionDigits="2" type="currency"/>" required/>
			            </div>
			            <div>
			                <input id="id-botao" type="submit" value="Alterar"/>
			            </div>
		            </div>
		    	</form>
	        </div>
        </main>

         <footer>
	         	<a href="https://github.com/EduardoAndujar"><img alt="github logo" src="./resources/img/github-mark.png"></a>
	         	<a href="https://www.linkedin.com/in/eduardo-andujar/"><img alt="Linkedin logo" src="./resources/img/LI-In-Bug.png"></a>
        </footer>
        
        <script type="text/javascript" src="./resources/js/script.js"></script>
        
    </body>
</html>
