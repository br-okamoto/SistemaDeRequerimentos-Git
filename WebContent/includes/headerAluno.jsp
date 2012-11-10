<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>

<div id="header">
            <div id="topo">
                <a href="/SistemaDeRequerimentos/Aluno/Home.jsp"><img src="/SistemaDeRequerimentos/images/cabecalho.png" alt="Logo Universidade Presbiteriana Mackenzie" /></a>
            </div>
            <div id="sistema">
                <a href="/SistemaDeRequerimentos/Aluno/Home.jsp"><img src="/SistemaDeRequerimentos/images/Sistema-de-Requerimentos.png" alt="Sistema de Requerimentos" /></a>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="/SistemaDeRequerimentos/Aluno/Home.jsp"><img src="/SistemaDeRequerimentos/images/btn-home.png" alt="Home"/></a></li>
                    <li><a href="/SistemaDeRequerimentos/Aluno/MeusRequerimentos.jsp"><img src="/SistemaDeRequerimentos/images/btn-meusRequerimentos.png" alt="Meus Requerimentos"/></a></li>
                    <li><a href="/SistemaDeRequerimentos/Aluno/FAQ.jsp"><img src="/SistemaDeRequerimentos/images/btn-faq.png" alt="Perguntas Frequentes"/></a></li>
                    <li><a href="/SistemaDeRequerimentos/Aluno/FaleConosco.jsp"><img src="/SistemaDeRequerimentos/images/btn-faleConosco.png" alt="Fale Conosco"/></a></li>
                    <li><a href="/SistemaDeRequerimentos/Aluno/MeuPerfil.jsp"><img src="/SistemaDeRequerimentos/images/btn-meuPerfil.png" alt="Meu Perfil"/></a></li>
                </ul>
            </div>
            <div id="usuario">
                <span><%= session.getAttribute("sessionUsu_Nome") %> - <%= session.getAttribute("sessionUsu_Cod") %></span>
            </div>
        </div>

</body>
</html>