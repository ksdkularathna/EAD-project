<%-- 
    Document   : sales_history
    Created on : Nov 26, 2015, 10:05:59 PM
    Author     : Sampath Dhananjaya
--%>

<%@page import="mappings.Orders"%>
<%@page import="mappings.SalesReturn"%>
<%@page import="java.util.List"%>
<%@page import="mappings.Sales"%>
<%@page import="org.hibernate.Session"%>
<%@page import="mappings.HibernateUtil"%>
<%@page import="org.hibernate.Hibernate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Mosaddek">
        <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <link rel="shortcut icon" href="img/favicon.png">

        <title>Sales & Distribution</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-reset.css" rel="stylesheet">
        <!--external css-->
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
        <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet" />
        <link rel="stylesheet" href="assets/data-tables/DT_bootstrap.css" />

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
        <!--[if lt IE 9]>
          <script src="js/html5shiv.js"></script>
          <script src="js/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>

        <section id="container" >
            <!--header start-->
            <header class="header white-bg">
                <div class="sidebar-toggle-box">
                    <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
                </div>
                <!--logo start-->
                <a href="index.jsp" class="logo">AZD<span>Engines</span></a>
                <!--logo end-->
                <div class="nav notify-row" id="top_menu">
                    <!--  notification start -->
                    <ul class="nav top-menu">
                        <!-- settings start -->
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="fa fa-tasks"></i>
                                <span class="badge bg-success">6</span>
                            </a>
                            <ul class="dropdown-menu extended tasks-bar">
                                <div class="notify-arrow notify-arrow-green"></div>
                                <li>
                                    <p class="green">You have 6 pending tasks</p>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Dashboard v1.3</div>
                                            <div class="percent">40%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                <span class="sr-only">40% Complete (success)</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Database Update</div>
                                            <div class="percent">60%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                <span class="sr-only">60% Complete (warning)</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Iphone Development</div>
                                            <div class="percent">87%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 87%">
                                                <span class="sr-only">87% Complete</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Mobile App</div>
                                            <div class="percent">33%</div>
                                        </div>
                                        <div class="progress progress-striped">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 33%">
                                                <span class="sr-only">33% Complete (danger)</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="task-info">
                                            <div class="desc">Dashboard v1.3</div>
                                            <div class="percent">45%</div>
                                        </div>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar"  role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
                                                <span class="sr-only">45% Complete</span>
                                            </div>
                                        </div>

                                    </a>
                                </li>
                                <li class="external">
                                    <a href="#">See All Tasks</a>
                                </li>
                            </ul>
                        </li>
                        <!-- settings end -->
                        <!-- inbox dropdown start-->
                        <li id="header_inbox_bar" class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge bg-important">5</span>
                            </a>
                            <ul class="dropdown-menu extended inbox">
                                <div class="notify-arrow notify-arrow-red"></div>
                                <li>
                                    <p class="red">You have 5 new messages</p>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="./img/avatar-mini.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Jonathan Smith</span>
                                            <span class="time">Just now</span>
                                        </span>
                                        <span class="message">
                                            Hello, this is an example msg.
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="./img/avatar-mini2.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Jhon Doe</span>
                                            <span class="time">10 mins</span>
                                        </span>
                                        <span class="message">
                                            Hi, Jhon Doe Bhai how are you ?
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="./img/avatar-mini3.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Jason Stathum</span>
                                            <span class="time">3 hrs</span>
                                        </span>
                                        <span class="message">
                                            This is awesome dashboard.
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="photo"><img alt="avatar" src="./img/avatar-mini4.jpg"></span>
                                        <span class="subject">
                                            <span class="from">Jondi Rose</span>
                                            <span class="time">Just now</span>
                                        </span>
                                        <span class="message">
                                            Hello, this is metrolab
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">See all messages</a>
                                </li>
                            </ul>
                        </li>
                        <!-- inbox dropdown end -->
                        <!-- notification dropdown start-->
                        <li id="header_notification_bar" class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                                <i class="fa fa-bell-o"></i>
                                <span class="badge bg-warning">7</span>
                            </a>
                            <ul class="dropdown-menu extended notification">
                                <div class="notify-arrow notify-arrow-yellow"></div>
                                <li>
                                    <p class="yellow">You have 7 new notifications</p>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                                        Server #3 overloaded.
                                        <span class="small italic">34 mins</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-warning"><i class="fa fa-bell"></i></span>
                                        Server #10 not respoding.
                                        <span class="small italic">1 Hours</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                                        Database overloaded 24%.
                                        <span class="small italic">4 hrs</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-success"><i class="fa fa-plus"></i></span>
                                        New user registered.
                                        <span class="small italic">Just now</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-info"><i class="fa fa-bullhorn"></i></span>
                                        Application error.
                                        <span class="small italic">10 mins</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">See all notifications</a>
                                </li>
                            </ul>
                        </li>
                        <!-- notification dropdown end -->
                    </ul>
                    <!--  notification end -->
                </div>
                <div class="top-nav ">
                    <!--search & user info start-->
                    <ul class="nav pull-right top-menu">
                        <li>
                            <input type="text" class="form-control search" placeholder="Search">
                        </li>
                        <!-- user login dropdown start-->
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <img alt="" src="img/avatar1_small.jpg">
                                <span class="username">Jhon Doue</span>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu extended logout">
                                <div class="log-arrow-up"></div>
                                <li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
                                <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
                                <li><a href="#"><i class="fa fa-bell-o"></i> Notification</a></li>
                                <li><a href="login.jsp"><i class="fa fa-key"></i> Log Out</a></li>
                            </ul>
                        </li>
                        <!-- user login dropdown end -->
                    </ul>
                    <!--search & user info end-->
                </div>
            </header>
            <!--header end-->
            <!--sidebar start-->
            <aside>
                <div id="sidebar"  class="nav-collapse ">
                    <!-- sidebar menu start-->
                    <ul class="sidebar-menu" id="nav-accordion">
                        <li>
                            <a class="active" href="index.jsp">
                                <i class="fa fa-dashboard"></i>
                                <span>Dashboard</span>
                            </a>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;" class="active">
                                <i class=""></i>
                                <span>Sales and Distribution</span>
                            </a>
                            <ul class="sub">
                                <li><a>Sales</a>
                                    <ul class="sub">
                                        <li><a  href="add_sales.jsp">Add Sales</a></li>
                                        
                                    </ul>
                                </li>
                                <li class="active"><a  href="sales_history.jsp">Sales History</a></li>
                                <li><a  href="distribution.jsp">Distribution</a></li>
                                <li><a  href="salesoverview.jsp">Sales Overview</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class=""></i>
                                <span>Financial</span>
                            </a>
                            <ul class="sub">
                                <li><a href="CIS.jsp">SOCI</a></li>
                                <li><a href="FPS.jsp">SOFP</a></li>
                                <li><a href="trading_account.jsp">Trading Account</a></li>
                                <li><a href="final_price.jsp">Final Price</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="">
                                <i class=""></i>
                                <span>Inventory</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class=""></i>
                                <span>Procurement</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class=""></i>
                                <span>Production</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class=""></i>
                                <span>HR Management</span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class=""></i>
                                <span>Branch Management</span>
                            </a>
                        </li>



                    </ul>
                    <!-- sidebar menu end-->
                </div>
            </aside>
            <!--sidebar end-->
            <!--main content start-->
            <section id="main-content">
                <section class="wrapper">

                    <!-- page start-->
                    <div class="row">
                        <div class="col-sm-12">
                            <section class="panel">
                                <%String msg = request.getParameter("msg");
                                    String err = request.getParameter("err");
                                    if (msg != null) {
                                %>
                                <div class="alert alert-success alert-block fade in">
                                    <button data-dismiss="alert" class="close close-sm" type="button">
                                        <i class="fa fa-times"></i>
                                    </button>
                                    <strong>Success!</strong> <%=msg%>                            
                                </div>
                                <%}
                                    if (err != null) {%>
                                <div class="alert alert-block alert-danger fade in">
                                    <button data-dismiss="alert" class="close close-sm" type="button">
                                        <i class="fa fa-times"></i>
                                    </button>
                                    <strong><%=msg%></strong>
                                </div>
                                <%}%>
                                <header class="panel-heading">
                                    Total Sales History
                                    <span class="tools pull-right">
                                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                                        <a href="javascript:;" class="fa fa-times"></a>
                                    </span>
                                </header>
                                <div class="panel-body" style="display: block;">
                                    <div class="adv-table editable-table">

                                        <div class="clearfix">

                                        </div>
                                        <table class="table table-striped table-hover table-bordered" id="editable-sample">
                                            <thead>
                                                <tr role="row">
                                                    <th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 195px;">Sales ID</th>
                                                    <th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 264px;">Customer</th>
                                                    <th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 240px;">Engine Category</th>
                                                    <th class="hidden-phone sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 167px;">Model</th>
                                                    <th class="hidden-phone sorting_desc" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-sort="descending" aria-label="CSS grade: activate to sort column ascending" style="width: 119px;">CC</th>
                                                    <th class="hidden-phone sorting_desc" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-sort="descending" aria-label="CSS grade: activate to sort column ascending" style="width: 119px;">Mount Type</th>
                                                    <th class="hidden-phone sorting_desc" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-sort="descending" aria-label="CSS grade: activate to sort column ascending" style="width: 119px;">Contact No</th>
                                                    <th class="hidden-phone sorting_desc" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-sort="descending" aria-label="CSS grade: activate to sort column ascending" style="width: 119px;">QTY</th>
                                                    <th class="hidden-phone sorting_desc" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-sort="descending" aria-label="CSS grade: activate to sort column ascending" style="width: 119px;">Discount</th>
                                                    <th class="hidden-phone sorting_desc" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-sort="descending" aria-label="CSS grade: activate to sort column ascending" style="width: 119px;">Prize</th>
                                                    <th class="hidden-phone sorting_desc" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-sort="descending" aria-label="CSS grade: activate to sort column ascending" style="width: 119px;">Date</th>
                                                    <th class="hidden-phone sorting_desc" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-sort="descending" aria-label="CSS grade: activate to sort column ascending" style="width: 119px;"></th>
                                                </tr>
                                            </thead>

                                            <tbody role="alert" aria-live="polite" aria-relevant="all">
                                                <%
                                                    Session sess = HibernateUtil.getSessionFactory().openSession();
                                                    List<Sales> sales_list = sess.createQuery("from Sales order by idsales desc").list();
                                                    for (Sales sale : sales_list) {
                                                %>
                                                <tr class="gradeX odd">
                                                    <td class=" "><%=sale.getIdsales()%></td>
                                                    <td class=" "><%=sale.getCusName()%></td>
                                                    <td class=" "><%=sale.getEngCategory()%></td>
                                                    <td class=" "><%=sale.getModel()%></td>
                                                    <td class=" "><%=sale.getCc()%></td>
                                                    <td class=" "><%=sale.getMType()%></td>
                                                    <td class=" "><%=sale.getContactNo()%>></td>
                                                    <td class=" "><%=sale.getQuantity()%></td>
                                                    <td class=" "><%=sale.getDiscount()%></td>
                                                    <td class=" "><%=sale.getPrice()%></td>
                                                    <td class=" "><%=sale.getDate()%></td>
                                                    <td><a href="#myModal-1" value="" onclick="parseSalesID('<%=sale.getIdsales()%>')" data-toggle="modal" class="btn btn-xs btn-warning">
                                                            Add a Return
                                                        </a></td>
                                                </tr>
                                                <%}%>
                                            </tbody></table>
                                    </div>
                                </div>
                                <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-1" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                                <h4 class="modal-title" id="salesreturn_heading"></h4>
                                            </div>
                                            <div class="modal-body">

                                                <form class="form-horizontal" role="form" action="addSalesReturn" method="post">
                                                    <div class="form-group">
                                                        <label class="col-sm-3 col-sm-3 control-label">Returned QTY</label>
                                                        <div class="col-sm-9">
                                                            <input name="return_qty" type="text" class="form-control" required>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="col-sm-3 col-sm-3 control-label">Note</label>
                                                        <div class="col-sm-9">
                                                            <textarea name="note" class="form-control" required></textarea>
                                                        </div>
                                                    </div>                                                       
                                                    <input name="salesID" id="salesID" type="hidden" class="form-control">
                                                    <div class="form-group">
                                                        <label class="col-sm-3 col-sm-3 control-label"></label>
                                                        <div class="col-sm-9">
                                                            <button type="submit" class="btn btn-danger">Add a Return</button>
                                                        </div>
                                                    </div>

                                                </form>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <section class="panel">
                                <header class="panel-heading">
                                    Total Sales Return History
                                    <span class="tools pull-right">
                                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                                        <a href="javascript:;" class="fa fa-times"></a>
                                    </span>
                                </header>
                                <div class="panel-body">
                                    <div class="adv-table editable-table">
                                        <div class="clearfix">

                                        </div>

                                        <div class="row-fluid">

                                            <table class="table table-striped table-hover table-bordered" id="editable-sample1">
                                                <thead>

                                                    <tr>
                                                        <th>Sales ID</th>
                                                        <th>Customer</th>
                                                        <th>Engine Category</th>
                                                        <th>Mounting Type</th>
                                                        <th>Sold Price</th>
                                                        <th>Returned Qty</th>                                                       
                                                        <th></th>
                                                        <th></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <%
                                                        List<SalesReturn> salesreturn_list = sess.createQuery("from SalesReturn order by idsalesReturn desc").list();
                                                        for (SalesReturn sale_return : salesreturn_list) {
                                                    %>
                                                    <tr class="">
                                                        <td><%=sale_return.getSales().getIdsales()%></td>
                                                        <td><%=sale_return.getSales().getCusName()%></td>
                                                        <td><%=sale_return.getSales().getEngCategory()%></td>
                                                        <td><%=sale_return.getSales().getMType()%></td>
                                                        <td><%=sale_return.getSales().getPrice()%></td>                                                     
                                                        <td><%=sale_return.getDate()%></td>
                                                        <td><a class="edit" href="javascript:;">Edit</a></td>
                                                        <td><a class="delete" href="javascript:;">Delete</a></td>
                                                    </tr>
                                                    <%}%>

                                                </tbody>
                                            </table>

                                        </div>
                                    </div>
                            </section>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <section class="panel">

                                <header class="panel-heading">
                                    Engine Request Orders
                                    <span class="tools pull-right">
                                        <a href="javascript:;" class="fa fa-chevron-down"></a>
                                        <a href="javascript:;" class="fa fa-times"></a>
                                    </span>
                                </header>
                                <div class="panel-body">
                                    <div class="adv-table editable-table">

                                        <div class="clearfix">

                                        </div>
                                        <div class="row-fluid">

                                            <table class="table table-striped table-hover table-bordered" id="editable-sample3">
                                                <thead>

                                                    <tr>
                                                        <th>Order ID</th>
                                                        <th>Customer</th>
                                                        <th>Engine Category</th>
                                                        <th>Mounting Type</th>
                                                        <th>Date</th>
                                                        <th>CC</th>
                                                        <th>Qty</th>
                                                        <th>Payment</th>
                                                        <th></th>
                                                        
                                                    </tr>
                                                </thead>

                                                <tbody role="alert" aria-live="polite" aria-relevant="all">
                                                    <%
                                                        List<Orders> order_list = sess.createQuery("from Orders order by idorders desc").list();
                                                        for (Orders order : order_list) {
                                                    %>
                                                    <tr class="gradeA odd">
                                                        
                                                        <td class=" "><%=order.getIdorders()%></td>
                                                        <td class=" "><%=order.getUser().getFname()%> <%=order.getUser().getLname()%></td>
                                                        <td class="center"><%=order.getProduct().getCatogeroy()%></td>
                                                        <td class="center"><%=order.getProduct().getMountType()%></td>
                                                        <td class=""><%=order.getDate()%></td>
                                                        <td class="center "><%=order.getProduct().getCc()%></td>
                                                        <td class="center hidden-phone "><%=order.getQuantity()%></td>
                                                        <td class="center hidden-phone "><%=order.getAmount()%></td>
                                                        
                                                        <td style="width: 80px;"><a href="add_sales.jsp" class="btn btn-primary">Proceed to Sell</a></td>
                                                    </tr>
                                                    <%}%>
                                                </tbody></table>
                                            

                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>

                    <!-- page end-->

                </section>
            </section>
            <!--main content end-->
            <!--footer start-->
            <footer class="site-footer">
                <div class="text-center">
                    2013 &copy; AZD.
                    <a href="#" class="go-top">
                        <i class="fa fa-angle-up"></i>
                    </a>
                </div>
            </footer>
            <!--footer end-->
        </section>

        <!-- js placed at the end of the document so the pages load faster -->
        <script src="js/jquery.js"></script>
        <script src="js/jquery-1.8.3.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
        <script src="js/jquery.scrollTo.min.js"></script>
        <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
        <script src="js/jquery.sparkline.js" type="text/javascript"></script>
        <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
        <script type="text/javascript" src="assets/data-tables/jquery.dataTables.js"></script>
        <script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>
        <script src="js/owl.carousel.js" ></script>
        <script src="js/jquery.customSelect.min.js" ></script>
        <script src="js/respond.min.js" ></script>

        <!--common script for all pages-->
        <script src="js/common-scripts.js"></script>

        <!--script for this page only-->
        <script src="js/editable-table.js"></script>

        <!--script for this page-->
        <script src="js/sparkline-chart.js"></script>
        <script src="js/easy-pie-chart.js"></script>
        <script src="js/count.js"></script>

        <script>

                                                        function parseSalesID(id) {
                                                            document.getElementById('salesreturn_heading').innerHTML = 'Sales ID : ' + id;
                                                            document.getElementById('salesID').value = id;
                                                        }

                                                        $(document).ready(function() {
                                                            $("#owl-demo").owlCarousel({
                                                                navigation: true,
                                                                slideSpeed: 300,
                                                                paginationSpeed: 400,
                                                                singleItem: true,
                                                                autoPlay: true

                                                            });
                                                        });

                                                        //custom select box

                                                        $(function() {
                                                            $('select.styled').customSelect();
                                                        });

        </script>
        <script>
            jQuery(document).ready(function() {
                EditableTable.init();
            });
        </script>

    </body>
</html>
