<%-- 
    Document   : Select_seat
    Created on : Aug 25, 2015, 11:38:16 PM
    Author     : chenwesley
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="edu.pccu.Movie.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width = device-width">
        <link rel="stylesheet" type="text/css" href="jquery.seat-charts.css">
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="jquery.seat-charts.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/Comfirm_info.css">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>

    </head>
    <body>
        <div id="page">
            <div class="section header clear">

            </div>

            <div class="results"></div>
 			<div style="clear:both"></div>

            <div class="demo">
 				<div style="clear:both"></div>
 				
                <div id="seat-map" class="booking-show-info" tabindex="0" aria-activedescendant="1_0">
				<form name="form1" method="post" action="">
				客戶e-mail： <input name="mail_account" type="text" id="mail_account" value="<%%>">
				客戶Phone： <input name="phone_account" type="text" id="phone_account" value="<%%>">
				<input type="submit" name="Submit" value="搜尋">
				<input type="submit" name="Submit" value="顯示所有訂單">
				</form>

                <div class="booking-show-detail">
				<table class="table1">
			   <thead>
				<tr>
					<th scope="col" abbr="Starter">序號</th>
					<th scope="col" abbr="Starter">信箱</th>
					<th scope="col" abbr="Starter">手機</th>
					<th scope="col" abbr="Starter">訂票時間</th>
					<th scope="col" abbr="Starter">場次</th>
					<th scope="col" abbr="Starter">人數</th>
					<!-- <th>客戶名稱</th> -->
					<!-- <th>有(無)效訂單</th> -->
					
					<th scope="col" abbr="Starter">編號</th>
					<th scope="col" abbr="Starter">廳別</th>
					<th scope="col" abbr="Starter">播映時間</th>
					<th scope="col" abbr="Starter">座位</th>
					<!-- <th scope="col" abbr="Starter">座位售出</th>	  -->			
					<th scope="col" abbr="Starter">電影名稱</th>					
					<th scope="col" abbr="Starter">版本</th>
					<!-- <th>seat_list</th>	-->			
					<!-- <th>編輯</th> -->
					<th scope="col" abbr="Starter">刪除</th>
				
				
				</tr>
				</thead>
			<%
				request.setCharacterEncoding("utf-8");
				String mail_account = request.getParameter("mail_account");
				String phone_account = request.getParameter("phone_account");
				String option = String.valueOf(request.getParameter("Submit"));
				
				AllJoinDAO dao = new AllJoinDAODBImpl();
				
				if(mail_account != null && phone_account != null && phone_account != "" && mail_account != ""){
				ArrayList<AllJoin> join_list = dao.getAllTickets();
		
					join_list = dao.getOrderedTickets(mail_account.trim(),phone_account.trim());
					for (AllJoin ticket : join_list) {
				
			%>
			
				<tr>
					<td><%=ticket.getT_ticket_no()%></td> <!-- 訂票序號 -->
					<td><%=ticket.getMail_account()%></td>  <!-- 客戶信箱 -->
					<td><%=ticket.getPhone_password()%></td> <!-- 手機號碼 -->
					<td><%=ticket.getOrder_date()%></td>	<!-- 訂票時間 -->
					<td><%=ticket.getT_session_ID()%></td> <!-- 場次編號 -->
					<td><%=ticket.getPeople()%></td> <!-- 人數 -->
					<%-- <td><%=ticket.getCustomer_name()%></td> --%>
					<!-- <td><%=ticket.getT_valid()%></td>	有(無)效訂單  -->				
					<td><%=ticket.getS_movie_no()%></td> <!--電影編號 -->
					<td><%=ticket.getS_room()%></td> <!-- 廳別  -->
					<td><%=ticket.getShow_date() + " " + ticket.getShow_time()%></td> <!-- 播映時間(合併)  -->
				    <td><%="R" + ticket.getR_axis() + "S" + ticket.getS_axis()%></td>   座位售出     
			 <!-- 		<td><%=ticket.getSold()%></td> --> 
					<td><%=ticket.getMovie_name_chinese()%></td>					
					<td><%=ticket.getVersion()%></td>
					<!--  <td><%=ticket.getSeat_list()%></td> -->
					
					<!-- <td><a href=modify.jsp?id=" + id + ">編輯</a></td> -->
					<%-- <td><a href="movie_edit.jsp?id=<%=movie.get_m_no()%>">編輯</a></td> --%>
					<td><a href="ticket_cancel.jsp?id=<%=ticket.getT_ticket_no()%>"
						onclick=return(confirm('確定取消訂單嗎？'))>取消</a></td>
				</tr>
				<%
					}
				}
				%>
			</table>
   
                </div>
               <div id="Customer_info">

                </div>
                
                <div style="clear:both"></div>
				
            </div>
            
            
            
            
            
					
			
        </div>
        <!--footer-->
        <div class="footer">
            <!-- <h1 class="theme-name"><strong>Goocode.net</strong><span>© 2013 - 2015 GOOCODE</span></h1> -->
        </div>



    </body>
</html>