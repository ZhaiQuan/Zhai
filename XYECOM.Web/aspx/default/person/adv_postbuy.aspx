<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.person.adv_postbuy,XYECOM.Page" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="XYECOM.Core" %>
<%@ Import namespace="XYECOM.Model" %>
<%@ Import namespace="XYECOM.Business" %>
<%@ Import namespace="XYECOM.Template" %>
<%@ Import namespace="XYECOM.Configuration" %>
<script runat="server">
protected override void OnLoad(EventArgs e)
{
	base.OnLoad(e);


	if (pageinfo.PageError==1)
	{


	XYBody.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	XYBody.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	XYBody.Append("<head>\r\n");
	XYBody.Append("<title>��Ϣ��ʾ</title>\r\n");
	XYBody.Append("");
	XYBody.Append("<link rel=\"stylesheet\" href=\"");
	XYBody.Append("</head>\r\n");
	XYBody.Append("<body style=\"background-color:#f2f2f2\">\r\n");
	XYBody.Append("<div id=\"sysMsgbox\">\r\n");
	XYBody.Append("	<ul>\r\n");
	XYBody.Append("	    <li class=\"msg\">");
	XYBody.Append("        <li><a href=\"");
	XYBody.Append("         <li><a href=\"#\" onclick=\"history.back();\">���ؼ�������</a></li>\r\n");
	XYBody.Append("        <li><a href=\"/\">������ҳ</a> | <a href=\"#\" onclick=\"window.close();\">�رձ�ҳ</a></li>\r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("    <div id=\"r_f\">2000-2009��" +  XYECOMCreateHTML("XY_Copyright").ToString() + "����Ȩ���С��ݺ���������</div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("</body>\r\n");
	XYBody.Append("</html>\r\n");



	Response.Write(XYBody.ToString());
System.Web.HttpContext.Current.Response.End();
	

	}	//end if

	XYBody.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD html 4.01 Transitional//EN\" \"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd\">\r\n");
	XYBody.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	XYBody.Append("<head>\r\n");
	XYBody.Append("<TITLE>��������</TITLE>\r\n");
	XYBody.Append("<meta http-equiv=Content-Type content=\"text/html; charset=gb2312\">\r\n");
	XYBody.Append("<meta content=\"��������\" name=\"keywords\">\r\n");
	XYBody.Append("<meta content=\"\" name=\"description\">\r\n");
	XYBody.Append("<link href=\"/common/css/XYLib.css\" type=\"text/css\" rel=\"Stylesheet\" />\r\n");
	XYBody.Append("<link href=\"");
	XYBody.Append("<script language =\"javascript\" type=\"text/javascript\"  src=\"");
	XYBody.Append("<script language =\"javascript\" type=\"text/javascript\"  src=\"");
	XYBody.Append("<script language =\"javascript\" type=\"text/javascript\"  src=\"");
	XYBody.Append("<script language =\"javascript\" type=\"text/javascript\"  src=\"");
	XYBody.Append("<script language =\"javascript\" type=\"text/javascript\"  src=\"");
	XYBody.Append("</head>\r\n");
	XYBody.Append("<body onload=\"");
	XYBody.Append("<div class=div_body>\r\n");
	XYBody.Append("    <div class=New_top>\r\n");
	XYBody.Append("        <div class=more>\r\n");
	XYBody.Append("            <ul>\r\n");
	XYBody.Append("              <li><a class=\"zeroc\" href=\"");
	XYBody.Append("              <li><a class=\"zeroc\" href=\"");
	XYBody.Append("              <li><a class=\"zeroc\" href=\"");
	XYBody.Append("              <li><a class=\"zeroc\" href=\"");
	XYBody.Append("              <li><a class=\"zeroc\" href=\"");
	XYBody.Append("              <li><a class=\"zeroc\" href=\"");
	XYBody.Append("            </ul>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div class=\"r\">\r\n");
	XYBody.Append("            <a href=\"");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<div class=Head>\r\n");
	XYBody.Append("    <div class=\"Head_4\"> \r\n");
	XYBody.Append("        <div class=\"index\"><div class=\"act\"><a href=\"index.");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<div class=\"div_body\" style=\"WIDTH: 994px\">\r\n");
	XYBody.Append("    <div class=\"body_bg\">\r\n");
	XYBody.Append("        <div><img src=\"");
	XYBody.Append("        <div class=\"bodyW\">\r\n");



	XYBody.Append("<div class=\"Al\">\r\n");
	XYBody.Append("    <div class=\"Al_1\">\r\n");
	XYBody.Append("        ���˷����б�:</div>\r\n");
	XYBody.Append("    <div class=\"Al_2\">\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a class=\"\" id=\"a1\" style=\"padding-right: 10px;\" href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"");
	XYBody.Append("                ��Ա�˻����� </a></dt>\r\n");
	XYBody.Append("            <dd id=\"div_1\" style=\"display: block\">\r\n");
	XYBody.Append("                <a href=\"/person/individuallist.");
	XYBody.Append("                <a href=\"/person/individualinfo.");
	XYBody.Append("                <a href=\"/person/resume.");
	XYBody.Append("                <a href=\"/person/edituserpassword.");
	XYBody.Append("                <a href=\"/person/editpaypassword.aspx\">�޸�֧������</a><br />\r\n");
	XYBody.Append("                <a href=\"/person/resumesend.");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a class=\"\" id=\"a2\" style=\"padding-right: 10px;\" href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"");
	XYBody.Append("                ������Ϣ���� </a></dt>\r\n");
	XYBody.Append("            <dd id=\"div_2\" style=\"display: block\">\r\n");
	XYBody.Append("                <a href=\"/person/receivemessagelist.");
	XYBody.Append("                <a href=\"/person/sendmessagelist.");
	XYBody.Append("                <a href=\"/person/postadministratormessage.");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a class=\"\" id=\"a3\" style=\"padding-right: 10px;\" onclick=\"javascript:switchShow('3')\"\r\n");
	XYBody.Append("                href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"");
	XYBody.Append("                ������� </a></dt>\r\n");
	XYBody.Append("            <dd id=\"div_3\" style=\"display: block\">\r\n");
	XYBody.Append("                <a href=\"/person/cashacount.");
	XYBody.Append("                <a href=\"/person/invoice.");
	XYBody.Append("                <a href=\"/person/remit.");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a class=\"\" id=\"a4\" style=\"padding-right: 10px;\" onclick=\"javascript:switchShow('4')\"\r\n");
	XYBody.Append("                href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"");
	XYBody.Append("                �ҵĽ�����Ϣ </a></dt>\r\n");
	XYBody.Append("            <dd id=\"div_4\" style=\"display: block\">\r\n");
	XYBody.Append("                <a href=\"/person/BuyerOrderList.aspx\">�ɹ�����</a><br />\r\n");
	XYBody.Append("                <a href=\"/person/ListBuyerContract.aspx\">��ͬ����</a><br />\r\n");
	XYBody.Append("                <a href=\"/person/TeamBuy/TeamBuyerOrderList.aspx\">�Ź���������</a><br />\r\n");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a class=\"\" id=\"a5\" style=\"padding-right: 10px;\" onclick=\"javascript:switchShow('5')\"\r\n");
	XYBody.Append("                href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"");
	XYBody.Append("                �ҵ�����Ϣ </a></dt>\r\n");
	XYBody.Append("            <dd id=\"div_5\" style=\"display: block\">\r\n");
	XYBody.Append("                <a href=\"/person/adv_postbuy.aspx\">������</a><br />\r\n");
	XYBody.Append("                <a href=\"/person/supplybuy.aspx\">�ɹ�����</a><br />\r\n");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");


	XYBody.Append("<div id=\"right\">\r\n");
	XYBody.Append("    <ul class=\"topNav\">\r\n");
	XYBody.Append("        <li><a href=\"index.");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("    <form action=\"#\" method=\"post\">\r\n");
	XYBody.Append("    <h3>\r\n");
	XYBody.Append("        ��������Ϣ</h3>\r\n");
	XYBody.Append("    <table class=\"contentl\" id=\"tab_guest_info\" width=\"80%\">\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <th>\r\n");
	XYBody.Append("                ��״̬��<em>*</em>\r\n");
	XYBody.Append("            </th>\r\n");
	XYBody.Append("            <td>\r\n");

	if (id>0 && jinji==1)
	{

	XYBody.Append("                <input type=\"radio\" name=\"jinji\" id=\"jinji0\" value=\"0\">��ͨ��&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp\r\n");
	XYBody.Append("                <input type=\"radio\" name=\"jinji\" id=\"jinji1\" value=\"1\" checked=\"checked\">������\r\n");

	}
	else
	{

	XYBody.Append("                <input type=\"radio\" name=\"jinji\" id=\"jinji0\" value=\"0\" checked=\"checked\">��ͨ��&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp\r\n");
	XYBody.Append("                <input type=\"radio\" name=\"jinji\" id=\"jinji1\" value=\"1\">������\r\n");

	}	//end if

	XYBody.Append("                <br />\r\n");
	XYBody.Append("                <em>��Ҫ�󹺵Ĳ�Ʒ���⣬����Ҫ������ȷ��д��</em>\r\n");
	XYBody.Append("            </td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <th>\r\n");
	XYBody.Append("                ���⣺<em>*</em>\r\n");
	XYBody.Append("            </th>\r\n");
	XYBody.Append("            <td>\r\n");
	XYBody.Append("                <input type=\"text\" name=\"title\" id=\"title\" maxlength=\"45\" size=\"20\" style=\"width: 250px;\"\r\n");
	XYBody.Append("                    value=\"");
	XYBody.Append("                <em>��Ҫ�󹺵Ĳ�Ʒ���⣬����Ҫ������ȷ��д��</em>\r\n");
	XYBody.Append("            </td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <th>\r\n");
	XYBody.Append("                �ؼ��֣�<em>*</em>\r\n");
	XYBody.Append("            </th>\r\n");
	XYBody.Append("            <td>\r\n");
	XYBody.Append("                <input type=\"text\" name=\"keyword\" id=\"keyword\" maxlength=\"25\" size=\"20\" style=\"width: 250px;\"\r\n");
	XYBody.Append("                    value=\"");
	XYBody.Append("                <em>������̣���ȷ�������������̼��������㣬�磺ѹ��������</em>\r\n");
	XYBody.Append("            </td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <th>\r\n");
	XYBody.Append("                ������<em>*</em>\r\n");
	XYBody.Append("            </th>\r\n");
	XYBody.Append("            <td>\r\n");
	XYBody.Append("                <input type=\"text\" name=\"num\" id=\"num\" maxlength=\"25\" size=\"20\" value=\"");
	XYBody.Append("                    style=\"width: 250px;\" /><br />\r\n");
	XYBody.Append("                <em>������</em>\r\n");
	XYBody.Append("            </td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <th>\r\n");
	XYBody.Append("                ���ڵ���*\r\n");
	XYBody.Append("            </th>\r\n");
	XYBody.Append("            <td>\r\n");
	XYBody.Append("                <div id=\"classType\">\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <input type=\"hidden\" id=\"citytypeid\" name=\"citytypeid\" />\r\n");
	XYBody.Append("                <input type=\"hidden\" id=\"provinceid\" name=\"provinceid\" />\r\n");
	XYBody.Append("                <input type=\"hidden\" id=\"areatypeid\" name=\"areatypeid\" value=\"");
	XYBody.Append("                <script type=\"text/javascript\">\r\n");
	XYBody.Append("                    var cla = new ClassType(\"cla\", 'area', 'classType', 'areatypeid');\r\n");
	XYBody.Append("                    cla.Mode = \"select\";\r\n");
	XYBody.Append("                    cla.Init();\r\n");
	XYBody.Append("                </" + "script>\r\n");
	XYBody.Append("            </td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <th>\r\n");
	XYBody.Append("                ��ƷҪ��<em>*</em>\r\n");
	XYBody.Append("            </th>\r\n");
	XYBody.Append("            <td>\r\n");
	XYBody.Append("                <textarea cols=\"50\" rows=\"10\" name=\"contents\" id=\"contents\">");
	XYBody.Append("                <br />\r\n");
	XYBody.Append("                <em>����������</em>\r\n");
	XYBody.Append("            </td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <th>\r\n");
	XYBody.Append("                ��ϵ�ˣ�<em>*</em>\r\n");
	XYBody.Append("            </th>\r\n");
	XYBody.Append("            <td>\r\n");
	XYBody.Append("                <input type=\"text\" name=\"linkman\" id=\"linkman\" maxlength=\"20\" size=\"10\" style=\"width: 250px;\"\r\n");
	XYBody.Append("                    value=\"");
	XYBody.Append("                <br />\r\n");
	XYBody.Append("                <em>����ÿͻ���ϵ����</em>\r\n");
	XYBody.Append("            </td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <th>\r\n");
	XYBody.Append("                �绰��<em>*</em>\r\n");
	XYBody.Append("            </th>\r\n");
	XYBody.Append("            <td>\r\n");
	XYBody.Append("                <input type=\"text\" name=\"tel\" id=\"tel\" maxlength=\"100\" size=\"50\" style=\"width: 250px;\"\r\n");
	XYBody.Append("                    value=\"");
	XYBody.Append("                <em>�������֮����,�Ÿ���;��ʽ��010-88888888</em>\r\n");
	XYBody.Append("            </td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("      <!--  <if !(ugpinfo!=null && !ugpinfo.IsUseQuession)%>\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <th align=\"right\">\r\n");
	XYBody.Append("                <strong class=\"Font14_1\">��֤����:</strong> <span class=\"red\">*</span>\r\n");
	XYBody.Append("            </th>\r\n");
	XYBody.Append("            <td>\r\n");
	XYBody.Append("                <div>\r\n");
	XYBody.Append("                    <span id=\"v_question\"></span><a href=\"javascript:void(0);\" onclick=\"reloadnewquestion();\">\r\n");
	XYBody.Append("                        �������� </a>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div>\r\n");
	XYBody.Append("                    <input type=\"text\" id=\"txtValidateQuestion\" onmouseout=\"_checkanswer(this.value);\"\r\n");
	XYBody.Append("                        onblur=\"_checkanswer(this.value)\" name=\"txtValidateQuestion\" style=\"width: 255px\" />\r\n");
	XYBody.Append("                    <input type=\"hidden\" id=\"v_questionid\" />\r\n");
	XYBody.Append("                    <em id=\"errquestion\"></em>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("            </td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("        <script type=\"text/javascript\">\r\n");
	XYBody.Append("            var reloadnewquestion = function () {\r\n");
	XYBody.Append("                var ajax = new Ajax(\"xy201\", \"&rm=\" + Math.random());\r\n");
	XYBody.Append("                ajax.onSuccess = function () {\r\n");
	XYBody.Append("                    if (ajax.state.result == \"1\") {\r\n");
	XYBody.Append("                        document.getElementById(\"v_question\").innerHTML = ajax.data.Question;\r\n");
	XYBody.Append("                        document.getElementById(\"v_questionid\").value = ajax.data.QuestionId;\r\n");
	XYBody.Append("                    } else {\r\n");
	XYBody.Append("                        document.getElementById(\"v_question\").innerHTML = \"\";\r\n");
	XYBody.Append("                        document.getElementById(\"v_questionid\").value = \"\";\r\n");
	XYBody.Append("                    }\r\n");
	XYBody.Append("                }\r\n");
	XYBody.Append("            }\r\n");
	XYBody.Append("            reloadnewquestion();\r\n");
	XYBody.Append("            var _checkanswer = function (val) {\r\n");
	XYBody.Append("                var v_answer = document.getElementById(\"txtValidateQuestion\").value;\r\n");
	XYBody.Append("                if (v_answer.length < 1) {\r\n");
	XYBody.Append("                    document.getElementById(\"flag\").value = \"error\";\r\n");
	XYBody.Append("                    document.getElementById(\"errquestion\").innerHTML = \"������𰸣�\";\r\n");
	XYBody.Append("                    return false;\r\n");
	XYBody.Append("                } else {\r\n");
	XYBody.Append("                    document.getElementById(\"errquestion\").innerHTML = \"\";\r\n");
	XYBody.Append("                }\r\n");
	XYBody.Append("                var questionid = document.getElementById(\"v_questionid\").value;\r\n");
	XYBody.Append("                var ajax = new Ajax(\"xy202\", \"&questionid=\" + questionid + \"&answer=\" + v_answer + \"&rm=\" + Math.random());\r\n");
	XYBody.Append("                ajax.onSuccess = function () {\r\n");
	XYBody.Append("                    if (ajax.state.result != \"1\") {\r\n");
	XYBody.Append("                        document.getElementById(\"errquestion\").innerHTML = \"��������ȷ�𰸣�\";\r\n");
	XYBody.Append("                        document.getElementById(\"flag\").value = \"error\";\r\n");
	XYBody.Append("                    } else {\r\n");
	XYBody.Append("                        document.getElementById(\"errquestion\").innerHTML = \"\";\r\n");
	XYBody.Append("                        document.getElementById(\"flag\").value = \"\";\r\n");
	XYBody.Append("                    }\r\n");
	XYBody.Append("                }\r\n");
	XYBody.Append("                var msg = document.getElementById(\"flag\").value;\r\n");
	XYBody.Append("                if (msg == \"error\") {\r\n");
	XYBody.Append("                    return false;\r\n");
	XYBody.Append("                }\r\n");
	XYBody.Append("                return true;\r\n");
	XYBody.Append("            }\r\n");
	XYBody.Append("        </" + "script>\r\n");
	XYBody.Append("        /if%>\r\n");
	XYBody.Append("-->\r\n");
	XYBody.Append("     <!--   if !(ugpinfo!=null && !ugpinfo.IsUseCode)%>\r\n");
	XYBody.Append("-->\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <td colspan=\"2\" style=\"width: 1005\">\r\n");
	XYBody.Append("                <table class=\"contentl mt8\">\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <th align=\"right\">\r\n");
	XYBody.Append("                            <strong class=\"Font14_1\">��֤��</strong> <span class=\"red\">*</span>\r\n");
	XYBody.Append("                        </th>\r\n");
	XYBody.Append("                        <td>\r\n");
	XYBody.Append("                            <input id=\"vcode\" type=\"text\" name=\"vcode\" style=\"width: 50px\" />\r\n");
	XYBody.Append("                            <img src=\"/Common/ValidateCode.ashx\" alt=\"���������\" id=\"imgCode\" onclick=\"this.src='/Common/ValidateCode.ashx?='+Math.random();\"\r\n");
	XYBody.Append("                                style=\"cursor: pointer; vertical-align: middle;\" />\r\n");
	XYBody.Append("                            <em id=\"codeerror\"></em>\r\n");
	XYBody.Append("                        </td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                </table>\r\n");
	XYBody.Append("            </td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("        <script type=\"text/javascript\">\r\n");
	XYBody.Append("            var validateFun = function () {\r\n");
	XYBody.Append("                var val = document.getElementById(\"vcode\").value;\r\n");
	XYBody.Append("                if (val.length < 1) {\r\n");
	XYBody.Append("                    document.getElementById(\"codeflag\").value = \"error\";\r\n");
	XYBody.Append("                    document.getElementById(\"codeerror\").innerHTML = \"��������֤�룡\";\r\n");
	XYBody.Append("                    return false;\r\n");
	XYBody.Append("                } else {\r\n");
	XYBody.Append("                    document.getElementById(\"codeerror\").innerHTML = \"\";\r\n");
	XYBody.Append("                }\r\n");
	XYBody.Append("                var ajax = new Ajax(\"xy200\", \"&vcode=\" + val);\r\n");
	XYBody.Append("                ajax.onSuccess = function () {\r\n");
	XYBody.Append("                    if (ajax.state.result == 0 && ajax.data.content == \"err\") {\r\n");
	XYBody.Append("                        document.getElementById(\"codeflag\").value = \"error\";\r\n");
	XYBody.Append("                        document.getElementById(\"codeerror\").innerHTML = \"��������ȷ��֤�룡\";\r\n");
	XYBody.Append("                    } else if (ajax.state.result == 1) {\r\n");
	XYBody.Append("                        document.getElementById(\"codeflag\").value = \"\";\r\n");
	XYBody.Append("                        document.getElementById(\"codeerror\").innerHTML = \"\";\r\n");
	XYBody.Append("                    }\r\n");
	XYBody.Append("                }\r\n");
	XYBody.Append("            }\r\n");
	XYBody.Append("            document.getElementById(\"vcode\").onmouseout = validateFun;\r\n");
	XYBody.Append("        </" + "script>\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <td colspan=\"2\" style=\"text-align: center\">\r\n");
	XYBody.Append("                <input type=\"hidden\" id=\"codeflag\" />\r\n");
	XYBody.Append("                <input type=\"hidden\" id=\"flag\" />\r\n");
	XYBody.Append("                <input type=\"submit\" value=\"д�����ύ\" id=\"btnStep1\" class=\"button\" />\r\n");
	XYBody.Append("                <script type=\"text/javascript\">\r\n");
	XYBody.Append("                    document.getElementById(\"btnStep1\").onclick = function () {\r\n");
	XYBody.Append("                        var msg = document.getElementById(\"codeflag\").value;\r\n");
	XYBody.Append("                        var flag=document.getElementById(\"flag\").value;\r\n");
	XYBody.Append("                        var areaId=document.getElementById(\"areatypeid\").value;\r\n");
	XYBody.Append("                        if(CheckValuebuy()){\r\n");
	XYBody.Append("                        if (areaId=='0') {\r\n");
	XYBody.Append("                                 return alertmsg(false, '��ѡ���󹺵�����');\r\n");
	XYBody.Append("                            }\r\n");
	XYBody.Append("                             if (msg=='error') {         \r\n");
	XYBody.Append("                                return false;\r\n");
	XYBody.Append("                            }\r\n");
	XYBody.Append("                            return true;\r\n");
	XYBody.Append("                        }else{\r\n");
	XYBody.Append("                            return false;\r\n");
	XYBody.Append("                        }\r\n");
	XYBody.Append("                    }\r\n");
	XYBody.Append("                </" + "script>\r\n");
	XYBody.Append("            </td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("    </table>\r\n");
	XYBody.Append("    </form>\r\n");
	XYBody.Append("</div>\r\n");

	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div><img src=\"");
	XYBody.Append("        <br style=\"FONT: 0px/0 arial\" clear=\"all\"/>\r\n");
	XYBody.Append("        <div class=\"foot\">\r\n");
	XYBody.Append("            ���");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <br style=\"CLEAR: both\">\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("</body>\r\n");
	XYBody.Append("</html>\r\n");



	XYBody.Append(IsCopyright());
	Response.Write(XYBody.ToString());
}
</script>