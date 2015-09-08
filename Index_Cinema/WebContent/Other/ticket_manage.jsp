<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="edu.pccu.Movie.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>客戶訂票訊管理</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="description" content="Pimp your tables with CSS3" />
<meta name="keywords" content="table, css3, style, beautiful, fancy, css"/>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>


</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h1>訂票資訊管理</h1>
			<form name="form1" method="post" action="">
				客戶e-mail： <input name="mail_account" type="text" id="mail_account" value="<%%>">
				客戶Phone： <input name="phone_account" type="text" id="phone_account" value="<%%>">
				<input type="submit" name="Submit" value="搜尋">
				<input type="submit" name="Submit" value="顯示所有訂單">
			</form>
		</div>
		<div id="leftbar"></div>
		<div id="content">

			<table class="table1">
			   <thead>
				<tr>
					<th scope="col" abbr="Starter">訂票序號</th>
					<th scope="col" abbr="Starter">客戶信箱</th>
					<th scope="col" abbr="Starter">手機號碼</th>
					<th scope="col" abbr="Starter">訂票時間</th>
					<th scope="col" abbr="Starter">場次編號</th>
					<th scope="col" abbr="Starter">人數</th>
					<!-- <th>客戶名稱</th> -->
					<!-- <th>有(無)效訂單</th> -->
					
					<th scope="col" abbr="Starter">電影編號</th>
					<th scope="col" abbr="Starter">廳別</th>
					<th scope="col" abbr="Starter">播映時間(合併)</th>
					<th scope="col" abbr="Starter">座位(合併)</th>
					<th scope="col" abbr="Starter">座位售出</th>				
					<th scope="col" abbr="Starter">電影名稱(中文)</th>					
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
				    <td><%="R" + ticket.getR_axis() + "S" + ticket.getS_axis()%></td> <!--   座位售出     --> 
					<td><%=ticket.getSold()%></td>
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
	</div>
</body>
</html>