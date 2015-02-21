<%-- 
    Document   : index
    Created on : 09-12-2014, 03:36:33 PM
    Author     : Mithlerion
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>EJERCICIO 04 SUBIR ARCHIVO</title>
	</head>
	<body>
		<!--Lo real mente importante es en el formulario decir -->
		<!--que van archivos con el enctype igual a MULTIPART/FORM-DATA -->
		<form action="upload.jsp" method="post" enctype="multipart/form-data" >
			<input type="file" name="file" /><br/>
			<input type="submit" value="subir archivo" />
		</form>
	</body>
</html>
