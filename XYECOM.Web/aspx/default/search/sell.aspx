<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.search.sell,XYECOM.Page" %>
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

	XYBody.Append("    <title>");
	XYBody.Append("	<meta name=\"description\" content=\"");
	XYBody.Append("	<meta name=\"keywords\" content=\"");
	XYBody.Append("	<meta name=\"robots\" content=\"all\"  />\r\n");
	XYBody.Append("	<meta http-equiv=\"Content-Type\" content=\"text/html;\" charset=\"gb2312\" />\r\n");
	XYBody.Append("	<link rel=\"stylesheet\" href=\"");
	XYBody.Append("	<link href=\"");
	XYBody.Append("    <link href=\"");
	XYBody.Append("    <link href=\"");
	XYBody.Append("	<link href=\"");
	XYBody.Append("    <script type=\"text/javascript\" src=\"");
	XYBody.Append("<script type=\"text/javascript\" src=\"");
	XYBody.Append("	<script type=\"text/javascript\" src=\"");
	XYBody.Append("    <script type=\"text/javascript\" src=\"");
	XYBody.Append("    <script type=\"text/javascript\" src=\"");
	XYBody.Append("    <script type=\"text/javascript\" src=\"");


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



	if (pageinfo.ModuleFlag=="offer")
	{


	XYBody.Append("<div id=\"gq_guide\">\r\n");
	XYBody.Append("    <a href=\"\">");
	XYBody.Append("</div>\r\n");
	 tempuser = GetUserInfo();
	
	XYBody.Append("<div id=\"gq_compy\">\r\n");
	XYBody.Append("    <div id=\"CompanyLogo\">\r\n");
	XYBody.Append("        <div id=\"CompanyLogoDiv\">\r\n");
	XYBody.Append("            <img alt=\"");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div id=\"CompanyName\">\r\n");
	XYBody.Append("        ");
	XYBody.Append("    <div id=\"site_url\">\r\n");
	XYBody.Append("        <a href=\"");
	XYBody.Append("    <div class=\"clr\">\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<div id=\"layout\">\r\n");
	XYBody.Append("    <div id=\"layoutLeft\">\r\n");
	XYBody.Append("        <div id=\"LeftProBorder\">\r\n");
	XYBody.Append("            <div id=\"ProTitle\">\r\n");
	XYBody.Append("                ");
	XYBody.Append("            <div id=\"ProText\">\r\n");
	XYBody.Append("                <div id=\"ProPic\">\r\n");
	XYBody.Append("                    <div id=\"ProPicBorder\">\r\n");
	XYBody.Append("                        <a href=\"");
	XYBody.Append("                            <img src=\"" + offerinfo.SmallImg[2].ToString().Trim() + "\" alt=\"");
	XYBody.Append("                        </a>\r\n");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                    <div id=\"ProPicName\">\r\n");
	XYBody.Append("                        <img src=\"");
	XYBody.Append("                        <a href=\"");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div id=\"ProInfo\">\r\n");
	XYBody.Append("                    <div id=\"ProInfoA\">\r\n");
	XYBody.Append("                        <a href=\"");
	XYBody.Append("                            href=\"");
	XYBody.Append("                                style=\"position: relative; top: 1px;\" /></a>&nbsp;&nbsp;<strong class=\"Font14\">��<span\r\n");
	XYBody.Append("                                    class=\"MemberYear\">");
	XYBody.Append("                        <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"fontGray\">\r\n");
	XYBody.Append("                            <tr>\r\n");
	XYBody.Append("                                <td height=\"10\" colspan=\"2\">\r\n");
	XYBody.Append("                                </td>\r\n");
	XYBody.Append("                            </tr>\r\n");
	XYBody.Append("                            <tr>\r\n");
	XYBody.Append("                                <td height=\"33\" colspan=\"2\">\r\n");
	XYBody.Append("                                    <a href=\"");
	XYBody.Append("                                        <img src=\"");
	XYBody.Append("                                            width=\"112\" height=\"21\" border=\"0\" /></a>&nbsp;&nbsp;&nbsp; <a href=\"");
	XYBody.Append("                                                target=\"_blank\">\r\n");
	XYBody.Append("                                                <img src=\"");
	XYBody.Append("                                                    alt=\"�鿴��ϵ��ʽ\" width=\"112\" height=\"21\" border=\"0\" /></a>\r\n");
	XYBody.Append("                                </td>\r\n");
	XYBody.Append("                            </tr>\r\n");
	XYBody.Append("                            <tr>\r\n");
	XYBody.Append("                                <td width=\"50%\" height=\"22\">\r\n");
	XYBody.Append("                                    ��ҵ���ͣ�");
	XYBody.Append("                                </td>\r\n");
	XYBody.Append("                                <td width=\"50%\">\r\n");
	XYBody.Append("                                    Ա��������");
	XYBody.Append("                                </td>\r\n");
	XYBody.Append("                            </tr>\r\n");
	XYBody.Append("                            <tr>\r\n");
	XYBody.Append("                                <td height=\"22\">\r\n");
	XYBody.Append("                                    ��Ӫģʽ��");
	XYBody.Append("                                </td>\r\n");
	XYBody.Append("                                <td>\r\n");
	XYBody.Append("                                    ע���ʽ�");
	XYBody.Append("                                </td>\r\n");
	XYBody.Append("                            </tr>\r\n");
	XYBody.Append("                        </table>\r\n");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                    <div id=\"ProInfoB\">\r\n");
	XYBody.Append("                        <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	XYBody.Append("                            <tr>\r\n");
	XYBody.Append("                                <td height=\"24\" colspan=\"2\">\r\n");

	if (offerinfo.Price==0)
	{

	XYBody.Append("                                    �� ǰ �ۣ�<span>����</span>");

	}
	else
	{

	XYBody.Append("                                    �� ǰ �ۣ�<span>");

	}	//end if

	XYBody.Append("                                    &nbsp;&nbsp;&nbsp;&nbsp;\r\n");

	if (offerinfo.IsPayMent==true)
	{

	XYBody.Append("<a href=\"");

	}	//end if

	XYBody.Append("                                </td>\r\n");
	XYBody.Append("                            </tr>\r\n");
	XYBody.Append("                            <tr>\r\n");
	XYBody.Append("                                <td width=\"50%\">\r\n");
	XYBody.Append("                                    ��С�𶩣�");
	XYBody.Append("                                </td>\r\n");
	XYBody.Append("                                <td width=\"50%\">\r\n");
	XYBody.Append("                                    ����������");
	XYBody.Append("                                </td>\r\n");
	XYBody.Append("                            </tr>\r\n");
	XYBody.Append("                            <tr>\r\n");
	XYBody.Append("                                <td height=\"24\">\r\n");
	XYBody.Append("                                    ��Ч������");
	XYBody.Append("                                </td>\r\n");
	XYBody.Append("                                <td>\r\n");
	XYBody.Append("                                    ����ʱ�䣺");
	XYBody.Append("                                </td>\r\n");
	XYBody.Append("                            </tr>\r\n");
	XYBody.Append("                            <tr>\r\n");
	XYBody.Append("                                <td height=\"24\" colspan=\"3\">\r\n");
	XYBody.Append("                                    �� ϵ �ˣ�");
	XYBody.Append("                                        width=\"13\" height=\"12\" style=\"position: relative; top: 1px;\" />\r\n");
	XYBody.Append("                                    <a href=\"javascript:void(null);\" onclick=\"Favorite();\" class=\"orange\">����Ϊ��ҵ���</a>\r\n");
	XYBody.Append("                                </td>\r\n");
	XYBody.Append("                            </tr>\r\n");
	XYBody.Append("                        </table>\r\n");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                    <div class=\"blank5\">\r\n");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                    <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	XYBody.Append("                        <tr>\r\n");
	XYBody.Append("                            <td height=\"60\">\r\n");
	XYBody.Append("                                <a href=\"#message\">\r\n");
	XYBody.Append("                                    <img src=\"");
	XYBody.Append("                                        height=\"36\" border=\"0\" /></a>\r\n");
	XYBody.Append("                            </td>\r\n");
	XYBody.Append("                            <td style=\"text-align: center;\">\r\n");
	XYBody.Append("                                <span class=\"Font14\">����ϵ</span>��<strong class=\"orange\" class=\"TempTele\">86-010-62669815</strong>\r\n");
	XYBody.Append("                            </td>\r\n");
	XYBody.Append("                        </tr>\r\n");
	XYBody.Append("                    </table>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div class=\"clr\">\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div id=\"ProDesTitle\">\r\n");
	XYBody.Append("                    <strong>��ϸ��Ϣ:</strong></div>\r\n");
	XYBody.Append("                <div class=\"ProDesText\">\r\n");
	XYBody.Append("                    <table width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"1\" class=\"typelist\">\r\n");
	XYBody.Append("                        ");
	XYBody.Append("                    ");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div id=\"Div1\">\r\n");
	XYBody.Append("                    <strong>��ϵ��ʽ:</strong></div>\r\n");
	XYBody.Append("                <div class=\"ProDesText\" id=\"linkmessage\">\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div id=\"ProTitle\">\r\n");
	XYBody.Append("                <span>����ҵ������������Ϣ</span></div>\r\n");
	XYBody.Append("            <div class=\"ProAbout\">\r\n");
	 data = GetAboutInfo();
	
	XYBody.Append("                <ul>\r\n");

	int info__loop__id=0;
	foreach(DataRow info in data.Rows)
	{
		info__loop__id++;

	XYBody.Append("                    <li><a href='" + info["link"].ToString().Trim() + "' target='_blank' title='" + info["infotitle"].ToString().Trim() + "'>\r\n");
	XYBody.Append("                        <img src='" + info["image"].ToString().Trim() + "' /></a><br />\r\n");
	XYBody.Append("                        <a href='" + info["link"].ToString().Trim() + "' target='_blank' title='" + info["infotitle"].ToString().Trim() + "'>" + info["infotitle"].ToString().Trim() + "</a>\r\n");
	XYBody.Append("                    </li>\r\n");

	}	//end loop

	XYBody.Append("                </ul>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div id=\"ProFind\">\r\n");
	XYBody.Append("            <span>\r\n");
	XYBody.Append("                <img src=\"");
	XYBody.Append("                    height=\"14\" /><a href=\"javascript:void(null);\" onclick=\"Favorite();\">�ղش���Ϣ</a>&nbsp;&nbsp;&nbsp;\r\n");
	XYBody.Append("                <img src=\"");
	XYBody.Append("                    height=\"11\" /><a href=\"#\">�Ƽ�������</a>&nbsp;&nbsp;&nbsp;\r\n");
	XYBody.Append("                <img src=\"");
	XYBody.Append("                    href=\"");
	XYBody.Append("                        ��û���ҵ����ʵĲ�Ʒ?</strong> �Ͽ�<a href=\"");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <input type=\"hidden\" id=\"_param_message_module\" value=\"");
	XYBody.Append("        <input type=\"hidden\" id=\"_param_message_title\" value=\"");
	XYBody.Append("        <input type=\"hidden\" id=\"_param_message_parent_module\" value=\"");
	XYBody.Append("        <input type=\"hidden\" id=\"_param_message_infoid\" value=\"");
	XYBody.Append("        <input type=\"hidden\" id=\"_param_message_userid\" value=\"");

	XYBody.Append("<!--��վ����-->\r\n");
	XYBody.Append("<div  class=\"infoAbout  commentTitle\">\r\n");
	XYBody.Append("<a name=\"message\"></a>\r\n");
	XYBody.Append("<form action=\"\" method=\"post\">\r\n");
	XYBody.Append("    <ul class=\"comment\">\r\n");
	XYBody.Append("        <li id=\"msg_tab1\"><a href=\"javascript:;\" onclick=\"xy_selectBox(2,1,'msg','now')\">�ο���ѯ</a></li>\r\n");
	XYBody.Append("        <li class=\"now\" id=\"msg_tab2\"><a href=\"javascript:;\" onclick=\"xy_selectBox(2,2,'msg','now')\">��Ա��ѯ</a></li>\r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("    <div id=\"msg_box1\" style=\"display: none;\">\r\n");
	XYBody.Append("        <div class=\"commentList\">\r\n");
	XYBody.Append("            <p>\r\n");
	XYBody.Append("                <input type=\"radio\" checked=\"checked\"  value =\"1\" id=\"companyid\"  name =\"sinfo\"/>�� ˾ \r\n");
	XYBody.Append("                <input name=\"sinfo\" type=\"radio\" value=\"0\" id=\"useridad\" />����\r\n");
	XYBody.Append("                <span>������Ѿ��ǻ�Ա����<a href=\"javascript:geturl();\" class=\"orangelink\">��˵�¼</a>������������Ǳ�վ��Ա����<a href=\"");
	XYBody.Append("            </p>\r\n");
	XYBody.Append("            <h3>��ϵ��ʽ</h3>\r\n");
	XYBody.Append("            <ul  class=\"line\">   \r\n");
	XYBody.Append("                <li><label>��ϵ�ˣ�<em>*</em></label><input type=\"text\" size=\"25\" id=\"linkman\" onblur=\"checkinfo('1');\" onfocus=\"fs('1');\"  maxlength =\"50\"/><input id=\"nsex\" name=\"\" type=\"radio\" value=\"1\" checked =\"checked\" />���� <input id=\"girl\" name=\"\" type=\"radio\" value=\"0\" />Ůʿ<span id=\"txt1\"></span></li>       \r\n");
	XYBody.Append("                <li><label>�������䣺<em>*</em></label><input type=\"text\" size=\"25\"  id=\"email\" onblur=\"checkinfo('2');\" onfocus=\"fs('2');\" maxlength =\"50\" /><span  id=\"txt2\"></span></li>\r\n");
	XYBody.Append("                <li><label>�绰���룺</label><input name=\"\" type=\"text\" size=\"25\" id=\"mobile\" onblur=\"checkinfo('11');\" onfocus=\"fs('11');\" maxlength =\"13\"/><span  id=\"txt11\"></span></li>\r\n");
	XYBody.Append("            </ul>\r\n");
	XYBody.Append("            <h3>��������</h3>\r\n");
	XYBody.Append("            <ul>\r\n");
	XYBody.Append("                <li><label>���Ա��⣺<em>*</em></label><input type=\"text\" size=\"60\" id=\"title\" name=\"title\" onblur=\"checkinfo('14');\" onfocus=\"fs('14');\" maxlength =\"100\" /><span  id =\"txt14\"></span><br /><i>�뾡�����ü������ԣ��������20�����֣��������300�����֡�</i></li>\r\n");
	XYBody.Append("                <li><div class=\"left\"><label>�������ݣ�<em>*</em></label> <textarea name=\"neirong\" cols=\"60\" rows=\"5\" id =\"neirong\" onblur=\"checkinfo('15');\" onfocus=\"fs('15');\"></textarea><span  id=\"txt15\"></span></div>\r\n");
	XYBody.Append("                <div class=\"ks\" id=\"ks1\"></div>\r\n");
	XYBody.Append("                </li>\r\n");

	if (config.IsEnabledVCode("message"))
	{

	XYBody.Append("                <li><label >��֤�룺<em>*</em></label>");

	}	//end if

	XYBody.Append("                <li>\r\n");
	XYBody.Append("                    <input name=\"\" type=\"button\" class=\"button\" value=\"ȷ ��\"  onclick =\"checkmessage();\"/> \r\n");
	XYBody.Append("                    <input type=\"button\" name=\"button\"  class=\"button\" value=\"���\" onclick =\"ykrewrite();\"  />\r\n");
	XYBody.Append("                </li>\r\n");
	XYBody.Append("            </ul>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div> \r\n");
	XYBody.Append("    <div id=\"msg_box2\" style=\"display: block;\">\r\n");
	XYBody.Append("        <div class=\"commentList\">\r\n");
	XYBody.Append("            <ul>\r\n");
	XYBody.Append("                <li><label>���Ա��⣺<em>*</em></label><input type=\"text\" size=\"60\" id=\"txtTitle\" name=\"txtTitle\"  maxlength =\"200\" /></li>\r\n");
	XYBody.Append("                <li><div class=\"left\"><label>�������ݣ�<em>*</em></label> <textarea name=\"txtContent\" cols=\"60\" rows=\"5\" id=\"txtContent\"></textarea></div>\r\n");
	XYBody.Append("                <div class=\"ks\" id=\"ks2\"></div>\r\n");
	XYBody.Append("                </li>\r\n");

	if (config.IsEnabledVCode("message"))
	{

	XYBody.Append("                <li><label>��֤�룺<em>*</em></label>");

	}	//end if

	XYBody.Append("                <li>\r\n");
	XYBody.Append("                    <input name=\"\" type=\"button\" class=\"button\" value=\"ȷ ��\" onclick =\"checkusermessage();\"/> \r\n");
	XYBody.Append("                    <input type=\"button\" name=\"Submit\"  class=\"button\" value=\"�� ��\"   onclick=\"hrrewrite();\" />\r\n");
	XYBody.Append("                </li>\r\n");
	XYBody.Append("            </ul>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</form> \r\n");
	XYBody.Append("</div> \r\n");
	XYBody.Append(" <script type=\"text/javascript\" language=\"javascript\">UserMessageInit();</" + "script>\r\n");


	XYBody.Append("        </form>\r\n");
	XYBody.Append("        <div id=\"SayInfo\">\r\n");
	XYBody.Append("            <strong>��������</strong>��������Ϣ�������ҵ�����ṩ������ҵ������Ϣ���ݵ���ʵ�ԡ�׼ȷ�ԺͺϷ��ԡ�\r\n");
	XYBody.Append("            <br />\r\n");
	XYBody.Append("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div id=\"layoutRight\">\r\n");
	XYBody.Append("        <div id=\"content\">\r\n");
	XYBody.Append("            <input type=\"hidden\" id=\"_param_userinfo_parent_module\" value=\"");
	XYBody.Append("            <input type=\"hidden\" id=\"_param_userinfo_infoid\" value=\"");
	XYBody.Append("            <input type=\"hidden\" id=\"_param_userinfo_userid\" value=\"");

	XYBody.Append("<!--������ʾ��Ϣ--> \r\n");
	XYBody.Append("<div class=\"w290\" id=\"loginuser\" style=\"display:none;\">  \r\n");
	XYBody.Append("    <ul>\r\n");
	XYBody.Append("        <li id=\"loginuseruginfo\"></li>\r\n");
	XYBody.Append("        <li class=\"line\"><a id=\"loginuserurl\" href=\"\" class=\"link14\"></a></li>\r\n");
	XYBody.Append("        <li>��˾��������� <span id=\"ConsummatePercent\"></span></li>\r\n");
	XYBody.Append("        <li><div class=\"cr\"><img id=\"PercentForImg\" src=\"");
	XYBody.Append("        <li><a href=\"#\" id=\"NewOfferPage\">���¹�Ӧ</a> | <a href=\"#\" id=\"GoodFaithFile\">���ŵ���</a> | <a href=\"#\" id=\"UserIntro\">��˾����</a></li>\r\n");
	XYBody.Append("        <li>��ϵ�ˣ�<a href=\"#\" id=\"Contact\"><span id=\"LinkManName\">����</span></a> ���� <span id=\"IMOnline\"></span></li>\r\n");
	XYBody.Append("        <li><hr /></li>\r\n");
	XYBody.Append("        <li>����ʱ�䣺�� <span id=\"loginuseryearnum\"></span> ��</li>\r\n");
	XYBody.Append("        <li> <a href=\"javascript:;\" onclick =\"Favorite();\">�ղش���Ϣ</a> <a href=\"#\" id=\"memessage\">��������</a> <a href=\"#\" id=\"linkme\">��ϵ��ʽ</a></li>  \r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<!--Ҫ���½��鿴-->\r\n");
	XYBody.Append("<div class=\"w290\" id=\"UserNoLogin\" style=\"display:none;\">\r\n");
	XYBody.Append("    <ul class=\"login\">\r\n");
	XYBody.Append("        <li><h4>�Ѿ��ǻ�Ա���½</h4></li>\r\n");
	XYBody.Append("        <li>�û�����<input type=\"text\" name=\"\" tabindex=\"1\"  id=\"username\" name=\"username\" onkeydown =\"KeyDown();\" maxlength=\"50\" /></li>\r\n");
	XYBody.Append("        <li>��&nbsp;&nbsp;&nbsp;�룺<input type =\"password\" maxlength=\"20\" tabindex=\"2\" id=\"password\"  name=\"password\" onkeydown =\"KeyDown();\" /></li>\r\n");

	if (config.IsEnabledVCode("login"))
	{

	XYBody.Append("        <li>��֤�룺");

	}	//end if

	XYBody.Append("        <li><input type=\"button\" class=\"button\" value=\"��¼\" onclick=\"return InfoLogin();\"/><a href=\"/GetPassword.");
	XYBody.Append("        <li><hr /></li>\r\n");
	XYBody.Append("        <ll>�㻹���ǻ�Ա����<a href=\"");
	XYBody.Append("        <li>\r\n");
	XYBody.Append("            <div class=\"contactus\">\r\n");
	XYBody.Append("                <ul>\r\n");
	XYBody.Append("                <li><h3>�����κ���������������ϵ</h3></li>\r\n");
	XYBody.Append("                <li>���߿ͷ���<img src=\"/templates/");
	XYBody.Append("                <li>�ͻ����ߣ�010-8681 8791</li>\r\n");
	XYBody.Append("                </ul>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </li>      \r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<!--Ҫ��������鿴-->\r\n");
	XYBody.Append("<div class=\"w290\" id=\"loginnouser\" style=\"display:none;\">\r\n");
	XYBody.Append("    <h3><span id=\"loginnouseruginfo\"></span></h3>\r\n");
	XYBody.Append("    <ul class=\"upgrade\">\r\n");
	XYBody.Append("        <li><span>��Ŀǰ���ڵĻ�Ա�飬�޷��鿴��Ϣ��</span></li>\r\n");
	XYBody.Append("        <li><a href=\"");
	XYBody.Append("        <li><a href=\"\">��˲鿴��Ա�ȼ���Ȩ��>></a></li>\r\n");
	XYBody.Append("        <li>\r\n");
	XYBody.Append("            <div class=\"contactus\">\r\n");
	XYBody.Append("                <ul>\r\n");
	XYBody.Append("                <li><h3>�����κ���������������ϵ</h3></li>\r\n");
	XYBody.Append("                <li>���߿ͷ���<img src=\"");
	XYBody.Append("                <li>�ͻ����ߣ�010-8681 8791</li>\r\n");
	XYBody.Append("                </ul>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </li>\r\n");
	XYBody.Append("        <li><a href=\"javascript:;\" onclick =\"Favorite();\">�ղش���Ϣ</a></li>\r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("</div>  \r\n");


	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div class=\"MTitle_01\">\r\n");
	XYBody.Append("            <center>\r\n");
	XYBody.Append("                <a target=\"_blank\" href=\"#\" class=\"red\"><strong>�������ǣ����ܸ������</strong></a></center>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div class=\"Mblk_01\">\r\n");
	XYBody.Append("            <div id=\"jointous\">\r\n");
	XYBody.Append("                <ul>\r\n");
	XYBody.Append("                    <li><a href=\"\">�� �ύó�׻�飬��չ������Ȧ</a></li>\r\n");
	XYBody.Append("                    <li><a href=\"\">�� ��Ϊ��Ա����ѷ���������Ϣ</a></li>\r\n");
	XYBody.Append("                    <li><a href=\"\">\r\n");
	XYBody.Append("                        <img src=\"");
	XYBody.Append("                            height=\"29\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("                </ul>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<script type=\"text/javascript\">\r\n");
	XYBody.Append("    getPage();\r\n");
	XYBody.Append("</" + "script>\r\n");



	}	//end if


	if (pageinfo.ModuleFlag=="venture")
	{


	XYBody.Append("	<div id=\"gq_guide\">\r\n");
	XYBody.Append("		<a href=\"\">");
	XYBody.Append("	</div>\r\n");
	 tempuser = GetUserInfo();
	
	XYBody.Append("    <div id=\"gq_compy\">\r\n");
	XYBody.Append("            <div id=\"CompanyLogo\">\r\n");
	XYBody.Append("	            <div id=\"CompanyLogoDiv\"><img width=\"100\" alt=\"");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div id=\"CompanyName\">");
	XYBody.Append("            <div id=\"site_url\"><a href=\"");
	XYBody.Append("          <div class=\"clr\"></div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("	<div id=\"layout\">\r\n");
	XYBody.Append("		<div id=\"layoutLeft\">\r\n");
	XYBody.Append("			<div id=\"LeftProBorder\">\r\n");
	XYBody.Append("				<div id=\"ProTitle\">");
	XYBody.Append("				<div id=\"ProText\">\r\n");
	XYBody.Append("					<div id=\"ProPic\">\r\n");
	XYBody.Append("						<div id=\"ProPicBorder\">\r\n");
	XYBody.Append("							<a href=\"");
	XYBody.Append("						</div>\r\n");
	XYBody.Append("						<div id=\"ProPicName\">\r\n");
	XYBody.Append("						    <img src=\"");
	XYBody.Append("						    <a href=\"");
	XYBody.Append("						</div>\r\n");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div id=\"ProInfo\">\r\n");
	XYBody.Append("						<div id=\"ProInfoA\">\r\n");
	XYBody.Append("							<a href=\"");
	XYBody.Append("							<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"fontGray\">\r\n");
	XYBody.Append("								<tr>\r\n");
	XYBody.Append("									<td height=\"10\" colspan=\"2\"></td>\r\n");
	XYBody.Append("								</tr>\r\n");
	XYBody.Append("								<tr>\r\n");
	XYBody.Append("									<td height=\"33\" colspan=\"2\">\r\n");
	XYBody.Append("									<a href=\"");
	XYBody.Append("									<a href=\"");
	XYBody.Append("									</td>\r\n");
	XYBody.Append("									</tr>\r\n");
	XYBody.Append("								<tr>\r\n");
	XYBody.Append("									<td width=\"50%\" height=\"22\">��ҵ���ͣ�");
	XYBody.Append("									<td width=\"50%\">Ա��������");
	XYBody.Append("								</tr>\r\n");
	XYBody.Append("								<tr>\r\n");
	XYBody.Append("									<td height=\"22\">��Ӫģʽ��");
	XYBody.Append("									<td>ע���ʽ�");
	XYBody.Append("								</tr>\r\n");
	XYBody.Append("							</table>\r\n");
	XYBody.Append("						</div>\r\n");
	XYBody.Append("						<div id=\"ProInfoB\">\r\n");
	XYBody.Append("							<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	XYBody.Append("									<tr>\r\n");
	XYBody.Append("										<td  height=\"24\" colspan=\"2\">\r\n");

	if (machininginfo.Price==0)
	{

	XYBody.Append("                                            �� ǰ �ۣ�<span>����</span>");

	}
	else
	{

	XYBody.Append("                                            �� ǰ �ۣ�<span>");

	}	//end if

	XYBody.Append("										</td>\r\n");
	XYBody.Append("									</tr>\r\n");
	XYBody.Append("									<tr>\r\n");
	XYBody.Append("									    <td width=\"50%\">��С�𶩣�");
	XYBody.Append("										<td width=\"50%\">����������");
	XYBody.Append("									</tr>\r\n");
	XYBody.Append("									<tr>\r\n");
	XYBody.Append("										<td height=\"24\">��Ч������");
	XYBody.Append("										<td>����ʱ�䣺");
	XYBody.Append("									</tr>\r\n");
	XYBody.Append("									<tr>\r\n");
	XYBody.Append("										<td height=\"24\" colspan=\"3\">�� ϵ �ˣ�");
	XYBody.Append("									</tr>\r\n");
	XYBody.Append("							</table>\r\n");
	XYBody.Append("						</div>\r\n");
	XYBody.Append("						<div class=\"blank5\"></div>\r\n");
	XYBody.Append("						<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	XYBody.Append("							<tr>\r\n");
	XYBody.Append("								<td height=\"60\"><a href=\"#message\"><img src=\"");
	XYBody.Append("								<td style=\"text-align:center;\"><span class=\"Font14\">����ϵ</span>��<strong class=\"orange\" class=\"TempTele\">86-010-62669815</strong></td>\r\n");
	XYBody.Append("								<td width=\"23%\"></td>\r\n");
	XYBody.Append("							</tr>\r\n");
	XYBody.Append("						</table>\r\n");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div class=\"clr\"></div>\r\n");
	XYBody.Append("					<div id=\"ProDesTitle\"><strong>��ϸ��Ϣ:</strong></div>\r\n");
	XYBody.Append("					<div class=\"ProDesText\">\r\n");
	XYBody.Append("					     <table width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"1\" class=\"typelist\">");
	XYBody.Append("					     ");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div id=\"ProDesTitle\">\r\n");
	XYBody.Append("					    <strong>��ϵ��ʽ:</strong>\r\n");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div class=\"ProDesText\" id=\"linkmessage\"></div>\r\n");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("                <div id=\"ProTitle\"><span>����ҵ������������Ϣ</span></div>\r\n");
	XYBody.Append("                <div class=\"ProAbout\">\r\n");
	 data = GetAboutInfo();
	
	XYBody.Append("                <ul>\r\n");

	int info__loop__id=0;
	foreach(DataRow info in data.Rows)
	{
		info__loop__id++;

	XYBody.Append("                    <li>\r\n");
	XYBody.Append("                        <a href='" + info["link"].ToString().Trim() + "' target='_blank' title='" + info["infotitle"].ToString().Trim() + "'><img src='" + info["image"].ToString().Trim() + "' /></a><br />\r\n");
	XYBody.Append("                        <a href='" + info["link"].ToString().Trim() + "' target='_blank' title='" + info["infotitle"].ToString().Trim() + "'>" + info["infotitle"].ToString().Trim() + "</a>\r\n");
	XYBody.Append("                    </li>\r\n");

	}	//end loop

	XYBody.Append("                </ul>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div id=\"ProFind\">\r\n");
	XYBody.Append("			<span>\r\n");
	XYBody.Append("			    <img src=\"");
	XYBody.Append("			    <img src=\"");
	XYBody.Append("			    <img src=\"");
	XYBody.Append("			    </span>\r\n");
	XYBody.Append("			    <strong class=\"orange\">��û���ҵ����ʵĲ�Ʒ?</strong>  �Ͽ�<a href=\"");
	XYBody.Append("    	    </div>\r\n");
	XYBody.Append("    	    <input type =\"hidden\" id=\"_param_message_module\" value=\"");
	XYBody.Append("            <input type =\"hidden\" id=\"_param_message_title\" value=\"");
	XYBody.Append("            <input type =\"hidden\" id=\"_param_message_parent_module\" value =\"");
	XYBody.Append("            <input type =\"hidden\" id=\"_param_message_infoid\" value =\"");
	XYBody.Append("            <input type =\"hidden\" id=\"_param_message_userid\" value =\"");

	XYBody.Append("<!--��վ����-->\r\n");
	XYBody.Append("<div  class=\"infoAbout  commentTitle\">\r\n");
	XYBody.Append("<a name=\"message\"></a>\r\n");
	XYBody.Append("<form action=\"\" method=\"post\">\r\n");
	XYBody.Append("    <ul class=\"comment\">\r\n");
	XYBody.Append("        <li id=\"msg_tab1\"><a href=\"javascript:;\" onclick=\"xy_selectBox(2,1,'msg','now')\">�ο���ѯ</a></li>\r\n");
	XYBody.Append("        <li class=\"now\" id=\"msg_tab2\"><a href=\"javascript:;\" onclick=\"xy_selectBox(2,2,'msg','now')\">��Ա��ѯ</a></li>\r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("    <div id=\"msg_box1\" style=\"display: none;\">\r\n");
	XYBody.Append("        <div class=\"commentList\">\r\n");
	XYBody.Append("            <p>\r\n");
	XYBody.Append("                <input type=\"radio\" checked=\"checked\"  value =\"1\" id=\"companyid\"  name =\"sinfo\"/>�� ˾ \r\n");
	XYBody.Append("                <input name=\"sinfo\" type=\"radio\" value=\"0\" id=\"useridad\" />����\r\n");
	XYBody.Append("                <span>������Ѿ��ǻ�Ա����<a href=\"javascript:geturl();\" class=\"orangelink\">��˵�¼</a>������������Ǳ�վ��Ա����<a href=\"");
	XYBody.Append("            </p>\r\n");
	XYBody.Append("            <h3>��ϵ��ʽ</h3>\r\n");
	XYBody.Append("            <ul  class=\"line\">   \r\n");
	XYBody.Append("                <li><label>��ϵ�ˣ�<em>*</em></label><input type=\"text\" size=\"25\" id=\"linkman\" onblur=\"checkinfo('1');\" onfocus=\"fs('1');\"  maxlength =\"50\"/><input id=\"nsex\" name=\"\" type=\"radio\" value=\"1\" checked =\"checked\" />���� <input id=\"girl\" name=\"\" type=\"radio\" value=\"0\" />Ůʿ<span id=\"txt1\"></span></li>       \r\n");
	XYBody.Append("                <li><label>�������䣺<em>*</em></label><input type=\"text\" size=\"25\"  id=\"email\" onblur=\"checkinfo('2');\" onfocus=\"fs('2');\" maxlength =\"50\" /><span  id=\"txt2\"></span></li>\r\n");
	XYBody.Append("                <li><label>�绰���룺</label><input name=\"\" type=\"text\" size=\"25\" id=\"mobile\" onblur=\"checkinfo('11');\" onfocus=\"fs('11');\" maxlength =\"13\"/><span  id=\"txt11\"></span></li>\r\n");
	XYBody.Append("            </ul>\r\n");
	XYBody.Append("            <h3>��������</h3>\r\n");
	XYBody.Append("            <ul>\r\n");
	XYBody.Append("                <li><label>���Ա��⣺<em>*</em></label><input type=\"text\" size=\"60\" id=\"title\" name=\"title\" onblur=\"checkinfo('14');\" onfocus=\"fs('14');\" maxlength =\"100\" /><span  id =\"txt14\"></span><br /><i>�뾡�����ü������ԣ��������20�����֣��������300�����֡�</i></li>\r\n");
	XYBody.Append("                <li><div class=\"left\"><label>�������ݣ�<em>*</em></label> <textarea name=\"neirong\" cols=\"60\" rows=\"5\" id =\"neirong\" onblur=\"checkinfo('15');\" onfocus=\"fs('15');\"></textarea><span  id=\"txt15\"></span></div>\r\n");
	XYBody.Append("                <div class=\"ks\" id=\"ks1\"></div>\r\n");
	XYBody.Append("                </li>\r\n");

	if (config.IsEnabledVCode("message"))
	{

	XYBody.Append("                <li><label >��֤�룺<em>*</em></label>");

	}	//end if

	XYBody.Append("                <li>\r\n");
	XYBody.Append("                    <input name=\"\" type=\"button\" class=\"button\" value=\"ȷ ��\"  onclick =\"checkmessage();\"/> \r\n");
	XYBody.Append("                    <input type=\"button\" name=\"button\"  class=\"button\" value=\"���\" onclick =\"ykrewrite();\"  />\r\n");
	XYBody.Append("                </li>\r\n");
	XYBody.Append("            </ul>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div> \r\n");
	XYBody.Append("    <div id=\"msg_box2\" style=\"display: block;\">\r\n");
	XYBody.Append("        <div class=\"commentList\">\r\n");
	XYBody.Append("            <ul>\r\n");
	XYBody.Append("                <li><label>���Ա��⣺<em>*</em></label><input type=\"text\" size=\"60\" id=\"txtTitle\" name=\"txtTitle\"  maxlength =\"200\" /></li>\r\n");
	XYBody.Append("                <li><div class=\"left\"><label>�������ݣ�<em>*</em></label> <textarea name=\"txtContent\" cols=\"60\" rows=\"5\" id=\"txtContent\"></textarea></div>\r\n");
	XYBody.Append("                <div class=\"ks\" id=\"ks2\"></div>\r\n");
	XYBody.Append("                </li>\r\n");

	if (config.IsEnabledVCode("message"))
	{

	XYBody.Append("                <li><label>��֤�룺<em>*</em></label>");

	}	//end if

	XYBody.Append("                <li>\r\n");
	XYBody.Append("                    <input name=\"\" type=\"button\" class=\"button\" value=\"ȷ ��\" onclick =\"checkusermessage();\"/> \r\n");
	XYBody.Append("                    <input type=\"button\" name=\"Submit\"  class=\"button\" value=\"�� ��\"   onclick=\"hrrewrite();\" />\r\n");
	XYBody.Append("                </li>\r\n");
	XYBody.Append("            </ul>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</form> \r\n");
	XYBody.Append("</div> \r\n");
	XYBody.Append(" <script type=\"text/javascript\" language=\"javascript\">UserMessageInit();</" + "script>\r\n");


	XYBody.Append("		 </form>\r\n");
	XYBody.Append("	    <div id=\"SayInfo\">\r\n");
	XYBody.Append("				<strong>��������</strong>��������Ϣ�������ҵ�����ṩ������ҵ������Ϣ���ݵ���ʵ�ԡ�׼ȷ�ԺͺϷ��ԡ�\r\n");
	XYBody.Append("				<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("		</div>\r\n");
	XYBody.Append("	    <div id=\"layoutRight\">\r\n");
	XYBody.Append("			<div id=\"content\">\r\n");
	XYBody.Append("                <input type =\"hidden\" id=\"_param_userinfo_parent_module\" value =\"");
	XYBody.Append("                <input type =\"hidden\" id=\"_param_userinfo_infoid\" value =\"");
	XYBody.Append("                <input type =\"hidden\" id=\"_param_userinfo_userid\" value =\"");

	XYBody.Append("<!--������ʾ��Ϣ--> \r\n");
	XYBody.Append("<div class=\"w290\" id=\"loginuser\" style=\"display:none;\">  \r\n");
	XYBody.Append("    <ul>\r\n");
	XYBody.Append("        <li id=\"loginuseruginfo\"></li>\r\n");
	XYBody.Append("        <li class=\"line\"><a id=\"loginuserurl\" href=\"\" class=\"link14\"></a></li>\r\n");
	XYBody.Append("        <li>��˾��������� <span id=\"ConsummatePercent\"></span></li>\r\n");
	XYBody.Append("        <li><div class=\"cr\"><img id=\"PercentForImg\" src=\"");
	XYBody.Append("        <li><a href=\"#\" id=\"NewOfferPage\">���¹�Ӧ</a> | <a href=\"#\" id=\"GoodFaithFile\">���ŵ���</a> | <a href=\"#\" id=\"UserIntro\">��˾����</a></li>\r\n");
	XYBody.Append("        <li>��ϵ�ˣ�<a href=\"#\" id=\"Contact\"><span id=\"LinkManName\">����</span></a> ���� <span id=\"IMOnline\"></span></li>\r\n");
	XYBody.Append("        <li><hr /></li>\r\n");
	XYBody.Append("        <li>����ʱ�䣺�� <span id=\"loginuseryearnum\"></span> ��</li>\r\n");
	XYBody.Append("        <li> <a href=\"javascript:;\" onclick =\"Favorite();\">�ղش���Ϣ</a> <a href=\"#\" id=\"memessage\">��������</a> <a href=\"#\" id=\"linkme\">��ϵ��ʽ</a></li>  \r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<!--Ҫ���½��鿴-->\r\n");
	XYBody.Append("<div class=\"w290\" id=\"UserNoLogin\" style=\"display:none;\">\r\n");
	XYBody.Append("    <ul class=\"login\">\r\n");
	XYBody.Append("        <li><h4>�Ѿ��ǻ�Ա���½</h4></li>\r\n");
	XYBody.Append("        <li>�û�����<input type=\"text\" name=\"\" tabindex=\"1\"  id=\"username\" name=\"username\" onkeydown =\"KeyDown();\" maxlength=\"50\" /></li>\r\n");
	XYBody.Append("        <li>��&nbsp;&nbsp;&nbsp;�룺<input type =\"password\" maxlength=\"20\" tabindex=\"2\" id=\"password\"  name=\"password\" onkeydown =\"KeyDown();\" /></li>\r\n");

	if (config.IsEnabledVCode("login"))
	{

	XYBody.Append("        <li>��֤�룺");

	}	//end if

	XYBody.Append("        <li><input type=\"button\" class=\"button\" value=\"��¼\" onclick=\"return InfoLogin();\"/><a href=\"/GetPassword.");
	XYBody.Append("        <li><hr /></li>\r\n");
	XYBody.Append("        <ll>�㻹���ǻ�Ա����<a href=\"");
	XYBody.Append("        <li>\r\n");
	XYBody.Append("            <div class=\"contactus\">\r\n");
	XYBody.Append("                <ul>\r\n");
	XYBody.Append("                <li><h3>�����κ���������������ϵ</h3></li>\r\n");
	XYBody.Append("                <li>���߿ͷ���<img src=\"/templates/");
	XYBody.Append("                <li>�ͻ����ߣ�010-8681 8791</li>\r\n");
	XYBody.Append("                </ul>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </li>      \r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<!--Ҫ��������鿴-->\r\n");
	XYBody.Append("<div class=\"w290\" id=\"loginnouser\" style=\"display:none;\">\r\n");
	XYBody.Append("    <h3><span id=\"loginnouseruginfo\"></span></h3>\r\n");
	XYBody.Append("    <ul class=\"upgrade\">\r\n");
	XYBody.Append("        <li><span>��Ŀǰ���ڵĻ�Ա�飬�޷��鿴��Ϣ��</span></li>\r\n");
	XYBody.Append("        <li><a href=\"");
	XYBody.Append("        <li><a href=\"\">��˲鿴��Ա�ȼ���Ȩ��>></a></li>\r\n");
	XYBody.Append("        <li>\r\n");
	XYBody.Append("            <div class=\"contactus\">\r\n");
	XYBody.Append("                <ul>\r\n");
	XYBody.Append("                <li><h3>�����κ���������������ϵ</h3></li>\r\n");
	XYBody.Append("                <li>���߿ͷ���<img src=\"");
	XYBody.Append("                <li>�ͻ����ߣ�010-8681 8791</li>\r\n");
	XYBody.Append("                </ul>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </li>\r\n");
	XYBody.Append("        <li><a href=\"javascript:;\" onclick =\"Favorite();\">�ղش���Ϣ</a></li>\r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("</div>  \r\n");


	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div class=\"MTitle_01\">\r\n");
	XYBody.Append("				<center><a target=\"_blank\" href=\"#\" class=\"red\"><strong>�������ǣ����ܸ������</strong></a></center>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div class=\"Mblk_01\">\r\n");
	XYBody.Append("				<div id=\"jointous\">\r\n");
	XYBody.Append("					<ul>\r\n");
	XYBody.Append("						<li><a href=\"\">�� �ύó�׻�飬��չ������Ȧ</a></li>\r\n");
	XYBody.Append("						<li><a href=\"\">�� ��Ϊ��Ա����ѷ���������Ϣ</a></li>\r\n");
	XYBody.Append("						<li><a href=\"\"><img src=\"");
	XYBody.Append("					</ul>\r\n");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("	</div>\r\n");



	}	//end if


	if (pageinfo.ModuleFlag=="investment")
	{


	XYBody.Append("	<div id=\"gq_guide\">\r\n");
	XYBody.Append("		<a href=\"\">");
	XYBody.Append("	</div>\r\n");
	 tempuser = GetUserInfo();
	
	XYBody.Append("	    <div id=\"gq_compy\">\r\n");
	XYBody.Append("		    <div id=\"CompanyLogo\">\r\n");
	XYBody.Append("			    <div id=\"CompanyLogoDiv\"><img width=\"100\" alt=\"");
	XYBody.Append("		    </div>\r\n");
	XYBody.Append("		    <div id=\"CompanyName\">");
	XYBody.Append("		    <div id=\"site_url\"><a href=\"");
	XYBody.Append("	      <div class=\"clr\"></div>\r\n");
	XYBody.Append("	    </div>\r\n");
	XYBody.Append("	<div id=\"layout\">\r\n");
	XYBody.Append("		<div id=\"layoutLeft\">\r\n");
	XYBody.Append("			<div id=\"LeftProBorder\">\r\n");
	XYBody.Append("                <div id=\"ProTitle\"> ");
	XYBody.Append("				<div id=\"ProText\">\r\n");
	XYBody.Append("					<div id=\"ProPic\">\r\n");
	XYBody.Append("						<div id=\"ProPicBorder\">\r\n");
	XYBody.Append("							<a href=\"");
	XYBody.Append("							    <img src=\"" + investmentinfo.SmallImg[2].ToString().Trim() + "\" alt=\"");
	XYBody.Append("							</a>\r\n");
	XYBody.Append("						</div>\r\n");
	XYBody.Append("						<div id=\"ProPicName\">\r\n");
	XYBody.Append("						    <img src=\"");
	XYBody.Append("						    <a href=\"");
	XYBody.Append("						</div>\r\n");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div id=\"ProInfo\">\r\n");
	XYBody.Append("						<div id=\"ProInfoA\">\r\n");
	XYBody.Append("							<a href=\"");
	XYBody.Append("							<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"fontGray\">\r\n");
	XYBody.Append("								<tr>\r\n");
	XYBody.Append("									<td height=\"10\" colspan=\"2\"></td>\r\n");
	XYBody.Append("								</tr>\r\n");
	XYBody.Append("								<tr>\r\n");
	XYBody.Append("									<td height=\"33\" colspan=\"2\">\r\n");
	XYBody.Append("									<a href=\"");
	XYBody.Append("									<a href=\"");
	XYBody.Append("									</td>\r\n");
	XYBody.Append("									</tr>\r\n");
	XYBody.Append("								<tr>\r\n");
	XYBody.Append("									<td width=\"50%\" height=\"22\">��ҵ���ͣ�");
	XYBody.Append("									<td width=\"50%\">Ա��������");
	XYBody.Append("								</tr>\r\n");
	XYBody.Append("								<tr>\r\n");
	XYBody.Append("									<td height=\"22\">��Ӫģʽ��");
	XYBody.Append("									<td>ע���ʽ�");
	XYBody.Append("								</tr>\r\n");
	XYBody.Append("							</table>\r\n");
	XYBody.Append("						</div>\r\n");
	XYBody.Append("						<div id=\"ProInfoB\">\r\n");
	XYBody.Append("						<!--!!!!!!!!!!!!!!������ϸ��Ϣ!!!!!!!!!!!!!-->\r\n");
	XYBody.Append("							<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	XYBody.Append("									<tr>\r\n");
	XYBody.Append("										<td  height=\"24\" colspan=\"2\">��Ŀ����Ҫ��");
	XYBody.Append("									</tr>\r\n");
	XYBody.Append("									<tr>\r\n");
	XYBody.Append("										<td height=\"24\">��Ч������");
	XYBody.Append("										<td>����ʱ�䣺");
	XYBody.Append("									</tr>\r\n");
	XYBody.Append("									<tr>\r\n");
	XYBody.Append("										<td height=\"24\" colspan=\"3\">�� ϵ �ˣ�");
	XYBody.Append("									</tr>\r\n");
	XYBody.Append("							</table>\r\n");
	XYBody.Append("						</div>\r\n");
	XYBody.Append("						<div class=\"blank5\"></div>\r\n");
	XYBody.Append("						<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	XYBody.Append("							<tr>\r\n");
	XYBody.Append("								<td height=\"60\"><a href=\"#message\"><img src=\"");
	XYBody.Append("								<td style=\"text-align:center;\"><span class=\"Font14\">����ϵ</span>��<strong class=\"orange\" class=\"TempTele\">86-010-62669815</strong></td>\r\n");
	XYBody.Append("								<td width=\"23%\"></td>\r\n");
	XYBody.Append("							</tr>\r\n");
	XYBody.Append("						</table>\r\n");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div class=\"clr\"></div>\r\n");
	XYBody.Append("					<div id=\"ProDesTitle\"><strong>��ϸ��Ϣ:</strong></div>\r\n");
	XYBody.Append("					<div class=\"ProDesText\">\r\n");
	XYBody.Append("					     <table width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"1\" class=\"typelist\">");
	XYBody.Append("					     ");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div id=\"ProDesTitle\">\r\n");
	XYBody.Append("					    <strong>����֧�֣�:</strong>\r\n");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div class=\"ProDesText\">\r\n");
	XYBody.Append("					     ");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div id=\"ProDesTitle\">\r\n");
	XYBody.Append("					    <strong>����Ҫ��:</strong>\r\n");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div class=\"ProDesText\">\r\n");
	XYBody.Append("					     ");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div id=\"ProDesTitle\">\r\n");
	XYBody.Append("					    <strong>��ϵ��ʽ:</strong>\r\n");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div class=\"ProDesText\" id=\"linkmessage\"></div>\r\n");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("                <div id=\"ProTitle\"><span>����ҵ������������Ϣ</span></div>\r\n");
	XYBody.Append("                <div class=\"ProAbout\">\r\n");
	 data = GetAboutInfo();
	
	XYBody.Append("                <ul>\r\n");

	int info__loop__id=0;
	foreach(DataRow info in data.Rows)
	{
		info__loop__id++;

	XYBody.Append("                    <li>\r\n");
	XYBody.Append("                        <a href='" + info["link"].ToString().Trim() + "' target='_blank' title='" + info["infotitle"].ToString().Trim() + "'><img src='" + info["image"].ToString().Trim() + "' /></a><br />\r\n");
	XYBody.Append("                        <a href='" + info["link"].ToString().Trim() + "' target='_blank' title='" + info["infotitle"].ToString().Trim() + "'>" + info["infotitle"].ToString().Trim() + "</a>\r\n");
	XYBody.Append("                    </li>\r\n");

	}	//end loop

	XYBody.Append("                </ul>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div id=\"ProFind\">\r\n");
	XYBody.Append("			    <span>\r\n");
	XYBody.Append("			    <img src=\"");
	XYBody.Append("			    <img src=\"");
	XYBody.Append("			    <img src=\"");
	XYBody.Append("			    </span>\r\n");
	XYBody.Append("			    <strong class=\"orange\">��û���ҵ����ʵĲ�Ʒ?</strong>  �Ͽ�<a href=\"");
	XYBody.Append("    	    </div>\r\n");
	XYBody.Append("            <!--����ģ�����-->\r\n");
	XYBody.Append("            <input type =\"hidden\" id=\"_param_onlinejoin_infoid\" value =\"");
	XYBody.Append("            <input type =\"hidden\" id=\"_param_onlinejoin_Areas\" value =\"");

	XYBody.Append("<div  class=\"infoAbout  commentTitle\"> <a name=\"message\"></a>\r\n");
	XYBody.Append("  <form id=\"frmjoin\" action=\"\" method=\"post\">\r\n");
	XYBody.Append("    <ul class=\"comment\">\r\n");
	XYBody.Append("      <li class=\"\" id=\"tab1\"><a href=\"javascript:;\" onClick=\"SetUserState(1)\">�����ο�</a></li>\r\n");
	XYBody.Append("      <li class=\"now\" id=\"tab2\"><a href=\"javascript:;\" onClick=\"SetUserState(2)\">���ǻ�Ա</a></li>\r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("  <div class=\"commentList\">\r\n");
	XYBody.Append("    <ul id=\"_onlinejoin_guest\" class=\"line\" style=\"display:none;\">\r\n");
	XYBody.Append("      <li>\r\n");
	XYBody.Append("        <label>��ϵ�ˣ�<em>*</em></label>\r\n");
	XYBody.Append("        <input type=\"text\" size=\"25\" id=\"glinkman\" maxlength =\"50\"/>\r\n");
	XYBody.Append("      </li>\r\n");
	XYBody.Append("      <li>\r\n");
	XYBody.Append("        <label>Email��<em>*</em></label>\r\n");
	XYBody.Append("        <input type=\"text\" size=\"25\" id=\"gemail\" maxlength =\"50\" />\r\n");
	XYBody.Append("      </li>\r\n");
	XYBody.Append("      <li>\r\n");
	XYBody.Append("        <label>�̶��绰��</label>\r\n");
	XYBody.Append("        <input type=\"text\" size=\"25\" id=\"gtelphone\" maxlength =\"13\"/>\r\n");
	XYBody.Append("        <i>�̶��绰���ֻ��������һ����</i>\r\n");
	XYBody.Append("      </li>\r\n");
	XYBody.Append("      <li>\r\n");
	XYBody.Append("        <label>�ֻ����룺</label>\r\n");
	XYBody.Append("        <input type=\"text\" size=\"25\" id=\"gmobile\" maxlength =\"13\"/>\r\n");
	XYBody.Append("      </li>\r\n");
	XYBody.Append("      <li>\r\n");
	XYBody.Append("        <label>��ҵ���ƣ�<em>*</em></label>\r\n");
	XYBody.Append("        <input type=\"text\" id=\"gunitname\" maxlength=\"100\" size=\"50\" />\r\n");
	XYBody.Append("      </li>\r\n");
	XYBody.Append("      <li>\r\n");
	XYBody.Append("        <label>���룺<em>*</em></label>\r\n");
	XYBody.Append("        <input type=\"password\" id=\"gpwd\" maxlength=\"100\" />\r\n");
	XYBody.Append("      </li>\r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("    <h3>��������</h3>\r\n");
	XYBody.Append("    <ul>\r\n");
	XYBody.Append("      <li>\r\n");
	XYBody.Append("        <label>��������Ʒ�ƣ�</label>\r\n");
	XYBody.Append("        <input type=\"text\" size=\"60\" id=\"quondamproduct\" name=\"quondamproduct\" maxlength =\"100\" />\r\n");
	XYBody.Append("      </li>\r\n");
	XYBody.Append("      <li>\r\n");
	XYBody.Append("        <label>�ɴ���������<em>*</em></label><input type =\"hidden\" id=\"hidareas\" />\r\n");
	XYBody.Append("        <div id=\"areas\" class=\"joinareas\"></div>\r\n");
	XYBody.Append("      </li>\r\n");
	XYBody.Append("      <li>\r\n");
	XYBody.Append("        <label>���Ա��⣺<em>*</em></label>\r\n");
	XYBody.Append("        <input type=\"text\" size=\"60\" id=\"txttitle\" name=\"txttitle\" maxlength =\"100\" />\r\n");
	XYBody.Append("        <br />\r\n");
	XYBody.Append("        <i>�뾡�����ü������ԣ��������20�����֣��������300�����֡�</i>\r\n");
	XYBody.Append("      </li>\r\n");
	XYBody.Append("      <li>\r\n");
	XYBody.Append("        <div class=\"left\">\r\n");
	XYBody.Append("          <label>�������ݣ�<em>*</em></label>\r\n");
	XYBody.Append("          <textarea name=\"txtcontent\" cols=\"62\" rows=\"5\" id =\"txtcontent\"></textarea>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div class=\"ks\" id=\"ks\"> </div>\r\n");

	if (config.IsEnabledVCode("message"))
	{

	XYBody.Append("      </li>\r\n");
	XYBody.Append("      <li>\r\n");
	XYBody.Append("        <label >��֤�룺<em>*</em></label>\r\n");
	XYBody.Append("         ");

	}	//end if

	XYBody.Append("      </li>\r\n");
	XYBody.Append("      <li>\r\n");
	XYBody.Append("        <input name=\"\" type=\"button\" class=\"button\" value=\"ȷ ��\"  onclick =\"joinSend();\"/>\r\n");
	XYBody.Append("        <input type=\"button\" name=\"button\"  class=\"button\" value=\"�� ��\" onclick =\";\"  />\r\n");
	XYBody.Append("      </li>\r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("  </div>\r\n");
	XYBody.Append("  </form>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<script type=\"text/javascript\" language=\"javascript\">joinInit();</" + "script>\r\n");


	XYBody.Append("		 </form>\r\n");
	XYBody.Append("			<div id=\"SayInfo\">\r\n");
	XYBody.Append("				<strong>��������</strong>��������Ϣ�������ҵ�����ṩ������ҵ������Ϣ���ݵ���ʵ�ԡ�׼ȷ�ԺͺϷ��ԡ�\r\n");
	XYBody.Append("				<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("		</div>\r\n");
	XYBody.Append("	    <div id=\"layoutRight\">\r\n");
	XYBody.Append("			<div id=\"content\">\r\n");
	XYBody.Append("                <input type =\"hidden\" id=\"_param_userinfo_parent_module\" value =\"");
	XYBody.Append("                <input type =\"hidden\" id=\"_param_userinfo_infoid\" value =\"");
	XYBody.Append("                <input type =\"hidden\" id=\"_param_userinfo_userid\" value =\"");

	XYBody.Append("<!--������ʾ��Ϣ--> \r\n");
	XYBody.Append("<div class=\"w290\" id=\"loginuser\" style=\"display:none;\">  \r\n");
	XYBody.Append("    <ul>\r\n");
	XYBody.Append("        <li id=\"loginuseruginfo\"></li>\r\n");
	XYBody.Append("        <li class=\"line\"><a id=\"loginuserurl\" href=\"\" class=\"link14\"></a></li>\r\n");
	XYBody.Append("        <li>��˾��������� <span id=\"ConsummatePercent\"></span></li>\r\n");
	XYBody.Append("        <li><div class=\"cr\"><img id=\"PercentForImg\" src=\"");
	XYBody.Append("        <li><a href=\"#\" id=\"NewOfferPage\">���¹�Ӧ</a> | <a href=\"#\" id=\"GoodFaithFile\">���ŵ���</a> | <a href=\"#\" id=\"UserIntro\">��˾����</a></li>\r\n");
	XYBody.Append("        <li>��ϵ�ˣ�<a href=\"#\" id=\"Contact\"><span id=\"LinkManName\">����</span></a> ���� <span id=\"IMOnline\"></span></li>\r\n");
	XYBody.Append("        <li><hr /></li>\r\n");
	XYBody.Append("        <li>����ʱ�䣺�� <span id=\"loginuseryearnum\"></span> ��</li>\r\n");
	XYBody.Append("        <li> <a href=\"javascript:;\" onclick =\"Favorite();\">�ղش���Ϣ</a> <a href=\"#\" id=\"memessage\">��������</a> <a href=\"#\" id=\"linkme\">��ϵ��ʽ</a></li>  \r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<!--Ҫ���½��鿴-->\r\n");
	XYBody.Append("<div class=\"w290\" id=\"UserNoLogin\" style=\"display:none;\">\r\n");
	XYBody.Append("    <ul class=\"login\">\r\n");
	XYBody.Append("        <li><h4>�Ѿ��ǻ�Ա���½</h4></li>\r\n");
	XYBody.Append("        <li>�û�����<input type=\"text\" name=\"\" tabindex=\"1\"  id=\"username\" name=\"username\" onkeydown =\"KeyDown();\" maxlength=\"50\" /></li>\r\n");
	XYBody.Append("        <li>��&nbsp;&nbsp;&nbsp;�룺<input type =\"password\" maxlength=\"20\" tabindex=\"2\" id=\"password\"  name=\"password\" onkeydown =\"KeyDown();\" /></li>\r\n");

	if (config.IsEnabledVCode("login"))
	{

	XYBody.Append("        <li>��֤�룺");

	}	//end if

	XYBody.Append("        <li><input type=\"button\" class=\"button\" value=\"��¼\" onclick=\"return InfoLogin();\"/><a href=\"/GetPassword.");
	XYBody.Append("        <li><hr /></li>\r\n");
	XYBody.Append("        <ll>�㻹���ǻ�Ա����<a href=\"");
	XYBody.Append("        <li>\r\n");
	XYBody.Append("            <div class=\"contactus\">\r\n");
	XYBody.Append("                <ul>\r\n");
	XYBody.Append("                <li><h3>�����κ���������������ϵ</h3></li>\r\n");
	XYBody.Append("                <li>���߿ͷ���<img src=\"/templates/");
	XYBody.Append("                <li>�ͻ����ߣ�010-8681 8791</li>\r\n");
	XYBody.Append("                </ul>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </li>      \r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<!--Ҫ��������鿴-->\r\n");
	XYBody.Append("<div class=\"w290\" id=\"loginnouser\" style=\"display:none;\">\r\n");
	XYBody.Append("    <h3><span id=\"loginnouseruginfo\"></span></h3>\r\n");
	XYBody.Append("    <ul class=\"upgrade\">\r\n");
	XYBody.Append("        <li><span>��Ŀǰ���ڵĻ�Ա�飬�޷��鿴��Ϣ��</span></li>\r\n");
	XYBody.Append("        <li><a href=\"");
	XYBody.Append("        <li><a href=\"\">��˲鿴��Ա�ȼ���Ȩ��>></a></li>\r\n");
	XYBody.Append("        <li>\r\n");
	XYBody.Append("            <div class=\"contactus\">\r\n");
	XYBody.Append("                <ul>\r\n");
	XYBody.Append("                <li><h3>�����κ���������������ϵ</h3></li>\r\n");
	XYBody.Append("                <li>���߿ͷ���<img src=\"");
	XYBody.Append("                <li>�ͻ����ߣ�010-8681 8791</li>\r\n");
	XYBody.Append("                </ul>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </li>\r\n");
	XYBody.Append("        <li><a href=\"javascript:;\" onclick =\"Favorite();\">�ղش���Ϣ</a></li>\r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("</div>  \r\n");


	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div class=\"MTitle_01\">\r\n");
	XYBody.Append("				<center><a target=\"_blank\" href=\"#\" class=\"red\"><strong>�������ǣ����ܸ������</strong></a></center>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div class=\"Mblk_01\">\r\n");
	XYBody.Append("				<div id=\"jointous\">\r\n");
	XYBody.Append("					<ul>\r\n");
	XYBody.Append("						<li><a href=\"\">�� �ύó�׻�飬��չ������Ȧ</a></li>\r\n");
	XYBody.Append("						<li><a href=\"\">�� ��Ϊ��Ա����ѷ���������Ϣ</a></li>\r\n");
	XYBody.Append("						<li><a href=\"\"><img src=\"");
	XYBody.Append("					</ul>\r\n");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("	</div>\r\n");



	}	//end if


	if (pageinfo.ModuleFlag=="service")
	{


	XYBody.Append("	<div id=\"gq_guide\">\r\n");
	XYBody.Append("		<a href=\"\">");
	XYBody.Append("	</div>\r\n");
	 tempuser = GetUserInfo();
	
	XYBody.Append("    <div id=\"gq_compy\">\r\n");
	XYBody.Append("	    <div id=\"CompanyLogo\">\r\n");
	XYBody.Append("		    <div id=\"CompanyLogoDiv\"><img width=\"100\" alt=\"");
	XYBody.Append("	    </div>\r\n");
	XYBody.Append("	    <div id=\"CompanyName\">");
	XYBody.Append("	    <div id=\"site_url\"><a href=\"");
	XYBody.Append("      <div class=\"clr\"></div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("	<div id=\"layout\">\r\n");
	XYBody.Append("		<div id=\"layoutLeft\">\r\n");
	XYBody.Append("			<div id=\"LeftProBorder\">\r\n");
	XYBody.Append("				<div id=\"ProTitle\">\r\n");
	XYBody.Append("				        ");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("				<div id=\"ProText\">\r\n");
	XYBody.Append("					<div id=\"ProPic\">\r\n");
	XYBody.Append("						<div id=\"ProPicBorder\">\r\n");
	XYBody.Append("							<a href=\"");
	XYBody.Append("							    <img src=\"" + serviceinfo.SmallImg[2].ToString().Trim() + "\" alt=\"");
	XYBody.Append("							</a>\r\n");
	XYBody.Append("						</div>\r\n");
	XYBody.Append("						<div id=\"ProPicName\">\r\n");
	XYBody.Append("						    <img src=\"");
	XYBody.Append("						    <a href=\"");
	XYBody.Append("						</div>\r\n");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div id=\"ProInfo\">\r\n");
	XYBody.Append("						<div id=\"ProInfoA\">\r\n");
	XYBody.Append("							<a href=\"");
	XYBody.Append("							<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"fontGray\">\r\n");
	XYBody.Append("								<tr>\r\n");
	XYBody.Append("									<td height=\"10\" colspan=\"2\"></td>\r\n");
	XYBody.Append("								</tr>\r\n");
	XYBody.Append("								<tr>\r\n");
	XYBody.Append("									<td height=\"33\" colspan=\"2\">\r\n");
	XYBody.Append("									<a href=\"");
	XYBody.Append("									<a href=\"");
	XYBody.Append("									</td>\r\n");
	XYBody.Append("									</tr>\r\n");
	XYBody.Append("								<tr>\r\n");
	XYBody.Append("									<td width=\"50%\" height=\"22\">��ҵ���ͣ�");
	XYBody.Append("									<td width=\"50%\">Ա��������");
	XYBody.Append("								</tr>\r\n");
	XYBody.Append("								<tr>\r\n");
	XYBody.Append("									<td height=\"22\">��Ӫģʽ��");
	XYBody.Append("									<td>ע���ʽ�");
	XYBody.Append("								</tr>\r\n");
	XYBody.Append("							</table>\r\n");
	XYBody.Append("						</div>\r\n");
	XYBody.Append("						<div id=\"ProInfoB\">\r\n");
	XYBody.Append("							<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	XYBody.Append("									<tr>\r\n");
	XYBody.Append("										<td height=\"24\">��Ч������");
	XYBody.Append("										<td>����ʱ�䣺");
	XYBody.Append("									</tr>\r\n");
	XYBody.Append("									<tr>\r\n");
	XYBody.Append("										<td height=\"24\" colspan=\"3\">�� ϵ �ˣ�");
	XYBody.Append("									</tr>\r\n");
	XYBody.Append("							</table>\r\n");
	XYBody.Append("						</div>\r\n");
	XYBody.Append("						<div class=\"blank5\"></div>\r\n");
	XYBody.Append("						<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	XYBody.Append("							<tr>\r\n");
	XYBody.Append("								<td height=\"60\"><a href=\"#message\"><img src=\"");
	XYBody.Append("								<td style=\"text-align:center;\"><span class=\"Font14\">����ϵ</span>��<strong class=\"orange\" class=\"TempTele\">86-010-62669815</strong></td>\r\n");
	XYBody.Append("								<td width=\"23%\"></td>\r\n");
	XYBody.Append("							</tr>\r\n");
	XYBody.Append("						</table>\r\n");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div class=\"clr\"></div>\r\n");
	XYBody.Append("					<div id=\"ProDesTitle\"><strong>��ϸ��Ϣ:</strong></div>\r\n");
	XYBody.Append("					<div class=\"ProDesText\">\r\n");
	XYBody.Append("					     <table width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"1\" class=\"typelist\">");
	XYBody.Append("					     ");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div id=\"ProDesTitle\">\r\n");
	XYBody.Append("					    <strong>��ϵ��ʽ:</strong>\r\n");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("					<div class=\"ProDesText\" id=\"linkmessage\"></div>\r\n");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("                <div id=\"ProTitle\"><span>����ҵ������������Ϣ</span></div>\r\n");
	XYBody.Append("                <div class=\"ProAbout\">\r\n");
	 data = GetAboutInfo();
	
	XYBody.Append("                <ul>\r\n");

	int info__loop__id=0;
	foreach(DataRow info in data.Rows)
	{
		info__loop__id++;

	XYBody.Append("                    <li>\r\n");
	XYBody.Append("                        <a href='" + info["link"].ToString().Trim() + "' target='_blank' title='" + info["infotitle"].ToString().Trim() + "'><img src='" + info["image"].ToString().Trim() + "' /></a><br />\r\n");
	XYBody.Append("                        <a href='" + info["link"].ToString().Trim() + "' target='_blank' title='" + info["infotitle"].ToString().Trim() + "'>" + info["infotitle"].ToString().Trim() + "</a>\r\n");
	XYBody.Append("                    </li>\r\n");

	}	//end loop

	XYBody.Append("                </ul>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div id=\"ProFind\">\r\n");
	XYBody.Append("			    <span>\r\n");
	XYBody.Append("			    <img src=\"");
	XYBody.Append("			    <img src=\"");
	XYBody.Append("			    <img src=\"");
	XYBody.Append("			    </span>\r\n");
	XYBody.Append("			    <strong class=\"orange\">��û���ҵ����ʵĲ�Ʒ?</strong>  �Ͽ�<a href=\"");
	XYBody.Append("    	    </div>\r\n");
	XYBody.Append("			<input type =\"hidden\" id=\"_param_message_module\" value=\"");
	XYBody.Append("            <input type =\"hidden\" id=\"_param_message_title\" value=\"");
	XYBody.Append("            <input type =\"hidden\" id=\"_param_message_parent_module\" value =\"");
	XYBody.Append("            <input type =\"hidden\" id=\"_param_message_infoid\" value =\"");
	XYBody.Append("            <input type =\"hidden\" id=\"_param_message_userid\" value =\"");

	XYBody.Append("<!--��վ����-->\r\n");
	XYBody.Append("<div  class=\"infoAbout  commentTitle\">\r\n");
	XYBody.Append("<a name=\"message\"></a>\r\n");
	XYBody.Append("<form action=\"\" method=\"post\">\r\n");
	XYBody.Append("    <ul class=\"comment\">\r\n");
	XYBody.Append("        <li id=\"msg_tab1\"><a href=\"javascript:;\" onclick=\"xy_selectBox(2,1,'msg','now')\">�ο���ѯ</a></li>\r\n");
	XYBody.Append("        <li class=\"now\" id=\"msg_tab2\"><a href=\"javascript:;\" onclick=\"xy_selectBox(2,2,'msg','now')\">��Ա��ѯ</a></li>\r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("    <div id=\"msg_box1\" style=\"display: none;\">\r\n");
	XYBody.Append("        <div class=\"commentList\">\r\n");
	XYBody.Append("            <p>\r\n");
	XYBody.Append("                <input type=\"radio\" checked=\"checked\"  value =\"1\" id=\"companyid\"  name =\"sinfo\"/>�� ˾ \r\n");
	XYBody.Append("                <input name=\"sinfo\" type=\"radio\" value=\"0\" id=\"useridad\" />����\r\n");
	XYBody.Append("                <span>������Ѿ��ǻ�Ա����<a href=\"javascript:geturl();\" class=\"orangelink\">��˵�¼</a>������������Ǳ�վ��Ա����<a href=\"");
	XYBody.Append("            </p>\r\n");
	XYBody.Append("            <h3>��ϵ��ʽ</h3>\r\n");
	XYBody.Append("            <ul  class=\"line\">   \r\n");
	XYBody.Append("                <li><label>��ϵ�ˣ�<em>*</em></label><input type=\"text\" size=\"25\" id=\"linkman\" onblur=\"checkinfo('1');\" onfocus=\"fs('1');\"  maxlength =\"50\"/><input id=\"nsex\" name=\"\" type=\"radio\" value=\"1\" checked =\"checked\" />���� <input id=\"girl\" name=\"\" type=\"radio\" value=\"0\" />Ůʿ<span id=\"txt1\"></span></li>       \r\n");
	XYBody.Append("                <li><label>�������䣺<em>*</em></label><input type=\"text\" size=\"25\"  id=\"email\" onblur=\"checkinfo('2');\" onfocus=\"fs('2');\" maxlength =\"50\" /><span  id=\"txt2\"></span></li>\r\n");
	XYBody.Append("                <li><label>�绰���룺</label><input name=\"\" type=\"text\" size=\"25\" id=\"mobile\" onblur=\"checkinfo('11');\" onfocus=\"fs('11');\" maxlength =\"13\"/><span  id=\"txt11\"></span></li>\r\n");
	XYBody.Append("            </ul>\r\n");
	XYBody.Append("            <h3>��������</h3>\r\n");
	XYBody.Append("            <ul>\r\n");
	XYBody.Append("                <li><label>���Ա��⣺<em>*</em></label><input type=\"text\" size=\"60\" id=\"title\" name=\"title\" onblur=\"checkinfo('14');\" onfocus=\"fs('14');\" maxlength =\"100\" /><span  id =\"txt14\"></span><br /><i>�뾡�����ü������ԣ��������20�����֣��������300�����֡�</i></li>\r\n");
	XYBody.Append("                <li><div class=\"left\"><label>�������ݣ�<em>*</em></label> <textarea name=\"neirong\" cols=\"60\" rows=\"5\" id =\"neirong\" onblur=\"checkinfo('15');\" onfocus=\"fs('15');\"></textarea><span  id=\"txt15\"></span></div>\r\n");
	XYBody.Append("                <div class=\"ks\" id=\"ks1\"></div>\r\n");
	XYBody.Append("                </li>\r\n");

	if (config.IsEnabledVCode("message"))
	{

	XYBody.Append("                <li><label >��֤�룺<em>*</em></label>");

	}	//end if

	XYBody.Append("                <li>\r\n");
	XYBody.Append("                    <input name=\"\" type=\"button\" class=\"button\" value=\"ȷ ��\"  onclick =\"checkmessage();\"/> \r\n");
	XYBody.Append("                    <input type=\"button\" name=\"button\"  class=\"button\" value=\"���\" onclick =\"ykrewrite();\"  />\r\n");
	XYBody.Append("                </li>\r\n");
	XYBody.Append("            </ul>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div> \r\n");
	XYBody.Append("    <div id=\"msg_box2\" style=\"display: block;\">\r\n");
	XYBody.Append("        <div class=\"commentList\">\r\n");
	XYBody.Append("            <ul>\r\n");
	XYBody.Append("                <li><label>���Ա��⣺<em>*</em></label><input type=\"text\" size=\"60\" id=\"txtTitle\" name=\"txtTitle\"  maxlength =\"200\" /></li>\r\n");
	XYBody.Append("                <li><div class=\"left\"><label>�������ݣ�<em>*</em></label> <textarea name=\"txtContent\" cols=\"60\" rows=\"5\" id=\"txtContent\"></textarea></div>\r\n");
	XYBody.Append("                <div class=\"ks\" id=\"ks2\"></div>\r\n");
	XYBody.Append("                </li>\r\n");

	if (config.IsEnabledVCode("message"))
	{

	XYBody.Append("                <li><label>��֤�룺<em>*</em></label>");

	}	//end if

	XYBody.Append("                <li>\r\n");
	XYBody.Append("                    <input name=\"\" type=\"button\" class=\"button\" value=\"ȷ ��\" onclick =\"checkusermessage();\"/> \r\n");
	XYBody.Append("                    <input type=\"button\" name=\"Submit\"  class=\"button\" value=\"�� ��\"   onclick=\"hrrewrite();\" />\r\n");
	XYBody.Append("                </li>\r\n");
	XYBody.Append("            </ul>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</form> \r\n");
	XYBody.Append("</div> \r\n");
	XYBody.Append(" <script type=\"text/javascript\" language=\"javascript\">UserMessageInit();</" + "script>\r\n");


	XYBody.Append("		 </form>\r\n");
	XYBody.Append("			<div id=\"SayInfo\">\r\n");
	XYBody.Append("				<strong>��������</strong>��������Ϣ�������ҵ�����ṩ������ҵ������Ϣ���ݵ���ʵ�ԡ�׼ȷ�ԺͺϷ��ԡ�\r\n");
	XYBody.Append("				<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("		</div>\r\n");
	XYBody.Append("	    <div id=\"layoutRight\">\r\n");
	XYBody.Append("			<div id=\"content\">\r\n");
	XYBody.Append("                <input type =\"hidden\" id=\"_param_userinfo_parent_module\" value =\"");
	XYBody.Append("                <input type =\"hidden\" id=\"_param_userinfo_infoid\" value =\"");
	XYBody.Append("                <input type =\"hidden\" id=\"_param_userinfo_userid\" value =\"");

	XYBody.Append("<!--������ʾ��Ϣ--> \r\n");
	XYBody.Append("<div class=\"w290\" id=\"loginuser\" style=\"display:none;\">  \r\n");
	XYBody.Append("    <ul>\r\n");
	XYBody.Append("        <li id=\"loginuseruginfo\"></li>\r\n");
	XYBody.Append("        <li class=\"line\"><a id=\"loginuserurl\" href=\"\" class=\"link14\"></a></li>\r\n");
	XYBody.Append("        <li>��˾��������� <span id=\"ConsummatePercent\"></span></li>\r\n");
	XYBody.Append("        <li><div class=\"cr\"><img id=\"PercentForImg\" src=\"");
	XYBody.Append("        <li><a href=\"#\" id=\"NewOfferPage\">���¹�Ӧ</a> | <a href=\"#\" id=\"GoodFaithFile\">���ŵ���</a> | <a href=\"#\" id=\"UserIntro\">��˾����</a></li>\r\n");
	XYBody.Append("        <li>��ϵ�ˣ�<a href=\"#\" id=\"Contact\"><span id=\"LinkManName\">����</span></a> ���� <span id=\"IMOnline\"></span></li>\r\n");
	XYBody.Append("        <li><hr /></li>\r\n");
	XYBody.Append("        <li>����ʱ�䣺�� <span id=\"loginuseryearnum\"></span> ��</li>\r\n");
	XYBody.Append("        <li> <a href=\"javascript:;\" onclick =\"Favorite();\">�ղش���Ϣ</a> <a href=\"#\" id=\"memessage\">��������</a> <a href=\"#\" id=\"linkme\">��ϵ��ʽ</a></li>  \r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<!--Ҫ���½��鿴-->\r\n");
	XYBody.Append("<div class=\"w290\" id=\"UserNoLogin\" style=\"display:none;\">\r\n");
	XYBody.Append("    <ul class=\"login\">\r\n");
	XYBody.Append("        <li><h4>�Ѿ��ǻ�Ա���½</h4></li>\r\n");
	XYBody.Append("        <li>�û�����<input type=\"text\" name=\"\" tabindex=\"1\"  id=\"username\" name=\"username\" onkeydown =\"KeyDown();\" maxlength=\"50\" /></li>\r\n");
	XYBody.Append("        <li>��&nbsp;&nbsp;&nbsp;�룺<input type =\"password\" maxlength=\"20\" tabindex=\"2\" id=\"password\"  name=\"password\" onkeydown =\"KeyDown();\" /></li>\r\n");

	if (config.IsEnabledVCode("login"))
	{

	XYBody.Append("        <li>��֤�룺");

	}	//end if

	XYBody.Append("        <li><input type=\"button\" class=\"button\" value=\"��¼\" onclick=\"return InfoLogin();\"/><a href=\"/GetPassword.");
	XYBody.Append("        <li><hr /></li>\r\n");
	XYBody.Append("        <ll>�㻹���ǻ�Ա����<a href=\"");
	XYBody.Append("        <li>\r\n");
	XYBody.Append("            <div class=\"contactus\">\r\n");
	XYBody.Append("                <ul>\r\n");
	XYBody.Append("                <li><h3>�����κ���������������ϵ</h3></li>\r\n");
	XYBody.Append("                <li>���߿ͷ���<img src=\"/templates/");
	XYBody.Append("                <li>�ͻ����ߣ�010-8681 8791</li>\r\n");
	XYBody.Append("                </ul>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </li>      \r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<!--Ҫ��������鿴-->\r\n");
	XYBody.Append("<div class=\"w290\" id=\"loginnouser\" style=\"display:none;\">\r\n");
	XYBody.Append("    <h3><span id=\"loginnouseruginfo\"></span></h3>\r\n");
	XYBody.Append("    <ul class=\"upgrade\">\r\n");
	XYBody.Append("        <li><span>��Ŀǰ���ڵĻ�Ա�飬�޷��鿴��Ϣ��</span></li>\r\n");
	XYBody.Append("        <li><a href=\"");
	XYBody.Append("        <li><a href=\"\">��˲鿴��Ա�ȼ���Ȩ��>></a></li>\r\n");
	XYBody.Append("        <li>\r\n");
	XYBody.Append("            <div class=\"contactus\">\r\n");
	XYBody.Append("                <ul>\r\n");
	XYBody.Append("                <li><h3>�����κ���������������ϵ</h3></li>\r\n");
	XYBody.Append("                <li>���߿ͷ���<img src=\"");
	XYBody.Append("                <li>�ͻ����ߣ�010-8681 8791</li>\r\n");
	XYBody.Append("                </ul>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </li>\r\n");
	XYBody.Append("        <li><a href=\"javascript:;\" onclick =\"Favorite();\">�ղش���Ϣ</a></li>\r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("</div>  \r\n");


	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div class=\"MTitle_01\">\r\n");
	XYBody.Append("				<center><a target=\"_blank\" href=\"#\" class=\"red\"><strong>�������ǣ����ܸ������</strong></a></center>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div class=\"Mblk_01\">\r\n");
	XYBody.Append("				<div id=\"jointous\">\r\n");
	XYBody.Append("					<ul>\r\n");
	XYBody.Append("						<li><a href=\"\">�� �ύó�׻�飬��չ������Ȧ</a></li>\r\n");
	XYBody.Append("						<li><a href=\"\">�� ��Ϊ��Ա����ѷ���������Ϣ</a></li>\r\n");
	XYBody.Append("						<li><a href=\"\"><img src=\"");
	XYBody.Append("					</ul>\r\n");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("	</div>\r\n");



	}	//end if


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


	XYBody.Append("    <input type=\"hidden\" id=\"hidmoduleflag\" value=\"");
	XYBody.Append("</div>\r\n");
	XYBody.Append("</body>\r\n");
	XYBody.Append("</html>\r\n");

	XYBody.Append(IsCopyright());
	Response.Write(XYBody.ToString());
}
</script>