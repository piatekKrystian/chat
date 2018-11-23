<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@page import="beans.communicateData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet' type='text/css' href='styl.css'>
<title>Communicator</title>
</head>
<body>
<h1> Communicator</h1>
<div class="ogloszenie">
<form>
		
			Podaj nick: <input type="text" name="imie" >
			<jsp:useBean id="nick" class="beans.infoBean" scope="session" />
			<jsp:setProperty name="nick" property="nick" param="imie"/>
			<button>OK</button>
		<br>
	<%
	
	String number2 = nick.getNick(); 
	if(number2 != null) {
	out.println(number2+ " enter your text:");
	}
	%>
	
	</form>
	<form>
	<input type="text" name="text" size = "45" >
		
	<jsp:useBean id="infoBean" class="beans.infoBean"/>
	<jsp:setProperty name="infoBean" property="text" param="text"/>
	<button>Wyślij</button>
	</form>
	<br>
	<%
	String number1 = infoBean.getText(); 
	%>
	<%
	LocalTime l = LocalTime.now();
	String time = l.toString();
	String adder = time+"<br>"+number2+ ": "+number1;
	if(number1!= null && number2 != null){
	communicateData.Communicates.add(adder);
	}
	%>

	</div>
	<div class="schowek">
	
	
	<%
	if(number1 != null && number2!= null){
		int lengh = communicateData.Communicates.size();
		switch (lengh){
		case 0:
			out.print("no entry");
		case 1:
			out.print(communicateData.Communicates.get(lengh-1));
			break;
		case 2:
			out.print(communicateData.Communicates.get(lengh-2));
			out.println("<br>");
			out.print(communicateData.Communicates.get(lengh-1));
			break;
		case 3:
			out.print(communicateData.Communicates.get(lengh-3));
			out.println("<br>");
			out.print(communicateData.Communicates.get(lengh-2));
			out.println("<br>");
			out.print(communicateData.Communicates.get(lengh-1));
			break;
		default:
			out.print(communicateData.Communicates.get(lengh-4));
			out.println("<br>");
			out.print(communicateData.Communicates.get(lengh-3));
			out.println("<br>");
			out.print(communicateData.Communicates.get(lengh-2));
			out.println("<br>");
			out.print(communicateData.Communicates.get(lengh-1));
			
		}
				
		
	}
	%>
	</div>
</body>
</html>