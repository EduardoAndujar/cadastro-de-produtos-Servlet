# Cadastro de produtos com Servlets

# Sobre o projeto

Projeto que visa a simulação de um sistema de cadastro de materiais em geral para uma banco de dados utilizando Servlets. O objetivo foi apenas praticar os conceitos de Servlet em Java, dessa forma, simulou-se um banco de dados na classe 'BancoDeDados' da própria aplicação, ou seja, é reinicializada sempre que o programa é reiniciado. Para a executar da aplicação foi utilizado o container Apache Tomcat de versão 9.0.69.

Para a página, foram utilizados as linguagens de marcação HTML e CSS, bem como a linguagem de programação JavaScript para fazer a mascara de moeda brasileira no input de preço unitário. Também foi usado a biblioteca JSTL (Java Standard Tag Library), no qual foi usado as tags 'core' e 'fmt' para fazer o controle de fluxo e a formatação do texto. Vale ressaltar que para a utilização do JSTL as páginas Web são da extensão '.jsp' (Java Server Pages).

## Layout web
![Web 1](https://github.com/EduardoAndujar/assets/blob/main/cadastro-Servlet1.jpg)

![Web 2](https://github.com/EduardoAndujar/assets/blob/main/cadastro-Servlet2.jpg)

## Modelo conceitual
Foram utilizados diversos modelos de fluxo para o projeto. Os principais foram:

### NovoProdutoServlet
Responsável por cadastrar um novo produto a partir de um formulário e, em seguida, listar os produtos cadastrados.
![Diagrama 1](https://github.com/EduardoAndujar/assets/blob/main/DiagramaServlet1.png)

# Tecnologias utilizadas
## Back end
- Java
- Servlet's
- Apache Tomcat
## Front end
- HTML
- CSS
- JavaScript

# Como executar o projeto

Pré-requisitos: Java 17, Apache Tomcat v9.0 e Eclipse (ou outra IDE para iniciar o Servidor Tomcat)

```bash
# clonar repositório
git clone https://github.com/EduardoAndujar/cadastro-de-produtos-Servlet.git
```

## Executar no Eclipse
- Em servers, criar um servidor do tipo Tomcat v9.0 Server
- Adicionar este projeto no servidor criado (Add and Remove resources to the server)
- Iniciar o servidor (Restart the server)
- Por fim, em um navegador, acesse a página http://localhost:8080/produtos/home

# Autor

Eduardo Casarotto Andujar

https://www.linkedin.com/in/eduardo-andujar/

