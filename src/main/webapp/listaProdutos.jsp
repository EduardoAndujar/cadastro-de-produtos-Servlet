<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/home" var="linkHome" />
<c:url value="/formulario" var="linkFormsProduto" />
<c:url value="/listaProdutos" var="linkListaProdutos" />
<c:url value="/mostrarProduto" var="linkEditaProduto" />
<c:url value="/removeProduto" var="linkRemoveProduto" />
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
	            <h1 class="titulo-principal">Lista de Produtos</h1>
	            <table>
	                <tr>
	                    <td style="font-weight: bold;" class="id-celula">Id</td>
	                    <td style="font-weight: bold;" class="descricao-celula">Descriçao</td>
	                    <td style="font-weight: bold;" class="quantidade-celula">Quantidade</td>
	                    <td style="font-weight: bold;" class="precoUnit-celula">Preço unitário</td>
	                </tr>
	                <c:forEach items="${lista}" var="produto">
		                <tr>
		                    <td class="id-celula">${produto.id}</td>
		                    <td class="descricao-celula">${produto.descricao}</td>
		                    <td class="quantidade-celula">${produto.quantidade}</td>
		                    <td class="precoUnit-celula"><fmt:formatNumber value="${produto.precoUnitario}" minFractionDigits="2" maxFractionDigits="2" type="currency"/></td>
			                <td class="link"><a href="${linkEditaProduto}?id=${produto.id}"> &#9998;</a></td>
			                <td class="link"><a href="${linkRemoveProduto}?id=${produto.id}">&#10060;</a></td>
		                </tr>
	                </c:forEach>
	            </table>
            </div>
        </main>

         <footer>
	         	<a href="https://github.com/EduardoAndujar"><img alt="github logo" src="./resources/img/github-mark.png"></a>
	         	<a href="https://www.linkedin.com/in/eduardo-andujar/"><img alt="Linkedin logo" src="./resources/img/LI-In-Bug.png"></a>
        </footer>
    </body>
</html>
