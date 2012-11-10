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
<title>Mackenzie - Sistema de Requerimentos - Novo Requerimento - Trancamento de Matr�cula - Confirma��o</title>
<link rel="stylesheet" type="text/css" href="/SistemaDeRequerimentos/css/styles.css" />
<%
	session.setAttribute("sessionTranc_ckb_ordempessoal", request.getParameter("ckb_ordempessoal"));
	session.setAttribute("sessionTranc_ckb_1tc", request.getParameter("ckb_1tc"));
	session.setAttribute("sessionTranc_ckb_2tc", request.getParameter("ckb_2tc"));
	session.setAttribute("sessionTranc_ckb_3tc", request.getParameter("ckb_3tc"));
	session.setAttribute("sessionTranc_ckb_ordemfinanceira", request.getParameter("ckb_ordemfinanceira"));
	session.setAttribute("sessionTranc_ckb_insatisfacao", request.getParameter("ckb_insatisfacao"));
	session.setAttribute("sessionTranc_ckb_mudancaResidencia", request.getParameter("ckb_mudancaResidencia"));
	session.setAttribute("sessionTranc_ckb_outros", request.getParameter("ckb_outros"));
	session.setAttribute("sessionTranc_txtMotivo", request.getParameter("txtMotivo"));
	boolean v_ckb_ordempessoal = false;
	if (Integer.parseInt(request.getParameter("ckb_ordempessoal").toString()) == 1)
		v_ckb_ordempessoal = true;
	boolean v_ckb_1tc = false;
	if (Integer.parseInt(request.getParameter("ckb_1tc").toString()) == 1)
		v_ckb_1tc = true;
	boolean v_ckb_2tc = false;
	if (Integer.parseInt(request.getParameter("ckb_2tc").toString()) == 1)
		v_ckb_2tc = true;
	boolean v_ckb_3tc = false;
	if (Integer.parseInt(request.getParameter("ckb_3tc").toString()) == 1)
		v_ckb_3tc = true;
%>
</head>

<body>
	<!---------- Container ---------->
    <div id="container">
    	<!---------- Header ---------->
        <c:import url="/includes/headerAluno.jsp" />
        <!---------- Conte�do ---------->
        <div id="content">
        	<div id="breadcrumb">
            	<img src="../../images/breadcrumb-bullet.png" alt=""/><h1>Trancamento de Matr�cula</h1>
                <span>Voc� est� em: </span><a href="../Home.html">Home</a> &gt; Trancamento de Matr�cula
            </div>
            <div id="content-body">
            	<!-- Atividades Complementares -->
                <div id="requerimento">
                    <div id="requerimento-header">
                        <div style="width:15%; text-align:left"><img src="../../images/mackenzie-logo.jpg" alt=""/></div>
                        <div style="width:70%; margin-top: 20px; height:70px">
                            UNIVERSIDADE PRESBITERIANA MACKENZIE<br/>
                            <span>FACULDADE DE COMPUTA��O E INFORM�TICA<span>
                        </div>
                        <div style="width:15%; text-align:right"><img src="../../images/mackenzie-brasao.jpg" alt=""/></div>
                    </div>
                    <div id="requerimento-body">
                        <h2>Ilmo. Sr. Diretor</h2>
                        <p>
                            Eu, <span><%= session.getAttribute("sessionUsu_Nome") %></span>, MATRICULADO SOB C�DIGO <span><%= session.getAttribute("sessionUsu_Cod") %></span> NO CURSO <span>Sistemas de Informa��o</span> ETAPA <span>4</span> TURMA <span>J</span>, VENHO EXPOR E SOLICITAR, CONFORME INDICADO:
                        </p>
                        <p>
                        <div>
                        	<b>1 <input type="checkbox" name="ckb_ordempessoal" disabled="true" checked="<%= v_ckb_ordempessoal %>" /> Ordem Pessoal</b>
                            <div style="float:right; margin-right:340px">
                            	<b>1� TC <input type="checkbox" name="ckb_1tc" disabled="true" checked="<%= v_ckb_1tc %>" /></b>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                2� TC <input type="checkbox" name="ckb_2tc" disabled="<%= v_ckb_2tc %>" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                3� TC <input type="checkbox" name="ckb_3tc" disabled="<%= v_ckb_3tc %>" />
                            </div>
                        </div>
                        <div>
                        	2 <input type="checkbox" name="ckb_ordemfinanceira" disabled="true" /> Ordem Financeira
                        </div>
                        <div>
                        	3 <input type="checkbox" name="ckb_insatisfacao" disabled="true" /> Instatisfa��o com o curso oferecido
                        </div>
                        <div>
                        	4 <input type="checkbox" name="ckb_mudancaResidencia" disabled="true" /> Mudan�a de Resid�ncia
                        </div>
                        <div>
                        	5 <input type="checkbox" name="ckb_outros" disabled="true" /> Outros
                        </div>
                        <div>&nbsp;</div>
                        <div><b>Motivos:</b></div>
                        <div class="justified">
                        	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc at sem turpis, in eleifend nunc. Fusce varius diam in felis posuere imperdiet. Aenean sit amet turpis orci, ac tristique quam. Quisque ut convallis risus. Curabitur fermentum varius orci, nec bibendum nisl scelerisque id. Aenean eget magna libero, iaculis tristique diam. Duis in lorem a purus molestie semper. Vivamus vitae commodo lectus. Duis mattis elementum hendrerit.</p>

<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut mollis, nisi id fermentum ullamcorper, lacus leo rhoncus risus, a ultricies felis dui nec quam. Ut congue mi quis urna tincidunt accumsan. Duis adipiscing, elit sit amet egestas sagittis, tellus dui venenatis lorem, interdum feugiat dolor nibh at nibh. Vestibulum laoreet hendrerit metus eu dignissim. Sed ac purus nibh, nec vulputate mauris. Morbi ut lacus sed sem faucibus volutpat. Aliquam varius faucibus adipiscing. Quisque luctus mi eu ante venenatis id interdum neque volutpat. Aliquam rhoncus, tortor sit amet vulputate pretium, neque justo consequat ante, et tincidunt mi velit nec quam. Donec dapibus laoreet pretium. Sed ipsum ligula, interdum et imperdiet eget, rutrum ac lectus. Proin aliquet ultricies elementum.</p>
                        </div>
                        <div id="obs">
                	*Observa��o: Solicitamos que sejam comentados os motivos assinalados.
                    <p>
                    	<b>O TRANCAMENTO TOTAL DE MATR�CULA � V�LIDO SOMENTE PARA O SEMESTRE EM QUE FOI SOLICITADO;</b>
                    </p>
                    <p>
                    	<b>A MATR�CULA INICIAL N�O � PASS�VEL DE TRANCAMENTO;</b>
                    </p>
                    <p>
                    	Conforme <b>Contrato de Presta��o de Servi�os Educacionais</b> - <em>"O (a) <b>CONTRATANTE</b> poder� <span>CANCELAR OU TRANCAR</span> o curso mediante requerimento, dirigido por escrito ao <b>MACKENZIE</b>, respondendo por todas as despesas e mensalidades pendentes at� o m�s em que apresentar o requerimento mencionado, mesmo sem frequencia �s aulas, incluindo-se aqui o m�s da apresenta��o do requerimento, devidamente corrigido e acrescido de multa de 2% (dois por cento) ao valor da(s) parcela(s) em atraso, mais juros de mora de 1% (um por cento) ao m�s "pro rata die".</em>
                    </p>
                    <p>
                    	<span>OBS.: Nos cursos de P�s-Gradua��o <em>Lato Sensu</em>, o requerente N�O tem direito ao TRANCAMENTO TOTAL DE MATR�CULA.</span>
                    </p>
                </div>
                        </p>

                        <p>&nbsp;</p>
                        <p align="right">
                        	<div style="text-align:center; width:300px;float:right">
                            Nestes termos, pede deferimento.<br/>
                            S�o Paulo, 27 de setembro de 2012
                            <br/>
                            Nome Sobrenome
                            <br/>
                            3110000-0
                            </div>                            
                        </p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                    </div>
                </div>
                <div>
                	<div style="float:left">
                    	<input type="button" value="  Corrigir  " />
                    </div>
                    <div style="float:right">
                    	<input type="button" value="  Enviar  " onclick="window.location='Trancamento-Envio.html'" />
                    </div>
                </div>
                <div>&nbsp;</div>
            </div>
        </div>
    </div>
    
    <!---------- Rodap� ---------->
    <c:import url="/includes/footerAluno.jsp" />
</body>
</html>