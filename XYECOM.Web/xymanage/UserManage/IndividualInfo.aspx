<%@ Page Language="C#" AutoEventWireup="true" Inherits="xymanage_UserManage_IndividualInfo" Codebehind="IndividualInfo.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>个人用户详细信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../css/style.css" type="text/css" rel="stylesheet" />
<link href="/common/css/XYLib.css" type="text/css" rel="Stylesheet" />
<script language ="javascript" type ="text/javascript" src ="/common/js/base.js"></script>
<script language ="javascript" type ="text/javascript" >
function block()
{
    document.getElementById("add").style.display='block';
}
</script>
</head>
<body>
<form id="Form1" method="post" runat="server">
<h1><a href="../index.aspx">后台管理首页</a> >> 用户详细信息</h1>
<table width="100%" >
<tr>
<!-- right -->
<td class="right" >

<div class="main-setting">


<div class="itemtitle"><h3>个人用户详细信息<asp:Label ID="Label1" runat="server" Text=""></asp:Label></h3></div>

<table width="100%" class="xy_tb xy_tb2 infotable border_buttom0">
<tr>
<th>姓名：</th>
<td id ="tbname" runat ="server" style="width:230px;"></td>
<th >性别：</th>
<td id ="tbsex" runat ="server"></td>
</tr>

<tr>
<th>所在城市：</th>
<td id="tbcity" runat ="server"></td>
<th>联系电话：</th>
<td id="tblinktelephone" runat ="server"></td>
</tr>
<tr>
<th>联系手机：</th>
<td id ="tbmobile" runat ="server" ></td>
<th>身份证号码：</th>
<td id="tbcode" runat ="server"></td>
</tr>
<tr>

</tr>
<tr>
<th>邮政编码：</th>
<td  id="tbpostcode" runat ="server"></td>
<th >
    注册邮箱：</th>
<td id="tbemail" runat ="server"></td>
</tr>
<tr>
<th style="height: 21px;">
    联系地址：</th>
<td colspan="3" id="tbaddress" runat ="server" style="height: 21px"></td>

</tr>
</table>
<div class="itemtitle"><h3>账户信息<asp:Label ID="Label3" runat="server" Text=""></asp:Label></h3></div>
<table width="100%" class="xy_tb xy_tb2 infotable border_buttom0">
<tr>
<th>
    现金账户:</th>
<td id="lbmoney" runat ="server" style="width:230px;"></td>
<th >
    </th>
<td id="td2" runat ="server"></td>
</tr>

</table>

<br/>
<div class="itemtitle"><h3>简历信息<asp:Label ID="Label2" runat="server" Text=""></asp:Label></h3></div>
<table width="100%" class="xy_tb xy_tb2 infotable border_buttom0">
<tr>
<th>
    毕业学校：</th>
<td id="tdschool" runat ="server" style="width:230px;"></td><th >
    毕业时间：</th>
<td id="tdgradate" runat ="server"></td>
</tr>
<tr>
<th> 所学专业：</th>
<td id="tdspeciality" runat ="server"></td><th >
    教育程度：</th>
<td id="tdschoolage" runat ="server"></td>
 </tr>
   <tr>
<th>
    期望职位：</th>
<td id="tdintentjob" runat ="server"></td><th >
    期望工资：</th>
<td id="tdintentpay" runat ="server"></td>
</tr>
<tr>
<th> 期望工作所在城市：</th>
<td id="tdintentadd" runat ="server" colspan="3"></td>
 </tr>
<tr>
<th> 工作经验：</th>
<td id="tdexperience" runat ="server" colspan="3"></td>
 </tr>
 <tr>
<th> 自我评价：</th>
<td id="tdresume" runat ="server" colspan="3"></td>
 </tr>
</table>
<div class="itemtitle"><h3>重设密码</h3></div>
<table width="100%" class="xy_tb xy_tb2 infotable border_buttom0" id="Table4">
<tr>
<th>新密码：</th>
<td id ="lbpwd" runat ="server">
<asp:TextBox ID="txtpwd" runat="server" Text="000000"></asp:TextBox>
    <asp:Button ID="Button2" runat="server" Text="重设密码" CssClass ="button" OnClick="Button2_Click"/>
    <asp:Label ID="libok" runat="server" Text="" Width="82px"></asp:Label></td>
</tr>
 <tr>
<th></th>
<td class="content_action" colspan="3">  &nbsp;<input id="btnBack" type="button" value="返回" class="button" onserverclick="btnBack_ServerClick" runat="server"/>
    </td>
</tr>
</table>
</div>

</td></tr></table>

</form>
</body>
</html>
