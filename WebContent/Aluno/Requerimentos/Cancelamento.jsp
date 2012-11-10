<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mackenzie - Sistema de Requerimentos - Novo Requerimento - Cancelmento de Matrícula</title>
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
            	<img src="../../images/breadcrumb-bullet.png" alt=""/><h1>Cancelamento de Matrícula</h1>
                <span>Você está em: </span><a href="../Home.jsp">Home</a> &gt; Cancelamento de Matrícula
            </div>
            <div id="content-body">
            	<!-- Cancelamento de Matrícula -->
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
                        	3 <input type="checkbox" name="ckb_naoadaptacao" /> Não adaptação ao curso
                        </div>
                        <div>
                        	4 <input type="checkbox" name="ckb_insatisfacao" /> Instatisfação com o curso oferecido
                        </div>
                        <div>
                        	5 <input type="checkbox" name="ckb_ingressoInstituicaoPublica" /> Ingresso em Instituição Pública
                        </div>
                        <div class="indentado">
                        	5.1 <input type="checkbox" name="ckb_nomeInstituicaoPublica" /> Nome da Instituição: <input type="text" name="txtNomeInstituicaoPublica" size="60" />
                        </div>
                        <div class="indentado">
                        	5.2 <input type="checkbox" name="ckb_publicaMesmoCurso" /> No mesmo curso
                        </div>
                        <div class="indentado">
                        	5.3 <input type="checkbox" name="ckb_publicaOutroCurso" /> Em outro curso: <input type="text" name="txtPublicaOutroCurso" size="60" />
                        </div>
                        <div>
                        	6 <input type="checkbox" name="ckb_ingressoInstituicaoPublica" /> Ingresso em outra Instituição de Ensino Privado
                        </div>
                        <div class="indentado">
                        	6.1 <input type="checkbox" name="ckb_nomeInstituicaoPublica" /> Nome da Instituição: <input type="text" name="txtNomeInstituicaoPrivada" size="60" />
                        </div>
                        <div class="indentado">
                        	6.2 <input type="checkbox" name="ckb_publicaMesmoCurso" /> No mesmo curso
                        </div>
                        <div class="indentado">
                        	6.3 <input type="checkbox" name="ckb_publicaOutroCurso" /> Em outro curso: <input type="text" name="txtPrivadaOutroCurso" size="60" />
                        </div>
                        <div>
                        	7 <input type="checkbox" name="ckb_mudancaResidencia" /> Mudança de Residência
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
                            *Observação: Solicitamos que sejam comentados os motivos assinalados.
                            <p>
                                Conforme <b>REGIMENTO GERAL DA UPM, Art. 119</b>: <em>"O cancelamento da matrícula é admitido, mediante requerimento do interessado e implica no desligamento do discente da UPN e seu reingresso somente pode ocorrer medante pedido de readmissão, conforme o disposto por este Regimento e Ato da Reitoria".<br/>
        
        <b>Parágrafo único</b> - O cancelamento ou a não efetivação de matrícula por 1 (um) semestre letivo, nos <span>Cursos de Pós-Graduação</span> implica no desligamento do discente na UPN e reu reingresso somente pode ocorrer mediante submissão a <span>Novo Processo Seletivo Universal</span>.</em>
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