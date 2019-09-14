<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>




<!DOCTYPE html>
<html lang="en">
<head>

	<spring:url value="/resources" var="urlPublic"/>
	<spring:url value="/" var="urlRoot"></spring:url>
	

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>Sistema de XXXXX</title>

    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${urlPublic}/Boostrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${urlPublic}/Boostrap/font-awesome/4.5.0/css/font-awesome.min.css" />

    <!-- page specific plugin styles -->
    <!-- text fonts -->
    <link rel="stylesheet" href="${urlPublic}/Boostrap/css/fonts.googleapis.com.css" />

    <!-- ace styles -->
    <link rel="stylesheet" href="${urlPublic}/Boostrap/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

    <!--[if lte IE 9]>
        <link rel="stylesheet" href="~/Boostrap/css/ace-part2.min.css" class="ace-main-stylesheet" />
    <![endif]-->
    <link rel="stylesheet" href="${urlPublic}/Boostrap/css/ace-skins.min.css" />
    <link rel="stylesheet" href="${urlPublic}/Boostrap/css/ace-rtl.min.css" />
    <link rel="stylesheet" href="${urlPublic}/Boostrap/css/chosen.min.css" />


    <!--[if lte IE 9]>
      <link rel="stylesheet" href="~/Boostrap/css/ace-ie.min.css" />
    <![endif]-->
    <!-- inline styles related to this page -->
    <!-- ace settings handler -->
    <script src="${urlPublic}/Boostrap/js/ace-extra.min.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->
    <!--[if lte IE 8]>
    <script src="~/Boostrap/js/html5shiv.min.js"></script>
    <script src="~/Boostrap/js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="no-skin">
    <div id="navbar" class="navbar navbar-default          ace-save-state">
        <div class="navbar-container ace-save-state" id="navbar-container">
            <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
                <span class="sr-only">Toggle sidebar</span>

                <span class="icon-bar"></span>

                <span class="icon-bar"></span>

                <span class="icon-bar"></span>
            </button>

            <div class="navbar-header pull-left">
                <a href="@Url.Action("Inicio", "Principal")" class="navbar-brand">
                    <small>
                        <i class="fa fa-leaf"></i>
                        Sistema de  Ventas
                    </small>
                </a>
            </div>

            <div class="navbar-buttons navbar-header pull-right" role="navigation">
                <ul class="nav ace-nav">

                    <li class="light-blue dropdown-modal">
                        <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                            <img class="nav-user-photo" src="${urlPublic}/Boostrap/images/avatars/user.jpg" alt="xxxx" />
                            <span class="user-info">
                                <small>Bienvenido,</small>
                                ccc
                            </span>

                            <i class="ace-icon fa fa-caret-down"></i>
                        </a>

                        <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                            <li>
                                <a href="#">
                                    <i class="ace-icon fa fa-cog"></i>
                                    Settings
                                </a>
                            </li>

                            <li>
                                <a href="profile.html">
                                    <i class="ace-icon fa fa-user"></i>
                                    Profile
                                </a>
                            </li>

                            <li class="divider"></li>

                            <li>
                                <a href="#">
                                    <i class="ace-icon fa fa-power-off"></i>
                                    Logout
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div><!-- /.navbar-container -->
    </div>

    <div class="main-container ace-save-state" id="main-container">
        <script type="text/javascript">
            try { ace.settings.loadState('main-container') } catch (e) { }
        </script>

        <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
            <script type="text/javascript">
                try { ace.settings.loadState('sidebar') } catch (e) { }
            </script>

            <div class="sidebar-shortcuts" id="sidebar-shortcuts">
                <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
                    <button class="btn btn-success">
                        <i class="ace-icon fa fa-signal"></i>
                    </button>

                    <button class="btn btn-info">
                        <i class="ace-icon fa fa-pencil"></i>
                    </button>

                    <button class="btn btn-warning">
                        <i class="ace-icon fa fa-users"></i>
                    </button>

                    <button class="btn btn-danger">
                        <i class="ace-icon fa fa-cogs"></i>
                    </button>
                </div>

                <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                    <span class="btn btn-success"></span>

                    <span class="btn btn-info"></span>

                    <span class="btn btn-warning"></span>

                    <span class="btn btn-danger"></span>
                </div>
            </div><!-- /.sidebar-shortcuts -->

            <ul class="nav nav-list">
                <li class="">
                    <a href="#">
                        <i class="menu-icon fa fa-tachometer"></i>
                        <span class="menu-text"> Venta </span>
                    </a>

                    <b class="arrow"></b>
                </li>
                <li class="">
                    <a href="listarCliente">
                        <i class="menu-icon fa fa-tachometer"></i>
                        <span class="menu-text"> Cliente </span>
                    </a>

                    <b class="arrow"></b>
                </li>
                <li class="">
                    <a href="listarProducto">
                        <i class="menu-icon fa fa-tachometer"></i>
                        <span class="menu-text"> Producto </span>
                    </a>

                    <b class="arrow"></b>
                </li>
                <li class="">
                    <a href="#" class="dropdown-toggle">
                        <i class="menu-icon fa fa-desktop"></i>
                        <span class="menu-text">
                            Otros
                        </span>

                        <b class="arrow fa fa-angle-down"></b>
                    </a>

                    <b class="arrow"></b>

                    <ul class="submenu">
                        <li class="">
                            <a href="" class="dropdown-toggle">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Desplegar
                                <b class="arrow fa fa-angle-down"></b>
                            </a>

                            <b class="arrow"></b>

                            <ul class="submenu">
                                <li class="">
                                    <a href="@Url.Action("Listar", "Almacen")">
                                        <i class="menu-icon fa fa-caret-right"></i>
                                        Almacen
                                    </a>

                                    <b class="arrow"></b>
                                </li>
                                <li class="">
                                    <a href="@Url.Action("Listar", "Cargo")">
                                        <i class="menu-icon fa fa-caret-right"></i>
                                        Cargo
                                    </a>

                                    <b class="arrow"></b>
                                </li>

                                <li class="">
                                    <a href="@Url.Action("Listar", "Categoria")">
                                        <i class="menu-icon fa fa-caret-right"></i>
                                        Categoria
                                    </a>

                                    <b class="arrow"></b>
                                </li>

                                <li class="">
                                    <a href="@Url.Action("Listar", "DocumentoEmitido")">
                                        <i class="menu-icon fa fa-caret-right"></i>
                                        Documentos Emitidos
                                    </a>

                                    <b class="arrow"></b>
                                </li>

                                <li class="">
                                    <a href="@Url.Action("Listar", "Marca")">
                                        <i class="menu-icon fa fa-caret-right"></i>
                                        Marca
                                    </a>

                                    <b class="arrow"></b>
                                </li>

                                <li class="">
                                    <a href="@Url.Action("Listar", "Proveedor")">
                                        <i class="menu-icon fa fa-caret-right"></i>
                                        Proveedor
                                    </a>

                                    <b class="arrow"></b>
                                </li>

                                <li class="">
                                    <a href="@Url.Action("Listar", "SubCategoria")">
                                        <i class="menu-icon fa fa-caret-right"></i>
                                        SubCategoria
                                    </a>

                                    <b class="arrow"></b>
                                </li>
                                <li class="">
                                    <a href="@Url.Action("Listar", "TipoDocumento")">
                                        <i class="menu-icon fa fa-caret-right"></i>
                                        Tipo de Documento
                                    </a>

                                    <b class="arrow"></b>
                                </li>
                                <li class="">
                                    <a href="@Url.Action("Listar", "Trabajador")">
                                        <i class="menu-icon fa fa-caret-right"></i>
                                        Trabajador
                                    </a>

                                    <b class="arrow"></b>
                                </li>
                                <li class="">
                                    <a href="@Url.Action("Listar", "Unidad")">
                                        <i class="menu-icon fa fa-caret-right"></i>
                                        Unidad
                                    </a>

                                    <b class="arrow"></b>
                                </li>
                            </ul>
                        </li>

                        
            </ul><!-- /.nav-list -->

            <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
                <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
            </div>
        </div>

        <div class="main-content">
            <div class="main-content-inner">
                <div class="breadcrumbs ace-save-state" id="breadcrumbs">

                   


                    <div class="nav-search" id="nav-search">
                            <form class="form-search">
                                <span class="input-icon">
                                    <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
                                    <i class="ace-icon fa fa-search nav-search-icon"></i>
                                </span>
                            </form>
                        </div> 
                </div>

                <div class="page-content">
                    <div class="ace-settings-container" id="ace-settings-container">
                        <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                            <i class="ace-icon fa fa-cog bigger-130"></i>
                        </div>

                        <div class="ace-settings-box clearfix" id="ace-settings-box">
                            <div class="pull-left width-50">
                                <div class="ace-settings-item">
                                    <div class="pull-left">
                                        <select id="skin-colorpicker" class="hide">
                                            <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                                            <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                            <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                            <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                                        </select>
                                    </div>
                                    <span>&nbsp; Choose Skin</span>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-navbar" autocomplete="off" />
                                    <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-sidebar" autocomplete="off" />
                                    <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-breadcrumbs" autocomplete="off" />
                                    <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" autocomplete="off" />
                                    <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
                                    <label class="lbl" for="ace-settings-add-container">
                                        Inside
                                        <b>.container</b>
                                    </label>
                                </div>
                            </div><!-- /.pull-left -->

                            <div class="pull-left width-50">
                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
                                    <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
                                    <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
                                </div>

                                <div class="ace-settings-item">
                                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" autocomplete="off" />
                                    <label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
                                </div>
                            </div><!-- /.pull-left -->
                        </div><!-- /.ace-settings-box -->
                    </div><!-- /.ace-settings-container -->

                    

                    <div class="row">
                        <div class="col-xs-12">
                            <!-- PAGE CONTENT BEGINS -->
                            
                            <!-- PAGE CONTENT ENDS -->
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.page-content -->
            </div>
        </div><!-- /.main-content -->

        <div class="footer">
            <div class="footer-inner">
                <div class="footer-content">
                    <span class="bigger-120">
                        <span class="blue bolder">USUARIO </span>
                        XXXXX &copy; 2019-2020
                    </span>

                    &nbsp; &nbsp;
                    <span class="action-buttons">
                        <a href="#">
                            <i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
                        </a>

                        <a href="https://www.facebook.com/XXXXXX">
                            <i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
                        </a>

                        <a href="#">
                            <i class="ace-icon fa fa-rss-square orange bigger-150"></i>
                        </a>
                    </span>
                </div>
            </div>
        </div>

        <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
            <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
        </a>
    </div><!-- /.main-container -->
    <!-- basic scripts -->
    <!--[if !IE]> -->
    <script src="${urlPublic}/Boostrap/js/jquery-2.1.4.min.js"></script>

    <!-- <![endif]-->
    <!--[if IE]>
    <script src="~/Boostrap/js/jquery-1.11.3.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
        if ('ontouchstart' in document.documentElement) document.write("<script src='${urlPublic}/Boostrap/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
    </script>
    <script src="${urlPublic}/Boostrap/js/bootstrap.min.js"></script>

    <!-- page specific plugin scripts -->
    <!-- ace scripts -->
    <script src="${urlPublic}/Boostrap/js/ace-elements.min.js"></script>
    <script src="${urlPublic}/Boostrap/js/ace.min.js"></script>

    <!-- inline scripts related to this page -->
    <!-- page specific plugin scripts -->
    <!--[if lte IE 8]>
      <script src="~/Boostrap/js/excanvas.min.js"></script>
    <![endif]-->
    <script src="${urlPublic}/Boostrap/js/jquery-ui.custom.min.js"></script>
    <script src="${urlPublic}/Boostrap/js/jquery.ui.touch-punch.min.js"></script>
    <script src="${urlPublic}/Boostrap/js/jquery.easypiechart.min.js"></script>
    <script src="${urlPublic}/Boostrap/js/jquery.sparkline.index.min.js"></script>
    <script src="${urlPublic}/Boostrap/js/chosen.jquery.min.js"></script>

    <script src="${urlPublic}/Boostrap/js/jquery.flot.min.js"></script>
    <script src="${urlPublic}/Boostrap/js/jquery.flot.pie.min.js"></script>
    <script src="${urlPublic}/Boostrap/js/jquery.flot.resize.min.js"></script>



    <!-- ace scripts -->
    <script src="${urlPublic}/Boostrap/js/ace-elements.min.js"></script>
    <script src="${urlPublic}/Boostrap/js/ace.min.js"></script>


</body>
</html>


