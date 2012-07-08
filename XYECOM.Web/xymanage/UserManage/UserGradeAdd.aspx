<%@ Page Language="C#" AutoEventWireup="true" Inherits="xymanage_UserManage_UserGradeAdd" Codebehind="UserGradeAdd.aspx.cs" %>

<%@ Register Src="../UserControl/page.ascx" TagName="page" TagPrefix="uc2" %>
<%@ Register Src="../UserControl/top.ascx" TagName="top" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>用户等级管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link href="/common/css/XYLib.css" type="text/css" rel="Stylesheet" />
<script language ="javascript" type ="text/javascript" src ="/common/js/base.js"></script>
<script language ="javascript" type ="text/javascript" src ="../javascript/CheckedAll.js"></script>
</head>
<body>
<form id="Form1" method="post" runat="server">
<h1><a href="../index.aspx">后台管理首页</a> >> 添加用户等级</h1>
<table  width="100%" >
<tr>
<!-- right -->
<td class="right">


<div class="main-setting">

<div class="itemtitle"><h3>添加用户等级</h3></div>

<table width="100%" class="xy_tb xy_tb2 infotable">
<tr>
<th>
    用户等级名：</th>
<td><label><asp:textbox id="txtName" runat="server" Width="250px" CssClass="input" ToolTip="输入用户等级名" MaxLength="10" ></asp:textbox>
    </label></td>
</tr>

<tr>
<th>
    年租金：</th>
<td ><label>
    <asp:TextBox ID="ymoney" runat="server" CssClass="input" MaxLength="10"
        Width="250px"></asp:TextBox>&nbsp;
</label></td>
</tr>

<tr>
<th>
    月租金：</th>
<td ><label id="LABEL1" runat="server">
    <asp:TextBox ID="mmoney" runat="server" CssClass="input" MaxLength="15" Width="250px"></asp:TextBox>&nbsp;
    <input id="akey" runat="server" type="hidden" />
    <input id="h1" runat="server" type="hidden" />
    <input id="h3" runat="server" type="hidden" /></label></td>
</tr>
<tr>
<th>
    用户等级小图标：</th>
<td><asp:TextBox ID="tbsmall" runat="server"></asp:TextBox>&nbsp;请将等级小图标上传至站点 /Icon/ 目录，并填写文件名称</td>
</tr>
<tr>
<th>
    用户等级大图标：</th>
<td><asp:TextBox ID="tbbig" runat="server"></asp:TextBox>&nbsp;请将等级大图标上传至站点 /Icon/ 目录，并填写文件名称</td>
</tr>
<tr>
<th style="height: 10px">&nbsp;</th>
<td style="height: 10px"><label><input class="button" id="btnOk" title="开始添加" type="submit" value="确定" name="Submit3" runat="server" onserverclick="btnOk_ServerClick1" onclick ="return usergradeadd();"/>
<input class="button" id="btnQuit" onclick="window.location.href='UserGrade.aspx';" type="button" value="取消"/>
    </label></td>
</tr>
</table>

</div>
</td>
</tr>
</table>
</form>
</body>
</html>
