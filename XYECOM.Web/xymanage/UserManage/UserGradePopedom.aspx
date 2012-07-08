<%@ Page Language="C#" AutoEventWireup="true" Inherits="xymanage_UserManage_UserGradePopedom"
    CodeBehind="UserGradePopedom.aspx.cs" %>

<%@ Register Src="../UserControl/top.ascx" TagName="top" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�û��ȼ�����</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
    <link href="/common/css/XYLib.css" type="text/css" rel="Stylesheet" />
    <script language="javascript" type="text/javascript" src="/common/js/base.js"></script>
    <script language="javascript" type="text/javascript" src="../javascript/CheckedAll.js"></script>
    <script language="javascript" type="text/javascript">

        //��̨�û�Ȩ������
        function IsLimit(obj) {
            if (obj.checked == true) {
                $("trInfoNumber").style.display = "none";

                var eles = $("trInfoNumber").getElementsByTagName("input");

                for (var i = 0; i < eles.length; i++) {
                    if (eles[i].type == "text") {
                        eles[i].value = "0";
                    }
                }
            } else {
                $("trInfoNumber").style.display = "";
            }
        }


        function isshopshow() {
            if (document.getElementById("rbshopyes").checked)
                document.getElementById("isshopshow").style.display = "block";
            else {
                document.getElementById("isshopshow").style.display = "none";
                document.getElementById("chkIsSubdomain").checked = false;
                document.getElementById("chkIsBindingTopdomain").checked = false;
            }

        }


    </script>
    <style type="text/css">
        .infoNumSetting ul
        {
            width: 100%;
            padding: 5px;
            background-color: #f8f8f8;
        }
        .infoNumSetting li
        {
            float: left;
            width: 45%;
            padding: 5px;
        }
    </style>
</head>
<body onload="isshopshow();">
    <form id="Form1" method="post" runat="server">
    <h1>
        <a href="../index.aspx">��̨������ҳ</a> >> �û��ȼ�Ȩ�޹���</h1>
    <table width="100%">
        <tr>
            <!-- right -->
            <td class="right">
                <div class="main-setting">
                    <div class="itemtitle">
                        <h3>
                            �û��ȼ�Ȩ������</h3>
                    </div>
                    <table class="xy_tb xy_tb2">
                        <tr>
                            <th colspan="15" class="partition">
                                ������ʾ
                            </th>
                        </tr>
                        <tr>
                            <td>
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="tipsblock">
                                <ul id="tipslis">
                                    <li>����ǰ����ϸ�Ķ�����Ȩ��˵��</li>
                                    <li>��Ч�Ŀ����û�Ȩ�ޣ���������߻�Ա����Ļ�����</li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                ��ǰ��Ա�ȼ�:<asp:Label ID="lbusergradetype" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                ���߽���:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:RadioButton ID="rbispaymentyes" runat="server" Text="����" GroupName="payment" />
                                <asp:RadioButton ID="rbispaymentno" runat="server" Text="�ر�" GroupName="payment"
                                    Checked="true" />
                            </td>
                            <td class="vtop tips2">
                                �û������Ĺ�����Ϣ�Ƿ񿪷����߶���ѡ��
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                �Զ����Ʒ����:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:RadioButton ID="rbiscompanyprotypeyes" runat="server" Text="����" GroupName="companyprotype" />
                                <asp:RadioButton ID="rbiscompanyprotypeno" runat="server" Text="�ر�" GroupName="companyprotype"
                                    Checked="true" />
                            </td>
                            <td class="vtop tips2">
                                �û��Ƿ�������û����������Լ��ķ���
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                ���˷�������Ϣ:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:RadioButton ID="keywordyes" runat="server" Text="����" GroupName="keyword" />
                                <asp:RadioButton ID="keywordno" runat="server" Text="������" GroupName="keyword" Checked="true" />
                            </td>
                            <td class="vtop tips2">
                                �û���������ҵ��Ϣ�Ƿ�������йؼ��ʣ���������еȼ������й���
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                ��������:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <p onclick="isshopshow()">
                                    <asp:RadioButton ID="rbshopyes" runat="server" Text="����" GroupName="shop" />
                                    <asp:RadioButton ID="rbshopno" runat="server" Text="������" GroupName="shop" Checked="true" />&nbsp;</p>
                            </td>
                            <td class="vtop tips2">
                                �Ƿ������û�ӵ�ж��������꣬����Ը߼���Ա����
                            </td>
                        </tr>
                        <tr id="isshopshow">
                            <td class="vtop rowform" colspan="2">
                                <asp:CheckBox ID="chkIsSubdomain" runat="server" Text="�Ƿ�����������" />
                                <asp:CheckBox ID="chkIsBindingTopdomain" runat="server" Text="�Ƿ�󶨶�������" />
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                �鿴�û�����:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:RadioButton ID="rbmessageyes" runat="server" Text="����" GroupName="message" />
                                <asp:RadioButton ID="rbmessageno" runat="server" Text="������" GroupName="message" Checked="true" />
                            </td>
                            <td class="vtop tips2">
                                ������Ա���ο͸���ǰ�û�����ҵ�����Ƿ�������鿴��ϸ����
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                �鿴�շ���Ѷ:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:RadioButton ID="rdoShowChargeNewsYes" runat="server" Text="����" GroupName="ShowChargeNews" />
                                <asp:RadioButton ID="rdoShowChargeNewsNo" runat="server" Text="������" GroupName="ShowChargeNews"
                                    Checked="true" />
                            </td>
                            <td class="vtop tips2">
                                ��վ�������շ���Ѷ�Ƿ�����ǰ�ȼ���Ա�鿴
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                IM ���߽�̸:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:RadioButton ID="rdoQQOnLineTalkYes" runat="server" Text="����" GroupName="QQOnLineTalk" />
                                <asp:RadioButton ID="rdoQQOnLineTalkNo" runat="server" Text="�ر�" GroupName="QQOnLineTalk"
                                    Checked="true" />
                            </td>
                            <td class="vtop tips2">
                                �Ƿ�����ǰ�ȼ���Աͨ��IM(��ʱͨѶ)���ߺ���վ�ÿͽ������߹�ͨ<br />
                                ǰ��1����������ȷ������IM���ߴ��롣<a href="../Interface/IM.aspx">ȥ��������</a>
                                <br />
                                ǰ��2����Ա��������ȷ��д��IM��Ϣ�����磺QQ��MSN�ȣ�
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                �û��ɲ鿴��ϵ��ʽ����:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:TextBox ID="seecontactsnum" runat="server" MaxLength="8" CssClass="input" Width="60"></asp:TextBox>
                                ��
                            </td>
                            <td class="vtop tips2">
                                ����ǰ�ȼ���Ա����ܲ鿴����ҵ��ϵ��ʽ�������������޺���������鿴��ҵ��ϵ��ʽ������Ϊ0ʱ��������
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                ��ϵ��ʽ�鿴Ȩ��:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:CheckBoxList ID="cblgradelist" runat="server" RepeatColumns="3">
                                    <asp:ListItem Value="1">��Ӧ</asp:ListItem>
                                    <asp:ListItem Value="1">��</asp:ListItem>
                                    <asp:ListItem Value="1">�ṩ�ӹ�</asp:ListItem>
                                    <asp:ListItem Value="1">Ѱ��ӹ�</asp:ListItem>
                                    <asp:ListItem Value="1">����</asp:ListItem>
                                    <asp:ListItem Value="1">����</asp:ListItem>
                                    <asp:ListItem Value="1">�ṩ����</asp:ListItem>
                                    <asp:ListItem Value="1">Ѱ�����</asp:ListItem>
                                    <asp:ListItem Value="1">�˲�</asp:ListItem>
                                    <asp:ListItem Value="1">��ҵ</asp:ListItem>
                                </asp:CheckBoxList>
                            </td>
                            <td class="vtop tips2">
                                ��ǰ�ȼ���Ա�鿴������Ա�����ĸ�����ҵ��Ϣʱ�Ƿ���Բ鿴��ҵ��ϵ��ʽ<br />
                                ǰ��1����������˵�ǰ��Ա�鿴��ҵ��ϵ��ʽ���������Ʋ��ҵ�ǰ�ȼ���Ա��δ���鿴����ʱ������Ч
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                ��ϵ��ʽ���鿴����:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:CheckBoxList ID="chkOtherUserLookContactsSetting" runat="server" RepeatColumns="3">
                                    <asp:ListItem Value="1">��Ӧ</asp:ListItem>
                                    <asp:ListItem Value="1">��</asp:ListItem>
                                    <asp:ListItem Value="1">�ṩ�ӹ�</asp:ListItem>
                                    <asp:ListItem Value="1">Ѱ��ӹ�</asp:ListItem>
                                    <asp:ListItem Value="1">����</asp:ListItem>
                                    <asp:ListItem Value="1">����</asp:ListItem>
                                    <asp:ListItem Value="1">�ṩ����</asp:ListItem>
                                    <asp:ListItem Value="1">Ѱ�����</asp:ListItem>
                                    <asp:ListItem Value="1">��ҵ</asp:ListItem>
                                </asp:CheckBoxList>
                            </td>
                            <td class="vtop tips2">
                                �����õ�ǰ�ȼ���Ա������ҵ��Ϣ�е���ҵ��ϵ��ʽ���������������ȼ���Ա�鿴������Ը��߼���Ա���Ŵ�Ȩ��
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                ÿ��ˢ����Ϣ��ʱ����:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:TextBox ID="refashtime" runat="server" MaxLength="8" CssClass="input" Width="60"></asp:TextBox>
                                ����
                            </td>
                            <td class="vtop tips2">
                                ����ǰ�ȼ���Ա���û����Ķ�֮ǰ��������ҵ��Ϣ����ˢ�²���ʱ���β�����ʱ����
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                һ���ڵ�����Ϣֻ��ˢ��:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:TextBox ID="refashtimes" runat="server" MaxLength="8" CssClass="input" Width="60"></asp:TextBox>
                                ��
                            </td>
                            <td class="vtop tips2">
                                ����ǰ�ȼ���Ա���û����Ķ�֮ǰ��������ҵ��Ϣ����ˢ�²���һ���ڵ�����Ϣ�Ĳ�����������
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                һ�������ˢ��:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:TextBox ID="refashnum" runat="server" MaxLength="8" CssClass="input" Width="60"></asp:TextBox>
                                ��
                            </td>
                            <td class="vtop tips2">
                                ����ǰ�ȼ���Ա���û����Ķ�֮ǰ��������ҵ��Ϣ����ˢ�²���һ������ˢ�µ���Ϣ��������
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                �û��ϴ�ͼƬ����:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:TextBox ID="uploadpicnum" runat="server" MaxLength="8" CssClass="input" Width="60"></asp:TextBox>
                                ��
                            </td>
                            <td class="vtop tips2">
                                ����ǰ�ȼ���Ա�ڷ�����ҵ��Ϣʱһ����Ϣ�����ϴ���ͼƬ��������
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                �û����Է�����Ϣ����:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <input type="checkbox" runat="server" id="chkIsLimit" onclick="IsLimit(this);" />����������������<br />
                            </td>
                            <td class="vtop tips2">
                                ����ǰ�ȼ���Ա��ָ��ʱ��������ܷ�������ҵ��Ϣ��������
                            </td>
                        </tr>
                        <tr id="trInfoNumber" runat="server">
                            <td colspan="2">
                                �޶���
                                <asp:TextBox ID="LimitDate" runat="server" CssClass="input" MaxLength="8" Width="60"></asp:TextBox>
                                ���� &nbsp;��0 Ϊ�����ƣ�
                                <br />
                                <div runat="server" id="MessageNum" class="infoNumSetting">
                                </div>
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                �õȼ��û�����ǰ��������:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:TextBox ID="tbadvisedays" runat="server" MaxLength="8" CssClass="input" Width="60"></asp:TextBox>
                            </td>
                            <td class="vtop tips2">
                                ����ǰ�ȼ���Ա�ĵȼ��ʸ��ڵ���ǰ����������û�����Ϣ��ʾ
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                �õȼ��û����ں����������ļ���:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:DropDownList runat="server" ID="ddldebaseusergrade">
                                </asp:DropDownList>
                            </td>
                            <td class="vtop tips2">
                                ����ǰ�ȼ���Ա�ڵȼ����ں���δ������ϵͳ�Զ������ļ���
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                �õȼ��û�����С�֤��İٷֱ�:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:TextBox runat="server" ID="txtOperationMargin" Text="0.5"></asp:TextBox>
                            </td>
                            <td class="vtop tips2">
                                ����д0-1֮���С��������д0.5��Ϊ����ǰ���Ʋ�Ʒ��Ҫ���ɱ��Ͻ�Ϊ�ò�Ʒ���۵İٷ�֮��ʮ
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                ��ȡ�õȼ��û�������ɵİٷֱ�:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:TextBox runat="server" ID="txtTicheng" Text="0.5"></asp:TextBox>
                            </td>
                            <td class="vtop tips2">
                                ����д0-1֮���С��������д0.5��Ϊ��������ĳ����Ʒ��Ҫ���ɵķ���Ϊ�ò�Ʒ���۵İٷ�֮��ʮ
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                ��ȡ�õȼ��û���ͬ���Ͻ�İٷֱ�:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:TextBox runat="server" ID="txtContact" Text="0.5"></asp:TextBox>
                            </td>
                            <td class="vtop tips2">
                                ����д0-1֮���С��������д0.5��Ϊ�����к�ͬ��������ʱ����ƽ̨���ɺ�ͬ��֤��İٷ�֮��ʮ
                            </td>
                        </tr>
                    </table>
                    <table width="100%" class="xy_tb xy_tb2 infotable border_buttom0" id="companyinfo">
                        <tr>
                            <td>
                                <label>
                                    <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click"
                                        Text="��������" />
                                    <input id="Button2" type="button" value="����" onclick="window.location.href='UserGrade.aspx';"
                                        class="button" />
                                    <asp:Label ID="lblMessage" runat="server" ForeColor="#C00000"></asp:Label>
                                    <input id="Hidden1" runat="server" type="hidden" />
                                    <input id="HidMessagenum" runat="server" type="hidden" />
                                    <input id="HidLimitDate" runat="server" type="hidden" />
                                </label>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
