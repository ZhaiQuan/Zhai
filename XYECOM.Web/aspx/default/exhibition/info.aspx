<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.exhibition.info,XYECOM.Page" %>
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

	XYBody.Append("    <title> xyecom 3.0 ��ҳ </title>\r\n");
	XYBody.Append("	<meta name=\"description\" content=\"xyecom\" />\r\n");
	XYBody.Append("	<meta name=\"keywords\" content=\"xyecom\" />\r\n");
	XYBody.Append("	<meta name=\"robots\" content=\"all\"  />\r\n");
	XYBody.Append("	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"\" />\r\n");
	XYBody.Append("	<link rel=\"stylesheet\" href=\"");
	XYBody.Append("	<link href=\"");
	XYBody.Append("	<link href=\"");
	XYBody.Append("	<link href=\"");
	XYBody.Append("    <script type=\"text/javascript\" src=\"");
	XYBody.Append("	<script type=\"text/javascript\" src=\"");
	XYBody.Append("    <script type=\"text/javascript\" src=\"");


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



	XYBody.Append("	<div class=\"search\">\r\n");
	XYBody.Append("		<div class=\"sh_tab\">\r\n");
	XYBody.Append("			<div class=\"order\">\r\n");
	XYBody.Append("				<a href=\"");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<ul id=\"_xy_big_menu_box\">\r\n");
	XYBody.Append("				<li><a id=\"_xymenu_index\" href=\"");
	XYBody.Append("				<li><a id=\"_xymenu_news\" href=\"");
	XYBody.Append("				<li><a id=\"_xymenu_offer\" href=\"");
	XYBody.Append("				<li><a id=\"_xymenu_investment\" href=\"");
	XYBody.Append("				<li><a id=\"_xymenu_company\" href=\"");
	XYBody.Append("				<li><a id=\"_xymenu_job\" href=\"");
	XYBody.Append("				<li><a id=\"_xymenu_brand\" href=\"");
	XYBody.Append("				<li><a id=\"_xymenu_exhibition\" href=\"");
	XYBody.Append("				<li><a id=\"_xymenu_survey\" href=\"");
	XYBody.Append("				<li style=\"display:none;\"><a href=\"#\"><span>��������</span></a></li>\r\n");
	XYBody.Append("				<div class=\"clr\"></div>\r\n");
	XYBody.Append("			</ul>\r\n");
	XYBody.Append("			<script type=\"text/javascript\">xy_Sel_CurBigMenu();</" + "script>\r\n");
	XYBody.Append("		</div>\r\n");
	XYBody.Append("		<div class=\"sh_cnt\">\r\n");
	XYBody.Append("			<div id=\"main\">\r\n");
	XYBody.Append("				<input type=\"text\" id=\"txtsearchkey\" name=\"sch_text\" class=\"textsearch\" onkeydown=\"_xy_KeyPress('DoSearch');\"/>\r\n");
	XYBody.Append("				<div class=\"soSelect\" onclick=\"xy_ShowSearchMenu();\">\r\n");
	XYBody.Append("					<div class=\"option_current\" id=\"headSlected\" >��Ʒ</div>\r\n");
	XYBody.Append("					<div class=\"option_arrow\">\r\n");
	XYBody.Append("						<a href=\"#\"><span class=\"arrow\"></span></a>\r\n");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div class=\"clr\"></div>\r\n");
	XYBody.Append("					<ul onmouseover=\"drop_mouseover('head')\" onmouseout=\"drop_mouseout('head');\" style=\"display: none;\" class=\"options\" id=\"headSel\">\r\n");
	XYBody.Append("					    <li><a href=\"#\" onclick=\"xy_SelectSearchMenu('��Ʒ','offer','sell');\">��Ʒ</a></li>\r\n");
	XYBody.Append("					    <li><a href=\"#\" onclick=\"xy_SelectSearchMenu('��','buy','buy');\">��</a></li>\r\n");
	XYBody.Append("					    <li><a href=\"#\" onclick=\"xy_SelectSearchMenu('����','investment','sell');\">����</a></li>\r\n");
	XYBody.Append("					    <li><a href=\"#\" onclick=\"xy_SelectSearchMenu('����','investment','buy');\">����</a></li>\r\n");
	XYBody.Append("					    <li><a href=\"#\" onclick=\"xy_SelectSearchMenu('����','venture','sell');\">����</a></li>\r\n");
	XYBody.Append("					    <li><a href=\"#\" onclick=\"xy_SelectSearchMenu('����','service','sell');\">����</a></li>\r\n");
	XYBody.Append("					    <li><a href=\"#\" onclick=\"xy_SelectSearchMenu('��ҵ','company','sell');\">��ҵ</a></li>\r\n");
	XYBody.Append("					    <li><a href=\"#\" onclick=\"xy_SelectSearchMenu('��Ѷ','news','');\">��Ѷ</a></li>\r\n");
	XYBody.Append("					    <li><a href=\"#\" onclick=\"xy_SelectSearchMenu('�˲�','job','');\">�˲�</a></li>\r\n");
	XYBody.Append("					    <li><a href=\"#\" onclick=\"xy_SelectSearchMenu('Ʒ��','brand','');\">Ʒ��</a></li>\r\n");
	XYBody.Append("					    <li><a href=\"#\" onclick=\"xy_SelectSearchMenu('չ��','exhibition','');\">չ��</a></li>\r\n");
	XYBody.Append("					</ul>\r\n");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("				<input type=\"hidden\" id=\"xy_FlagName\" value=\"offer\"/>\r\n");
	XYBody.Append("				<input type=\"hidden\" id=\"xy_InfoType\" value=\"sell\"/>\r\n");
	XYBody.Append("				<button value=\"����\" id=\"DoSearch\" name=\"DoSearch\" class=\"btsearch\" onclick=\"xy_search();\"/>����</button>\r\n");
	XYBody.Append("				<a href=\"/search/advanced_search.");
	XYBody.Append("				<a href=\"");
	XYBody.Append("				<a href=\"");
	XYBody.Append("				<a href=\"");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div id=\"sch_bnr\"><a href=\"\"><img src=\"");
	XYBody.Append("			<div id=\"hot_schs\">\r\n");
	XYBody.Append("				<ul>\r\n");
	XYBody.Append("					<li><strong>���������ʣ�</strong></li>\r\n");
	XYBody.Append("					<li>\r\n");
	XYBody.Append("						<ul>\r\n");
	XYBody.Append("							" +  XYECOMCreateHTML("XY_Index_ReMenSouSuoGuanjianzi").ToString() + "\r\n");
	XYBody.Append("						</ul>\r\n");
	XYBody.Append("					</li>\r\n");
	XYBody.Append("				</ul>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("		</div>\r\n");
	XYBody.Append("	</div>\r\n");


	XYBody.Append("	<div id=\"news_bread\" style=\"width:100%;border:0;margin-top:6px;\">\r\n");
	XYBody.Append("		<em>�����ڵ�λ�ã�");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("	<div id=\"idx_cnt2\">\r\n");
	XYBody.Append("		<div id=\"left\">\r\n");
	XYBody.Append("			<div class=\"exhi_pages\">\r\n");
	XYBody.Append("				<h1>");
	XYBody.Append("				<div class=\"cate\"><h2>չ�������Ϣ</h2></div>\r\n");
	XYBody.Append("				<div class=\"main\">\r\n");
	XYBody.Append("					<table width=\"540\" border=\"0\" cellpadding=\"0\" cellspacing=\"1\" bgcolor=\"#c6c6c6\" style=\"padding:4px;\">\r\n");
	XYBody.Append("					<tr>\r\n");
	XYBody.Append("					<td width=\"16%\" bgcolor=\"#f5f5f5\">չ��ʱ�䣺</td>\r\n");
	XYBody.Append("					<td width=\"35%\" bgcolor=\"#f5f5f5\"> ");
	XYBody.Append("					<td width=\"16%\" bgcolor=\"#f5f5f5\">չ��ص㣺</td>\r\n");
	XYBody.Append("					<td width=\"33%\" bgcolor=\"#f5f5f5\">");
	XYBody.Append("					</tr>\r\n");
	XYBody.Append("					<tr>\r\n");
	XYBody.Append("					<td bgcolor=\"#f5f5f5\">���쵥λ��</td>\r\n");
	XYBody.Append("					<td bgcolor=\"#f5f5f5\">");
	XYBody.Append("					<td bgcolor=\"#f5f5f5\">�а쵥λ��</td>\r\n");
	XYBody.Append("					<td bgcolor=\"#f5f5f5\">");
	XYBody.Append("					</tr>\r\n");
	XYBody.Append("					<tr>\r\n");
	XYBody.Append("					<td bgcolor=\"#f5f5f5\">չ�����ͣ�</td>\r\n");
	XYBody.Append("					<td bgcolor=\"#f5f5f5\">");
	XYBody.Append("					<td bgcolor=\"#f5f5f5\">չ����ַ��</td>\r\n");
	XYBody.Append("					<td bgcolor=\"#f5f5f5\">");
	XYBody.Append("					</tr>\r\n");
	XYBody.Append("					</table><br /><FONT face=Verdana>");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("				<div class=\"cate\"><h2>չ����</h2></div>\r\n");
	XYBody.Append("				<div class=\"main\">\r\n");
	XYBody.Append("                    <p>");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("				<div class=\"clr\"></div>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("		</div>\r\n");
	XYBody.Append("		<div id=\"right\">\r\n");
	XYBody.Append("            <!--\r\n");
	XYBody.Append("			<div class=\"MTitle_01\" style=\"margin-top:6px;\">\r\n");
	XYBody.Append("				<h2 id=\"h201\" class=\"\"><a target=\"_blank\" href=\"#\"><strong>չ������</strong></a></h2>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div id=\"con01\" class=\"Mblk_01\">\r\n");
	XYBody.Append("				<div class=\"expo_sch\">\r\n");
	XYBody.Append("					<div class=\"i\">\r\n");
	XYBody.Append("						�ࡡ��\r\n");
	XYBody.Append("						<select id=\"\">\r\n");
	XYBody.Append("							<option value=\"\" selected=\"selected\">���ڻ�չ</option>\r\n");
	XYBody.Append("							<option value=\"\">�����չ</option>\r\n");
	XYBody.Append("						</select>\r\n");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div class=\"i\">\r\n");
	XYBody.Append("						ʱ���䣺\r\n");
	XYBody.Append("						<select id=\"\">\r\n");
	XYBody.Append("							<option value=\"\" selected=\"selected\">���</option>\r\n");
	XYBody.Append("						</select>\r\n");
	XYBody.Append("						<select id=\"\">\r\n");
	XYBody.Append("							<option value=\"\" selected=\"selected\">�·�</option>\r\n");
	XYBody.Append("						</select>\r\n");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div class=\"i\">�ء��㣺<input type=\"text\" class=\"inp\" id=\"\" /></div>\r\n");
	XYBody.Append("					<div class=\"i\">�ؼ��֣�<input type=\"text\" class=\"inp\" id=\"\" /></div>\r\n");
	XYBody.Append("					<div class=\"i\">��������<img src=\"");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("            -->\r\n");
	XYBody.Append("			<div class=\"MTitle_01\">\r\n");
	XYBody.Append("				<h2 id=\"h201\" class=\"\"><a target=\"_blank\" href=\"#\"><strong>��չ����</strong></a></h2>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div id=\"exhi_service\" class=\"Mblk_01\">\r\n");
	XYBody.Append("				<ul>\r\n");
	XYBody.Append("					<li><a href=\"\"><img src=\"");
	XYBody.Append("					<li><a href=\"\"><img src=\"");
	XYBody.Append("					<li><a href=\"\"><img src=\"");
	XYBody.Append("					<li><a href=\"\"><img src=\"");
	XYBody.Append("					<li><a href=\"\"><img src=\"");
	XYBody.Append("					<li><a href=\"\"><img src=\"");
	XYBody.Append("					<li><a href=\"\"><img src=\"");
	XYBody.Append("					<li><a href=\"\"><img src=\"");
	XYBody.Append("					<li><a href=\"\"><img src=\"");
	XYBody.Append("				</ul>\r\n");
	XYBody.Append("				<div class=\"clr\"></div>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div class=\"news_exhi\">\r\n");
	XYBody.Append("				<ul>\r\n");
	XYBody.Append("					<li><a href=\"#\" ><img src=\"");
	XYBody.Append("					<li><a href=\"#\" ><img src=\"");
	XYBody.Append("					<li><a href=\"#\" ><img src=\"");
	XYBody.Append("				</ul>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div class=\"MTitle_01\">\r\n");
	XYBody.Append("				<h2 id=\"h201\" class=\"\"><a target=\"_blank\" href=\"#\" class=\"big\"><strong>չ�ᶯ̬</strong></a></h2>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div id=\"con01\" class=\"Mblk_01\">\r\n");
	XYBody.Append("				<div class=\"com_pages\">\r\n");
	XYBody.Append("					<ul>\r\n");
	XYBody.Append("						<li><a target=\"_blank\" href=\"#\">�����������H1N1����</a></li>\r\n");
	XYBody.Append("						<li><a target=\"_blank\" href=\"#\">�����γ�ϯ�ϺϷ��</a></li>\r\n");
	XYBody.Append("						<li><a target=\"_blank\" href=\"#\">���ʴ�ѡ�������ֶ���</a></li>\r\n");
	XYBody.Append("						<li><a target=\"_blank\" href=\"#\">�ɶ�����������ȼ��</a></li>\r\n");
	XYBody.Append("						<li><a target=\"_blank\" href=\"#\">�����տ�A330�ͻ�׹��</a></li>\r\n");
	XYBody.Append("						<li><a target=\"_blank\" href=\"#\">�ɶ�����������ȼ��</a></li>\r\n");
	XYBody.Append("						<li><a target=\"_blank\" href=\"#\">�����տ�A330�ͻ�׹��</a></li>\r\n");
	XYBody.Append("					</ul>\r\n");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div class=\"MTitle_01\">\r\n");
	XYBody.Append("				<h2 id=\"h201\" class=\"\"><a target=\"_blank\" href=\"#\" class=\"big\"><strong>չ�Ἴ��</strong></a></h2>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div id=\"con01\" class=\"Mblk_01\">\r\n");
	XYBody.Append("				<div class=\"com_pages\">\r\n");
	XYBody.Append("					<ul>\r\n");
	XYBody.Append("						<li><a target=\"_blank\" href=\"#\">�����������H1N1����</a></li>\r\n");
	XYBody.Append("						<li><a target=\"_blank\" href=\"#\">�����γ�ϯ�ϺϷ��</a></li>\r\n");
	XYBody.Append("						<li><a target=\"_blank\" href=\"#\">���ʴ�ѡ�������ֶ���</a></li>\r\n");
	XYBody.Append("						<li><a target=\"_blank\" href=\"#\">�ɶ�����������ȼ��</a></li>\r\n");
	XYBody.Append("						<li><a target=\"_blank\" href=\"#\">�����տ�A330�ͻ�׹��</a></li>\r\n");
	XYBody.Append("						<li><a target=\"_blank\" href=\"#\">�ɶ�����������ȼ��</a></li>\r\n");
	XYBody.Append("						<li><a target=\"_blank\" href=\"#\">�����տ�A330�ͻ�׹��</a></li>\r\n");
	XYBody.Append("					</ul>\r\n");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("		</div>\r\n");
	XYBody.Append("		<div class=\"clr\" style=\"height:10px;\"></div>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("	<div class=\"hy_brand clr\">\r\n");
	XYBody.Append("		<div class=\"tit\">��ҵ�Ƽ�Ʒ��</div>\r\n");
	XYBody.Append("		<div class=\"brand_pic\">\r\n");
	XYBody.Append("			<ul>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_4.html'><img alt='��ƽ����豸' src='http://images.glass.cn/brand/20096/633801523524876250.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_4.html'>��ƽ����豸</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_28.html'><img alt='��ҫ����' src='http://images.glass.cn/brand/20096/633801557578938750.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_28.html'>��ҫ����</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_16.html'><img alt='������ʯ����' src='http://images.glass.cn/brand/20096/633801541650032500.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_16.html'>������ʯ����</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_15.html'><img alt='�������ǲ���' src='http://images.glass.cn/brand/20096/633801586130970000.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_15.html'>�������ǲ���</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_25.html'><img alt='����˹' src='http://images.glass.cn/brand/20096/633801555128001250.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_25.html'>����˹</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_26.html'><img alt='Ϭ������' src='http://images.glass.cn/brand/20096/633801556362532500.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_26.html'>Ϭ������</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_29.html'><img alt='Glaston' src='http://images.glass.cn/brand/20096/633801559926751250.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_29.html'>Glaston</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_34.html'><img alt='���Ѳ�������' src='http://images.glass.cn/brand/20096/633801564902376250.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_34.html'>���Ѳ�������</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_37.html'><img alt='�㽭��������' src='http://images.glass.cn/brand/20096/633801568250501250.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_37.html'>�㽭��������</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_51.html'><img alt='�ɺ谲ȫ����' src='http://images.glass.cn/brand/20096/633801581973157500.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_51.html'>�ɺ谲ȫ����</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_56.html'><img alt='��������' src='http://images.glass.cn/brand/20096/633801589480501250.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_56.html'>��������</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_60.html'><img alt='�������˲���' src='http://images.glass.cn/brand/20096/633801593127220000.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_60.html'>�������˲���</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_69.html'><img alt='ҫ�Ź��̲���' src='http://images.glass.cn/brand/20096/633801621142845000.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_69.html'>ҫ�Ź��̲���</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_79.html'><img alt='�Ϻ����ֻ���' src='http://images.glass.cn/brand/20096/633801634062220000.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_79.html'>�Ϻ����ֻ���</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_87.html'><img alt='ҫ��Ƥ�����' src='http://images.glass.cn/brand/20096/633801643804251250.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_87.html'>ҫ��Ƥ�����</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_88.html'><img alt='���ڲ�ʱ����' src='http://images.glass.cn/brand/20096/633801644419720000.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_88.html'>���ڲ�ʱ����</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_94.html'><img alt='�����ز���' src='http://images.glass.cn/brand/20096/633801649406126250.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_94.html'>�����ز���</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_112.html'><img alt='�㽭���ǲ���' src='http://images.glass.cn/brand/20096/633801664486282500.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_112.html'>�㽭���ǲ���</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_123.html'><img alt='��ɽ������ī' src='http://images.glass.cn/brand/20096/633801674279251250.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_123.html'>��ɽ������ī</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<li>\r\n");
	XYBody.Append("					<a  target='_blank' href='/brand/brandInfo_129.html'>\r\n");
	XYBody.Append("						<img alt='����ɫ����' src='http://images.glass.cn/brand/20096/633803380612376250.jpg' /></a><span><a target='_blank' href='/brand/brandInfo_129.html'>����ɫ����</a></span>\r\n");
	XYBody.Append("				</li>\r\n");
	XYBody.Append("				<div class=\"clr\"></div>\r\n");
	XYBody.Append("			</ul>\r\n");
	XYBody.Append("			<div class=\"clr\"></div>\r\n");
	XYBody.Append("		</div>\r\n");
	XYBody.Append("	</div>\r\n");

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