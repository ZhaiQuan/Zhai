<%@ Page Language="C#" AutoEventWireup="true" Inherits="xymanage_UserManage_IndividualInfo" Codebehind="IndividualInfo.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>�����û���ϸ��Ϣ</title>
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
<h1><a href="../index.aspx">��̨������ҳ</a> >> �û���ϸ��Ϣ</h1>
<table width="100%" >
<tr>
<!-- right -->
<td class="right" >

<div class="main-setting">


<div class="itemtitle"><h3>�����û���ϸ��Ϣ<asp:Label ID="Label1" runat="server" Text=""></asp:Label></h3></div>

<table width="100%" class="xy_tb xy_tb2 infotable border_buttom0">
<tr>
<th>������</th>
<td id ="tbname" runat ="server" style="width:230px;"></td>
<th >�Ա�</th>
<td id ="tbsex" runat ="server"></td>
</tr>

<tr>
<th>���ڳ��У�</th>
<td id="tbcity" runat ="server"></td>
<th>��ϵ�绰��</th>
<td id="tblinktelephone" runat ="server"></td>
</tr>
<tr>
<th>��ϵ�ֻ���</th>
<td id ="tbmobile" runat ="server" ></td>
<th>���֤���룺</th>
<td id="tbcode" runat ="server"></td>
</tr>
<tr>

</tr>
<tr>
<th>�������룺</th>
<td  id="tbpostcode" runat ="server"></td>
<th >
    ע�����䣺</th>
<td id="tbemail" runat ="server"></td>
</tr>
<tr>
<th style="height: 21px;">
    ��ϵ��ַ��</th>
<td colspan="3" id="tbaddress" runat ="server" style="height: 21px"></td>

</tr>
</table>
<div class="itemtitle"><h3>�˻���Ϣ<asp:Label ID="Label3" runat="server" Text=""></asp:Label></h3></div>
<table width="100%" class="xy_tb xy_tb2 infotable border_buttom0">
<tr>
<th>
    �ֽ��˻�:</th>
<td id="lbmoney" runat ="server" style="width:230px;"></td>
<th >
    </th>
<td id="td2" runat ="server"></td>
</tr>

</table>

<br/>
<div class="itemtitle"><h3>������Ϣ<asp:Label ID="Label2" runat="server" Text=""></asp:Label></h3></div>
<table width="100%" class="xy_tb xy_tb2 infotable border_buttom0">
<tr>
<th>
    ��ҵѧУ��</th>
<td id="tdschool" runat ="server" style="width:230px;"></td><th >
    ��ҵʱ�䣺</th>
<td id="tdgradate" runat ="server"></td>
</tr>
<tr>
<th> ��ѧרҵ��</th>
<td id="tdspeciality" runat ="server"></td><th >
    �����̶ȣ�</th>
<td id="tdschoolage" runat ="server"></td>
 </tr>
   <tr>
<th>
    ����ְλ��</th>
<td id="tdintentjob" runat ="server"></td><th >
    �������ʣ�</th>
<td id="tdintentpay" runat ="server"></td>
</tr>
<tr>
<th> �����������ڳ��У�</th>
<td id="tdintentadd" runat ="server" colspan="3"></td>
 </tr>
<tr>
<th> �������飺</th>
<td id="tdexperience" runat ="server" colspan="3"></td>
 </tr>
 <tr>
<th> �������ۣ�</th>
<td id="tdresume" runat ="server" colspan="3"></td>
 </tr>
</table>
<div class="itemtitle"><h3>��������</h3></div>
<table width="100%" class="xy_tb xy_tb2 infotable border_buttom0" id="Table4">
<tr>
<th>�����룺</th>
<td id ="lbpwd" runat ="server">
<asp:TextBox ID="txtpwd" runat="server" Text="000000"></asp:TextBox>
    <asp:Button ID="Button2" runat="server" Text="��������" CssClass ="button" OnClick="Button2_Click"/>
    <asp:Label ID="libok" runat="server" Text="" Width="82px"></asp:Label></td>
</tr>
 <tr>
<th></th>
<td class="content_action" colspan="3">  &nbsp;<input id="btnBack" type="button" value="����" class="button" onserverclick="btnBack_ServerClick" runat="server"/>
    </td>
</tr>
</table>
</div>

</td></tr></table>

</form>
</body>
</html>
