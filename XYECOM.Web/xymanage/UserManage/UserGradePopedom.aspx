<%@ Page Language="C#" AutoEventWireup="true" Inherits="xymanage_UserManage_UserGradePopedom"
    CodeBehind="UserGradePopedom.aspx.cs" %>

<%@ Register Src="../UserControl/top.ascx" TagName="top" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>用户等级管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
    <link href="/common/css/XYLib.css" type="text/css" rel="Stylesheet" />
    <script language="javascript" type="text/javascript" src="/common/js/base.js"></script>
    <script language="javascript" type="text/javascript" src="../javascript/CheckedAll.js"></script>
    <script language="javascript" type="text/javascript">

        //后台用户权限设置
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
        <a href="../index.aspx">后台管理首页</a> >> 用户等级权限管理</h1>
    <table width="100%">
        <tr>
            <!-- right -->
            <td class="right">
                <div class="main-setting">
                    <div class="itemtitle">
                        <h3>
                            用户等级权限设置</h3>
                    </div>
                    <table class="xy_tb xy_tb2">
                        <tr>
                            <th colspan="15" class="partition">
                                技巧提示
                            </th>
                        </tr>
                        <tr>
                            <td>
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="tipsblock">
                                <ul id="tipslis">
                                    <li>设置前请仔细阅读各项权限说明</li>
                                    <li>有效的控制用户权限，有利于提高会员参与的积极性</li>
                                </ul>
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                当前会员等级:<asp:Label ID="lbusergradetype" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                在线交易:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:RadioButton ID="rbispaymentyes" runat="server" Text="开放" GroupName="payment" />
                                <asp:RadioButton ID="rbispaymentno" runat="server" Text="关闭" GroupName="payment"
                                    Checked="true" />
                            </td>
                            <td class="vtop tips2">
                                用户发布的供求信息是否开放在线订购选项
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                自定义产品分类:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:RadioButton ID="rbiscompanyprotypeyes" runat="server" Text="开放" GroupName="companyprotype" />
                                <asp:RadioButton ID="rbiscompanyprotypeno" runat="server" Text="关闭" GroupName="companyprotype"
                                    Checked="true" />
                            </td>
                            <td class="vtop tips2">
                                用户是否可以在用户中心设置自己的分类
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                过滤发布的信息:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:RadioButton ID="keywordyes" runat="server" Text="过滤" GroupName="keyword" />
                                <asp:RadioButton ID="keywordno" runat="server" Text="不过滤" GroupName="keyword" Checked="true" />
                            </td>
                            <td class="vtop tips2">
                                用户发布的商业信息是否过滤敏感关键词，建议对所有等级都进行过滤
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                开设网店:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <p onclick="isshopshow()">
                                    <asp:RadioButton ID="rbshopyes" runat="server" Text="允许" GroupName="shop" />
                                    <asp:RadioButton ID="rbshopno" runat="server" Text="不允许" GroupName="shop" Checked="true" />&nbsp;</p>
                            </td>
                            <td class="vtop tips2">
                                是否允许用户拥有独立的网店，建议对高级会员开放
                            </td>
                        </tr>
                        <tr id="isshopshow">
                            <td class="vtop rowform" colspan="2">
                                <asp:CheckBox ID="chkIsSubdomain" runat="server" Text="是否开启二级域名" />
                                <asp:CheckBox ID="chkIsBindingTopdomain" runat="server" Text="是否绑定顶级域名" />
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                查看用户留言:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:RadioButton ID="rbmessageyes" runat="server" Text="允许" GroupName="message" />
                                <asp:RadioButton ID="rbmessageno" runat="server" Text="不允许" GroupName="message" Checked="true" />
                            </td>
                            <td class="vtop tips2">
                                其他会员或游客给当前用户的商业留言是否允许其查看详细内容
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                查看收费资讯:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:RadioButton ID="rdoShowChargeNewsYes" runat="server" Text="允许" GroupName="ShowChargeNews" />
                                <asp:RadioButton ID="rdoShowChargeNewsNo" runat="server" Text="不允许" GroupName="ShowChargeNews"
                                    Checked="true" />
                            </td>
                            <td class="vtop tips2">
                                网站发布的收费资讯是否允许当前等级会员查看
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                IM 在线交谈:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:RadioButton ID="rdoQQOnLineTalkYes" runat="server" Text="开放" GroupName="QQOnLineTalk" />
                                <asp:RadioButton ID="rdoQQOnLineTalkNo" runat="server" Text="关闭" GroupName="QQOnLineTalk"
                                    Checked="true" />
                            </td>
                            <td class="vtop tips2">
                                是否允许当前等级会员通过IM(即时通讯)工具和网站访客进行在线沟通<br />
                                前提1：开启并正确配置了IM工具代码。<a href="../Interface/IM.aspx">去看看配置</a>
                                <br />
                                前提2：会员资料中正确填写了IM信息。（如：QQ，MSN等）
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                用户可查看联系方式条数:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:TextBox ID="seecontactsnum" runat="server" MaxLength="8" CssClass="input" Width="60"></asp:TextBox>
                                条
                            </td>
                            <td class="vtop tips2">
                                即当前等级会员最多能查看的企业联系方式条数，到达上限后则不再允许查看企业联系方式。设置为0时不做限制
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                联系方式查看权限:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:CheckBoxList ID="cblgradelist" runat="server" RepeatColumns="3">
                                    <asp:ListItem Value="1">供应</asp:ListItem>
                                    <asp:ListItem Value="1">求购</asp:ListItem>
                                    <asp:ListItem Value="1">提供加工</asp:ListItem>
                                    <asp:ListItem Value="1">寻求加工</asp:ListItem>
                                    <asp:ListItem Value="1">招商</asp:ListItem>
                                    <asp:ListItem Value="1">代理</asp:ListItem>
                                    <asp:ListItem Value="1">提供服务</asp:ListItem>
                                    <asp:ListItem Value="1">寻求服务</asp:ListItem>
                                    <asp:ListItem Value="1">人才</asp:ListItem>
                                    <asp:ListItem Value="1">企业</asp:ListItem>
                                </asp:CheckBoxList>
                            </td>
                            <td class="vtop tips2">
                                当前等级会员查看其他会员发布的各类商业信息时是否可以查看企业联系方式<br />
                                前提1：如果设置了当前会员查看企业联系方式的条数限制并且当前等级会员还未到查看上限时控制有效
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                联系方式被查看设置:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:CheckBoxList ID="chkOtherUserLookContactsSetting" runat="server" RepeatColumns="3">
                                    <asp:ListItem Value="1">供应</asp:ListItem>
                                    <asp:ListItem Value="1">求购</asp:ListItem>
                                    <asp:ListItem Value="1">提供加工</asp:ListItem>
                                    <asp:ListItem Value="1">寻求加工</asp:ListItem>
                                    <asp:ListItem Value="1">招商</asp:ListItem>
                                    <asp:ListItem Value="1">代理</asp:ListItem>
                                    <asp:ListItem Value="1">提供服务</asp:ListItem>
                                    <asp:ListItem Value="1">寻求服务</asp:ListItem>
                                    <asp:ListItem Value="1">企业</asp:ListItem>
                                </asp:CheckBoxList>
                            </td>
                            <td class="vtop tips2">
                                即设置当前等级会员发布商业信息中的企业联系方式无条件允许其他等级会员查看。建议对更高级会员开放此权限
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                每次刷新信息的时间间隔:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:TextBox ID="refashtime" runat="server" MaxLength="8" CssClass="input" Width="60"></asp:TextBox>
                                分钟
                            </td>
                            <td class="vtop tips2">
                                即当前等级会员在用户中心对之前发布的商业信息进行刷新操作时单次操作的时间间隔
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                一天内单条信息只能刷新:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:TextBox ID="refashtimes" runat="server" MaxLength="8" CssClass="input" Width="60"></asp:TextBox>
                                次
                            </td>
                            <td class="vtop tips2">
                                即当前等级会员在用户中心对之前发布的商业信息进行刷新操作一天内单条信息的操作次数上限
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                一天内最多刷新:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:TextBox ID="refashnum" runat="server" MaxLength="8" CssClass="input" Width="60"></asp:TextBox>
                                条
                            </td>
                            <td class="vtop tips2">
                                即当前等级会员在用户中心对之前发布的商业信息进行刷新操作一天内能刷新的信息条数上限
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                用户上传图片张数:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:TextBox ID="uploadpicnum" runat="server" MaxLength="8" CssClass="input" Width="60"></asp:TextBox>
                                张
                            </td>
                            <td class="vtop tips2">
                                即当前等级会员在发布商业信息时一条信息允许上传的图片张数上限
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                用户可以发布信息条数:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <input type="checkbox" runat="server" id="chkIsLimit" onclick="IsLimit(this);" />不限制天数和条数<br />
                            </td>
                            <td class="vtop tips2">
                                即当前等级会员在指定时间内最多能发布的商业信息条数设置
                            </td>
                        </tr>
                        <tr id="trInfoNumber" runat="server">
                            <td colspan="2">
                                限定在
                                <asp:TextBox ID="LimitDate" runat="server" CssClass="input" MaxLength="8" Width="60"></asp:TextBox>
                                天内 &nbsp;（0 为不限制）
                                <br />
                                <div runat="server" id="MessageNum" class="infoNumSetting">
                                </div>
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                该等级用户到期前提醒天数:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:TextBox ID="tbadvisedays" runat="server" MaxLength="8" CssClass="input" Width="60"></asp:TextBox>
                            </td>
                            <td class="vtop tips2">
                                即当前等级会员的等级资格在到期前多少天起给用户以消息提示
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                该等级用户到期后所降低至的级别:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:DropDownList runat="server" ID="ddldebaseusergrade">
                                </asp:DropDownList>
                            </td>
                            <td class="vtop tips2">
                                即当前等级会员在等级到期后仍未续费则系统自动降至的级别
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                该等级用户缴纳小额保证金的百分比:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:TextBox runat="server" ID="txtOperationMargin" Text="0.5"></asp:TextBox>
                            </td>
                            <td class="vtop tips2">
                                请填写0-1之间的小数，如填写0.5则为您当前挂牌产品需要缴纳保障金为该产品单价的百分之五十
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                收取该等级用户按件提成的百分比:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:TextBox runat="server" ID="txtTicheng" Text="0.5"></asp:TextBox>
                            </td>
                            <td class="vtop tips2">
                                请填写0-1之间的小数，如填写0.5则为您卖出的某个产品需要缴纳的费用为该产品单价的百分之五十
                            </td>
                        </tr>
                        <tr class="nobg">
                            <td colspan="2" class="td27">
                                收取该等级用户合同保障金的百分比:
                            </td>
                        </tr>
                        <tr>
                            <td class="vtop rowform">
                                <asp:TextBox runat="server" ID="txtContact" Text="0.5"></asp:TextBox>
                            </td>
                            <td class="vtop tips2">
                                请填写0-1之间的小数，如填写0.5则为您进行合同担保交易时需向平台缴纳合同保证金的百分之五十
                            </td>
                        </tr>
                    </table>
                    <table width="100%" class="xy_tb xy_tb2 infotable border_buttom0" id="companyinfo">
                        <tr>
                            <td>
                                <label>
                                    <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click"
                                        Text="保存设置" />
                                    <input id="Button2" type="button" value="返回" onclick="window.location.href='UserGrade.aspx';"
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
