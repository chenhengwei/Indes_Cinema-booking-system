<%-- 
    Document   : Select_seat
    Created on : Aug 25, 2015, 11:38:16 PM
    Author     : chenwesley
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width = device-width">
        <link rel="stylesheet" type="text/css" href="jquery.seat-charts.css">
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="jquery.seat-charts.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/Select_Seats.css">
         <script type="text/javascript">
		            function check_data_C()
		            {
		               var flag = true;
		               var message = '';
		
		               // ---------- Check ----------
		               var t1 = document.getElementById('t1');
		               if(t1.value=='')
		               {
		                  message = message + '姓名不能為空白\n';
		                  flag = false;
		               }
		               // ---------- Check ----------
		               var t2 = document.getElementById('t2');
		               if(t2.value=='')
		               {
		                  message = message + '電話不能為空白\n';
		                  flag = false;
		               }
		               
		               if(!flag) 
		               {
		                  alert(message);
		               }
		               
		               if(flag) 
		               {

		                   selected-opt.submit();
		               }
		               return flag;
		            }
		            </script>
    </head>
    <body>
        <div id="page">
            <div class="section header clear">

                <div class="author-details">

                    <script cf-hash="f9e31" type="text/javascript">
                        /* <![CDATA[ */!function () {
                            try {
                                var t = "currentScript"in document ? document.currentScript : function () {
                                    for (var t = document.getElementsByTagName("script"), e = t.length; e--; )
                                        if (t[e].getAttribute("cf-hash"))
                                            return t[e]
                                }();
                                if (t && t.previousSibling) {
                                    var e, r, n, i, c = t.previousSibling, a = c.getAttribute("data-cfemail");
                                    if (a) {
                                        for (e = "", r = parseInt(a.substr(0, 2), 16), n = 2; a.length - n; n += 2)
                                            i = parseInt(a.substr(n, 2), 16) ^ r, e += String.fromCharCode(i);
                                        e = document.createTextNode(e), c.parentNode.replaceChild(e, c)
                                    }
                                }
                            } catch (u) {
                            }
                        }();/* ]]> */
                    </script>
                </div>
            </div>
            <div class="section">
               <!--  <h2 id="toc">Dear customer,</h2>
                <h3 id="1">pick up seats</h3>--> 
            </div>
            <div class="results"></div>


            <div class="demo">

                <div id="seat-map" class="seatCharts-container" tabindex="0" aria-activedescendant="1_0">

                    <div class="front">SCREEN</div>
                    <!-- 會自己新增出列表 -->    
               		 </div>
               		 
					<div id="legend" class="seatCharts-legend">
                        <ul class="seatCharts-legendList">
                            <li class="seatCharts-legendItem">
                                <!--
                                <div class="seatCharts-seat seatCharts-cell available">
                                </div>
                                <span class="seatCharts-legendDescription">Option</span>
                                -->
                            </li>
                            <li class="seatCharts-legendItem">
                                <!-- 
                                <div class="seatCharts-seat seatCharts-cell unavailable"></div>
                                 <span class="seatCharts-legendDescription">Sold</span>
                                -->
                            </li>

                        </ul>
                    </div>
                <div class="booking-details">

                    <p>Movie: <span> <%=new String(request.getParameter("mgId").getBytes( "ISO-8859-1"), "UTF-8")%></span></p>
                    <p>Time: <span><%=request.getParameter("todays_date")%></span></p>
                    <p>People: <%=request.getParameter("ticketQuantity")%></p>
                    <p>起: <%=request.getParameter("sessionTimeStart")%> 迄: <%=request.getParameter("sessionTimeEnd")%></p>
                    <p>Seat: </p>
                    <ul id="selected-seats">
                        <!-- 會自己新增 選擇位子 -->    
                    </ul>
                    <p>Tickets: <span id="counter">0</span></p>
                    <p>Total: <b>$<span id="total">0</span></b></p>
                    <br>
                    <button class="checkout-button">BUY</button>

                </div>
               <div id="Customer_info">
               
               
               
               
               
               
                <form id="selected-opt" name="selected-opt" action="Order_comfirm.jsp" method="post" onSubmit="return check_data_C();">
				
				<p>
						  Email:<input id="t1" type="text" name="seat" onblur="getData()" /> <img id="img1" width="50px" height="50px" />
				</p>
				
							    <input type="hidden" id="dup" value="1" />
			    <p>Mobile Phone:<input id="t2" type="text" name="seat" /></p>
				
								<input type="hidden" name="seat" value="<%=new String(request.getParameter("mgId").getBytes( "ISO-8859-1"), "UTF-8")%>" id="<%=new String(request.getParameter("mgId").getBytes( "ISO-8859-1"), "UTF-8")%>"> 
								<input type="hidden" name="seat" value="<%=request.getParameter("todays_date")%>" id="<%=request.getParameter("todays_date")%>"> 
								<input type="hidden" name="seat" value="<%=request.getParameter("ticketQuantity")%>" id="<%=request.getParameter("ticketQuantity")%>"> 
								<input type="hidden" name="seat" value="<%=request.getParameter("sessionTimeStart")%>" id="<%=request.getParameter("sessionTimeStart")%>"> 
								<input type="hidden" name="seat" value="<%=request.getParameter("sessionTimeEnd")%>" id="<%=request.getParameter("sessionTimeEnd")%>"> 
				
				<p><input type="submit" name="submit" value="下訂單" class="checkout-button"/>
				
				</form>
                </div>
                <div style="clear:both">
                
                </div>
				<form >
				
				
				</form>
            </div>

            <script type="text/javascript">
		            
                var price = 10; //price

                $(document).ready(function () {
                    var $cart = $('#selected-seats'), //Sitting Area
                        $counter = $('#counter'), //Votes
                        $total = $('#total'), //Total money
                        $cart_opt = $('#selected-opt');

                    var sc = $('#seat-map').seatCharts({
                        map: [//Seating chart
                            'aaaaaaaaaa',
                            'aaaaaaaaaa',
                            'aaaaaaaaaa',
                            'aaaaaaaaaa',
                            'aaaaaaaaaa',
                            'aaaaaaaaaa',
                            'aaaaaaaaaa',
                            'aaaaaaaaaa',
                            'aaaaaaaaaa',
                            'aa__aa__aa'
                        ],
                        naming: {
                            top: false,
                            getLabel: function (character, row, column) {
                                return column;
                            }
                        },
                        legend: {//Definition legend
                            node: $('#legend'),
                            items: [
                                ['a', 'available', 'Option'],
                                ['a', 'unavailable', 'Sold']
                            ]
                        },
                        click: function () { //Click event
                            if (this.status() == 'available') { //optional seat
                                $('<li>R' + (this.settings.row + 1) + ' S' + this.settings.label + '</li>')
                                        .attr('id', 'cart-item-' + this.settings.id)
                                        .data('seatId', this.settings.id)
                                        .appendTo($cart);
                                //alert('id');
                                //alert('cart-item-');
								//alert(this.settings.row + 1);
								//alert(this.settings.label);
								
                                $counter.text(sc.find('selected').length + 1);
                                
                                //alert(sc.find('selected').length + 1);
                                
                                $total.text(recalculateTotal(sc) + price);
                                
                                //alert(this.settings.id);
                                //<input type="hidden" name="seat" value="1_10">
                                $('<input/>')
                                .attr('type', 'hidden')
                                .attr('name', 'seat')
                                .attr('value', this.settings.id)
                                .attr('id', 'opt'+this.settings.id)
                                .appendTo($cart_opt);
                                
                                return 'selected';
                            } else if (this.status() == 'selected') { //Checked
                                //Update Number
                                $counter.text(sc.find('selected').length - 1);
                            
                                //alert(sc.find('selected').length - 1);
                                //update totalnum
                                $total.text(recalculateTotal(sc) - price);
                                
                                //alert(recalculateTotal(sc) - price);
                                //Delete reservation
                                $('#cart-item-' + this.settings.id).remove();
                                $('#opt'+this.settings.id).remove();
                               
                                
                                //optional
                                return 'available';
                            } else if (this.status() == 'unavailable') { //sold
                                return 'unavailable';
                            } else {
                                return this.style();
                            }
                        }
                    });
                    //sold seat
                    sc.get(['1-1', '1_2', '4_4', '4_5', '6_6', '6_7', '8_5', '8_6', '8_7', '8_8', '10_1', '10_2', '10_3']).status('unavailable');

                });

                //sum total money
                function recalculateTotal(sc) {
                    var total = 0;
                    sc.find('selected').each(function () {
                        total += price;
                    });

                    return total;
                }
            </script>
        </div>
        <!--footer-->
        <div class="footer">
            <!-- <h1 class="theme-name"><strong>Goocode.net</strong><span>© 2013 - 2015 GOOCODE</span></h1> -->
        </div>




        <script type="text/javascript">
            /* <![CDATA[ */
            (function () {
                try {
                    var s, a, i, j, r, c, l = document.getElementsByTagName("a"), t = document.createElement("textarea");
                    for (i = 0; l.length - i; i++) {
                        try {
                            a = l[i].getAttribute("href");
                            if (a && a.indexOf("/cdn-cgi/l/email-protection") > -1 && (a.length > 28)) {
                                s = '';
                                j = 27 + 1 + a.indexOf("/cdn-cgi/l/email-protection");
                                if (a.length > j) {
                                    r = parseInt(a.substr(j, 2), 16);
                                    for (j += 2; a.length > j && a.substr(j, 1) != 'X'; j += 2) {
                                        c = parseInt(a.substr(j, 2), 16) ^ r;
                                        s += String.fromCharCode(c);
                                    }
                                    j += 1;
                                    s += a.substr(j, a.length - j);
                                }
                                t.innerHTML = s.replace(/</g, "&lt;").replace(/>/g, "&gt;");
                                l[i].setAttribute("href", "mailto:" + t.value);
                            }
                        } catch (e) {
                        }
                    }
                } catch (e) {
                }
            })();
            /* ]]> */
        </script>

    </body>
</html>