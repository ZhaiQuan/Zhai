<%@ Page Language="C#" AutoEventWireup="true" Inherits="xymanage_UserManage_UserGradeAdd" Codebehind="UserGradeAdd.aspx.cs" %>

<%@ Register Src="../UserControl/page.ascx" TagName="page" TagPrefix="uc2" %>
<%@ Register Src="../UserControl/top.ascx" TagName="top" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>�û��ȼ�����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link href="/common/css/XYLib.css" type="text/css" rel="Stylesheet" />
<script language ="javascript" type ="text/javascript" src ="/common/js/base.js"></script>
<script language ="javascript" type ="text/javascript" src ="../javascript/CheckedAll.js"></script>
</head>
<body>
<form id="Form1" method="post" runat="server">
<h1><a href="../index.aspx">��̨������ҳ</a> >> ����û��ȼ�</h1>
<table  width="100%" >
<tr>
<!-- right -->
<td class="right">


<div class="main-setting">

<div class="itemtitle"><h3>����û��ȼ�</h3></div>

<table width="100%" class="xy_tb xy_tb2 infotable">
<tr>
<th>
    �û��ȼ�����</th>
<td><label><asp:textbox id="txtName" runat="server" Width="250px" CssClass="input" ToolTip="�����û��ȼ���" MaxLength="10" ></asp:textbox>
    </label></td>
</tr>

<tr>
<th>
    �����</th>
<td ><label>
    <asp:TextBox ID="ymoney" runat="server" CssClass="input" MaxLength="10"
        Width="250px"></asp:TextBox>&nbsp;
</label></td>
</tr>

<tr>
<th>
    �����</th>
<td ><label id="LABEL1" runat="server">
    <asp:TextBox ID="mmoney" runat="server" CssClass="input" MaxLength="15" Width="250px"></asp:TextBox>&nbsp;
    <input id="akey" runat="server" type="hidden" />
    <input id="h1" runat="server" type="hidden" />
    <input id="h3" runat="server" type="hidden" /></label></td>
</tr>
<tr>
<th>
    �û��ȼ�Сͼ�꣺</th>
<td><asp:TextBox ID="tbsmall" runat="server"></asp:TextBox>&nbsp;�뽫�ȼ�Сͼ���ϴ���վ�� /Icon/ Ŀ¼������д�ļ�����</td>
</tr>
<tr>
<th>
    �û��ȼ���ͼ�꣺</th>
<td><asp:TextBox ID="tbbig" runat="server"></asp:TextBox>&nbsp;�뽫�ȼ���ͼ���ϴ���վ�� /Icon/ Ŀ¼������д�ļ�����</td>
</tr>
<tr>
<th style="height: 10px">&nbsp;</th>
<td style="height: 10px"><label><input class="button" id="btnOk" title="��ʼ���" type="submit" value="ȷ��" name="Submit3" runat="server" onserverclick="btnOk_ServerClick1" onclick ="return usergradeadd();"/>
<input class="button" id="btnQuit" onclick="window.location.href='UserGrade.aspx';" type="button" value="ȡ��"/>
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
