<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.search.compare,XYECOM.Page" %>
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
	XYBody.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	XYBody.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\" >\r\n");
	XYBody.Append("<head>\r\n");
	XYBody.Append("	<title> ��ϢͼƬ - ");
	XYBody.Append("	<meta name=\"description\" content=\"xyecom\" />\r\n");
	XYBody.Append("	<meta name=\"keywords\" content=\"xyecom\" />\r\n");
	XYBody.Append("	<meta name=\"robots\" content=\"all\"  />\r\n");
	XYBody.Append("	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\" />\r\n");
	XYBody.Append("	<link href=\"");
	XYBody.Append("	<link href=\"");
	XYBody.Append("	<link href=\"");
	XYBody.Append("	<script type=\"text/javascript\" src=\"");
	XYBody.Append("	<script type=\"text/javascript\" src=\"");
	XYBody.Append("	<script type=\"text/javascript\" src=\"");
	XYBody.Append("</head>\r\n");
	XYBody.Append("<body>\r\n");
	XYBody.Append("<div id=\"wrapper\">\r\n");

	XYBody.Append("<div id=\"hd_info\">\r\n");
	XYBody.Append("    <div id=\"cnts\">\r\n");
	XYBody.Append("        <div id=\"site_cang\">\r\n");
	XYBody.Append("            <img src=\"");
	XYBody.Append("                height=\"16\" alt=\"\" align=\"absmiddle\" />\r\n");
	XYBody.Append("            <a href=\"#\" onclick=\"this.style.behavior='url(#default#homepage)';this.setHomePage('");
	XYBody.Append("                ��Ϊ��ҳ</a>&nbsp;&nbsp;\r\n");
	XYBody.Append("            <img src=\"");
	XYBody.Append("                height=\"16\" alt=\"\" align=\"absmiddle\" />\r\n");
	XYBody.Append("            <a style=\"cursor: hand\" onclick=\"window.external.addFavorite('");
	XYBody.Append("                ��Ϊ�ղ�</a>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div id=\"log_info\">\r\n");
	XYBody.Append("            <div id=\"login\">\r\n");
	XYBody.Append("                �û�����<input type=\"text\" class=\"com\" name=\"top_username\" id=\"top_username\" onkeydown=\"_xy_KeyNext('top_password');\" />\r\n");
	XYBody.Append("                ���룺<input type=\"password\" name=\"top_password\" class=\"com\" id=\"top_password\" onkeydown=\"_xy_KeyPress('_btnTopLogin');\" />\r\n");

	if (config.IsEnabledVCode("login"))
	{

	XYBody.Append("                ��֤�룺 ");

	}	//end if

	XYBody.Append("                <input id=\"_btnTopLogin\" type=\"button\" class=\"top_login\" onclick=\"return xy_TopLogin();\" />\r\n");
	XYBody.Append("                &nbsp;&nbsp;<a href=\"");
	XYBody.Append("                    ��������</a> | <a href=\"##\">[VIP��Ա]</a> | <a href=\"##\">��������</a>| <a style=\"color:Red\" href=\"");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <span id=\"logined\" style=\"display: none;\">��ӭ����<font id=\"uname\"></font> | <a id=\"ucenter\">\r\n");
	XYBody.Append("            �ҵ��û�����</a>| <a href=\"");
	XYBody.Append("                style=\"display: none;\">��ҵ�û��������</font> <font id=\"logined_person\" style=\"display: none;\">\r\n");
	XYBody.Append("                    �����û��������</font> </span>\r\n");
	XYBody.Append("        <div class=\"clr\">\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<div class=\"clr\">\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<script>    Login2();</" + "script>\r\n");


	XYBody.Append("	<div id=\"gq_guide\">\r\n");
	XYBody.Append("		�����ڵ�λ�ã�<a href=\"");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("    <div id=\"s_body\">\r\n");

	if (pageinfo.ModuleFlag=="offer")
	{

	XYBody.Append("<!--������Ϣ-->\r\n");
	XYBody.Append("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"compareTab\">\r\n");
	XYBody.Append("    <tr>\r\n");
	XYBody.Append("        <td valign=\"top\">\r\n");
	XYBody.Append("            <table>\r\n");
	XYBody.Append("                    <!--��� -->\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <th class=\"title\">��Ϣ����</th>     \r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--������� --> \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td style=\"height:110px;\">��ϢͼƬ\r\n");
	XYBody.Append("                        </td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td class=\"gray\">�۸�</td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--��� -->     \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <th class=\"title\">��������</th>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td>��Ϣ���</td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td class=\"graybg\">��С����</td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                     <tr>\r\n");
	XYBody.Append("                        <td>��������</td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                    <td class=\"graybg\">����ʱ��</td>\r\n");
	XYBody.Append("                    </tr> \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td>��Чʱ��</td>\r\n");
	XYBody.Append("                    </tr>   \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td class=\"graybg\">��Ϣ����</td>\r\n");
	XYBody.Append("                    </tr>         \r\n");
	XYBody.Append("            </table>\r\n");
	XYBody.Append("        </td>\r\n");

	int info__loop__id=0;
	foreach(SupplyInfo info in list)
	{
		info__loop__id++;

	XYBody.Append("        <td valign=\"top\">\r\n");
	XYBody.Append("            <table>\r\n");
	XYBody.Append("                    <!--��� -->\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <th class=\"title\">\r\n");

	XYBody.Append("</th>     \r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--������� --> \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td style=\"height:110px;\">\r\n");

	if (info.SmallImg[0].ToString().Trim()=="")
	{

	XYBody.Append("                            <img src=\"");

	}
	else
	{

	XYBody.Append("                            <img width=\"110px\" height=\"100px;\" src=\"" + info.SmallImg[0].ToString().Trim() + "\" alt=\"pro\" /> \r\n");

	}	//end if

	XYBody.Append("                        </td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td class=\"gray\">\r\n");

	if ((Convert.ToInt32(info.Price)).ToString()=="0")
	{

	XYBody.Append("                            ����\r\n");

	}
	else
	{

	XYBody.Append("                            ");

	}	//end if

	XYBody.Append("                         </td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--��� -->     \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <th class=\"title\">��������</th>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td>");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td class=\"graybg\">");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                     <tr>\r\n");
	XYBody.Append("                        <td>");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                    <td class=\"graybg\">");
	XYBody.Append("                    </tr> \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td>");
	XYBody.Append("                    </tr>   \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td class=\"graybg\">\r\n");

	XYBody.Append("</td>\r\n");
	XYBody.Append("                    </tr>         \r\n");
	XYBody.Append("            </table>\r\n");
	XYBody.Append("        </td>\r\n");

	}	//end loop

	XYBody.Append("    </tr>\r\n");
	XYBody.Append("</table>\r\n");

	}	//end if

	XYBody.Append("<!-- �ӹ� -->\r\n");

	if (pageinfo.ModuleFlag=="venture")
	{

	XYBody.Append("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"compareTab\">\r\n");
	XYBody.Append("    <tr>\r\n");
	XYBody.Append("        <td valign=\"top\">\r\n");
	XYBody.Append("            <table>\r\n");
	XYBody.Append("                    <!--��� -->\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <th class=\"title\">��Ϣ����</th>     \r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--������� --> \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td style=\"height:110px;\">��ϢͼƬ\r\n");
	XYBody.Append("                        </td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td class=\"gray\">�۸�</td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--��� -->     \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <th class=\"title\">��������</th>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td>��Ϣ���</td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td class=\"graybg\">��С����</td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                     <tr>\r\n");
	XYBody.Append("                        <td>��������</td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                    <td class=\"graybg\">����ʱ��</td>\r\n");
	XYBody.Append("                    </tr> \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td>��Чʱ��</td>\r\n");
	XYBody.Append("                    </tr>   \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td class=\"graybg\">��Ϣ����</td>\r\n");
	XYBody.Append("                    </tr>         \r\n");
	XYBody.Append("            </table>\r\n");
	XYBody.Append("        </td>\r\n");

	int dinfo__loop__id=0;
	foreach(DemandInfo dinfo in list)
	{
		dinfo__loop__id++;

	XYBody.Append("            <td valign=\"top\">\r\n");
	XYBody.Append("            <table>\r\n");
	XYBody.Append("                    <!--��� -->\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <th class=\"title\">\r\n");

	XYBody.Append("</th>     \r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--������� --> \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td style=\"height:110px;\">\r\n");

	if (dinfo.SmallImg[0].ToString().Trim()=="")
	{

	XYBody.Append("                            <img src=\"");

	}
	else
	{

	XYBody.Append("                            <img width=\"110px\" height=\"100px;\" src=\"" + dinfo.SmallImg[0].ToString().Trim() + "\" alt=\"pro\" /> \r\n");

	}	//end if

	XYBody.Append("                        </td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td class=\"gray\">\r\n");

	if ((Convert.ToInt32(dinfo.Price)).ToString()=="0")
	{

	XYBody.Append("                            ����\r\n");

	}
	else
	{

	XYBody.Append("                            ");

	}	//end if

	XYBody.Append("                         </td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--��� -->     \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <th class=\"title\">��������</th>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td>");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td class=\"graybg\">");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                     <tr>\r\n");
	XYBody.Append("                        <td>");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                    <td class=\"graybg\">");
	XYBody.Append("                    </tr> \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td>");
	XYBody.Append("                    </tr>   \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td class=\"graybg\">\r\n");

	XYBody.Append("</td>\r\n");
	XYBody.Append("                    </tr>         \r\n");
	XYBody.Append("            </table>\r\n");
	XYBody.Append("        </td>\r\n");

	}	//end loop

	XYBody.Append("    </tr>\r\n");
	XYBody.Append("</table>\r\n");

	}	//end if


	if (pageinfo.ModuleFlag=="investment")
	{

	XYBody.Append("<!--���̴�����Ϣ-->\r\n");
	XYBody.Append("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"compareTab\">\r\n");
	XYBody.Append("    <tr>\r\n");
	XYBody.Append("        <td valign=\"top\">\r\n");
	XYBody.Append("            <table>\r\n");
	XYBody.Append("                    <!--��� -->\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <th class=\"title\">��Ϣ����</th>     \r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--������� --> \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td style=\"height:110px;\">��ϢͼƬ\r\n");
	XYBody.Append("                        </td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td class=\"gray\">��Ϣ���</td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--��� -->     \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <th class=\"title\">��������</th>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td>��������</td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td>����ʱ��</td>\r\n");
	XYBody.Append("                    </tr> \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td class=\"graybg\">��Чʱ��</td>\r\n");
	XYBody.Append("                    </tr>   \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td>��Ϣ����</td>\r\n");
	XYBody.Append("                    </tr>         \r\n");
	XYBody.Append("            </table>\r\n");
	XYBody.Append("        </td>\r\n");

	int iinfo__loop__id=0;
	foreach(XYECOM.Model.InviteBusinessmanInfo iinfo in list)
	{
		iinfo__loop__id++;

	XYBody.Append("        <td valign=\"top\">\r\n");
	XYBody.Append("            <table>\r\n");
	XYBody.Append("                    <!--��� -->\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <th class=\"title\">\r\n");

	XYBody.Append("</th>     \r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--������� --> \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td style=\"height:110px;\">\r\n");

	if (iinfo.SmallImg[0].ToString().Trim()=="")
	{

	XYBody.Append("                            <img src=\"");

	}
	else
	{

	XYBody.Append("                            <img width=\"110px\" height=\"100px;\" src=\"" + iinfo.SmallImg[0].ToString().Trim() + "\" alt=\"pro\" /> \r\n");

	}	//end if

	XYBody.Append("                        </td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td class=\"gray\">");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--��� -->     \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <th class=\"title\">��������</th>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");

	if (iinfo.A_Area=="")
	{

	XYBody.Append("                        <td>û����д</td>\r\n");

	}
	else
	{

	XYBody.Append("                         <td>");

	}	//end if

	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td>");
	XYBody.Append("                    </tr> \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td  class=\"graybg\">");
	XYBody.Append("                    </tr>   \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td>\r\n");

	XYBody.Append("</td>\r\n");
	XYBody.Append("                    </tr>         \r\n");
	XYBody.Append("            </table>\r\n");
	XYBody.Append("        </td>\r\n");

	}	//end loop

	XYBody.Append("    </tr>\r\n");
	XYBody.Append("</table>\r\n");

	}	//end if


	if (pageinfo.ModuleFlag=="service")
	{

	XYBody.Append("<!--������Ϣ-->\r\n");
	XYBody.Append("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"compareTab\">\r\n");
	XYBody.Append("    <tr>\r\n");
	XYBody.Append("        <td valign=\"top\">\r\n");
	XYBody.Append("            <table>\r\n");
	XYBody.Append("                    <!--��� -->\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <th class=\"title\">��Ϣ����</th>     \r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--������� --> \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td style=\"height:110px;\">��ϢͼƬ\r\n");
	XYBody.Append("                        </td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--��� -->     \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <th class=\"title\">��������</th>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td>��Ϣ���</td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                    <td class=\"graybg\">����ʱ��</td>\r\n");
	XYBody.Append("                    </tr> \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td>��Чʱ��</td>\r\n");
	XYBody.Append("                    </tr>   \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td class=\"graybg\">��Ϣ����</td>\r\n");
	XYBody.Append("                    </tr>         \r\n");
	XYBody.Append("            </table>\r\n");
	XYBody.Append("        </td>\r\n");

	int seinfo__loop__id=0;
	foreach(XYECOM.Model.ServiecInfo seinfo in list)
	{
		seinfo__loop__id++;

	XYBody.Append("        <td valign=\"top\">\r\n");
	XYBody.Append("            <table>\r\n");
	XYBody.Append("                    <!--��� -->\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <th class=\"title\">\r\n");

	XYBody.Append("</th>     \r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--������� --> \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td style=\"height:110px;\">\r\n");

	if (seinfo.SmallImg[0].ToString().Trim()=="")
	{

	XYBody.Append("                            <img src=\"");

	}
	else
	{

	XYBody.Append("                            <img width=\"110px\" height=\"100px;\" src=\"" + seinfo.SmallImg[0].ToString().Trim() + "\" alt=\"pro\" /> \r\n");

	}	//end if

	XYBody.Append("                        </td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--��� -->     \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <th class=\"title\">��������</th>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td>");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                    <td class=\"graybg\">");
	XYBody.Append("                    </tr> \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td>");
	XYBody.Append("                    </tr>   \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td class=\"graybg\">\r\n");

	XYBody.Append("</td>\r\n");
	XYBody.Append("                    </tr>         \r\n");
	XYBody.Append("            </table>\r\n");
	XYBody.Append("        </td>\r\n");

	}	//end loop

	XYBody.Append("    </tr>\r\n");
	XYBody.Append("</table>\r\n");

	}	//end if


	if (pageinfo.ModuleFlag=="brand")
	{

	XYBody.Append("<!--Ʒ����Ϣ-->\r\n");
	XYBody.Append("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"compareTab\">\r\n");
	XYBody.Append("    <tr>\r\n");
	XYBody.Append("        <td valign=\"top\">\r\n");
	XYBody.Append("            <table>\r\n");
	XYBody.Append("                    <!--��� -->\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <th class=\"title\">��Ϣ����</th>     \r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--������� --> \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td style=\"height:110px;\">��ϢͼƬ\r\n");
	XYBody.Append("                        </td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--��� -->     \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <th class=\"title\">��������</th>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td>��Ϣ���</td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                    <td class=\"graybg\">����ʱ��</td>\r\n");
	XYBody.Append("                    </tr>    \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td>��Ϣ����</td>\r\n");
	XYBody.Append("                    </tr>         \r\n");
	XYBody.Append("            </table>\r\n");
	XYBody.Append("        </td>\r\n");

	int binfo__loop__id=0;
	foreach(BrandInfo binfo in list)
	{
		binfo__loop__id++;

	XYBody.Append("        <td valign=\"top\">\r\n");
	XYBody.Append("            <table>\r\n");
	XYBody.Append("                    <!--��� -->\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <th class=\"title\">\r\n");

	XYBody.Append("</th>     \r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--������� --> \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td style=\"height:110px;\">\r\n");

	if (binfo.SmallImg[0].ToString().Trim()=="")
	{

	XYBody.Append("                            <img src=\"");

	}
	else
	{

	XYBody.Append("                            <img width=\"110px\" height=\"100px;\" src=\"" + binfo.SmallImg[0].ToString().Trim() + "\" alt=\"pro\" /> \r\n");

	}	//end if

	XYBody.Append("                        </td>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <!--��� -->     \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <th class=\"title\">��������</th>\r\n");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                         <td>");
	XYBody.Append("                    </tr>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                    <td class=\"graybg\">");
	XYBody.Append("                    </tr>    \r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                        <td>\r\n");

	XYBody.Append("</td>\r\n");
	XYBody.Append("                    </tr>         \r\n");
	XYBody.Append("            </table>\r\n");
	XYBody.Append("        </td>\r\n");

	}	//end loop

	XYBody.Append("    </tr>\r\n");
	XYBody.Append("</table>\r\n");

	}	//end if

	XYBody.Append("</div>\r\n");

	XYBody.Append("	<div id=\"footer\">\r\n");
	XYBody.Append("		<a href=\"\">������ҳ</a> | <a href=\"/about/index.htm\" target=\"_blank\">��������</a> | <a href=\"\">��������</a> | <a href=\"\">ý�屨��</a> | <a href=\"\">��ƸӢ��</a> | <a href=\"\">����ר��</a> | <a href=\"\">���ר��</a> | <a href=\"\">��������</a> | <a href=\"\">��ϵ����</a> | <a href=\"\">��վ��ͼ</a>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("	<div id=\"copyright\">\r\n");
	XYBody.Append("		<div id=\"copy_info\">\r\n");
	XYBody.Append("			<ul>\r\n");
	XYBody.Append("				<li>Copyright &copy; 2005-2009  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href=\"#\" target=\"_blank\">��ICP��05003331��</a></li>\r\n");
	XYBody.Append("				<li><img src=\"");
	XYBody.Append("				<li>��Ȩ���С��ݺ��������� - ��������С��ҵ��������Ӧ�ü�������δ����Ȩ����ת��</li>\r\n");
	XYBody.Append("			</ul>			\r\n");
	XYBody.Append("		</div>\r\n");
	XYBody.Append("		<div class=\"copyright_i\">\r\n");
	XYBody.Append("		 <div class=\"com copyright_i1\"><p class=\"p\"><a href=\"#\" target=\"_blank\">�������羯�챨��ƽ̨</a></p></div>\r\n");
	XYBody.Append("		 <div class=\"com copyright_i2\"><p class=\"p\">������Ϣ��ȫ������</p></div>\r\n");
	XYBody.Append("		 <div class=\"com copyright_i3\"><p class=\"p\"><a href=\"#\" target=\"_blank\">��Ӫ����վ������Ϣ</a></p></div>\r\n");
	XYBody.Append("		 <div class=\"com copyright_i4\"><p class=\"p\"><a href=\"#\" target=\"_blank\">������Ϣ�ٱ�����</a></p></div>\r\n");
	XYBody.Append("		</div>\r\n");
	XYBody.Append("	 </div>\r\n");


	XYBody.Append("</div>\r\n");
	XYBody.Append("</body>\r\n");
	XYBody.Append("</html>\r\n");

	XYBody.Append(IsCopyright());
	Response.Write(XYBody.ToString());
}
</script>