<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Sabai | Biometric System</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="template-resources/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
              page. However, you can choose any other skin. Make sure you
              apply the skin class to the body tag so the changes take effect.
        -->
        <link rel="stylesheet" href="template-resources/css/skins/skin-blue.min.css">
        <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
        <link rel="stylesheet" href="css/sabai.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <!--
    BODY TAG OPTIONS:
    =================
    Apply one or more of the following classes to get the
    desired effect
    |---------------------------------------------------------|
    | SKINS         | skin-blue                               |
    |               | skin-black                              |
    |               | skin-purple                             |
    |               | skin-yellow                             |
    |               | skin-red                                |
    |               | skin-green                              |
    |---------------------------------------------------------|
    |LAYOUT OPTIONS | fixed                                   |
    |               | layout-boxed                            |
    |               | layout-top-nav                          |
    |               | sidebar-collapse                        |
    |               | sidebar-mini                            |
    |---------------------------------------------------------|
    -->
    <body class="hold-transition skin-blue sidebar-mini <!--sidebar-collapse-->">
        <div class="wrapper">

            <!-- Main Header -->
            <header class="main-header">

                <!-- Logo -->
                <a href="index.jsp" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>Sb</b>B</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Sabai</b>Biometric</span>
                </a>

                <!-- Header Navbar -->
                <nav class="navbar navbar-static-top" role="navigation">
                    <!-- Sidebar toggle button-->
                    <!--                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                                            <span class="sr-only">Toggle navigation</span>
                                        </a>-->
                    <!-- Navbar Right Menu -->
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- User Account Menu -->
                            <li class="dropdown user user-menu">
                            </li>
                            <!-- Control Sidebar Toggle Button -->
                            <li>
                                <!--<a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>-->
                            </li>
                        </ul>
                        
                        <ul class="nav navbar-nav navbar-right" style="margin-right:10px">
                            <a href="Logout.jsp"><button class="btn btn-danger navbar-btn">Logout</button></a>
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <!--            <aside class="main-sidebar">
            
                             sidebar: style can be found in sidebar.less 
                            <section class="sidebar">
            
                                 Sidebar user panel (optional) 
                                <div class="user-panel">
                                    <div class="pull-left image">
                                        <img src="template-resources/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                    </div>
                                    <div class="pull-left info">
                                        <p>Alexander Pierce</p>
                                         Status 
                                        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                                    </div>
                                </div>
            
                                 search form (Optional) 
                                <form action="#" method="get" class="sidebar-form">
                                    <div class="input-group">
                                        <input type="text" name="q" class="form-control" placeholder="Search...">
                                        <span class="input-group-btn">
                                            <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                                            </button>
                                        </span>
                                    </div>
                                </form>
                                 /.search form 
            
                                 Sidebar Menu 
                                <ul class="sidebar-menu">
                                    <li class="header">HEADER</li>
                                     Optionally, you can add icons to the links 
                                    <li class="active"><a href="#"><i class="fa fa-link"></i> <span>Link</span></a></li>
                                    <li><a href="#"><i class="fa fa-link"></i> <span>Another Link</span></a></li>
                                    <li class="treeview">
                                        <a href="#"><i class="fa fa-link"></i> <span>Multilevel</span>
                                            <span class="pull-right-container">
                                                <i class="fa fa-angle-left pull-right"></i>
                                            </span>
                                        </a>
                                        <ul class="treeview-menu">
                                            <li><a href="#">Link in level 2</a></li>
                                            <li><a href="#">Link in level 2</a></li>
                                        </ul>
                                    </li>
                                    
                                    <li><a href="#"><i class="fa fa-plus"></i> <span>Clear</span></a></li>
                                </ul>
                                 /.sidebar-menu 
                            </section>
                             /.sidebar 
                        </aside>-->
