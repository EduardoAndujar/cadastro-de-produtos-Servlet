<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/home" var="linkHome" />
<c:url value="/formulario" var="linkFormsProduto" />
<c:url value="/listaProdutos" var="linkListaProdutos" />

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
        	<h1 class="titulo-principal">Projeto</h1>
        	<div class="texto-main">
	        	<p>Projeto que visa a simula��o de um sistema de cadastro de materiais em geral para uma banco de dados utilizando Servlets. O objetivo foi apenas praticar os conceitos de Servlet em Java, dessa forma, simulou-se um banco de dados na classe 'BancoDeDados' da pr�pria aplica��o, ou seja, � reinicializada sempre que o programa � reiniciado. Para a executar da aplica��o foi utilizado o container Apache Tomcat de vers�o 9.0.69.</p>
	        	<br>
	        	<p>Para a p�gina, foram utilizados as linguagens de marca��o HTML e CSS, bem como a linguagem de programa��o JavaScript para fazer a mascara de moeda brasileira no input de pre�o unit�rio. Vale ressaltar que para a utiliza��o da biblioteca JSTL (Java Standard Tag Library) as p�ginas Web s�o da extens�o '.jsp' (Java Server Pages).</p>
        	</div>
        </main>

        <footer>
	         	<a href="https://github.com/EduardoAndujar"><img alt="github logo" src="./resources/img/github-mark.png"></a>
	         	<a href="https://www.linkedin.com/in/eduardo-andujar/"><img alt="Linkedin logo" src="./resources/img/LI-In-Bug.png"></a>
        </footer>
    </body>
</html>
