<%@ Page Language="C#" AutoEventWireup="true" Inherits="xymanage_UserManage_UserListManger"
    CodeBehind="UserListManger.aspx.cs" %>

<%@ Register Src="../UserControl/page.ascx" TagName="page" TagPrefix="uc2" %>
<%@ Register Src="../UserControl/top.ascx" TagName="top" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>用户信息管理</title>
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
        <a href="../index.aspx">后台设置首页</a> >> 用户列表</h1>
    <table width="100%">
        <tr>
            <!-- right -->
            <td class="right">
                <div class="main-setting">
                    <div class="itemtitle">
                        <h3>
                            用户列表</h3>
                    </div>
                    <table class="xy_tb xy_tb2">
                        <tr>
                            <td>
                                <table class="partition">
                                    <tr>
                                        <th>
                                            用户名称：
                                        </th>
                                        <td>
                                            <asp:TextBox ID="txtKeyWord" runat="server" Width="100px"></asp:TextBox>
                                        </td>
                                        <th>
                                            公司名称：
                                        </th>
                                        <td>
                                            <asp:TextBox ID="txtcompany" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            用户等级：
                                        </th>
                                        <td>
                                            <asp:DropDownList ID="ddlUserType" runat="server" DataTextField="UG_Name" DataValueField="UG_ID">
                                            </asp:DropDownList>
                                        </td>
                                        <th>
                                            审核状态：
                                        </th>
                                        <td>
                                            <asp:RadioButtonList ID="ddlState" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem Value="-1" Selected="True">所有</asp:ListItem>
                                                <asp:ListItem Value="null">未审核</asp:ListItem>
                                                <asp:ListItem Value="1">通过审核</asp:ListItem>
                                                <asp:ListItem Value="0">未通过审核</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            企业区域：
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
                                            企业注册地：
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
                                            注册日期：
                                        </th>
                                        <td>
                                            <input id="bgdate" type="text" runat="server" onclick="getDateString(this);" maxlength="10"
                                                style="width: 80px;" readonly="readonly" />
                                            到
                                            <input id="egdate" type="text" runat="server" onclick="getDateString(this);" maxlength="10"
                                                style="width: 80px;" readonly="readonly" />
                                        </td>
                                        <th>
                                            企业经营模式：
                                        </th>
                                        <td>
                                            <asp:CheckBoxList ID="tdumode" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                            </asp:CheckBoxList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            主营产品/服务：
                                        </th>
                                        <td>
                                            <asp:TextBox ID="tdptype" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                        <th>
                                            企业性质：
                                        </th>
                                        <td>
                                            <asp:RadioButtonList ID="tdcharacter" runat="server" RepeatDirection="Horizontal"
                                                RepeatLayout="Flow">
                                                <asp:ListItem Value="0" Selected="True">所有</asp:ListItem>
                                                <asp:ListItem>企业单位</asp:ListItem>
                                                <asp:ListItem>个体经营</asp:ListItem>
                                                <asp:ListItem>事业单位或社会团体</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            企业分类：
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
                                            用户信誉度：
                                        </th>
                                        <td>
                                            <asp:DropDownList ID="ddlCreaditLeav" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            所在行业：
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
                                            主营方向：
                                        </th>
                                        <td>
                                            <asp:RadioButtonList ID="ddl_uway" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem Selected="True" Value="-1">全部</asp:ListItem>
                                                <asp:ListItem Value="1">供方</asp:ListItem>
                                                <asp:ListItem Value="2">求方</asp:ListItem>
                                                <asp:ListItem Value="3">两者都有</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            每页条数：
                                        </th>
                                        <td>
                                            <asp:TextBox ID="txtPageSize" runat="server" CssClass="" Columns="2" Text="20" MaxLength="3"></asp:TextBox>
                                            条(1~100)
                                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPageSize"
                                                ErrorMessage="介于1～100之间" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                                        </td>
                                        <th>
                                        </th>
                                        <td>
                                            <asp:CheckBox runat="server" ID="cbdays" Checked="true" />
                                            返回最近&nbsp;<asp:TextBox runat="server" CssClass="" ID="txtdays" Columns="2" Text="2"></asp:TextBox>&nbsp;天的全部数据
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtdays"
                                                ErrorMessage="必须为数字" ValidationExpression="^[1-9]\d*$"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr class="content_action">
                                        <td>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button2" runat="server" Text="搜索" CssClass="button" OnClick="Button2_Click" />
                                            <input type="reset" value="重置" class="button" />
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
                                        <asp:TemplateField HeaderText="选择">
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkExport" runat="server" />
                                            </ItemTemplate>
                                            <ItemStyle Width="5%" />
                                        </asp:TemplateField>
                                       
                                        <asp:TemplateField HeaderText="用户名">
                                            <ItemStyle CssClass="gvLeft" Width="18%" />
                                            <HeaderStyle CssClass="gvLeft" />
                                            <ItemTemplate>
                                                <a href='UserMoreInfo.aspx?U_ID=<%# Eval("U_ID") %>&backURL=<%# backURL %>'>
                                                    <%# Eval("U_Name") %></a><br />
                                                <div style="margin-top: 2px; color: #666;">
                                                    <%#GetUserGradeName(DataBinder.Eval(Container, "DataItem.UG_ID"))%>, 登录<%# login.GetUserLoginNumByDate("","",Eval("u_id").ToString()) %>次</div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="公司名称">
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
                                        <asp:BoundField DataField="U_RegDate" HeaderText="注册时间">
                                            <HeaderStyle Width="12%" />
                                            <ItemStyle Width="12%" />
                                        </asp:BoundField>
                                        <asp:ButtonField CommandName="shenhe" HeaderText="审核" DataTextField="UserAuditingState">
                                            <ItemStyle CssClass="action" Width="10%" />
                                        </asp:ButtonField>
                                        <asp:ButtonField CommandName="tj" HeaderText="推荐" DataTextField="U_Vouch">
                                            <ItemStyle CssClass="action" Width="8%" />
                                        </asp:ButtonField>
                                        <asp:TemplateField HeaderText="是否过期">
                                            <ItemTemplate>
                                                <%#GetUserGradeRelationEndTime(DataBinder.Eval(Container, "DataItem.U_ID"))%>
                                            </ItemTemplate>
                                            <ItemStyle Width="10%" CssClass="gvLeft" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="详细">
                                            <ItemStyle CssClass="gvLeft" Width="10%" />
                                            <HeaderStyle CssClass="gvLeft" />
                                            <ItemTemplate>
                                                <a href='UserInfo.aspx?U_ID=<%# Eval("U_ID") %>&backURL=<%# backURL %>'>
                                                    <img src="../images/look.gif" alt="编辑" /></a>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="供应信息">
                                            <ItemStyle CssClass="gvLeft" Width="10%" />
                                            <HeaderStyle CssClass="gvLeft" />
                                            <ItemTemplate>
                                                <a href='../Supply/List.aspx?U_ID=<%# Eval("U_ID") %>'>
                                                    <img src="../images/look.gif" alt="查看发布的供应信息" /></a>
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
                                    runat="server" />全选
                                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="删除" CssClass="button" />&nbsp;
                                <asp:Button ID="btnIsPass" runat="server" CssClass="button" Text="通过审核" OnClick="btnIsPass_Click" />
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
