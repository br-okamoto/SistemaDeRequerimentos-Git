<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="br.mackenzie.requerimentos.integration.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
					try {
						int usuTIA = Integer.parseInt(request.getParameter("txtDRTTIA").toString());
						String usuSenha = request.getParameter("txtSenha").toString();
						
						Connection con = new ConnectionFactory().getConnection();
						
						PreparedStatement s = con.prepareStatement("SELECT * FROM usuario WHERE usu_cod = ?");
						s.setInt(1,usuTIA);
						ResultSet rs = s.executeQuery();
						int contador = 0;
						while (rs.next()) {
							contador++;
							int dbTIA = rs.getInt("usu_cod");
							String dbSenha = rs.getString("usu_senha");
							
							if ((dbTIA == usuTIA) && dbSenha.equals(usuSenha)) {
								session.setAttribute("sessionUsu_Cod", rs.getInt("usu_cod"));
								session.setAttribute("sessionUsu_Nome", rs.getString("usu_nome"));
								session.setAttribute("sessionUsu_Email", rs.getString("usu_email"));
								session.setAttribute("sessionUsu_Tipo", rs.getInt("tipo_id"));
								if (rs.getInt("tipo_id")==3) {
									response.sendRedirect("/SistemaDeRequerimentos/Aluno/Home.jsp");
								} else if (rs.getInt("tipo_id")==2 || rs.getInt("tipo_id")==1) {
									response.sendRedirect("/SistemaDeRequerimentos/Admin/Home.jsp");
								} else {
									session.setAttribute("loginErro","Cadastro de usuário incompleto");
									response.sendRedirect("index.jsp");
								}
							} else {
								session.setAttribute("loginErro","TIA/DRT ou senha inválidos");
								response.sendRedirect("index.jsp");
							}
						}
						if (contador == 0) {
							session.setAttribute("loginErro","TIA/DRT inválido ou Usuário não cadastrado no sistema");
							response.sendRedirect("index.jsp");
						}
					}
					catch(SQLException e) {
						session.setAttribute("loginErro","Problema de conexão com o banco de dados");
						response.sendRedirect("index.jsp");
					}
					catch(NumberFormatException e) {
						session.setAttribute("loginErro","TIA/DRT inválido");
						response.sendRedirect("index.jsp");
					}

						%>
</body>
</html>