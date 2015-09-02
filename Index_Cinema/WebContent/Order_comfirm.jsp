<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="edu.pccu.Movie.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%!int f; %>
<%
//客戶資訊傳入陣列
String s1[] = request.getParameterValues("seat");

//客戶資訊
/* out.println("MAil: "+s1[0]);
out.println("phone:"+s1[1]);
out.println("Movie: "+new String(s1[2].getBytes( "ISO-8859-1"), "UTF-8") );
out.println("Date: "+s1[3]);
out.println("PP: "+s1[4]);
out.println("Start:"+s1[5]);
out.println("End:  "+s1[6]); */

//訂位資訊傳入陣列
String s2[] = request.getParameterValues("seat_Ordered");

String ttl_seat_order="";
String ttl_order_No_under="";


//產生訂位資訊(ttl_seat_order)
for(int j=0;j<=(s2.length-2);j=j+2){
	
	ttl_seat_order=ttl_seat_order+("R"+s2[j]+"_S"+s2[j+1]+", ");
	ttl_order_No_under=ttl_order_No_under+(s2[j]+"_"+s2[j+1]+", ");
}
	//匯入客戶資訊->產生自動訂單編號
	Ticket t = new Ticket(s1[0],s1[1],s1[3],2,Integer.valueOf(s1[4]),"Y",ttl_seat_order);       
    TicketDAO dao = new TicketDAODBImpl();
    int auto_ticket_no = dao.add_ticket(t);
	//回傳 自動訂單號

	

for(int i=0;i<=(s2.length-2);i=i+2){
	
	int f;
    Seats ordered_s = new Seats("A",s2[i],s2[i+1],"Y",auto_ticket_no,"Y");
    SeatDAO Seat_dao = new SeatsDAODBImpl();
    f = Seat_dao.add_Seats_ticket_no(ordered_s);
    //out.print(f);
    this.f=f;
}

if(f!=1){
	out.print("訂單失敗 , 請回上一頁");
}else{

	
	
	out.print("訂單成功");
	out.println("MAil: "+s1[0]);
	out.println("phone:"+s1[1]);
	out.println("Movie: "+new String(s1[2].getBytes( "ISO-8859-1"), "UTF-8") );
	out.println("Date: "+s1[3]);
	out.println("人數: "+s1[4]);
	out.println("Start:"+s1[5]);
	out.println("End:  "+s1[6]);
}

%>

<%
//  		Ticket t = new Ticket(s1[0],s1[1],s1[3],2,Integer.valueOf(s1[4]),"Y",ttl_seat_order);       
//         TicketDAO dao = new TicketDAODBImpl();
//         int auto_ticket_no = dao.add_ticket(t);
//         System.out.println(auto_ticket_no);

//         Seats ordered_s = new Seats("A","6","10","Y",auto_ticket_no,"Y");
//         SeatDAO Seat_dao = new SeatsDAODBImpl();
//         int f = Seat_dao.add_Seats_ticket_no(ordered_s);
//         System.out.println(f);
    
%>




<%
// String SD[] = request.getParameterValues("seat");
// String data1;
// String data2;
// //out.println(s1.length);

// for (String s : SD)
// {
// 	//String tmp = new String(s.getBytes("ISO-8859-1"), "UTF-8");
// 	out.println(s);
	
// }


//String s2[] = request.getParameterValues("seat_Ordered");
//String ttl_seat_order="";
//String ttl_order_No_under="";

//out.println(s2.length);

//for (String s : s2)
//{
//	String tmp_s2 = new String(s.getBytes("ISO-8859-1"), "UTF-8");
	//out.println(tmp_s2);
	
//}

// Seats add_ordered_seat = new Seats("A","7","5","Y");
// SeatDAO seat_dao = new SeatsDAODBImpl();
// seat_dao.add_Seats(add_ordered_seat);


//for(int i=0;i<=(s2.length-2);i=i+2){
	
// 	Seats add_ordered_seat = new Seats("A",s2[i],s2[i+1],"Y");
// 	SeatDAO seat_dao = new SeatsDAODBImpl();
// 	seat_dao.add_Seats(add_ordered_seat);
	
// 	ttl_seat_order=ttl_seat_order+("R"+s2[i]+"_S"+s2[i+1]+", ");
// 	ttl_order_No_under=ttl_order_No_under+(s2[i]+"_"+s2[i+1]+", ");
	

	
	
// }

// out.println("訂位編號：   ["+ttl_seat_order+"]");
//out.println("訂位編號：   "+ttl_order_No_under);

//Customer c = new Customer(s1[0],s1[1],s1[3],2,Integer.valueOf(s1[4]),"N",ttl_seat_order);       
//MovieDAO dao_X = new CustomerDAODBImpl();
//dao_X.add_Customer(c);



//語法 會寫入兩次資料 之後debug
// Ticket T = new Ticket(s1[0],s1[1],s1[3],2,Integer.valueOf(s1[4]),"N",ttl_seat_order);       
// TicketDAO daoT =  new TicketDAODBImpl();
// daoT.add_ticket(T);
%>


<%
//訂票資訊






//Ticket t1 = new Ticket("WWW@hotmail.com","0933231110","2014-10-10",2,3,"N","1_10,1_2,1_3");
//TicketDAO dao1 = new TicketDAODBImpl();
//dao1.add_ticket(t1);


//Ticket t = new Ticket("wesley","0933231110","2000-10-10",1,5,"Y","1_1");       
//TicketDAO dao = new TicketDAODBImpl();
//dao.add_ticket(t);




//response.sendRedirect("StudentList.jsp"); 


// Customer c = new Customer(5,"wesley","0933231110","2000-10-10",2,9,"dan");
// MovieDAO dao = new CustomerDAODBImpl();
// dao.add_Customer(c);    
// data1= "\""+s1[0]+"\"";
// data2="\""+s1[1]+"\"";
// out.print(data1);
// out.print("人"+Integer.valueOf(s1[4]));



 //Customer c2 = new Customer(1,s1[0],s1[1],s1[3],2,Integer.valueOf(s1[4]),"Wesley Success");
 //MovieDAO dao1= new CustomerDAODBImpl();
 //dao1.add_Customer(c2);
 
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