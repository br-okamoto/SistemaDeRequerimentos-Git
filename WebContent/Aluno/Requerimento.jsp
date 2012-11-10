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
<title>Mackenzie - Sistema de Requerimentos - Requerimento</title>
<link rel="stylesheet" type="text/css" href="/SistemaDeRequerimentos/css/styles.css" />

<script type="text/javascript" src="/SistemaDeRequerimentos/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="/SistemaDeRequerimentos/js/print.js"></script>
<link rel='stylesheet' type='text/css' href='/SistemaDeRequerimentos/css/print.css' media='print'/>
<%
	int protocolo = Integer.parseInt(request.getParameter("Protocolo").toString());
	int idTipo = 0;
	String tipoReq1 = null;
	String tipoReq2 = null;
	String TelContato = null;
	java.sql.Timestamp sqlDate = null;
	String motivo = null;
	
	Connection con = new ConnectionFactory().getConnection();
	PreparedStatement s = con.prepareStatement("SELECT * FROM requerimento WHERE protocolo = ?;");
	s.setInt(1,protocolo);
	ResultSet rs = s.executeQuery();
		
	while (rs.next()) {
		idTipo = rs.getInt("idTipo");
		TelContato = rs.getString("TelefoneContato");
		sqlDate = rs.getTimestamp("Data_inicio");
	}
	
	java.util.Date data =  new java.util.Date(sqlDate.getTime());  
	Locale local = new Locale("pt","BR");  
	DateFormat dateFormat = new SimpleDateFormat("dd'/'MM'/'yyyy - HH:mm",local);
	
	DateFormat dateFormatAss = new SimpleDateFormat("dd 'de' MMMM 'de' yyyy",local);


	switch(idTipo) {
	case 1:
		tipoReq1 = "provasubstitutiva";
		tipoReq2 = "Prova Substitutiva";
		break;
	case 2:
		tipoReq1 = "verificacaofaltas";
		tipoReq2 = "Verificação de Faltas";
		break;
	case 3:
		tipoReq1 = "dispensadisciplinas";
		tipoReq2 = "Dispensa de Disciplinas";
		break;
	case 4:
		tipoReq1 = "dilacaoprazo";
		tipoReq2 = "Dilação de Prazo";
		break;
	case 5:
		tipoReq1 = "tgi";
		tipoReq2 = "TGI";
		break;
	case 6:
		tipoReq1 = "reclamacao";
		tipoReq2 = "Reclamação";
		break;
	case 7:
		tipoReq1 = "sugestao";
		tipoReq2 = "Sugestão";
		break;
	case 8:
		tipoReq1 = "trancamento";
		tipoReq2 = "Trancamento de Matrícula";
		break;
	case 9:
		tipoReq1 = "cancelamento";
		tipoReq2 = "Cancelamento de Matrícula";
		break;
	}
	
	//
	String Query = "SELECT * FROM " + tipoReq1 + " WHERE Protocolo = ?";
	s = con.prepareStatement(Query);
	s.setInt(1,protocolo);
	rs = s.executeQuery();
		
	while (rs.next()) {
		motivo = rs.getString("motivo");
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
            	<img src="/SistemaDeRequerimentos/images/breadcrumb-bullet.png" alt=""/><h1>Requerimento</h1>
                <span>Você está em: </span><a href="/SistemaDeRequerimentos/Aluno/Home.jsp">Home</a> &gt; Requerimento
            </div>
            <div id="content-body">
            	<!-- Atividades Complementares -->
                <div id="btn-imprimir" align="right">
                    <a href="#" onclick="javascript:imprimir();"><img src="/SistemaDeRequerimentos/images/Print_48x48.png" alt="imprimir" /> Imprimir</a>
                </div>
                <div id="imprimir-req">
                
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
                            Eu, <span><%= session.getAttribute("sessionUsu_Nome") %></span>, MATRICULADO SOB CÓDIGO <span><%= session.getAttribute("sessionUsu_Cod") %></span> NO CURSO <span>Sistemas de Informação</span> ETAPA <span>4</span> TURMA <span>J</span>, VENHO EXPOR E SOLICITAR, CONFORME INDICADO:
                        </p>
                        <p>
                        	<br/>
                            <span style="text-transform: uppercase;">( x ) <%=tipoReq2 %></span>
                            <br/><br/>
                        </p>
                        <p>
                            <strong>MOTIVO:</strong>
                            <br/><%=motivo %>
                        </p>
                        <p>
                        	<strong>Telefone para contato:</strong> <%=TelContato %>
                        </p>
                        <p>
                        	<br/>
                        	<strong>ANEXOS:</strong>
                            <div id="anexos">
                            	<div><img src="/SistemaDeRequerimentos/images/pdf-icon.png" alt="" />Certificado de conclusão do curso Gestão de Projetos</div>
                            </div>
                        </p>
                        <p>&nbsp;</p>
                        <p align="right">
                        	<div style="text-align:center; width:300px;float:right">
                            São Paulo, <%= dateFormatAss.format(data) %>
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
                <div id="requerimento-inf">
                	<table border="0" cellpadding="3" cellspacing="0" width="100%">
                    	<tr>
                        	<td colspan="2"><h2>INFORMAÇÕES GERAIS</h2></td>
                        </tr>
                    	<tr>
                        	<td><strong>Número do Protocolo:</strong></td>
                            <td colspan="3"><%= protocolo %></td>
                        </tr>
                        <tr>
                        	<td width="150px"><strong>Protocolado por:</strong></td>
                            <td width="350px"><%= session.getAttribute("sessionUsu_Nome") %></td>
                            <td width="50px"><strong>TIA:</strong></td>
                            <td><%= session.getAttribute("sessionUsu_Cod") %></td>
                        </tr>
                        <tr>
                        	<td width="150px"><strong>Tipo:</strong></td>
                            <td colspan="3">Atividades Complementares</td>
                        </tr>
                        <tr>
                        	<td width="150px"><strong>Data do Protocolo:</strong></td>
                            <td colspan="3"><%= dateFormat.format(data) %></td>
                        </tr>
                        <tr>
                        	<td width="150px"><strong>Status:</strong></td>
                            <td colspan="3">Em andamento</td>
                        </tr>
                    </table>
                </div>
                <div id="requerimento-hist">
                	<h2>HISTÓRICO</h2>
                	<table border="0" cellpadding="3" cellspacing="0">
                    	<tbody>
                        	<th width="85px">Data</th>
                            <th style="text-align:left" width="250px">Status</th>
                        </tbody>
                        <tr>
                        	<td>27/09/2012</td>
                            <td style="text-align:left">Protocolado</td>
                        </tr>
                        <tr>
                        	<td>27/09/2012</td>
                            <td style="text-align:left">Em andamento</td>
                        </tr>
                    </table>
                </div>
                
                </div>
                <div id="exec-acao">
                	<h2>AÇÕES</h2>
                    <div>
                    	<form name="formCancelar" method="post" action="Cancelar.jsp?protocolo=<%=protocolo%>">
                    		<input type="submit" value="  Cancelar Requerimento  " />                            
                    	</form>
                    </div>
                </div>
                <div>&nbsp;</div>
            </div>
        </div>
    </div>
    
    <!---------- Rodapé ---------->
    <c:import url="/includes/footerAluno.jsp" />
    
    <div id="imprimir">
    	<iframe id="iframePrint">
        </iframe>
    </div>
</body>
</html>