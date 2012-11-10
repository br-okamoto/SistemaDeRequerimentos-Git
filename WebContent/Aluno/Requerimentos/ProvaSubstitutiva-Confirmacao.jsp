<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Locale" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mackenzie - Sistema de Requerimentos - Novo Requerimento - Prova Substitutiva - Confirmação</title>
<link rel="stylesheet" type="text/css" href="/SistemaDeRequerimentos/css/styles.css" />
<%
	session.setAttribute("sessionPS_txtDisciplina", request.getParameter("txtDisciplina"));
	session.setAttribute("sessionPS_txtProf", request.getParameter("txtProf"));
	session.setAttribute("sessionPS_txtEtapa", request.getParameter("txtEtapa"));
	session.setAttribute("sessionPS_txtTurma", request.getParameter("txtTurma"));
	session.setAttribute("sessionPS_txtData", request.getParameter("txtData"));
	session.setAttribute("sessionPS_txtMotivo", request.getParameter("txtMotivo"));
	session.setAttribute("sessionPS_txtTel", request.getParameter("txtTel"));
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
            	<img src="/SistemaDeRequerimentos/images/breadcrumb-bullet.png" alt=""/><h1>Prova Substitutiva</h1>
                <span>Você está em: </span><a href="../Home.jsp">Home</a> &gt; Prova Substitutiva
            </div>
            <div id="content-body">
            	<!-- Atividades Complementares -->
                <div id="requerimento">
                    <div id="requerimento-header">
                        <div style="width:15%; text-align:left"><img src="/SistemaDeRequerimentos/images/mackenzie-logo.jpg" alt=""/></div>
                        <div style="width:70%; margin-top: 20px; height:70px">
                            UNIVERSIDADE PRESBITERIANA MACKENZIE<br/>
                            <span>FACULDADE DE COMPUTAÇÃO E INFORMÁTICA<span>
                        </div>
                        <div style="width:15%; text-align:right"><img src="/SistemaDeRequerimentos/images/mackenzie-brasao.jpg" alt=""/></div>
                    </div>
                    <div id="requerimento-body">
                        <h2>Ilmo. Sr. Diretor</h2>
                        <p>
                            Eu, <span><%= session.getAttribute("sessionUsu_Nome") %></span>, MATRICULADO SOB CÓDIGO <span><%= session.getAttribute("sessionUsu_Cod") %></span> NO CURSO <span>Sistemas de Informação</span> ETAPA <span><%= request.getParameter("txtEtapa") %></span> TURMA <span><%= request.getParameter("txtTurma") %></span>, VENHO EXPOR E SOLICITAR, CONFORME INDICADO:
                        </p>
                        <p>
                        	<br/>
                            <span>(x) PROVA SUBSTITUTIVA</span>
                            <br/><br/>
                        </p>
                        <p>
                        	<table border="0" cellpadding="3" cellspacing="0" >
                                <tr>
                                    <td><b>Disciplina:</b></td>
                                    <td colspan="3"><%= request.getParameter("txtDisciplina") %></td>
                                </tr>
                                <tr>
                                    <td><b>Professor(a):</b></td>
                                    <td colspan="3"><%= request.getParameter("txtProf") %></td>
                                </tr>
                                <tr>
                                    <td><b>Etapa:</b></td>
                                    <td><%= request.getParameter("txtEtapa") %></td>
                                    <td width="15px"><b>Turma:</b></td>
                                    <td><%= request.getParameter("txtTurma") %></td>
                                </tr>
                                <tr>
                                    <td><b>Data da prova:</b></td>
                                    <td colspan="3"><%= request.getParameter("txtData") %></td>
                                </tr>
                                <tr>
                                    <td colspan="4">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="4"><b>Motivo:</b></td>
                                </tr>
                                <tr>
                                    <td colspan="4">
                                        <%= request.getParameter("txtMotivo") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="170px"><b>Telefone para contato:</b></td>
                                    <td colspan="3"><%= request.getParameter("txtTel") %></td>
                                </tr>
                                <tr>
                                    <td colspan="4">&nbsp;</td>
                                </tr>
                            </table>
                        </p>
                        <p>
                        	<strong>ANEXOS:</strong>
                            <div id="anexos">
                            	<div><img src="/SistemaDeRequerimentos/images/pdf-icon.png" alt="" />Atestado médico</div>
                            </div>
                        </p>
                        <p>&nbsp;</p>
                        <p align="right">
                        	<div style="text-align:center; width:300px;float:right">
                            São Paulo, <% 	Date data =  new Date();  
                            				Locale local = new Locale("pt","BR");  
                            				DateFormat dateFormat = new SimpleDateFormat("dd 'de' MMMM 'de' yyyy",local);
                            				out.print(dateFormat.format(data));
										%>
                            <br/>
                            <%= session.getAttribute("sessionUsu_Nome") %>
                            <br/>
                            <%= session.getAttribute("sessionUsu_Cod") %>
                            </div>                            
                        </p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                    </div>
                </div>
                <div>
                	<div style="float:left">
                    	<input type="button" value="  Corrigir  " onclick="javascript:history.back();"/>
                    </div>
                    <div style="float:right">
                    	<input type="button" value="  Enviar  " onclick="window.location='ProvaSubstitutiva-Envio.jsp'" />
                    </div>
                </div>
                <div>&nbsp;</div>
            </div>
        </div>
    </div>
    
    <!---------- Rodapé ---------->
    <c:import url="/includes/footerAluno.jsp" />
</body>
</html>