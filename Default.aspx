﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Task Entry Dragging Example</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="/Style/maingrid.css" />

    <script type="text/javascript" src="Scripts/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery-sortable.js"></script>
    <script type="text/javascript" src="Scripts/jquery-draggable.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <h4>Drag and drop any list entries to parent entry</h4>
        <hr />
        <ol class='example'>
            <li data-name="First" data-id="1"><i class="fa fa-bars"></i>First <a href="javascript:void(0);" class="btnExpand"><i class="fa fa-chevron-right"></i></a>
                <ol class="inner"></ol>
            </li>
            <li data-name="Second" data-id="2"><i class="fa fa-bars"></i>Second <a href="javascript:void(0);" class="btnExpand"><i class="fa fa-chevron-right"></i></a>
                <ol class="inner"></ol>
            </li>
            <li data-name="Third" data-id="3"><i class="fa fa-bars"></i>Third <a href="javascript:void(0);" class="btnExpand"><i class="fa fa-chevron-right"></i></a>
                <ol class="inner"></ol>
            </li>
            <li data-name="Fourth" data-id="4"><i class="fa fa-bars"></i>Fourth <a href="javascript:void(0);" class="btnExpand"><i class="fa fa-chevron-right"></i></a>
                <ol class="inner"></ol>
            </li>
            <li data-name="Fifth" data-id="5"><i class="fa fa-bars"></i>Fifth <a href="javascript:void(0);" class="btnExpand"><i class="fa fa-chevron-right"></i></a>
                <ol class="inner"></ol>
            </li>
            <li data-name="Sixth" data-id="6"><i class="fa fa-bars"></i>Sixth <a href="javascript:void(0);" class="btnExpand"><i class="fa fa-chevron-right"></i></a>
                <ol class="inner"></ol>
            </li>
            <li data-name="Seventh" data-id="7"><i class="fa fa-bars"></i>Seventh <a href="javascript:void(0);" class="btnExpand"><i class="fa fa-chevron-right"></i></a>
                <ol class="inner"></ol>
            </li>
        </ol>
        <hr /><h4>Object</h4>
        <div id="serialize_output">
        </div>
    </form>
</body>
</html>
