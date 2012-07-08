<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangeUserGrade.aspx.cs" Inherits="XYECOM.Web.xymanage.UserManage.ChangeUserGrade" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>用户详细信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link href="/common/css/XYLib.css" type="text/css" rel="Stylesheet" />
<script language ="javascript" type ="text/javascript" src ="/common/js/base.js"></script>
</head>
<body>
<!--后台导航 -->

<form id="Form1" method="post" runat="server">
<h1><a href="../index.aspx">后台管理首页</a> >> 更改会员等级</h1>

    <table width="100%" >
    <tr>
    <td class="right" >
    
    <div class="main-setting">
    <div class="itemtitle"><h3>当前等级信息</h3></div>

    <table width="100%" class="xy_tb xy_tb2 infotable border_buttom0" id="userinfo">
        <tr>
        <th>当前等级</th>
        <td>
            <asp:Label runat="server" ID="lblGradeName"></asp:Label>
        </td>
        </tr>
        <tr>
            <th>开始时间</th>
            <td> <asp:Label runat="server" ID="lblStartDate">--</asp:Label></td>
        </tr>
         <tr>
            <th>结束时间</th>
            <td> <asp:Label runat="server" ID="lblEndDate">--</asp:Label></td>
        </tr>
         <tr>
            <th>剩余天数</th>
            <td> <asp:Label runat="server" ID="lblRemainingTime">--</asp:Label></td>
        </tr>
        </table>
     
    <asp:Panel runat="server" ID="pnlMessage" Visible="false">
        <br/><br/>
        <table width="100%" class="xy_tb xy_tb2 infotable border_buttom0" id="Table2">
            <tr>
                <td><h1><label id="lblSure" runat="server"></label></h1></td>
            </tr>
            <tr>
                <td align="center">
                <asp:Button  runat="server" Text="完成" ID="btnFinish" CssClass="button" OnClick="btnFinish_Click"/>
                <asp:Button  runat="server" Text="放弃" ID="btnCancel" CssClass="button" OnClick="btnCancel_Click"/><br/><br/>
                </td>
            </tr>
        </table>
    </asp:Panel>
    
    <asp:Panel runat="server" ID="pnlChange">
    <br/>
    <div class="itemtitle"><h3>更改会员等级</h3></div>
        <table width="100%" class="xy_tb xy_tb2 infotable border_buttom0" id="Table1">
        <tr>
        <th>选择等级</th>
        <td style="padding-left:3px;">
            <asp:RadioButtonList runat="server" ID="rdolstUserGrade" RepeatColumns="5"></asp:RadioButtonList>
        </td>
        </tr>
        <tr>
            <th>选择时间</th>
            <td style="padding-top:5px;padding-bottom:5px;">
                &nbsp;<asp:RadioButton  runat="server" ID="rdoMonth" GroupName="SpanType" Checked="true" AutoPostBack="True" OnCheckedChanged="rdoMonth_CheckedChanged"/>按月
                <asp:DropDownList runat="server" ID="ddlMonth">
                    <asp:ListItem Value="1">1个月</asp:ListItem>
                    <asp:ListItem Value="2">2个月</asp:ListItem>
                    <asp:ListItem Value="3">3个月</asp:ListItem>
                    <asp:ListItem Value="4">4个月</asp:ListItem>
                    <asp:ListItem Value="5">5个月</asp:ListItem>
                    <asp:ListItem Value="6">6个月</asp:ListItem>
                    <asp:ListItem Value="7">7个月</asp:ListItem>
                    <asp:ListItem Value="8">8个月</asp:ListItem>
                    <asp:ListItem Value="9">9个月</asp:ListItem>
                    <asp:ListItem Value="10">10个月</asp:ListItem>
                    <asp:ListItem Value="11">11个月</asp:ListItem>
                    <asp:ListItem Value="12">12个月</asp:ListItem>
                </asp:DropDownList><br/>
                &nbsp;<asp:RadioButton  runat="server" ID="rdoYear" GroupName="SpanType" AutoPostBack="True" OnCheckedChanged="rdoYear_CheckedChanged"/>按年
                <span id="spanYear" runat="server" visible="false">
                <asp:TextBox runat="server" ID="txtYear" Width="40px" CssClass="input_s" MaxLength="2"></asp:TextBox>年</span>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtYear"
                    ErrorMessage="请输入正确的年份" MaximumValue="99" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    </td>
        </tr>
        <tr>
            <th></th>
            <td style="height:40px; vertical-align:middle;">
                 <asp:Button  runat="server" Text="确定" ID="btnOK" CssClass="button" OnClick="btnOK_Click"/>&nbsp;&nbsp;<asp:Button ID="btnBack"  runat="server"  CssClass="button" Text="返回" OnClick="btnBack_Click"/>
                 <asp:label runat="server" id="lblErrMsg" ForeColor="red"/>
            </td>
        </tr>
        </table>
    </asp:Panel>
    
    </div>
    </td>
    </tr>
    </table>
</form>
</body>
</html>
