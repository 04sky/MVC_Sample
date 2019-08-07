<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="pojo.Person"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
        List<Person> persons = (List<Person>)request.getAttribute("persons"); 
        
    %> 
    <table> 
        <tr> 
            <th>id</th> 
            <th>birth</th> 
            <th>sex</th> 
            <th>distance</th> 
            <th>time</th> 
        </tr> 
        
        <% 
            for(Person person:persons){ 
        %> 
            <tr> 
                <td><%= person.getId() %></td> 
                <td><%= person.getBirth() %></td> 
                <td><%= person.getSex() %></td> 
                <td><%= person.getTotal_distance() %></td> 
                <td><%= person.getTotal_time() %></td>
            </tr> 
        <% 
            } 
        %> 
        
    </table> 
</body>
</html>