<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="edu.pccu.Movie.*,java.util.*"%>

<%!//http://localhost:8080/Index_Cinema/Check_seats_avaliable2.jsp?R=1,1,1&S=2,3,4
	String msg ;
	String num = "";
	String seat_check;
	String s_available;%>
<%
	msg = "";
	String R_get = request.getParameter("R");
	String[] arr_R = R_get.split(",");

	String S_get = request.getParameter("S");
	String[] arr_S = S_get.split(",");

	if (arr_R != null && arr_S != null) {
		for (int i = 0; i < arr_R.length; i++) {
			
			//out.print("長度："+arr_R.length);
			
			SeatDAO saet_dao = new SeatsDAODBImpl();
			s_available = saet_dao.find_Seat_by_RS(arr_R[i], arr_S[i]);
			//out.println(s_available);

			num = "R" + arr_R[i] + "_" + "S" + arr_S[i];
			//out.println(num+",");
			
			if (s_available.equals("Y")) {

				msg += num + "已被訂位,請重新選位子.......";

			} else {
				msg += num + "位子OK.......";

			}
			

		}
		out.print(msg);
	}

	//}  

	// alert(ttl_R);
	// alert(ttl_S);

	// var Seat_splits_R = ttl_R.split(",");
	// var Seat_splits_S = ttl_S.split(",");
	// alert(Seat_splits_R[0]+","+Seat_splits_R[1]+","+Seat_splits_R[2]+","+Seat_splits_R[3]);
	// alert(Seat_splits_S[0]+","+Seat_splits_S[1]+","+Seat_splits_S[2]+","+Seat_splits_S[3]);

	// for(int i=0; i<= (obj.length-2); i=i+2){  
	//     //str += 'id: '+ obj[i].id + ', innerHTML: ' + obj[i].innerHTML + "\n"; 
	//     ttl_seat_order = ("R"+obj[i].value+"_S"+obj[i+1].value+" ");
	//     //ttl_order_nudln +=(obj[i].value+"_"+obj[i+1].value+", ");
	//     SeatDAO saet_dao = new SeatsDAODBImpl();
	//     String R = obj[i].value;
	//     String S = obj[i+1].value;
	//     String seat_check = saet_dao.find_Seat_by_RS(R, S);
	// 	if(seat_check == Y){
	// 		seat_ordered_msg+= ttl_seat_order +"已被訂位,請重新選位子 /n";

	// 	}else{
	// 		seat_ordered_msg+=ttl_seat_order +"位子OK /n";
	// 	}

	// }
%>
