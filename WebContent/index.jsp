<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mackenzie - Sistema de Requerimentos - Login</title>
<link rel="stylesheet" type="text/css" href="css/styles.css" />
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
</head>

<body>
	<!---------- Container ---------->
    <div id="container-login">
    	<!---------- Header ---------->
        <div id="header">
            <div id="topo">
                <a href="index.jsp"><img src="images/cabecalho.png" alt="Logo Universidade Presbiteriana Mackenzie" /></a>
            </div>
            <div id="sistema">
                <a href="index.jsp"><img src="images/Sistema-de-Requerimentos.png" alt="Sistema de Requerimentos" /></a>
            </div>
        </div>
        <!---------- Conteúdo ---------->
        <div id="content-login">
        	<div id="login">
            	<form action="validar.jsp" method="post" name="login">
                	<div id="login-form">
                    	<div id="login-drttia">
                        	<div><img src="images/drt_tia.png" alt="" /></div>
                            <div><input type="text" name="txtDRTTIA" size="30" /></div>
                        </div>
                        <div id="login-senha">
                        	<div><img src="images/senha.png" alt="" /></div>
                            <div><input type="password" name="txtSenha" size="30" /></div>
                        </div>
                    </div>
                    <div align="right">
                    	<input type="submit" class="btn-login" value="" />
                    </div>
                </form>
            </div>
            
            <%
            	if (session.getAttribute("loginErro") != null) {
            		%>
            			<div class="loginErro"><%=session.getAttribute("loginErro").toString() %></div>
            		<%
            	}
            %>
            
        </div>
    </div>
    
    <!---------- Rodapé ---------->
    <div id="footer-login-container">
    	<div id="footer">
            <div id="logoRodape-login"><img src="images/logo-peq.png" alt="" /></div>
            <div id="copyright">Copyright &copy; 2012 Instituto Presbiteriano Mackenzie. Todos os direitos reservados.</div>
    	</div>
    </div>
</body>
</html>