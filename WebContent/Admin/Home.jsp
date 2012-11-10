<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mackenzie - Sistema de Requerimentos - Home Administrativa</title>
<link rel="stylesheet" type="text/css" href="../css/styles.css" />
<script type="text/javascript" src="../js/jquery-1.8.1.min.js" ></script>
<link rel="shortcut icon" type="image/x-icon" href="/SistemaDeRequerimentos/favicon.ico">
<script type="text/javascript">
	$(document).ready(function(){
		$('#ckb_all').click(function(){
			if ($('#ckb_all').is(':checked')) {
				$('input[type="checkbox"]').each(function(){
					$(this).attr('checked', true);
				});
			} else {
				$('input[type="checkbox"]').each(function(){
					$(this).attr('checked', false);
				});
			}
		});
	});
</script>
<%
	if (session.getAttribute("sessionUsu_Tipo") == null || Integer.parseInt(session.getAttribute("sessionUsu_Tipo").toString())==3) {
		session.setAttribute("loginErro","Acesso negado ou sua sessão expirou.<br/>Por favor, acesse novamente.");
		response.sendRedirect("../index.jsp");
	}
%>
</head>

<body>
	<!---------- Container ---------->
    <div id="container">
    	<!---------- Header ---------->
    	<%
    		if (Integer.parseInt(session.getAttribute("sessionUsu_Tipo").toString())==2) {
    			%>
    			<c:import url="/includes/headerAdmin.jsp" />
    			<%
    		} else {
    			%>
    			<c:import url="/includes/headerSuperAdmin.jsp" />
    			<%
    		}
    	%>
        
        <!---------- Conteúdo ---------->
        <div id="content">
        	<div id="breadcrumb">
            	<img src="../images/breadcrumb-bullet.png" alt=""/><h1>Home Administrativa</h1>
                <span>Você está em: </span>Home Administrativa
            </div>
            <div id="content-body">
            	<!-- Home Administrativa -->
                <div align="right">
                	<form name="buscaRequerimento" method="get" action="MeusRequerimentos.html?Protocolo=">
                    	Nº do Protocolo: <input type="text" name="txtProtocolo" size="20" /> <input type="submit" value="Buscar" />
                    </form>
                </div>
				<div style="padding:0 !important">&nbsp;</div>                
                <div id="comandos-home">
                	<div id="comandos-home-filtrar">
                    	<div>Filtros:</div>
                        <div>
                        	<select name="select_tipo">
                            	<option value="0">Tipo de Requerimento</option>
                            	<option value="1">Prova Substitutiva</option>
                                <option value="2">Verificação de Falta(s) da(s) Disciplina(s)</option>
                                <option value="3">Dispensa de Disciplinas</option>
                                <option value="4">Dilação de Prazo</option>
                                <option value="5">Protocolo de TGI</option>
                                <option value="6">Atividades Complementares</option>
                                <option value="7">Reclamação</option>
                                <option value="8">Sugestão</option>
                                <option value="9">Trancamento de Matrícula</option>
                                <option value="10">Cancelamento de Matrícula</option>
                            </select>
                        </div>
                        <div>
                        	<select name="select_atribuido">
                            	<option value="0">Atribuído a</option>
                            	<option value="1">Nome Sobrenome 01</option>
                                <option value="2">Nome Sobrenome 02</option>
                                <option value="3">Nome Sobrenome 03</option>
                                <option value="4">Nome Sobrenome 04</option>
                                <option value="5">Nome Sobrenome 05</option>
                                <option value="6">Nome Sobrenome 06</option>
                                <option value="7">Nome Sobrenome 07</option>
                                <option value="8">Nome Sobrenome 08</option>
                                <option value="9">Nome Sobrenome 09</option>
                                <option value="10">Nome Sobrenome 10</option>
                            </select>
                        </div>
                        <div>
                        	<select name="select_status">
                            	<option value="0">Status</option>
                                <option value="1">Aberto</option>
                                <option value="2">Em andamento</option>
                                <option value="3">Deferido</option>
                                <option value="4">Indeferido</option>
                                <option value="5">Parecer favorável</option>
                                <option value="6">Cancelado</option>
                                <option value="7">Concluído</option>
                            </select>
                        </div>
                    </div>
                    <div id="comandos-home-acoes">
                    	<div>Executar ação para itens escolhidos:</div>
                        <div>
                    	<form name="formAcao" method="post" action="Acao.html?Protocolo=0000000001">
                    	<div>Atribuir a:</div>
                                <div>
                                	<select>
                        				<option value="0">Selecione</option>
                                        <option value="1">Amanda Venzke</option>
                                        <option value="2">Bruno Yukio Okamoto</option>
                                        <option value="3">Felipe Kucinski Carreira</option>
                                        <option value="4">Guilherme Lima</option>
                        		   </select>
                                </div>
                                <div><input type="submit" value="  OK  " /></div>
                            
                            	<div>Alterar Status:</div>
                                <div>
                                	<select>
                        				<option value="0">Selecione</option>
                                        <option value="1">Em andamento</option>
                                        <option value="2">Deferido</option>
                                        <option value="3">Indeferido</option>
                                        <option value="4">Parecer Favorável</option>
                                        <option value="5">Concluído</option>
                        		   </select>
                                </div>
                                <div><input type="submit" value="  OK  " /></div>
                            </div>
                    	</form>
                    </div>
                    </div>
                </div>
                <div style="padding:0 !important">&nbsp;</div>
                <div align="center" id="listaRequerimentos-admin">
                	<table cellpadding="0" cellspacing="0" width="985px">
                    	<tbody>
                        	<th width="20px"><input type="checkbox" id="ckb_all" name="ckb_all" /></th>
                        	<th width="90px">Protocolo</th>
                            <th style="text-align:left">Tipo do Requerimento</th>
                            <th style="text-align:left">Atribuído a</th>
                            <th>Tempo decorrido</th>
                            <th>Status</th>
                            <th>Ação</th>
                        </tbody>
                        <tr>
                        	<td><input type="checkbox" name="ckb123456789" /></td>
                        	<td><a href="Requerimento.html?Protocolo=00000000001">00000000001</a></td>
                            <td>Atividades Complementares</td>
                            <td>Bruno Yukio Okamoto</td>
                            <td>9</td>
                            <td>Em andamento</td>
                            <td></td>
                        </tr>
                        <tr>
                        	<td><input type="checkbox" name="ckb123456789" /></td>
                        	<td><a href="MeusRequerimentos.html?Protocolo=123456789">123456789</a></td>
                            <td>Verificação de Falta(s) da(s) Disciplina(s)</td>
                            <td></td>
                            <td>9</td>
                            <td>Em andamento</td>
                            <td></td>
                        </tr>
                        <tr>
                        	<td><input type="checkbox" name="ckb123456789" /></td>
                        	<td><a href="MeusRequerimentos.html?Protocolo=123456789">123456789</a></td>
                            <td>Verificação de Falta(s) da(s) Disciplina(s)</td>
                            <td></td>
                            <td>9</td>
                            <td>Em andamento</td>
                            <td></td>
                        </tr>
                        <tr>
                        	<td><input type="checkbox" name="ckb123456789" /></td>
                        	<td><a href="MeusRequerimentos.html?Protocolo=123456789">123456789</a></td>
                            <td>Verificação de Falta(s) da(s) Disciplina(s)</td>
                            <td></td>
                            <td>9</td>
                            <td>Em andamento</td>
                            <td></td>
                        </tr>
                        <tr>
                        	<td><input type="checkbox" name="ckb123456789" /></td>
                        	<td><a href="MeusRequerimentos.html?Protocolo=123456789">123456789</a></td>
                            <td>Verificação de Falta(s) da(s) Disciplina(s)</td>
                            <td></td>
                            <td>9</td>
                            <td>Em andamento</td>
                            <td></td>
                        </tr>
                        <tr>
                        	<td><input type="checkbox" name="ckb123456789" /></td>
                        	<td><a href="MeusRequerimentos.html?Protocolo=123456789">123456789</a></td>
                            <td>Verificação de Falta(s) da(s) Disciplina(s)</td>
                            <td></td>
                            <td>9</td>
                            <td>Em andamento</td>
                            <td></td>
                        </tr>
                        <tr>
                        	<td><input type="checkbox" name="ckb123456789" /></td>
                        	<td><a href="MeusRequerimentos.html?Protocolo=123456789">123456789</a></td>
                            <td>Verificação de Falta(s) da(s) Disciplina(s)</td>
                            <td></td>
                            <td>9</td>
                            <td>Em andamento</td>
                            <td></td>
                        </tr>
                        <tr>
                        	<td><input type="checkbox" name="ckb123456789" /></td>
                        	<td><a href="MeusRequerimentos.html?Protocolo=123456789">123456789</a></td>
                            <td>Verificação de Falta(s) da(s) Disciplina(s)</td>
                            <td></td>
                            <td>9</td>
                            <td>Em andamento</td>
                            <td></td>
                        </tr>
                        <tr>
                        	<td><input type="checkbox" name="ckb123456789" /></td>
                        	<td><a href="MeusRequerimentos.html?Protocolo=123456789">123456789</a></td>
                            <td>Verificação de Falta(s) da(s) Disciplina(s)</td>
                            <td></td>
                            <td>9</td>
                            <td>Em andamento</td>
                            <td></td>
                        </tr>
                        <tr>
                        	<td><input type="checkbox" name="ckb123456789" /></td>
                        	<td><a href="MeusRequerimentos.html?Protocolo=123456789">123456789</a></td>
                            <td>Verificação de Falta(s) da(s) Disciplina(s)</td>
                            <td></td>
                            <td>9</td>
                            <td>Em andamento</td>
                            <td></td>
                        </tr>
                        <tr>
                        	<td colspan="7" style="border-bottom:0;" height="40px">
                            	<div id="paginacao-admin" align="center" >
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
    <%
    		if (Integer.parseInt(session.getAttribute("sessionUsu_Tipo").toString())==2) {
    			%>
    			<c:import url="/includes/footerAdmin.jsp" />
    			<%
    		} else {
    			%>
    			<c:import url="/includes/footerSuperAdmin.jsp" />
    			<%
    		}
    	%>
</body>
</html>>