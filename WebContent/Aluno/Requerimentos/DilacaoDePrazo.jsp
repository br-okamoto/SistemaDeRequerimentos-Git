<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mackenzie - Sistema de Requerimentos - Novo Requerimento - Dilação de Prazo</title>
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
            	<img src="../../images/breadcrumb-bullet.png" alt=""/><h1>Dilação de Prazo</h1>
                <span>Você está em: </span><a href="../Home.jsp">Home</a> &gt; Dilação de Prazo
            </div>
            <div id="content-body">
            	<!-- Verificação de Faltas -->
                <div>
                	Preencha os campos abaixo:
                </div>
                <div>
                	<form method="post" action="DilacaoDePrazo-Confirmacao.jsp" name="formProvaSub">
                    	<table border="0" cellpadding="3" cellspacing="0" >
                            <tr>
                                <td colspan="4">Motivo:</td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <textarea name="txtMotivo" cols="59" rows="6" ></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td width="150px">Telefone para contato:</td>
                                <td colspan="3"><input type="text" name="txtTel" size="20" /></td>
                            </tr>
                            <tr>
                                <td colspan="4">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="4" align="right">
                                	<input type="submit" value="Continuar"/>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div id="obs">
                	*Observação: Todos os campos são obrigatórios.
                </div>
            </div>
        </div>
    </div>
    
    <!---------- Rodapé ---------->
    <c:import url="/includes/footerAluno.jsp" />
</body>
</html>