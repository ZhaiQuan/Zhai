<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.quickbuy,XYECOM.Page" %>
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

	XYBody.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	XYBody.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	XYBody.Append("<head>\r\n");
	XYBody.Append("    <title>����¼����ҵ��Ϣ</title>\r\n");
	XYBody.Append("    <link href=\"/common/css/XYLib.css\" type=\"text/css\" rel=\"Stylesheet\" />\r\n");
	XYBody.Append("    <link href=\"/templates/");
	XYBody.Append("    <link href=\"/templates/");
	XYBody.Append("    <script language=\"javascript\" type=\"text/javascript\" src=\"/common/js/base.js\"></" + "script>\r\n");
	XYBody.Append("    <script language=\"javascript\" type=\"text/javascript\" src=\"/common/js/UploadControl.js\"></" + "script>\r\n");
	XYBody.Append("    <script language=\"javascript\" type=\"text/javascript\" src=\"/templates/");
	XYBody.Append("    <script language=\"javascript\" type=\"text/javascript\" src=\"/templates/");
	XYBody.Append("    <script type=\"text/javascript\">\r\n");
	XYBody.Append("        window.onload = function () {\r\n");
	XYBody.Append("            document.getElementById(\"btnStep1\").onclick = function () {\r\n");
	XYBody.Append("                var msg = document.getElementById(\"codeflag\").value;\r\n");
	XYBody.Append("                if (CheckValuebuy()) {\r\n");
	XYBody.Append("                    if (msg == 'error') {\r\n");
	XYBody.Append("                        return false;\r\n");
	XYBody.Append("                    }\r\n");
	XYBody.Append("                } else {\r\n");
	XYBody.Append("                    return false;\r\n");
	XYBody.Append("                }\r\n");
	XYBody.Append("                document.forms[0].submit();\r\n");
	XYBody.Append("            }\r\n");
	XYBody.Append("        }\r\n");
	XYBody.Append("    </" + "script>\r\n");
	XYBody.Append("</head>\r\n");
	XYBody.Append("<body>\r\n");
	XYBody.Append("    <div class=\"head\">\r\n");
	XYBody.Append("        <div class=\"logo\">\r\n");
	XYBody.Append("            <a href=\"/\">\r\n");
	XYBody.Append("                <img src=\"");
	XYBody.Append("        <div class=\"nav\">\r\n");
	XYBody.Append("            <a href=\"/\">��վ��ҳ</a>|");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <form action=\"quickbuy.");
	XYBody.Append("    <div class=\"guest_post\">\r\n");
	XYBody.Append("        <!--�ο���ϵ��Ϣ-->\r\n");
	XYBody.Append("        <table class=\"tab_step2\">\r\n");
	XYBody.Append("        </table>\r\n");
	XYBody.Append("        <!--��Ϣ��ʾ��-->\r\n");
	XYBody.Append("        <div id=\"step_msg\" class=\"step_msg\">\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <!--�ο�¼����Ϣ����-->\r\n");
	XYBody.Append("        <table class=\"tab_step2\" id=\"tab_guest_info\">\r\n");
	XYBody.Append("            <tr>\r\n");
	XYBody.Append("                <th>\r\n");
	XYBody.Append("                    ��״̬��<em>*</em>\r\n");
	XYBody.Append("                </th>\r\n");
	XYBody.Append("                <td>\r\n");
	XYBody.Append("                    <input type=\"radio\" name=\"jinji\" id=\"jinji0\" value=\"0\" checked=\"checked\">��ͨ��&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp\r\n");
	XYBody.Append("                    <input type=\"radio\" name=\"jinji\" id=\"jinji1\" value=\"1\">������\r\n");
	XYBody.Append("                    <br />\r\n");
	XYBody.Append("                    <em>��Ҫ�󹺵Ĳ�Ʒ���⣬����Ҫ������ȷ��д��</em>\r\n");
	XYBody.Append("                </td>\r\n");
	XYBody.Append("            </tr>\r\n");
	XYBody.Append("            <tr>\r\n");
	XYBody.Append("                <th>\r\n");
	XYBody.Append("                    ���⣺<em>*</em>\r\n");
	XYBody.Append("                </th>\r\n");
	XYBody.Append("                <td>\r\n");
	XYBody.Append("                    <input type=\"text\" name=\"title\" id=\"title\" maxlength=\"45\" size=\"20\" style=\"width: 250px;\" /><br />\r\n");
	XYBody.Append("                    <em>��Ҫ�󹺵Ĳ�Ʒ���⣬����Ҫ������ȷ��д��</em>\r\n");
	XYBody.Append("                </td>\r\n");
	XYBody.Append("            </tr>\r\n");
	XYBody.Append("            <tr>\r\n");
	XYBody.Append("                <th>\r\n");
	XYBody.Append("                    �ؼ��֣�<em>*</em>\r\n");
	XYBody.Append("                </th>\r\n");
	XYBody.Append("                <td>\r\n");
	XYBody.Append("                    <input type=\"text\" name=\"keyword\" id=\"keyword\" maxlength=\"25\" size=\"20\" style=\"width: 250px;\" /><br />\r\n");
	XYBody.Append("                    <em>������̣���ȷ�������������̼��������㣬�磺ѹ��������</em>\r\n");
	XYBody.Append("                </td>\r\n");
	XYBody.Append("            </tr>\r\n");
	XYBody.Append("            <tr>\r\n");
	XYBody.Append("                <th>\r\n");
	XYBody.Append("                    ������<em>*</em>\r\n");
	XYBody.Append("                </th>\r\n");
	XYBody.Append("                <td>\r\n");
	XYBody.Append("                    <input type=\"text\" name=\"num\" id=\"num\" maxlength=\"25\" size=\"20\" onblur=\"IsNum(this)\"\r\n");
	XYBody.Append("                        style=\"width: 250px;\" /><br />\r\n");
	XYBody.Append("                    <em>������</em>\r\n");
	XYBody.Append("                </td>\r\n");
	XYBody.Append("            </tr>\r\n");
	XYBody.Append("            <tr>\r\n");
	XYBody.Append("                <th>\r\n");
	XYBody.Append("                    ���ڵ���*</th>\r\n");
	XYBody.Append("                <td>\r\n");
	XYBody.Append("                      <div id=\"classType\">\r\n");
	XYBody.Append("                            </div>\r\n");
	XYBody.Append("                            <input type=\"hidden\" id=\"citytypeid\" name=\"citytypeid\" />\r\n");
	XYBody.Append("                            <input type=\"hidden\" id=\"provinceid\" name=\"provinceid\" />\r\n");
	XYBody.Append("                            <input type=\"hidden\" id=\"areatypeid\" name=\"areatypeid\"  />\r\n");
	XYBody.Append("                            <script type=\"text/javascript\">\r\n");
	XYBody.Append("                                var cla = new ClassType(\"cla\", 'area', 'classType', 'areatypeid');\r\n");
	XYBody.Append("                                cla.Mode = \"select\";\r\n");
	XYBody.Append("                                cla.Init();\r\n");
	XYBody.Append("                            </" + "script>\r\n");
	XYBody.Append("                   </td>\r\n");
	XYBody.Append("            </tr>\r\n");
	XYBody.Append("            <tr>\r\n");
	XYBody.Append("                <th>\r\n");
	XYBody.Append("                    ��ƷҪ��<em>*</em>\r\n");
	XYBody.Append("                </th>\r\n");
	XYBody.Append("                <td>\r\n");
	XYBody.Append("                    <script language=\"javascript\" type=\"text/javascript\" src=\"");
	XYBody.Append("                    <script language=\"javascript\" type=\"text/javascript\">\r\n");
	XYBody.Append("                        var oFCKeditor = new FCKeditor('xyecom');\r\n");
	XYBody.Append("                        oFCKeditor.BasePath = '/Common/fckeditor/';\r\n");
	XYBody.Append("                        oFCKeditor.ToolbarSet = 'Basic';\r\n");
	XYBody.Append("                        oFCKeditor.Width = \"100%\";\r\n");
	XYBody.Append("                        oFCKeditor.Height = \"400\";\r\n");
	XYBody.Append("                        oFCKeditor.Value = '';\r\n");
	XYBody.Append("                        oFCKeditor.Create();\r\n");
	XYBody.Append("                    </" + "script>\r\n");
	XYBody.Append("                    <br />\r\n");
	XYBody.Append("                    <em>����������</em>\r\n");
	XYBody.Append("                </td>\r\n");
	XYBody.Append("            </tr>\r\n");
	XYBody.Append("            <tr>\r\n");
	XYBody.Append("                <th>\r\n");
	XYBody.Append("                    ��ϵ�ˣ�<em>*</em>\r\n");
	XYBody.Append("                </th>\r\n");
	XYBody.Append("                <td>\r\n");
	XYBody.Append("                    <input type=\"text\" name=\"linkman\" id=\"linkman\" maxlength=\"20\" size=\"10\" style=\"width: 250px;\" />\r\n");
	XYBody.Append("                    <br />\r\n");
	XYBody.Append("                    <em>����ÿͻ���ϵ����</em>\r\n");
	XYBody.Append("                </td>\r\n");
	XYBody.Append("            </tr>\r\n");
	XYBody.Append("            <tr>\r\n");
	XYBody.Append("                <th>\r\n");
	XYBody.Append("                    �绰��<em>*</em>\r\n");
	XYBody.Append("                </th>\r\n");
	XYBody.Append("                <td>\r\n");
	XYBody.Append("                    <input type=\"text\" name=\"tel\" id=\"tel\" maxlength=\"100\" size=\"50\" style=\"width: 250px;\" /><br />\r\n");
	XYBody.Append("                    <em>�������֮����,�Ÿ���;��ʽ��010-88888888</em>\r\n");
	XYBody.Append("                </td>\r\n");
	XYBody.Append("            </tr>\r\n");
	XYBody.Append("        </table>\r\n");
	XYBody.Append("        <table class=\"tab_step2\">\r\n");
	XYBody.Append("            <tr>\r\n");
	XYBody.Append("                <th>\r\n");
	XYBody.Append("                    ��֤�룺<em>*</em>\r\n");
	XYBody.Append("                </th>\r\n");
	XYBody.Append("                <td>\r\n");
	XYBody.Append("                    <input id=\"vcode\" type=\"text\" name=\"vcode\" style=\"width: 50px\" />\r\n");
	XYBody.Append("                    <img src=\"/Common/ValidateCode.ashx\" alt=\"���������\" id=\"imgCode\" onclick=\"this.src='/Common/ValidateCode.ashx?='+Math.random();\"\r\n");
	XYBody.Append("                        style=\"cursor: pointer; vertical-align: middle;\" />\r\n");
	XYBody.Append("                    <br />\r\n");
	XYBody.Append("                    <em id=\"codeerror\"></em>\r\n");
	XYBody.Append("                </td>\r\n");
	XYBody.Append("            </tr>\r\n");
	XYBody.Append("        </table>\r\n");
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
	XYBody.Append("        <input type=\"hidden\" id=\"codeflag\" />\r\n");
	XYBody.Append("        <div class=\"step_next\">\r\n");
	XYBody.Append("            <input type=\"button\" value=\"д�����ύ\" id=\"btnStep1\" />          \r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    </form>\r\n");
	XYBody.Append("    Copyright &copy; 2008 " +  XYECOMCreateHTML("XY_Copyright").ToString() + ".All right reserved.\r\n");
	XYBody.Append("</body>\r\n");
	XYBody.Append("</html>\r\n");

	XYBody.Append(IsCopyright());
	Response.Write(XYBody.ToString());
}
</script>