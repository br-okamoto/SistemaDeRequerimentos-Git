<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*" %>
<%@page import="br.mackenzie.requerimentos.integration.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mackenzie - Sistema de Requerimentos - Novo Requerimento - Prova Substitutiva - Envio</title>
<link rel="stylesheet" type="text/css" href="/SistemaDeRequerimentos/css/styles.css" />
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
                <span>Você está em: </span><a href="/SistemaDeRequerimentos/Aluno/Home.html">Home</a> &gt; Prova Substitutiva
            </div>
            <div id="content-body">
            	<!-- Atividades Complementares -->
            	
            	<%
					try {
						int usuTIA = Integer.parseInt(session.getAttribute("sessionUsu_Cod").toString());
						String disc = session.getAttribute("sessionPS_txtDisciplina").toString();
						String prof = session.getAttribute("sessionPS_txtProf").toString();
						String etapa = session.getAttribute("sessionPS_txtEtapa").toString();
						String turma =session.getAttribute("sessionPS_txtTurma").toString();
						String motivo = session.getAttribute("sessionPS_txtMotivo").toString();
						String tel_contato = session.getAttribute("sessionPS_txtTel").toString();
						
						DateFormat dataProva = new SimpleDateFormat("yyyy-MM-dd");
					    String date =session.getAttribute("sessionPS_txtData").toString();
					    java.sql.Date convertedDate=null;
					    convertedDate = new java.sql.Date(dataProva.parse(date.replaceAll("\"","")).getTime());
					    
					    
				        java.sql.Timestamp  sqlDate = new java.sql.Timestamp(new java.util.Date().getTime());
				        
						Connection con = new ConnectionFactory().getConnection();
						
						//Pega o maior num de protocolo salvo, incrementa para usar no novo protocolo a ser inserido
						PreparedStatement s = con.prepareStatement("SELECT MAX(Protocolo) FROM requerimento;");
						ResultSet rs = s.executeQuery();
						
						int protocolo = 0;
						
						while (rs.next()) {
							protocolo = rs.getInt(1);
						}
						
						
							protocolo++;
						
						//insere o novo requerimento na tabela requerimento
						s = con.prepareStatement("INSERT INTO requerimento (Protocolo,usu_cod, idtipo,telefonecontato,data_inicio) VALUES (?,?,?,?,?);");
						s.setInt(1,protocolo);
						s.setInt(2,usuTIA);
						s.setInt(3,1);
						s.setString(4,tel_contato);
						s.setTimestamp(5,sqlDate);
						s.execute();
						
						//insere o novo requerimento na tabela provasubstitutiva
						s = con.prepareStatement("INSERT INTO provaSubstitutiva (Protocolo, Disciplina, Professor, Etapa, Turma, DataProva, Motivo) VALUES (?,?,?,?,?,?,?);");
						s.setInt(1,protocolo);
						s.setString(2,disc);
						s.setString(3,prof);
						s.setString(4,etapa);
						s.setString(5,turma);
						s.setDate(6,convertedDate);
						s.setString(7,motivo);
						s.execute();
						
						//insere o novo requerimento na tabela HISTORICO
						s = con.prepareStatement("INSERT INTO historico (Protocolo, idStatusReq, Observacao) VALUES (?,?,?);");
						s.setInt(1,protocolo);
						s.setInt(2,1);
						s.setString(3,"Requerimento protocolado");
						s.execute();
						
						%>
						
						<div id="sucesso">
		                	<img src="/SistemaDeRequerimentos/images/check-icon2.png" alt="" />
		                    <h2>Requerimento enviado com sucesso!</h2>
		                    Número do Protocolo: <%=protocolo %><br/><br/>
		                    <div><input type="button" value="   Ver requerimento e imprimir   " onclick="window.location='../Requerimento.jsp?protocolo=<%=protocolo %>'"/></div>
		                </div>
						
						<%
						
					}
					catch(SQLException e) {
						
						%>
						
						<div id="sucesso">
		                	<img src="/SistemaDeRequerimentos/images/error.png" alt="" />
		                    <h2>Erro no sistema</h2>
		                    Por favor, tente novamente.<br/><br/>
		                    <div><input type="button" value="   Voltar   " onclick="javascript:history.back();"/></div>
		                </div>
						
						<%
						out.println(e);
					}
            	catch(NullPointerException e) {
					
					%>
					
					<div id="sucesso">
	                	<img src="/SistemaDeRequerimentos/images/error.png" alt="" />
	                    <h2>Erro no sistema</h2>
	                    Por favor, tente novamente.<br/><br/>
	                    <div><input type="button" value="   Voltar   " onclick="javascript:history.back();"/></div>
	                </div>
					
					<%
					
				}

				%>
            	
                
            </div>
        </div>
    </div>
    
    <!---------- Rodapé ---------->
    <c:import url="/includes/footerAluno.jsp" />
</body>
</html>