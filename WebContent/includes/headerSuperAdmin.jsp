<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<div id="header">
            <div id="topo">
                <a href="/SistemaDeRequerimentos/Admin/Home.jsp"><img src="/SistemaDeRequerimentos/images/cabecalho.png" alt="Logo Universidade Presbiteriana Mackenzie" /></a>
            </div>
            <div id="sistema">
                <a href="/SistemaDeRequerimentos/Admin/Home.jsp"><img src="/SistemaDeRequerimentos/images/Sistema-de-Requerimentos.png" alt="Sistema de Requerimentos" /></a>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="/SistemaDeRequerimentos/Admin/Home.jsp"><img src="/SistemaDeRequerimentos/images/btn-home.png" alt="Home"/></a></li>
                    <li><a href="/SistemaDeRequerimentos/Admin/MinhasTarefas.jsp"><img src="/SistemaDeRequerimentos/images/btn-a-minhastarefas.png" alt="Minhas Tarefas"/></a></li>
                    <li><a href="/SistemaDeRequerimentos/Admin/Relatorios/Geral.jsp"><img src="/SistemaDeRequerimentos/images/btn-a-relatorios.png" alt="Perguntas Frequentes"/></a></li>
                    <li><a href="/SistemaDeRequerimentos/Admin/Cadastrar/Aluno.jsp"><img src="/SistemaDeRequerimentos/images/btn-a-cadastrar.png" alt="Fale Conosco"/></a></li>
                </ul>
            </div>
            <div id="usuario">
                <span><%= session.getAttribute("sessionUsu_Nome") %> - <%= session.getAttribute("sessionUsu_Cod") %></span>
            </div>
        </div>
</body>
</html>