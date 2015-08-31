<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="edu.pccu.Movie.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
String s1[] = request.getParameterValues("seat");
String data1;
String data2;
out.println(s1.length);

for (String s : s1)
{
	String tmp = new String(s.getBytes("ISO-8859-1"), "UTF-8");
	out.println(tmp);
	
}
//response.sendRedirect("StudentList.jsp"); 


// Customer c = new Customer(5,"wesley","0933231110","2000-10-10",2,9,"dan");
// MovieDAO dao = new CustomerDAODBImpl();
// dao.add_Customer(c);    
data1= "\""+s1[0]+"\"";
data2="\""+s1[1]+"\"";
out.print(data1);
out.print("人"+Integer.valueOf(s1[4]));

 Customer c2 = new Customer(1,s1[0],s1[1],s1[3],2,Integer.valueOf(s1[4]),"Wesley Success");
 MovieDAO dao1= new CustomerDAODBImpl();
 dao1.add_Customer(c2);
 
//  String s1[] = request.getParameterValues("seat");
//  Customer c = new Customer(s1[0],s1[1],s1[3],2,6,"Wesley Success");
//  MovieDAO dao= new CustomerDAODBImpl();
//  dao.add_Customer(c);
 
// out.println(s1.length);


// for (String s : s1)
 
// {
//  String tmp = new String(s.getBytes("ISO-8859-1"), "UTF-8");
//  out.println(tmp);
 
// }


// out.println("MAil: "+s1[0]);
// out.println("phone:"+s1[1]);
// out.println("Movie: "+new String(s1[2].getBytes( "ISO-8859-1"), "UTF-8") );
// out.println("Date: "+s1[3]);

// out.println("Start:"+s1[4]);
// out.println("End:  "+s1[5]);
// out.println("Seat: "+s1[6]);
// out.println("Seat: "+s1[7]);
// out.println("Seat: "+s1[8]);
// out.println("Seat: "+s1[9]);
// out.println("Seat: "+s1[10]);
// out.println("Seat: "+s1[11]);

//response.sendRedirect("StudentList.jsp"); 
%>
</head>
<body>


</body>
</html>