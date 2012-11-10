<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mackenzie - Sistema de Requerimentos - Home</title>
<link rel="stylesheet" type="text/css" href="/SistemaDeRequerimentos//css/styles.css" />
<link rel="shortcut icon" type="image/x-icon" href="/SistemaDeRequerimentos/favicon.ico">
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
                <span>Você está em: </span>Home
            </div>
            <div id="content-body">
            	<!-- Home -->
                <span class="novoRequerimento">Novo Requerimento</span>
                <ul>
                	<li><a href="/SistemaDeRequerimentos/Aluno/Requerimentos/ProvaSubstitutiva.jsp">Prova Substitutiva</a></li>
                    <li><a href="/SistemaDeRequerimentos/Aluno/Requerimentos/VerificacaoDeFaltas.jsp">Verificação de Falta(s) da(s) Disciplina(s)</a></li>
                    <li><a href="/SistemaDeRequerimentos/Aluno/Requerimentos/DispensaDeDisciplinas.jsp">Dispensa de Disciplinas</a></li>
                    <li><a href="/SistemaDeRequerimentos/Aluno/Requerimentos/DilacaoDePrazo.jsp">Dilação de Prazo</a></li>
                    <li><a href="/SistemaDeRequerimentos/Aluno/Requerimentos/ProtocoloDeTGI.jsp">TGI</a></li>
                    <li><a href="/SistemaDeRequerimentos/Aluno/Requerimentos/Reclamacao.jsp">Reclamação</a></li>
                    <li><a href="/SistemaDeRequerimentos/Aluno/Requerimentos/Sugestao.jsp">Sugestão</a></li>
                    <li><a href="/SistemaDeRequerimentos/Aluno/Requerimentos/Trancamento.jsp">Trancamento de Matrícula</a></li>
                    <li><a href="/SistemaDeRequerimentos/Aluno/Requerimentos/Cancelamento.jsp">Cancelamento de Matrícula</a></li>
                </ul>
            </div>
        </div>
    </div>
    
    <!---------- Rodapé ---------->
    <c:import url="/includes/footerAluno.jsp" />
</body>
</html>