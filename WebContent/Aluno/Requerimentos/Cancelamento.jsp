<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mackenzie - Sistema de Requerimentos - Novo Requerimento - Cancelmento de Matr�cula</title>
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
            	<img src="../../images/breadcrumb-bullet.png" alt=""/><h1>Cancelamento de Matr�cula</h1>
                <span>Voc� est� em: </span><a href="../Home.jsp">Home</a> &gt; Cancelamento de Matr�cula
            </div>
            <div id="content-body">
            	<!-- Cancelamento de Matr�cula -->
                <div>
                	Assinale abaixo os motivos e comente:
                </div>
                <div id="requerimento-form">
                	<form method="post" action="Cancelamento-Confirmacao.jsp" name="formCancelamento">
                    	<div>
                        	1 <input type="checkbox" name="ckb_ordempessoal" /> Ordem Pessoal
                        </div>
                        <div>
                        	2 <input type="checkbox" name="ckb_ordemfinanceira" /> Ordem Financeira
                        </div>
                        <div>
                        	3 <input type="checkbox" name="ckb_naoadaptacao" /> N�o adapta��o ao curso
                        </div>
                        <div>
                        	4 <input type="checkbox" name="ckb_insatisfacao" /> Instatisfa��o com o curso oferecido
                        </div>
                        <div>
                        	5 <input type="checkbox" name="ckb_ingressoInstituicaoPublica" /> Ingresso em Institui��o P�blica
                        </div>
                        <div class="indentado">
                        	5.1 <input type="checkbox" name="ckb_nomeInstituicaoPublica" /> Nome da Institui��o: <input type="text" name="txtNomeInstituicaoPublica" size="60" />
                        </div>
                        <div class="indentado">
                        	5.2 <input type="checkbox" name="ckb_publicaMesmoCurso" /> No mesmo curso
                        </div>
                        <div class="indentado">
                        	5.3 <input type="checkbox" name="ckb_publicaOutroCurso" /> Em outro curso: <input type="text" name="txtPublicaOutroCurso" size="60" />
                        </div>
                        <div>
                        	6 <input type="checkbox" name="ckb_ingressoInstituicaoPublica" /> Ingresso em outra Institui��o de Ensino Privado
                        </div>
                        <div class="indentado">
                        	6.1 <input type="checkbox" name="ckb_nomeInstituicaoPublica" /> Nome da Institui��o: <input type="text" name="txtNomeInstituicaoPrivada" size="60" />
                        </div>
                        <div class="indentado">
                        	6.2 <input type="checkbox" name="ckb_publicaMesmoCurso" /> No mesmo curso
                        </div>
                        <div class="indentado">
                        	6.3 <input type="checkbox" name="ckb_publicaOutroCurso" /> Em outro curso: <input type="text" name="txtPrivadaOutroCurso" size="60" />
                        </div>
                        <div>
                        	7 <input type="checkbox" name="ckb_mudancaResidencia" /> Mudan�a de Resid�ncia
                        </div>
                        <div>
                        	8 <input type="checkbox" name="ckb_outros" /> Outros
                        </div>
                        <div>&nbsp;</div>
                        <div>Motivos:</div>
                        <div>
                        	<textarea name="txtMotivo" cols="74" rows="12" ></textarea>
                        </div>
                        <div id="obs">
                            *Observa��o: Solicitamos que sejam comentados os motivos assinalados.
                            <p>
                                Conforme <b>REGIMENTO GERAL DA UPM, Art. 119</b>: <em>"O cancelamento da matr�cula � admitido, mediante requerimento do interessado e implica no desligamento do discente da UPN e seu reingresso somente pode ocorrer medante pedido de readmiss�o, conforme o disposto por este Regimento e Ato da Reitoria".<br/>
        
        <b>Par�grafo �nico</b> - O cancelamento ou a n�o efetiva��o de matr�cula por 1 (um) semestre letivo, nos <span>Cursos de P�s-Gradua��o</span> implica no desligamento do discente na UPN e reu reingresso somente pode ocorrer mediante submiss�o a <span>Novo Processo Seletivo Universal</span>.</em>
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