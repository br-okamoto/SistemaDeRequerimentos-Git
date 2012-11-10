<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mackenzie - Sistema de Requerimentos - Novo Requerimento - Trancamento de Matrícula</title>
<link rel="stylesheet" type="text/css" href="../../css/styles.css" />
</head>

<body>
	<!---------- Container ---------->
    <div id="container">
    	<!---------- Header ---------->
        <c:import url="/includes/headerAluno.jsp" />
        <!---------- Conteúdo ---------->
        <div id="content">
        	<div id="breadcrumb">
            	<img src="../../images/breadcrumb-bullet.png" alt=""/><h1>Trancamento de Matrícula</h1>
                <span>Você está em: </span><a href="../Home.jsp">Home</a> &gt; Trancamento de Matrícula
            </div>
            <div id="content-body">
            	<!-- Trancamento de Matrícula -->
                <div>
                	Assinale abaixo os motivos e comente:
                </div>
               <div id="requerimento-form">
                	<form method="post" action="Trancamento-Confirmacao.jsp" name="formCancelamento">
                    	<div>
                        	1 <input type="checkbox" name="ckb_ordempessoal" /> Ordem Pessoal
                            <div style="float:right; margin-right:340px">
                            	1º TC <input type="checkbox" name="ckb_1tc" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                2º TC <input type="checkbox" name="ckb_2tc" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                3º TC <input type="checkbox" name="ckb_3tc" />
                            </div>
                        </div>
                        <div>
                        	2 <input type="checkbox" name="ckb_ordemfinanceira" /> Ordem Financeira
                        </div>
                        <div>
                        	3 <input type="checkbox" name="ckb_insatisfacao" /> Instatisfação com o curso oferecido
                        </div>
                        <div>
                        	4 <input type="checkbox" name="ckb_mudancaResidencia" /> Mudança de Residência
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
                	*Observação: Solicitamos que sejam comentados os motivos assinalados.
                    <p>
                    	<b>O TRANCAMENTO TOTAL DE MATRÍCULA É VÁLIDO SOMENTE PARA O SEMESTRE EM QUE FOI SOLICITADO;</b>
                    </p>
                    <p>
                    	<b>A MATRÍCULA INICIAL NÃO É PASSÍVEL DE TRANCAMENTO;</b>
                    </p>
                    <p>
                    	Conforme <b>Contrato de Prestação de Serviços Educacionais</b> - <em>"O (a) <b>CONTRATANTE</b> poderá <span>CANCELAR OU TRANCAR</span> o curso mediante requerimento, dirigido por escrito ao <b>MACKENZIE</b>, respondendo por todas as despesas e mensalidades pendentes até o mês em que apresentar o requerimento mencionado, mesmo sem frequencia às aulas, incluindo-se aqui o mês da apresentação do requerimento, devidamente corrigido e acrescido de multa de 2% (dois por cento) ao valor da(s) parcela(s) em atraso, mais juros de mora de 1% (um por cento) ao mês "pro rata die".</em>
                    </p>
                    <p>
                    	<span>OBS.: Nos cursos de Pós-Graduação <em>Lato Sensu</em>, o requerente NÃO tem direito ao TRANCAMENTO TOTAL DE MATRÍCULA.</span>
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
    
    <!---------- Rodapé ---------->
    <c:import url="/includes/footerAluno.jsp" />
</body>
</html>