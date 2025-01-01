<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Elements</title>
</head>
<body>
<strong>Examples</strong>

<%
//scriptlet we cannot declare functions in it or use acces modifiers as it sits inside the service() method
//public int x=25; //error
int x=25;
int y=50; 
out.println("HI");  //sents as response or writes on page directly
System.out.println("hii")   ;   //logs valueon server 
%> 

<br/>
<%--Expression --%>
<%=x%> <%--only one statement is allowed inside expression element  --%>
<%=y%>
<%=25*2%> 
<br/>
<%=new String("OBJECT")%>


<%--Declarations --%>
<%!
//sits out service()
public int var=25000; //valid i.e access modifiers allowed
int add(int x,int y){
	
	return x+y;
	
}
private int z=5555;

%>
<%=z %>
<%=add(1,2) %>
<%
add(1,5);
out.println(var);
%>


</body>
</html>