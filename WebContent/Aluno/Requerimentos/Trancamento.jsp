<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mackenzie - Sistema de Requerimentos - Novo Requerimento - Trancamento de Matr�cula</title>
<link rel="stylesheet" type="text/css" href="../../css/styles.css" />
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
                <span>Voc� est� em: </span><a href="../Home.jsp">Home</a> &gt; Trancamento de Matr�cula
            </div>
            <div id="content-body">
            	<!-- Trancamento de Matr�cula -->
                <div>
                	Assinale abaixo os motivos e comente:
                </div>
               <div id="requerimento-form">
                	<form method="post" action="Trancamento-Confirmacao.jsp" name="formCancelamento">
                    	<div>
                        	1 <input type="checkbox" name="ckb_ordempessoal" /> Ordem Pessoal
                            <div style="float:right; margin-right:340px">
                            	1� TC <input type="checkbox" name="ckb_1tc" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                2� TC <input type="checkbox" name="ckb_2tc" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                3� TC <input type="checkbox" name="ckb_3tc" />
                            </div>
                        </div>
                        <div>
                        	2 <input type="checkbox" name="ckb_ordemfinanceira" /> Ordem Financeira
                        </div>
                        <div>
                        	3 <input type="checkbox" name="ckb_insatisfacao" /> Instatisfa��o com o curso oferecido
                        </div>
                        <div>
                        	4 <input type="checkbox" name="ckb_mudancaResidencia" /> Mudan�a de Resid�ncia
                        </div>
                        <div>
                        	5 <input type="checkbox" name="ckb_outros" /> Outros
                        </div>
                        <div>&nbsp;</div>
                        <div>Motivos:</div>
                        <div>
                        	<textarea name="txtMotivo" cols="74" rows="12" ></textarea>
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
                <div align="right">
                        	<input type="submit" value="  Continuar  "/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <!---------- Rodap� ---------->
    <c:import url="/includes/footerAluno.jsp" />
</body>
</html>