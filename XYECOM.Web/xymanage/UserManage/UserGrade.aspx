<%@ Page Language="C#" AutoEventWireup="true" Inherits="xymanage_basic_UserGrade" Codebehind="UserGrade.aspx.cs" %>
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
<body onload =" load();">
<form id="Form1" method="post" runat="server">

<h1><a href="../index.aspx">后台管理首页</a> >> 用户等级管理</h1>
<table  width="100%" >
<tr>
<!-- right -->
<td class="right">

<div class="main-setting">
<div class="itemtitle"><h3>用户等级管理</h3>
<input class="addbtn" id="btnAdd" onclick="window.location.href='UserGradeAdd.aspx';" type="button" value="新增等级"/>
</div>

<table id="update" style="DISPLAY: none"  class="xy_tb xy_tb2" border="0">
<tr>
<td>
<table width="100%" >
<tr>
<th>
    用户等级名：</th>
<td><label>
<asp:textbox id="txtname1" runat="server" Width="250px" CssClass="input" ToolTip="输入用户等级名" MaxLength="16"></asp:textbox>
</label></td>
</tr>
<tr>
<th>
    年租金：</th>
<td style="height: 12px"><label>
    <asp:TextBox ID="ymoney1" runat="server" CssClass="input" MaxLength="15" 
        Width="250px"></asp:TextBox></label></td>
</tr>
<tr>
<th>
    月租金：</th>
<td><label>
    <asp:TextBox ID="mmoney1" runat="server" CssClass="input" MaxLength="15" 
        Width="250px"></asp:TextBox></label></td>
</tr>
<tr>
<th>
    用户等级小图标：</th>
<td><label>
    <asp:TextBox ID="tbsmall" runat="server"></asp:TextBox>&nbsp;请输入图标文件名,并将图标上传至网站根目录Icon文件夹</label></td>
</tr>
<tr>
<th>
    用户等级大图标：</th>
<td><label>
    <asp:TextBox ID="tbbig" runat="server"></asp:TextBox>&nbsp;请输入图标文件名</label></td>
</tr>
<tr>
<th></th>
<td><label>
    <asp:Button ID="Button1" runat="server" Text="修改" CssClass ="button" OnClick="Button1_Click" />
<input class="button" id="btnQuit1" onclick="Exit();" type="button" value="取消"/>
    <input id="UG_ID" runat="server" type="hidden" />
    <input id="key" runat="server" type="hidden" />
    <input id="akey" runat="server" type="hidden" />
    <input id="h1" runat="server" type="hidden" />
    <input id="h3" runat="server" type="hidden" /></label></td>
</tr>
</table>
</td></tr></table>


<table class="xy_tb xy_tb2" style="margin-top:0px;">
<tr>
<td>
<asp:GridView ID="gvlist" HeaderStyle-CssClass="gv_header_style" runat="server" AutoGenerateColumns="False"  DataKeyNames="UG_ID"  Width="100%"  OnRowCommand="gvlist_RowCommand" GridLines="None">
<Columns>
    <asp:TemplateField HeaderText="排序">
        <ItemTemplate>
            <asp:TextBox ID="txtOrder" runat="server" MaxLength="2" CssClass="gvCenter" Columns="2" Text='<%# DataBinder.Eval(Container,"DataItem.UG_Order").ToString()%>'></asp:TextBox>
        </ItemTemplate>
    </asp:TemplateField>
    
    <asp:BoundField DataField="UG_ID" HeaderText="UG_ID" Visible="False" />
    <asp:BoundField DataField="UG_Name" HeaderText="等级名称" >
        <HeaderStyle CssClass="gvLeft" />
        <ItemStyle CssClass="gvLeft" Width="60%" />
    </asp:BoundField>
     <asp:BoundField DataField="UG_Year" HeaderText="年租金" DataFormatString="{0:N2}" HtmlEncode ="False" >
         <HeaderStyle CssClass="gvRight" />
         <ItemStyle HorizontalAlign="Right" Width="10%" />
     </asp:BoundField>
      <asp:BoundField DataField="UG_Month" HeaderText="月租金" DataFormatString="{0:N2}" HtmlEncode ="False">
          <HeaderStyle CssClass="gvRight" />
          <ItemStyle HorizontalAlign="Right" Width="10%" />
      </asp:BoundField>
    <asp:HyperLinkField DataNavigateUrlFields="UG_ID" DataNavigateUrlFormatString="UserGradePopedom.aspx?UG_ID={0}"
        HeaderText="权限设置" NavigateUrl="UserGradePopedom.aspx?UG_ID={0}" Text="权限设置" >
        <ItemStyle Width="10%" />
    </asp:HyperLinkField>
    
      <asp:ButtonField CommandName="up" HeaderText="修改" Text="&lt;img src=&quot;../images/edit.gif&quot; /&gt;" >
          <ItemStyle Width="5%" />
      </asp:ButtonField>
    
      <asp:ButtonField CommandName="del" HeaderText="删除" Text="&lt;img src=&quot;../images/delete.gif&quot; /&gt;">
          <ItemStyle Width="5%" />
      </asp:ButtonField>

</Columns>
<HeaderStyle CssClass="gv_header_style" />
</asp:GridView>
<p style="text-align:center;"><asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label></p>
</td>
</tr>
</table>
<div>
    <div style="float:left"><asp:Button Text="更新排序" CssClass="button" runat="server" ID="btnUpdateOrder" OnClick="btnUpdateOrder_Click" />
</div>
</div>

</div>

</td>
</tr>
</table>
</form>
</body>
</html>
