<%@ Page Language="C#" AutoEventWireup="true" Inherits="xymanage_UserManage_UserListManger"
    CodeBehind="UserListManger.aspx.cs" %>

<%@ Register Src="../UserControl/page.ascx" TagName="page" TagPrefix="uc2" %>
<%@ Register Src="../UserControl/top.ascx" TagName="top" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�û���Ϣ����</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
    <link href="/common/css/XYLib.css" type="text/css" rel="Stylesheet" />
    <script language="javascript" type="text/javascript" src="/common/js/base.js"></script>
    <script language="javascript" type="text/javascript" src="../javascript/CheckedAll.js"></script>
    <script type="text/javascript" src="/common/js/date.js"></script>
</head>
<body>
    <form id="Form1" method="post" runat="server">
    <h1>
        <a href="../index.aspx">��̨������ҳ</a> >> �û��б�</h1>
    <table width="100%">
        <tr>
            <!-- right -->
            <td class="right">
                <div class="main-setting">
                    <div class="itemtitle">
                        <h3>
                            �û��б�</h3>
                    </div>
                    <table class="xy_tb xy_tb2">
                        <tr>
                            <td>
                                <table class="partition">
                                    <tr>
                                        <th>
                                            �û����ƣ�
                                        </th>
                                        <td>
                                            <asp:TextBox ID="txtKeyWord" runat="server" Width="100px"></asp:TextBox>
                                        </td>
                                        <th>
                                            ��˾���ƣ�
                                        </th>
                                        <td>
                                            <asp:TextBox ID="txtcompany" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            �û��ȼ���
                                        </th>
                                        <td>
                                            <asp:DropDownList ID="ddlUserType" runat="server" DataTextField="UG_Name" DataValueField="UG_ID">
                                            </asp:DropDownList>
                                        </td>
                                        <th>
                                            ���״̬��
                                        </th>
                                        <td>
                                            <asp:RadioButtonList ID="ddlState" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem Value="-1" Selected="True">����</asp:ListItem>
                                                <asp:ListItem Value="null">δ���</asp:ListItem>
                                                <asp:ListItem Value="1">ͨ�����</asp:ListItem>
                                                <asp:ListItem Value="0">δͨ�����</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            ��ҵ����
                                        </th>
                                        <td>
                                            <div id="classType" style="line-height: 20px; padding: 0;">
                                            </div>
                                            <input type="hidden" id="areatypeid" runat="server" />
                                            <script type="text/javascript">
                                                var cla = new ClassType("cla", 'area', 'classType', 'areatypeid');
                                                cla.Mode = "select";
                                                cla.Init();
                                            </script>
                                        </td>
                                        <th>
                                            ��ҵע��أ�
                                        </th>
                                        <td>
                                            <div id="divaddress" style="line-height: 20px; padding: 0;">
                                            </div>
                                            <input type="hidden" id="lbaddress" runat="server" />
                                            <script type="text/javascript">
                                                var cla3 = new ClassType("cla3", 'area', 'divaddress', 'lbaddress');
                                                cla3.Mode = "select";
                                                cla3.Init();
                                            </script>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            ע�����ڣ�
                                        </th>
                                        <td>
                                            <input id="bgdate" type="text" runat="server" onclick="getDateString(this);" maxlength="10"
                                                style="width: 80px;" readonly="readonly" />
                                            ��
                                            <input id="egdate" type="text" runat="server" onclick="getDateString(this);" maxlength="10"
                                                style="width: 80px;" readonly="readonly" />
                                        </td>
                                        <th>
                                            ��ҵ��Ӫģʽ��
                                        </th>
                                        <td>
                                            <asp:CheckBoxList ID="tdumode" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                            </asp:CheckBoxList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            ��Ӫ��Ʒ/����
                                        </th>
                                        <td>
                                            <asp:TextBox ID="tdptype" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                        <th>
                                            ��ҵ���ʣ�
                                        </th>
                                        <td>
                                            <asp:RadioButtonList ID="tdcharacter" runat="server" RepeatDirection="Horizontal"
                                                RepeatLayout="Flow">
                                                <asp:ListItem Value="0" Selected="True">����</asp:ListItem>
                                                <asp:ListItem>��ҵ��λ</asp:ListItem>
                                                <asp:ListItem>���徭Ӫ</asp:ListItem>
                                                <asp:ListItem>��ҵ��λ���������</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            ��ҵ���ࣺ
                                        </th>
                                        <td>
                                            <div id="classTypecompany" style="line-height: 20px; padding: 0;">
                                            </div>
                                            <input type="hidden" id="companyid" runat="server" />
                                            <script type="text/javascript">
                                                var clacompany = new ClassType("clacompany", 'company', 'classTypecompany', 'companyid');
                                                clacompany.Mode = "select";
                                                clacompany.Init();
                                            </script>
                                        </td>
                                        <th>
                                            �û������ȣ�
                                        </th>
                                        <td>
                                            <asp:DropDownList ID="ddlCreaditLeav" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            ������ҵ��
                                        </th>
                                        <td>
                                            <div id="divTrade" style="line-height: 20px; padding: 0;">
                                            </div>
                                            <input type="hidden" id="tradeid" name="tradeid" runat="server" />
                                            <script type="text/javascript">
                                                var trade = new ClassType("trade", 'trade', 'divTrade', 'tradeid');
                                                trade.Mode = "select";
                                                trade.Init();
                                            </script>
                                        </td>
                                        <th>
                                            ��Ӫ����
                                        </th>
                                        <td>
                                            <asp:RadioButtonList ID="ddl_uway" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem Selected="True" Value="-1">ȫ��</asp:ListItem>
                                                <asp:ListItem Value="1">����</asp:ListItem>
                                                <asp:ListItem Value="2">��</asp:ListItem>
                                                <asp:ListItem Value="3">���߶���</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            ÿҳ������
                                        </th>
                                        <td>
                                            <asp:TextBox ID="txtPageSize" runat="server" CssClass="" Columns="2" Text="20" MaxLength="3"></asp:TextBox>
                                            ��(1~100)
                                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPageSize"
                                                ErrorMessage="����1��100֮��" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                                        </td>
                                        <th>
                                        </th>
                                        <td>
                                            <asp:CheckBox runat="server" ID="cbdays" Checked="true" />
                                            �������&nbsp;<asp:TextBox runat="server" CssClass="" ID="txtdays" Columns="2" Text="2"></asp:TextBox>&nbsp;���ȫ������
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtdays"
                                                ErrorMessage="����Ϊ����" ValidationExpression="^[1-9]\d*$"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr class="content_action">
                                        <td>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button2" runat="server" Text="����" CssClass="button" OnClick="Button2_Click" />
                                            <input type="reset" value="����" class="button" />
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="gvlist" HeaderStyle-CssClass="gv_header_style" runat="server" AutoGenerateColumns="False"
                                    DataKeyNames="U_ID,U_Name,U_Email,UI_Name" Width="100%" OnRowDataBound="gvlist_RowDataBound"
                                    OnRowCommand="gvlist_RowCommand" GridLines="None">
                                    <Columns>
                                        <asp:BoundField DataField="U_ID" HeaderText="U_ID" Visible="False" />
                                        <asp:TemplateField HeaderText="ѡ��">
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkExport" runat="server" />
                                            </ItemTemplate>
                                            <ItemStyle Width="5%" />
                                        </asp:TemplateField>
                                       
                                        <asp:TemplateField HeaderText="�û���">
                                            <ItemStyle CssClass="gvLeft" Width="18%" />
                                            <HeaderStyle CssClass="gvLeft" />
                                            <ItemTemplate>
                                                <a href='UserMoreInfo.aspx?U_ID=<%# Eval("U_ID") %>&backURL=<%# backURL %>'>
                                                    <%# Eval("U_Name") %></a><br />
                                                <div style="margin-top: 2px; color: #666;">
                                                    <%#GetUserGradeName(DataBinder.Eval(Container, "DataItem.UG_ID"))%>, ��¼<%# login.GetUserLoginNumByDate("","",Eval("u_id").ToString()) %>��</div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="��˾����">
                                            <HeaderStyle CssClass="gvLeft" />
                                            <ItemStyle CssClass="gvLeft" Width="22%" />
                                            <ItemTemplate>
                                                <div style="margin-top: 2px; color: #f60;">
                                                    <%# Eval("UI_Name") %><br />
                                                </div>
                                                <a href="<%# Eval("UI_Homepage") %>" target="_blank">
                                                    <%# Eval("UI_Homepage") %></a>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="U_RegDate" HeaderText="ע��ʱ��">
                                            <HeaderStyle Width="12%" />
                                            <ItemStyle Width="12%" />
                                        </asp:BoundField>
                                        <asp:ButtonField CommandName="shenhe" HeaderText="���" DataTextField="UserAuditingState">
                                            <ItemStyle CssClass="action" Width="10%" />
                                        </asp:ButtonField>
                                        <asp:ButtonField CommandName="tj" HeaderText="�Ƽ�" DataTextField="U_Vouch">
                                            <ItemStyle CssClass="action" Width="8%" />
                                        </asp:ButtonField>
                                        <asp:TemplateField HeaderText="�Ƿ����">
                                            <ItemTemplate>
                                                <%#GetUserGradeRelationEndTime(DataBinder.Eval(Container, "DataItem.U_ID"))%>
                                            </ItemTemplate>
                                            <ItemStyle Width="10%" CssClass="gvLeft" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="��ϸ">
                                            <ItemStyle CssClass="gvLeft" Width="10%" />
                                            <HeaderStyle CssClass="gvLeft" />
                                            <ItemTemplate>
                                                <a href='UserInfo.aspx?U_ID=<%# Eval("U_ID") %>&backURL=<%# backURL %>'>
                                                    <img src="../images/look.gif" alt="�༭" /></a>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="��Ӧ��Ϣ">
                                            <ItemStyle CssClass="gvLeft" Width="10%" />
                                            <HeaderStyle CssClass="gvLeft" />
                                            <ItemTemplate>
                                                <a href='../Supply/List.aspx?U_ID=<%# Eval("U_ID") %>'>
                                                    <img src="../images/look.gif" alt="�鿴�����Ĺ�Ӧ��Ϣ" /></a>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <p style="text-align: center;">
                                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label></p>
                            </td>
                        </tr>
                        <tr>
                            <td class="content_action">
                                <input class="list_td04" id="chkAll" onclick="chkAll_true()" type="checkbox" name="chkAll"
                                    runat="server" />ȫѡ
                                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="ɾ��" CssClass="button" />&nbsp;
                                <asp:Button ID="btnIsPass" runat="server" CssClass="button" Text="ͨ�����" OnClick="btnIsPass_Click" />
                            </td>
                        </tr>
                    </table>
                    <uc2:page ID="Page1" runat="server" />
                </div>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>