<%@page contentType="text/html" pageEncoding="UTF-8" import="edu.pccu.Movie.*,java.util.*"%>
<!DOCTYPE html>

<html class="no-js" lang="en">
<head>
  <!-- title and meta -->
  <meta charset="utf-8">
  <meta content="width=device-width,initial-scale=1.0" name="viewport">
  <meta content="" name="Various CSS input text styles that are great for giving forms on your site a more welcoming and appealing look, done with straight up CSS.">

  <title>Various CSS Input Text Styles</title>

  <!-- css -->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Bitter:400,700' rel='stylesheet' type='text/css'>
  <link href="css/font-awesome/font-awesome.css" rel="stylesheet">

  <link href="css/style_S.css" rel="stylesheet">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<style>
/* ============================================================
  RESET
============================================================ */
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, font, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td {
  background: transparent;
  border: 0;
  margin: 0;
  padding: 0;
  vertical-align: baseline;
}

body {
  line-height: 1;
}

h1, h2, h3, h4, h5, h6 {
  clear: both;
  font-weight: normal;
}

ol, ul {
  list-style: none;
}

blockquote {
  quotes: none;
}

blockquote:before, blockquote:after {
  content: '';
  content: none;
}

del {
  text-decoration: line-through;
}

/* tables still need 'cellspacing="0"' in the markup */
table {
  border-collapse: collapse;
  border-spacing: 0;
}

a img {
  border: none;
}

/* ============================================================
  GLOBALS
============================================================ */
*,
*:before,
*:after {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  background-color: #dc2850;
  color: #505050;
  font-family: "Open Sans", sans-serif;
  font-weight: 400;
  font-size: 14px;
  line-height: 1.8;
}

/* Headings */
h1, h2, h3, h4, h5, h6 {
  line-height: 1;
  font-weight: 700;
  font-family: "Bitter", serif;
}

a {
  text-decoration: none;
  color: #dc2850;
}

a:hover {
  color: #9e1a37;
}

/* clear floated divs */
.clearfix:after {
  content: "";
  display: table;
  clear: both;
}

/* ============================================================
  TEMPLATE
============================================================ */
#wrapper {
  width: 100%;
  margin: 0 auto;
}

#main {
  background-color: #fff;
  padding: 30px 0;
}

.container {
  width: 100%;
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 30px;
}

/* ============================================================
  INFO BAR
============================================================ */
.info-bar {
  background-color: #9e1a37;
  text-align: center;
}
.info-bar a.icon {
  margin: 0 5px;
  padding: 10px 0;
  color: #fff;
  font-size: 20px;
  position: relative;
}
.info-bar a.icon[data-title]:hover:after {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 20px;
  content: attr(data-title);
  padding: 5px 10px;
  background-color: #9e1a37;
  font-family: "Open Sans", sans-serif;
  color: #fff;
  font-size: 12px;
  white-space: nowrap;
}

/* ============================================================
  HEADER
============================================================ */
header .branding {
  padding: 30px 0;
  background-color: #dc2850;
}
header .branding .container {
  padding: 0 30px 0 90px;
}
header .social {
  float: left;
  width: 100%;
  height: 60px;
  text-align: right;
  line-height: 60px;
}
header .social a {
  display: inline-block;
  text-indent: -9999px;
  font-size: 0;
  margin: 15px 0;
  width: 30px;
  height: 30px;
  background-size: 30px 30px;
  margin-left: 5px;
  background-image: url("../img/core/social-light.png");
  background-image: url("../img/core/social-light.svg"), none;
  background-size: 180px 30px;
}
header .social a.fb {
  background-position: 0 0;
}
header .social a.twitter {
  background-position: -30px 0;
}
header .social a.googleplus {
  background-position: -60px 0;
}
header .social a.rss {
  background-position: -90px 0;
}
header .social a.email {
  background-position: -120px 0;
}
header .social a.search {
  background-position: -150px 0;
}
header .social a:hover {
  opacity: 0.4;
}
header .logo {
  float: left;
  width: 60px;
  height: 60px;
  margin-left: -60px;
}
header .site-title {
  background-color: #9e1a37;
  padding: 10px 30px;
  text-align: center;
}
header .site-title h1 {
  font-size: 12px;
  margin: 0;
  padding: 0;
  color: #fff;
}

/* ============================================================
  FOOTER
============================================================ */
footer {
  padding: 30px 0;
}
footer .container {
  padding: 0 30px;
}
footer aside {
  width: 33.3333%;
  float: left;
}
footer aside.logo {
  text-align: right;
}
footer ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}
footer ul a {
  color: #fff;
}
footer ul a:hover {
  color: #ea8097;
}
footer .copyright {
  margin-top: 30px;
  text-align: center;
}
footer .copyright span {
  color: #fff;
}
footer .copyright a {
  color: #ea8097;
}

/* ============================================================
  MEDIA QUERIES
============================================================ */
@media all and (max-width: 960px) {
  /* footer */
  footer aside {
    width: 100%;
    float: none;
    margin-bottom: 15px;
  }
  footer aside:last-child {
    margin-bottom: 0;
  }
  footer aside.logo {
    text-align: center;
  }
  footer ul {
    text-align: center;
  }
  footer ul li {
    display: inline-block;
  }
  footer ul li:after {
    content: "\2022";
  }
  footer ul li:last-child:after {
    content: none;
  }
  footer ul li a {
    margin: 0 10px;
  }
}
@media all and (max-width: 400px) {
  header .branding {
    padding: 15px 0;
  }
  header .branding .container {
    padding: 0 30px;
  }
  header .social {
    float: none;
    width: 100%;
    text-align: center;
    line-height: 30px;
    height: 30px;
  }
  header .social a {
    margin: 0 5px;
  }
  header .logo {
    float: none;
    margin: 0 auto;
    margin-bottom: 15px;
  }
}




</style>
</head>

<body>

<div id="wrapper">
  
  <div class="info-bar">
    <div class="container">
      <a class="icon fa fa-home" data-title="Back To Tutorial" href="http://www.callmenick.com/?p=540"></a>
      <a class="icon fa fa-arrow-left" data-title="Pevious Demo - Stylish CSS Buttons" href="http://callmenick.com/tutorial-demos/stylish-css-buttons/"></a>
      <!-- <a class="icon fa fa-arrow-right" data-title="Next Demo" href=""></a> -->
      <a class="icon fa fa-download" data-title="Download Source" href="http://www.callmenick.com/tutorial-demos/input-text-styles/input-text-styles-source.zip"></a>
      <a class="icon fa fa-folder-open" data-title="Tutorial Archives" href="http://www.callmenick.com/category/tutorials/"></a>
    </div>
  </div><!-- /.info-bar -->

  <header>
	<!-- /.branding -->
    <div class="branding">
      <div class="container clearfix">
        <div class="logo">
          <a href="http://www.callmenick.com"><img alt="Call Me Nick - Tutorials, Resources, &amp; Articles for Web Design &amp; Web Development" onerror="this.src=logo.png" src="images/core/logo.svg"></a>
        </div>

        <div class="social">
          <a class="fb" href="https://www.facebook.com/callmenick1" target="_blank">facebook</a>
          <a class="twitter" href="https://twitter.com/nicksalloum_" target="_blank">twitter</a>
          <a class="googleplus" href="https://plus.google.com/115555859876227750152/" target="_blank">google plus</a>
          <a class="rss" href="http://feeds.feedburner.com/callmenick_" target="_blank">rss</a>
          <a class="email" href="http://www.callmenick.com/subscribe/">email</a>
        </div>
      </div>
    </div>
    <!-- /.branding -->

    <div class="site-title">
      <div class="container">
        <h1> 訂單查詢 </h1>
      </div>
    </div><!-- /.site-title -->

  </header>

  <div id="main">
    <div class="container">
      
      <section>
        <h2>訂票查詢</h2>
        <form name="form1" method="post" action="" class="input-list style-1 clearfix">
        <ul >
          <li>
            <input name="mail_account" type="text" id="mail_account" placeholder=": E-Mail">
          </li>
          <li>
            <input name="phone_account" type="text" id="phone_account" placeholder=":Mobile-Phone" class="focus">
          </li>
        </ul>
				<input type="submit" name="Submit" class="btn btn-danger" value="搜尋" >
				<input type="submit" name="Submit" class="btn btn-danger" value="顯示所有訂單">
		</form>
		 </section>
				<table id='sort' class='sort'>
				      <thead>
				        <tr>
				        
						<th>序號</th>
						<th>信箱</th>
						<th>手機</th>
						<th>訂票時間</th>
						<th>場次</th>
						<th>人數</th>
						<!-- <th>客戶名稱</th> -->
						<!-- <th>有(無)效訂單</th> -->
						
						<th>編號</th>
						<th>廳別</th>
						<th>播映時間</th>
						<th>座位</th>
						<!-- <th scope="col" abbr="Starter">座位售出</th>	  -->			
						<th>電影名稱</th>					
						<th>版本</th>
						<!-- <th>seat_list</th>	-->			
						<!-- <th>編輯</th> -->
						<th>刪除</th>
				
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
			<tbody>
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
				    <td><%="R" + ticket.getR_axis() + "S" + ticket.getS_axis()%></td>  <!-- 座位售出    --> 
			 <!-- 	<td><%=ticket.getSold()%></td> --> 
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
				      </tbody>
				    </table>
  </div>

    </div>
    
 
  <!-- #main -->

  <footer>
    <div class="container">
      <div class="clearfix">
        <aside>
        <span class="clearfix">電影</span>
          <ul>
                        <li><a href="http://www.ezding.com.tw/welcome.do">最新預告</a></li>
                        <li><a href="#">評價評論</a></li>
                        <li><a href="http://www.ezding.com.tw/welcome.do">即將上映電影</a></li>
                        <li><a href="http://www.ezding.com.tw/welcome.do">訂票Top10</a></li>
          </ul>
        </aside>

        <aside>
        <span class="clearfix">各區影城訂票</span>
          <ul>
                        <li><a href="http://www.ezding.com.tw/mb.do?cinemaId=aa328194963a11e092b89646992d17ea">in89豪華</a></li>
                        <li><a href="http://www.ezding.com.tw/mb.do?cinemaId=46efa950eafa11e38b12000bdb90dba4">樂聲</a></li>
                        <li><a href="http://www.ezding.com.tw/mb.do?cinemaId=79dd632cce7511e2ad6600215edc3df8">新民生</a></li>
                        <li><a href="http://www.ezding.com.tw/mb.do?cinemaId=40288eb0050f542401050f554e7e0674">威秀</a></li>
                        <li><a href="http://www.ezding.com.tw/mb.do?cinemaId=40288eb0050f542401050f55676b1bbc">美麗華大直</a></li>
                        <li><a href="http://www.ezding.com.tw/mb.do?cinemaId=40288eb0050f542401050f5566201ba4">華威</a></li>
                        <li><a href="http://www.ezding.com.tw/mb.do?cinemaId=2c28121ae2c711e292f7000bdb90dba4">屏東中影</a></li>
                   
          </ul>
        </aside>
        <aside class="logo">
          <a href="http://www.callmenick.com/"><img alt="Tutorials, Snippets, Resources, and Articles for Web Design and Web Development" onerror="this.src=logo.png" src="images/core/logo.svg"></a>
        </aside>

      
        
        
      </div>
     
    </div>
  </footer><!-- /footer -->
  
</div><!-- /#wrapper -->



</body>
</html>