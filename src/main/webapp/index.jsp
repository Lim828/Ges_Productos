<%@page import="java.util.ArrayList"%>
<%@page import="com.emerii.Producto"%> 
<%
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("listproduc");
%> 
<%@page contentType="text/html" pageEncoding="uTF-8"%> 

<!DOCTYPE html>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
            <title>JSP Page</title> 
   </head> 
<body> 

    <div Style="text-align:center;">
<table border="1" style="margin: 0 auto;">
    
    <tr>
        <td>PRIMER PARCIAL TEM-742</td>
    </tr>
     <tr>
        <td>Nombre : Limber Condori Vargas</td>
    </tr>
     <tr>
        <td>Carnet : 8283903</td>
    </tr>
</table>
    </div>
    <div Style="text-align:center;">
<h1 Style="text-align:center;">Productos</h1>
<a href="MainController?op=nuevo">Nuevo Producto</a>
<table border="1" style="margin: 0 auto;">
    <tr> 
             <th>Id</th> 
             <th>Descripcion</th> 
             <th>Cantidad</th> 
             <th>Precio</th> 
             <th>Categoria</th> 
             <th>Editar</th>
             <th>Eliminar</th>
    </tr> 
    <%
    if (lista != null) { 
        for (Producto item : lista) { 
    %>
    <tr> 
        <td><%= item.getId()%></td>
        <td><%= item.getDescripcion()%></td>
        <td><%= item.getCantidad()%></td> 
        <td><%= item.getPrecio()%></td> 
        <td><%= item.getCategoria()%></td>
        <td><a href="MainController?op=editar&id=<%=item.getId()%>">Editar</a></td>
        <td><a href="MainController?op=eliminar&id=<%=item.getId()%>" 
               onclick='return confirm("Esta seguro de eliminar el registro?");' >Eliminar</a></td>
    </tr>
    <%
        }
     }
        
    %>
</table> 
    </div>
</body> 
</html>

