<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*" %>
<%@page import="br.mackenzie.requerimentos.integration.*" %>
<%@page import="br.mackenzie.requerimentos.model.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mackenzie - Sistema de Requerimentos - Meus Requerimentos</title>
<link rel="stylesheet" type="text/css" href="/SistemaDeRequerimentos//css/styles.css" />
<link rel="shortcut icon" type="image/x-icon" href="/SistemaDeRequerimentos/favicon.ico">
<%
	if (session.getAttribute("sessionUsu_Tipo") == null) {
		session.setAttribute("loginErro","Acesso negado ou sua sessão expirou.<br/>Por favor, acesse novamente.");
		response.sendRedirect("/index.jsp");
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
            	<img src="/SistemaDeRequerimentos/images/breadcrumb-bullet.png" alt=""/><h1>Meus Requerimentos</h1>
                <span>Você está em: </span><a href="/SistemaDeRequerimentos/Aluno/Home.jsp">Home</a> &gt; Meus Requerimentos
            </div>
            <div id="content-body">
            	<div align="right">
                	<form name="buscaRequerimento" method="get" action="MeusRequerimentos.html?Protocolo=">
                    	Nº do Protocolo: <input type="text" name="txtProtocolo" size="20" /> <input type="submit" value="Buscar" />
                    </form>
                </div>
                <div>&nbsp;</div>
                <div align="center" id="listaRequerimentos">
                	<table cellpadding="0" cellspacing="0">
                    	<tr>
                        	<th>Nº do Protocolo</th>
                            <th style="text-align:left">Tipo do Requerimento</th>
                            <th>Tempo decorrido</th>
                            <th>Status</th>
                        </tr>
                    <%
                    	try {
                    		int usu_cod = Integer.parseInt(session.getAttribute("sessionUsu_Cod").toString());
                    		java.util.Date hoje = new java.util.Date();
                    		ArrayList<Requerimento> requerimentos = new ArrayList<Requerimento>();
                    		Requerimento req = null;
                    		
                    		Connection con = new ConnectionFactory().getConnection();
                    		PreparedStatement s = con.prepareStatement("SELECT * FROM requerimento WHERE usu_cod = ?");
                    		s.setInt(1,usu_cod);
                    		ResultSet rs = s.executeQuery();
    						int contador = 0;
    						while (rs.next()) {
    							req = new Requerimento();
	    							req.setProtocolo(rs.getInt("protocolo"));
	    							req.setCodUsuario(usu_cod);
	    							req.setTipoRequerimento(rs.getInt("idtipo"));
	    							req.setStatusRequerimento(rs.getString("statusreq"));
	    							req.setDataInicioRequerimento(rs.getDate("data_inicio"));
	    							req.setDataFimRequerimento(rs.getDate("data_fim"));
	    							req.setTelContato(rs.getString("telefonecontato"));
	    						requerimentos.add(req);
    							contador++;
    						}
    						for (Requerimento requerimento : requerimentos) {
    							Long tempoDecorrido = (hoje.getTime() - requerimento.getDataInicioRequerimento().getTime())/ (1000 * 60 * 60 * 24);
    							String tiporeq = null;
    							s = con.prepareStatement("SELECT tipo FROM tipo_requerimento WHERE idtipo = ?");
                        		s.setInt(1,req.getTipoRequerimento());
                        		rs = s.executeQuery();
                        		while (rs.next()) {
                        			tiporeq = rs.getString("tipo");
                        		}
    							%>
    							<tr>
		                        	<td><a href="Requerimento.jsp?Protocolo=<%= requerimento.getProtocolo() %>"><%= requerimento.getProtocolo() %></a></td>
		                            <td><%= tiporeq %></td>
		                            <td><%= tempoDecorrido %></td>
		                            <td><%= requerimento.getStatusRequerimento() %></td>
		                        </tr>
    							
    							<%
    						}
                    	}
                    	catch (SQLException e) {
                    		%>
                    		<tr>
	                        	<td colspan="4">
		                        	<div id="sucesso">
					                	<img src="/SistemaDeRequerimentos/images/error.png" alt="" />
					                    <h2>Erro no sistema</h2>
					                    Por favor, tente novamente.<br/><br/>
					                    <div><input type="button" value="   Voltar   " onclick="javascript:history.back();"/></div>
					                </div>
	                        	</td>
                        	</tr>
                    		<%
                    	}
                    	catch (NullPointerException e) {
                    		%>
                    		<tr>
	                        	<td colspan="4">
		                        	<div id="sucesso">
					                	<img src="/SistemaDeRequerimentos/images/error.png" alt="" />
					                    <h2>Erro no sistema</h2>
					                    Por favor, tente novamente.<br/><br/>
					                    <div><input type="button" value="   Voltar   " onclick="javascript:history.back();"/></div>
					                </div>
	                        	</td>
                        	</tr>
                    		<%
                    	}
                    %>
                        
                        <tr>
                        	<td colspan="4" style="border-bottom:0;">
                            	<div id="paginacao" align="center" >
                                    <div class="pagBox"><<</div>
                                    <div class="pagBox"><</div>
                                    <div class="pagBox">1</div>
                                    <div class="pagBox">2</div>
                                    <div class="pagBox">3</div>
                                    <div class="pagBox">4</div>
                                    <div class="pagBox">5</div>
                                    <div class="pagBox">></div>
                                    <div class="pagBox">>></div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    
    <!---------- Rodapé ---------->
    <c:import url="/includes/footerAluno.jsp" />
</body>
</html>