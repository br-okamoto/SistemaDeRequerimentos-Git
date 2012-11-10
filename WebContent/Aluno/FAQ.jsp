<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mackenzie - Sistema de Requerimentos - Perguntas Frequentes</title>
<link rel="stylesheet" type="text/css" href="/SistemaDeRequerimentos/css/styles.css" />
<link rel="shortcut icon" type="image/x-icon" href="/SistemaDeRequerimentos/favicon.ico">
<script type="text/javascript" src="/SistemaDeRequerimentos/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="/SistemaDeRequerimentos/js/faq.js"></script>
<%
	if (session.getAttribute("sessionUsu_Tipo") == null) {
		session.setAttribute("loginErro","Acesso negado ou sua sessão expirou.<br/>Por favor, acesse novamente.");
		response.sendRedirect("../index.jsp");
	}
%>
</head>

<body>
	<!---------- Container ---------->
    <div id="container">
    	<!---------- Header ---------->
        <c:import url="/includes/headerAluno.jsp" />
        <!---------- Conteúdo ---------->
        <div id="content">
        	<div id="breadcrumb">
            	<img src="/SistemaDeRequerimentos/images/breadcrumb-bullet.png" alt=""/><h1>Home</h1>
                <span>Você está em: </span><a href="/SistemaDeRequerimentos/Aluno/Home.jsp">Home</a> &gt; Perguntas Frequentes
            </div>
            <div id="content-body">
            	<!-- FAQ -->
                <div class="faq">
                	<a id="pergunta1" href="javascript:showonlyone('resposta1');" >1. Como faço um requerimento?</a>
                	<div id="resposta1" class="resposta">resposta 1 resposta 1 resposta 1 resposta 1 resposta 1 resposta 1 resposta 1 resposta 1resposta 1 resposta 1 resposta 1 resposta 1</div>
                </div>
                <div class="faq">
                	<a id="pergunta2" href="javascript:showonlyone('resposta2');" >2. Quais requerimentos posso fazer?</a>
                	<div id="resposta2" class="resposta">resposta 2 resposta 2 resposta 2 resposta 2</div>
                </div>
                <div class="faq">
                	<a id="pergunta3" href="javascript:showonlyone('resposta3');" >3. Quantos requerimentos posso ter ao mesmo tempo?</a>
                	<div id="resposta3" class="resposta">resposta 3 resposta 3 resposta 3 resposta 3 resposta 3 resposta 3 resposta 3 resposta 3</div>
                </div>
                <div class="faq">
                	<a id="pergunta4" href="javascript:showonlyone('resposta4');" >4. Quanto tempo leva para um requerimento ser processado?</a>
                	<div id="resposta4" class="resposta">resposta 4 resposta 4 resposta 4 resposta 4</div>
                </div>
                <div class="faq">
                	<a id="pergunta5" href="javascript:showonlyone('resposta5');" >5. Esqueci o número do protocolo, como faço para ver meu requerimento?</a>
                	<div id="resposta5" class="resposta">resposta 5 resposta 5 resposta 5 resposta 5 resposta 5 resposta 5</div>
                </div>
            </div>
        </div>
    </div>
    
    <!---------- Rodapé ---------->
    <c:import url="/includes/footerAluno.jsp" />
</body>
</html>