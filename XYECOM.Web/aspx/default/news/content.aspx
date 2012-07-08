<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.news.content,XYECOM.Page" %>
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

	XYBody.Append("	<title>");
	XYBody.Append("	<meta name=\"description\" content=\"");
	XYBody.Append("	<meta name=\"keywords\" content=\"");
	XYBody.Append("	<meta name=\"robots\" content=\"all\"/>\r\n");
	XYBody.Append("	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=\"gb2312\" />\r\n");
	XYBody.Append("	<link rel=\"stylesheet\" href=\"");
	XYBody.Append("	<link href=\"");
	XYBody.Append("	<link href=\"");
	XYBody.Append("	<link href=\"");
	XYBody.Append("    <link href=\"");
	XYBody.Append("    <script type=\"text/javascript\" src=\"");
	XYBody.Append("	<script type=\"text/javascript\" src=\"");
	XYBody.Append("    <script type=\"text/javascript\" src=\"");
	XYBody.Append("    <script type=\"text/javascript\" src=\"");


	XYBody.Append("    <style type=\"text/css\">\r\n");
	XYBody.Append("        #txtBuyNum\r\n");
	XYBody.Append("        {\r\n");
	XYBody.Append("            width: 49px;\r\n");
	XYBody.Append("        }\r\n");
	XYBody.Append("    </style>\r\n");
	XYBody.Append("</head>\r\n");
	XYBody.Append("<body onload=\"");
	XYBody.Append("    <div id=\"wrapper\">\r\n");

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





	XYBody.Append("        <div id=\"news_bread\" style=\"width: 100%; border: 0; margin-top: 6px;\">\r\n");
	XYBody.Append("            <em>�����ڵ�λ�ã�");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div id=\"news_pages2\">\r\n");
	XYBody.Append("            <div id=\"lt_cnt2\">\r\n");
	XYBody.Append("                <div class=\"newsMain\">\r\n");
	XYBody.Append("                    <div class=\"article\">\r\n");
	XYBody.Append("                        <div class=\"text\">\r\n");
	XYBody.Append("                            <h1>\r\n");
	XYBody.Append("                                ");
	XYBody.Append("                            <ul class=\"info\">\r\n");

	if (newsinfo.Author!="")
	{

	XYBody.Append("<li class=\"artist\">����:<span>");

	}	//end if

	XYBody.Append("                                <li class=\"date\">ʱ��:<span>");
	XYBody.Append("                                <li class=\"reader\">�Ķ�:<span>");
	XYBody.Append("                                <li class=\"option\"><span>����ѡ��:</span><a href=\"#\">��</a><a href=\"#\">��</a><a href=\"#\">С</a></li>\r\n");
	XYBody.Append("                            </ul>\r\n");

	if (newsinfo.Tags!="")
	{

	XYBody.Append("                            <div class=\"relat_words\">\r\n");
	XYBody.Append("                                <img src=\"");
	XYBody.Append("                                    align=\"absmiddle\" />\r\n");
	XYBody.Append("                                ");
	XYBody.Append("                            </div>\r\n");

	}	//end if


	if (newsinfo.Leadin!="")
	{

	XYBody.Append("                            <div class=\"clr summary\">\r\n");
	XYBody.Append("                                ");
	XYBody.Append("                            </div>\r\n");

	}	//end if

	XYBody.Append("                            <div class=\"content\" id=\"content\">\r\n");
	XYBody.Append("                                ");

	if (Scheme_Flag)
	{

	XYBody.Append("                                <h3>\r\n");
	XYBody.Append("                                    ��ز�Ʒ</h3>\r\n");

	int item__loop__id=0;
	foreach(string item in ProIdsArry)
	{
		item__loop__id++;

	 ProInfo = GetProInfo(item);
	
	 supplyinfo_PicUrl = PicUrl(item);
	
	 ProTypeInfo = GetProTypeInfo(ProInfo.SortID.ToString());
	
	 Uinfo_Name = GetProUserInfo(ProInfo.UserID.ToString());
	

	if (IsNull(item))
	{

	XYBody.Append("                                <li>\r\n");

	if (ProInfo.IsContractVouch)
	{

	XYBody.Append("                                    <input disabled=\"disabled\" type=\"checkbox\" id='Checkbox1' value=\"");

	}
	else
	{

	XYBody.Append("                                    <input type=\"checkbox\" id='ProId_");

	}	//end if

	XYBody.Append("                                    &nbsp;<image src=\"supplyinfo_PicUrl\"></image>\r\n");
	XYBody.Append("                                    &nbsp;[");
	XYBody.Append("                                    &nbsp;�ּ�:<font color=\"red\">");
	XYBody.Append("                                    &nbsp;���:");

	if (ProInfo.IsContractVouch)
	{

	XYBody.Append("                                    <a href=\"");

	}
	else
	{

	XYBody.Append("                                    &nbsp;<a href=\"");
	XYBody.Append("                                        onblur=\"UnShowPriceRange(");
	XYBody.Append("                                        <input type=\"hidden\" id=\"LeastNum_");
	XYBody.Append("                                   <!-- <span id=\"PriceRange_");
	XYBody.Append("                                        display: none; background-color: #fff\">\r\n");
	XYBody.Append("                                        <ul>\r\n");
	XYBody.Append("                                            <li id=\"jg_title\"><span class=\"jg_num\">���� </span><span class=\"jg_price\">�۸�(Ԫ) </span>\r\n");
	XYBody.Append("                                            </li>\r\n");

	int ProInfo_item__loop__id=0;
	foreach(XYECOM.Model.PriceRangeInfo ProInfo_item in ProInfo.PriceRange)
	{
		ProInfo_item__loop__id++;

	XYBody.Append("                                            <li><span class=\"jg_num\">\r\n");

	if (ProInfo_item.RangeNum!=-1)
	{

	XYBody.Append("                                                ");

	}
	else
	{

	XYBody.Append("                                                >=");

	}	//end if

	XYBody.Append("                                            </span><span class=\"jg_price\">");

	}	//end loop

	XYBody.Append("                                        </ul>\r\n");
	XYBody.Append("                                    </span>");
	XYBody.Append("                                    <!--<div id=\"PriceRange_");

	}	//end if

	XYBody.Append("                                </li>\r\n");

	}	//end loop


	}	//end if


	if (IsShowbtn())
	{

	XYBody.Append("                                <li>&nbsp;&nbsp;&nbsp;<input type=\"button\" value=\"��������\" class=\"Okbuy\" onclick=\"return News_Buy();\" />\r\n");
	XYBody.Append("                                </li>\r\n");

	}	//end if


	}	//end if

	XYBody.Append("                            </div>\r\n");
	XYBody.Append("                            <div class=\"via\">\r\n");
	XYBody.Append("                            </div>\r\n");
	XYBody.Append("                        </div>\r\n");
	XYBody.Append("                        <ul class=\"pages\">\r\n");
	XYBody.Append("                            ");
	XYBody.Append("                        </ul>\r\n");

	if (newsinfo.Tags!="")
	{

	XYBody.Append("                        <ul>\r\n");
	XYBody.Append("                            Tags:");
	XYBody.Append("                        </ul>\r\n");

	}	//end if

	XYBody.Append("                        <ul>\r\n");
	XYBody.Append("                            ");
	XYBody.Append("                        </ul>\r\n");
	XYBody.Append("                        <ul class=\"other\">\r\n");
	XYBody.Append("                            <li>��<a class=\"highlight\" href=\"#\">Ͷ��</a>��</li>\r\n");
	XYBody.Append("                            <li>��<a href=\"#\">�ղ�</a>��</li>\r\n");
	XYBody.Append("                            <li>��<a href=\"#\">��</a><a class=\"midsize\" href=\"#\">��</a><a href=\"#\">С</a>��</li>\r\n");
	XYBody.Append("                            <li>��<a href=\"#\">��ӡ</a>��</li>\r\n");
	XYBody.Append("                        </ul>\r\n");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                    <div class=\"mutuality\">\r\n");
	XYBody.Append("                        <h3>\r\n");
	XYBody.Append("                            �������</h3>\r\n");
	XYBody.Append("                        <div class=\"ci\">\r\n");
	 str = GetAboutInfo();
	
	XYBody.Append("                            ");
	XYBody.Append("                        </div>\r\n");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                    <input type=\"hidden\" id=\"NewsId\" value=\"");

	if (newsinfo.IsAllowComment)
	{

	XYBody.Append("                    <div class=\"mutuality\">\r\n");
	XYBody.Append("                        <h3>\r\n");
	XYBody.Append("                            �����б�&nbsp;&nbsp;<em><a href=\"");
	XYBody.Append("                        <div class=\"ci\">\r\n");
	XYBody.Append("                            <dl class=\"message\" id=\"listst\">\r\n");
	XYBody.Append("                            </dl>\r\n");
	XYBody.Append("                            <div class=\"\">\r\n");
	XYBody.Append("                                <ul class=\"public\">\r\n");
	XYBody.Append("                                    <li>\r\n");
	XYBody.Append("                                        <textarea name=\"\" id=\"CommentBody\" class=\"it\" cols=\"40\"></textarea>\r\n");
	XYBody.Append("                                    </li>\r\n");
	XYBody.Append("                                </ul>\r\n");
	XYBody.Append("                                <ul class=\"publog\">\r\n");
	XYBody.Append("                                    <li>\r\n");
	XYBody.Append("                                        <input type=\"checkbox\" class=\"ic\" name=\"\" id=\"IsHiddenIP\" /><label>����</label></li>\r\n");

	if (config.IsEnabledVCode("comment"))
	{

	XYBody.Append("                                    <li>");

	}	//end if

	XYBody.Append("                                    <li>\r\n");
	XYBody.Append("                                        <input type=\"button\" value=\"��������\" class=\"isu\" onclick=\"InsertComment();\" /></li>\r\n");
	XYBody.Append("                                </ul>\r\n");
	XYBody.Append("                            </div>\r\n");
	XYBody.Append("                        </div>\r\n");
	XYBody.Append("                    </div>\r\n");

	}	//end if

	XYBody.Append("                </div>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div id=\"mid_cnt2\">\r\n");
	XYBody.Append("                ��Ȩ����ũҵ��ҵ�Ż���վ\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div id=\"rt_cnt2\" style=\"width: 270px;\">\r\n");
	XYBody.Append("                <div class=\"pages_bnr\">\r\n");
	XYBody.Append("                    <a href=\"\">\r\n");
	XYBody.Append("                        <img src=\"");
	XYBody.Append("                            height=\"241\" alt=\"\" /></a></div>\r\n");
	XYBody.Append("                <div id=\"gold_user\" style=\"margin: 0\">\r\n");
	XYBody.Append("                    <div class=\"top\">\r\n");
	XYBody.Append("                        <div class=\"tit\">\r\n");
	XYBody.Append("                            <span class=\"fright\">����></span><h2>\r\n");
	XYBody.Append("                                �����̼�չʾ</h2>\r\n");
	XYBody.Append("                        </div>\r\n");
	XYBody.Append("                        <div class=\"slogan\">\r\n");
	XYBody.Append("                            <a href=\"\" class=\"red big\"><strong>������ס�����̼ң��̻�����>></strong></a></div>\r\n");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                    <div id=\"slidetexts\" class=\"mid\">\r\n");
	XYBody.Append("                        <ul>\r\n");
	XYBody.Append("                            " +  XYECOMCreateHTML("XY_Index_JinPaiShangJiaZhanShi").ToString() + "\r\n");
	XYBody.Append("                        </ul>\r\n");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                    <script type=\"text/javascript\">\r\n");
	XYBody.Append("				<!--\r\n");
	XYBody.Append("                        try {\r\n");
	XYBody.Append("                            slideLine('slidetexts', 3000, 5, 40);\r\n");
	XYBody.Append("                        } catch (e) { }\r\n");
	XYBody.Append("				//-->\r\n");
	XYBody.Append("                    </" + "script>\r\n");
	XYBody.Append("                    <div class=\"btm spacer\">\r\n");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div class=\"spacer height6\">\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div class=\"MTitle_01\">\r\n");
	XYBody.Append("                    <h2 id=\"h201\" class=\"\">\r\n");
	XYBody.Append("                        <a target=\"_blank\" href=\"#\" class=\"big\"><strong>ҵ����Ѷ</strong></a></h2>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div id=\"con01\" class=\"Mblk_01\">\r\n");
	XYBody.Append("                    <div class=\"com_pages\">\r\n");
	XYBody.Append("                        <ul>\r\n");
	XYBody.Append("                            <li><a target=\"_blank\" href=\"#\">�����������H1N1����</a></li>\r\n");
	XYBody.Append("                            <li><a target=\"_blank\" href=\"#\">�����γ�ϯ�ϺϷ��</a></li>\r\n");
	XYBody.Append("                            <li><a target=\"_blank\" href=\"#\">���ʴ�ѡ�������ֶ���</a></li>\r\n");
	XYBody.Append("                            <li><a target=\"_blank\" href=\"#\">�ɶ�����������ȼ��</a></li>\r\n");
	XYBody.Append("                            <li><a target=\"_blank\" href=\"#\">�����տ�A330�ͻ�׹��</a></li>\r\n");
	XYBody.Append("                            <li><a target=\"_blank\" href=\"#\">�ɶ�����������ȼ��</a></li>\r\n");
	XYBody.Append("                            <li><a target=\"_blank\" href=\"#\">�����տ�A330�ͻ�׹��</a></li>\r\n");
	XYBody.Append("                        </ul>\r\n");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div class=\"spacer height6\">\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div class=\"MTitle_01\">\r\n");
	XYBody.Append("                    <h2 id=\"h201\" class=\"\">\r\n");
	XYBody.Append("                        <a target=\"_blank\" href=\"#\">������ҵ</a></h2>\r\n");
	XYBody.Append("                    <h2 id=\"h202\" class=\"selected\">\r\n");
	XYBody.Append("                        <a target=\"_blank\" href=\"#\">������ҵ</a></h2>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div id=\"con01\" class=\"Mblk_01\">\r\n");
	XYBody.Append("                    <div class=\"pictext2\">\r\n");
	XYBody.Append("                        <div id=\"lt\">\r\n");
	XYBody.Append("                            <a href=\"\">\r\n");
	XYBody.Append("                                <img src=\"");
	XYBody.Append("                                    width=\"80\" height=\"60\" alt=\"\" /></a></div>\r\n");
	XYBody.Append("                        <div id=\"rt\">\r\n");
	XYBody.Append("                            <h4>\r\n");
	XYBody.Append("                                <a href=\"\">�����Ϻ��ֻ������ʷѴ�</a></h4>\r\n");
	XYBody.Append("                            <p>\r\n");
	XYBody.Append("                                �й�����ӵ�в������ɵ�����Ȩ����Щ������Ӧ�黹</p>\r\n");
	XYBody.Append("                        </div>\r\n");
	XYBody.Append("                        <div class=\"clr\">\r\n");
	XYBody.Append("                        </div>\r\n");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                    <div class=\"com_pages\">\r\n");
	XYBody.Append("                        <ul>\r\n");
	XYBody.Append("                            <li><a target=\"_blank\" href=\"#\">���ʽ��еڶ��κ�����</a></li>\r\n");
	XYBody.Append("                            <li><a target=\"_blank\" href=\"#\">�ҹ���ʡ���ս�����</a></li>\r\n");
	XYBody.Append("                            <li><a target=\"_blank\" href=\"#\">�ɶ�����������ȼ��</a></li>\r\n");
	XYBody.Append("                            <li><a target=\"_blank\" href=\"#\">�����տ�A330�ͻ�׹��</a></li>\r\n");
	XYBody.Append("                        </ul>\r\n");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div class=\"spacer height6\">\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div class=\"MTitle_01\">\r\n");
	XYBody.Append("                    <h2 id=\"h201\" class=\"\">\r\n");
	XYBody.Append("                        <a target=\"_blank\" href=\"#\">ͼƬ��Ѷ</a></h2>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div id=\"con01\" class=\"Mblk_01\" style=\"border-bottom: 0;\">\r\n");
	XYBody.Append("                    <ul class=\"photo_news\">\r\n");
	XYBody.Append("                        <li><a href=\"#\">\r\n");
	XYBody.Append("                            <img src=\"");
	XYBody.Append("                                height=\"90\" alt=\"\" /><br />\r\n");
	XYBody.Append("                            ���������GPU����</a></li>\r\n");
	XYBody.Append("                        <li><a href=\"#\">\r\n");
	XYBody.Append("                            <img src=\"");
	XYBody.Append("                                height=\"90\" alt=\"\" /><br />\r\n");
	XYBody.Append("                            ���������GPU����</a></li>\r\n");
	XYBody.Append("                        <div class=\"clr\">\r\n");
	XYBody.Append("                        </div>\r\n");
	XYBody.Append("                    </ul>\r\n");
	XYBody.Append("                    <div class=\"com_pages\">\r\n");
	XYBody.Append("                        <ul>\r\n");
	XYBody.Append("                            <li><a target=\"_blank\" href=\"#\">���ʽ��еڶ��κ�����</a></li>\r\n");
	XYBody.Append("                            <li><a target=\"_blank\" href=\"#\">�ҹ���ʡ���ս�����</a></li>\r\n");
	XYBody.Append("                            <li><a target=\"_blank\" href=\"#\">�ɶ�����������ȼ��</a></li>\r\n");
	XYBody.Append("                            <li><a target=\"_blank\" href=\"#\">�����տ�A330�ͻ�׹��</a></li>\r\n");
	XYBody.Append("                        </ul>\r\n");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"clr\">\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div id=\"news_pages_btm2\" class=\"spacer\">\r\n");
	XYBody.Append("        </div>\r\n");

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


	XYBody.Append("    </div>\r\n");
	XYBody.Append("</body>\r\n");
	XYBody.Append("</html>\r\n");

	XYBody.Append(IsCopyright());
	Response.Write(XYBody.ToString());
}
</script>