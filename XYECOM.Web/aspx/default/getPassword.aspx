<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.getpassword,XYECOM.Page" %>
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
	XYBody.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	XYBody.Append("<head>\r\n");

	XYBody.Append("    <title>");
	XYBody.Append("	<meta name=\"description\" content=\"");
	XYBody.Append("	<meta name=\"keywords\" content=\"");
	XYBody.Append("	<meta name=\"robots\" content=\"all\"  />\r\n");
	XYBody.Append("	<meta http-equiv=\"Content-Type\" content=\"text/html;\" charset=\"gb2312\" />	\r\n");
	XYBody.Append("	<link rel=\"stylesheet\" href=\"");
	XYBody.Append("	<link href=\"");
	XYBody.Append("	<link href=\"");
	XYBody.Append("	<script type=\"text/javascript\" src=\"");
	XYBody.Append("	<script type=\"text/javascript\" src=\"");
	XYBody.Append("    <script type=\"text/javascript\" src=\"");
	XYBody.Append("<link href=\"");


	XYBody.Append("	<link href=\"");
	XYBody.Append("</head>\r\n");
	XYBody.Append("<body onload=\"");
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



	XYBody.Append("<div id=\"header\">\r\n");
	XYBody.Append("    <div id=\"local_channel\">\r\n");
	XYBody.Append("        <span class=\"fright\"><a href=\"#\" onclick=\"div_opennew('_xy_div_allarea',200,100);return false;\">\r\n");
	XYBody.Append("            ���е���</a>\r\n");
	XYBody.Append("            <div id=\"_xy_div_allarea\" style=\"display: none\" onmouseover=\"div_mouseover('_xy_div_allarea')\"\r\n");
	XYBody.Append("                onmouseout=\"div_mouseout('_xy_div_allarea');\">\r\n");
	XYBody.Append("                <a href=\"\">ɽ��</a> <a href=\"\">�Ĵ�</a> <a href=\"\">����</a> <a href=\"\">�㶫</a>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </span><strong>����Ƶ����</strong>" +  XYECOMCreateHTML("XY_ASN_shandong").ToString() + " | <a href=\"#\" class=\"waiting\" title=\"��δ��ͨ\">\r\n");
	XYBody.Append("            ����ũҵ��</a> | <a href=\"#\" class=\"waiting\" title=\"��δ��ͨ\">����ũҵ��</a> | <a href=\"#\" class=\"waiting\"\r\n");
	XYBody.Append("                title=\"��δ��ͨ\">����ũҵ��</a> | <a href=\"#\" class=\"waiting\" title=\"��δ��ͨ\">�㶫ũҵ��</a>\r\n");
	XYBody.Append("        | <a href=\"#\" class=\"waiting\" title=\"��δ��ͨ\">�Ĵ�ũҵ��</a>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div class=\"clr\">\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div id=\"mains\">\r\n");
	XYBody.Append("        <div id=\"left\">\r\n");
	XYBody.Append("            <div id=\"logo\">\r\n");
	XYBody.Append("                <a href=\"/\">\r\n");
	XYBody.Append("                    <img src=\"");
	XYBody.Append("                        height=\"50\" alt=\"\" border=\"0\" /></a></div>\r\n");
	XYBody.Append("            <div id=\"site_tube\">\r\n");
	XYBody.Append("                [ &nbsp;&nbsp;<a href=\"\" class=\"orange\">�й�ũҵ����վ</a> &nbsp; <a href=\"#\" onclick=\"div_opennew('_xy_div_alltrade',200,100);return false;\"\r\n");
	XYBody.Append("                    class=\"gray\">�л�����վ��</a> <a href=\"#\" onclick=\"div_opennew('_xy_div_alltrade',200,100);return false;\">\r\n");
	XYBody.Append("                        <img src=\"");
	XYBody.Append("                            width=\"11\" height=\"11\" alt=\"\" align=\"absmiddle\" /></a>&nbsp;&nbsp; ]\r\n");
	XYBody.Append("                <div id=\"_xy_div_alltrade\" style=\"display: none\" onmouseover=\"div_mouseover('_xy_div_alltrade')\"\r\n");
	XYBody.Append("                    onmouseout=\"div_mouseout('_xy_div_alltrade');\">\r\n");
	XYBody.Append("                    <a href=\"\">��վ1</a> <a href=\"\">��վ2</a> <a href=\"\">��վ3</a> <a href=\"\">��վ4</a>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div id=\"right\">\r\n");
	XYBody.Append("            <div id=\"site_nav\">\r\n");
	XYBody.Append("                <div class=\"c_name\">\r\n");
	XYBody.Append("                    ��ҵƵ��</div>\r\n");
	XYBody.Append("                <div class=\"text\">\r\n");
	XYBody.Append("                    <ul>\r\n");
	XYBody.Append("                        <li><a href=\"\">����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">Ů��</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">ĸӤ</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">�Ժ�</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">��ѧ</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">ԭ��</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">�ƾ�</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">��ѧ</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">�ƾ�</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">��ѧ</a></li>\r\n");
	XYBody.Append("                    </ul>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div class=\"c_name\">\r\n");
	XYBody.Append("                    ������Ѷ</div>\r\n");
	XYBody.Append("                <div class=\"text\">\r\n");
	XYBody.Append("                    <ul>\r\n");
	XYBody.Append("                        <li><a href=\"\">����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">Ů��</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">ĸӤ</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">�Ժ�</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">��ѧ</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">ԭ��</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">�ƾ�</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">��ѧ</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">�ƾ�</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"\">��ѧ</a></li>\r\n");
	XYBody.Append("                    </ul>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div id=\"hd_bnr\">\r\n");
	XYBody.Append("                <a href=\"\">\r\n");
	XYBody.Append("                    <img src=\"");
	XYBody.Append("                        height=\"76\" alt=\"\" /></a>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div class=\"clr\">\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div class=\"clr\">\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<div class=\"clr\">\r\n");
	XYBody.Append("</div>\r\n");


	XYBody.Append("	<div class=\"clr\"></div>\r\n");
	XYBody.Append("	<div class=\"clr\"></div>\r\n");
	XYBody.Append("	<br />\r\n");
	XYBody.Append("	<div id=\"reg_nav\">\r\n");
	XYBody.Append("		<strong>�����ڵ�λ�ã�</strong> <a href=\"\" class=\"blue\">��վ��ҳ</a> &raquo; <a href=\"\" class=\"blue\">�һ�����</a>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("    <!--������Ϣ-->\r\n");
	XYBody.Append("    <div class=\"regBg\">\r\n");
	XYBody.Append("     <table width=\"880\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
	XYBody.Append("        <tr><td>&nbsp;</td></tr>\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <td height=\"26\" align=\"right\" style=\"border-bottom:1px solid #ccc;\"><strong class=\"Font14_1\">�һ�����</strong>&nbsp;&nbsp;</td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("        <tr><td>&nbsp;</td></tr>\r\n");
	XYBody.Append("    </table>\r\n");
	XYBody.Append("     <table width=\"880\" border=\"0\" align=\"center\" cellpadding=\"6\" cellspacing=\"0\">\r\n");
	XYBody.Append("		<tr>\r\n");
	XYBody.Append("			<td align=\"right\" valign=\"top\" width=\"130\" style=\"padding-top:12px;\" align=\"left\"><strong class=\"Font14_1\">ͨ�������һ�����</strong> <span class=\"red\">*</span></td>\r\n");
	XYBody.Append("			<td width=\"293\" valign=\"top\">\r\n");
	XYBody.Append("			    <input type=\"text\" name=\"email\" id=\"email\" size=\"28\" maxlength=\"30\" class=\"regOutInput\"/>\r\n");
	XYBody.Append("                 <br/>\r\n");
	XYBody.Append("                <input type=\"button\" id=\"btnFindPwd\" value=\"�һ�����\" onclick=\"RetakePasswordByEmail();\"/>\r\n");
	XYBody.Append("           </td>\r\n");
	XYBody.Append("			<td width=\"432\" valign=\"top\"><div id=\"Div1\" class=\"regOutTip\">���������ڱ�վ��ע�����䡣</td>\r\n");
	XYBody.Append("		</tr>\r\n");
	XYBody.Append("	  </table>\r\n");
	XYBody.Append("        <table width=\"880\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
	XYBody.Append("            <tr><td>&nbsp;</td></tr>\r\n");
	XYBody.Append("            <tr>\r\n");
	XYBody.Append("                <td height=\"26\" align=\"right\" style=\"border-bottom:1px solid #ccc;\"><strong class=\"Font14_1\">��������</strong>&nbsp;&nbsp;</td>\r\n");
	XYBody.Append("            </tr>\r\n");
	XYBody.Append("            <tr><td>&nbsp;</td></tr>\r\n");
	XYBody.Append("        </table>\r\n");
	XYBody.Append("        <table width=\"880\" border=\"0\" align=\"center\" cellpadding=\"6\" cellspacing=\"0\">\r\n");
	XYBody.Append("            <tr>\r\n");
	XYBody.Append("                <td align=\"right\" valign=\"top\" width=\"130\" style=\"padding-top:12px;\" align=\"left\"><strong class=\"Font14_1\">���������û���</strong> <span class=\"red\">*</span></td>\r\n");
	XYBody.Append("                <td width=\"293\" valign=\"top\">\r\n");
	XYBody.Append("                    <input name=\"\" type=\"text\" size=\"28\" id=\"username\" class=\"regOutInput\" maxlength =\"100\" onblur=\"chktxtPassword('0');\" onfocus=\"fsm('0');\"/>\r\n");
	XYBody.Append("                </td>\r\n");
	XYBody.Append("                <td width=\"432\" valign=\"top\" id =\"txt0\" class=\"regOutTip\">��������ע����û�����</td>\r\n");
	XYBody.Append("            </tr>\r\n");
	XYBody.Append("            <tr>\r\n");
	XYBody.Append("                <td align=\"right\" valign=\"top\" width=\"130\" style=\"padding-top:12px;\" align=\"left\"><strong class=\"Font14_1\">������ʾ����</strong> <span class=\"red\">*</span></td>\r\n");
	XYBody.Append("                <td width=\"293\" valign=\"top\">\r\n");
	XYBody.Append("                    <input name=\"\" type=\"text\" size=\"28\"  id =\"question\" onblur=\"chktxtPassword('1');\" onfocus=\"fsm('1');\" class=\"regOutInput\" readonly=\"readonly\" disabled/>\r\n");
	XYBody.Append("                </td>\r\n");
	XYBody.Append("                <td width=\"432\" valign=\"top\" class=\"regOutTip\" id=\"txt1\">��ע��ʱ��д��������ʾ���⡣</td>\r\n");
	XYBody.Append("            </tr>\r\n");
	XYBody.Append("            <tr>\r\n");
	XYBody.Append("                <td align=\"right\" valign=\"top\" width=\"130\" style=\"padding-top:12px;\" align=\"left\"><strong class=\"Font14_1\">������ʾ��</strong> <span class=\"red\">*</span></td>\r\n");
	XYBody.Append("                <td width=\"293\" valign=\"top\">\r\n");
	XYBody.Append("                    <input name=\"\" type=\"text\" size=\"28\"  id=\"answer\" onblur=\"chktxtPassword('2');\" onfocus=\"fsm('2');\" class=\"regOutInput\"/>\r\n");
	XYBody.Append("                </td>\r\n");
	XYBody.Append("                <td width=\"432\" valign=\"top\"  id =\"txt2\" class=\"regOutTip\">��������ע��ʱ��д��������ʾ����𰸡�</td>\r\n");
	XYBody.Append("            </tr>\r\n");
	XYBody.Append("            <tr>\r\n");
	XYBody.Append("                <td align=\"right\" valign=\"top\" width=\"130\" style=\"padding-top:12px;\" align=\"left\"><strong class=\"Font14_1\">����������</strong> <span class=\"red\">*</span></td>\r\n");
	XYBody.Append("                <td width=\"293\" valign=\"top\">\r\n");
	XYBody.Append("                    <input name=\"\" type=\"password\" size=\"28\"  id=\"newpwd\" onblur=\"chktxtPassword('3');\" onfocus=\"fsm('3');\" class=\"regOutInput\"/>\r\n");
	XYBody.Append("                </td>\r\n");
	XYBody.Append("                <td width=\"432\" valign=\"top\" id=\"txt3\" class=\"regOutTip\">6-20λ(���ܰ�������), �������û�����ͬ��</td>\r\n");
	XYBody.Append("            </tr>\r\n");
	XYBody.Append("             <tr>\r\n");
	XYBody.Append("                <td align=\"right\" valign=\"top\" width=\"130\" style=\"padding-top:12px;\" align=\"left\"><strong class=\"Font14_1\">ȷ������</strong> <span class=\"red\">*</span></td>\r\n");
	XYBody.Append("                <td width=\"293\" valign=\"top\">\r\n");
	XYBody.Append("                    <input name=\"\" type=\"password\" size=\"28\"   id=\"npassword\" onblur=\"chktxtPassword('4');\" class=\"regOutInput\" onfocus=\"fsm('4');\"/>\r\n");
	XYBody.Append("                </td>\r\n");
	XYBody.Append("                <td width=\"432\" valign=\"top\" id=\"txt4\" class=\"regOutTip\">��������һ��������д������</td>\r\n");
	XYBody.Append("            </tr>\r\n");
	XYBody.Append("            <tr>\r\n");
	XYBody.Append("                <td></td>\r\n");
	XYBody.Append("                <td>\r\n");
	XYBody.Append("                    <input type=\"button\" id=\"btnResetPwd\" value=\"��������\"  onclick =\"return checkpassword();\" disabled=\"disabled\"/>\r\n");
	XYBody.Append("                    <input type=\"reset\"  value=\" ȡ�� \" onclick =\"window.location.href='");
	XYBody.Append("                <td></td>\r\n");
	XYBody.Append("            </tr>\r\n");
	XYBody.Append("        </table>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("</body>\r\n");
	XYBody.Append("</html>\r\n");

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



	XYBody.Append(IsCopyright());
	Response.Write(XYBody.ToString());
}
</script>