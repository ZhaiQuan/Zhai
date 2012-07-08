<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.shop.newslist,XYECOM.Page" %>
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

	XYBody.Append("<title>");
	XYBody.Append("<meta content=\"");
	XYBody.Append("<meta content=\"");
	XYBody.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">\r\n");
	XYBody.Append("<link rel=\"stylesheet\" href=\"/common/css/XYLib.css\" type=\"text/css\" media=\"screen\" />\r\n");
	XYBody.Append("<link href=\"");
	XYBody.Append("<script type=\"text/javascript\" src=\"/common/js/base.js\" language=\"javascript\"></" + "script>\r\n");
	XYBody.Append("<script type=\"text/javascript\" src=\"/templates/");
	XYBody.Append("<script type=\"text/javascript\" src=\"/templates/");


	XYBody.Append("</head>\r\n");
	XYBody.Append("<body onload=\"");

	XYBody.Append("    <div class=\"glass\">\r\n");
	XYBody.Append("        <ul>\r\n");
	 str = GetLinkPrefix();
	
	XYBody.Append("        <li class=\"glass_left\">\r\n");
	XYBody.Append("            <a href=\"");
	XYBody.Append("            <a onclick=\"javascript:this.style.behavior='url(#default#homepage)';this.setHomePage('");
	XYBody.Append("            <a href=\"javascript:window.external.addFavorite('");
	XYBody.Append("        </li>\r\n");
	XYBody.Append("        <li class=\"glass_right\">\r\n");
	XYBody.Append("            ");
	XYBody.Append("            <a href=\"");
	XYBody.Append("            <a href=\"http://www.yylm.org/contents/859/11418.html\" target=\"_blank\">��ϵ����</a>\r\n");
	XYBody.Append("        </li>\r\n");
	XYBody.Append("        </ul>\r\n");
	XYBody.Append("    </div>\r\n");


	XYBody.Append("        <div class=layout950_100 style=\"BACKGROUND-IMAGE: url(");

	XYBody.Append("    <div class=\"head\" id=DIV1>\r\n");

	if (shopuserinfo.logo!="")
	{

	XYBody.Append("            <div class=\"logo\"><IMG src=\"");

	}	//end if

	XYBody.Append("        <h1>");
	XYBody.Append("        <p>��Ӫ��Ʒ��");
	XYBody.Append("        <div class=\"gold_year\">\r\n");
	XYBody.Append("            <div class=\"gold_wz\">\r\n");
	XYBody.Append("                <table cellSpacing=\"0\" cellPadding=\"0\" width=\"100%\" border=\"0\">\r\n");
	XYBody.Append("                <tbody>\r\n");
	XYBody.Append("                <tr>\r\n");
	XYBody.Append("                    <td align=\"left\" width=\"52%\" style=\"padding-left:4px; padding-top:5px;\"><font color=\"#9a2502\">");
	XYBody.Append("                    <td align=\"middle\" width=\"6%\">&nbsp;</td>\r\n");
	XYBody.Append("                    <td align=\"middle\" width=\"45%\" class=\"year\">��<span>");
	XYBody.Append("                </tr>\r\n");
	XYBody.Append("                </tbody>\r\n");
	XYBody.Append("                </table>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");


	XYBody.Append("    <div class=\"clr\"></div>\r\n");
	XYBody.Append("    <div class=layout950>\r\n");

	XYBody.Append("<div class=\"nav\">\r\n");
	XYBody.Append("    <ul id=\"_shop_menu_list\">\r\n");
	 str = GetLinkPrefix();
	
	XYBody.Append("        <li id=\"_shop_menu_index\" class=\"hover\"><a href=\"");
	XYBody.Append("        <li id=\"_shop_menu_introduction\"><a href=\"");
	XYBody.Append("        <li id=\"_shop_menu_product\"><a href=\"");
	XYBody.Append("        <li id=\"_shop_menu_offer\"><a href=\"");
	XYBody.Append("        <li id=\"_shop_menu_newslist\"><a href=\"");
	XYBody.Append("        <li id=\"_shop_menu_brandlist\"><a href=\"");
	XYBody.Append("        <li id=\"_shop_menu_cred\"><a href=\"");
	XYBody.Append("        <li id=\"_shop_menu_joblist\"><a href=\"");
	XYBody.Append("        <li id=\"_shop_menu_contact\"><a href=\"");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("    <script type=\"text/javascript\">xy_Shop_SetMenu();</" + "script>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<div class=\"banner\">\r\n");

	if (shopuserinfo.banner!="")
	{

	XYBody.Append("        <img src=\"");

	}	//end if

	XYBody.Append("</div>\r\n");


	XYBody.Append("    <div class=\"clr\"></div>\r\n");
	XYBody.Append("    <div class=where>�����ڵ�λ�ã���ҳ &gt; ��ҵ����</div>\r\n");

	XYBody.Append("<div id=\"bodyleft\">\r\n");
	XYBody.Append("    <div class=\"leftkuang\">\r\n");
	XYBody.Append("        <div class=\"lefttitle\">��վ����</div>\r\n");
	XYBody.Append("        <div class=\"gonggaoContContent\">\r\n");
	XYBody.Append("            <marquee onmouseover=this.stop() onmouseout=this.start() scrollAmount=1 scrollDelay=0 direction=up height=80 align=\"center\">");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div class=\"leftkuang\">\r\n");
	XYBody.Append("        <div class=\"lefttitle\">��Ʒ����</div>\r\n");
	XYBody.Append("        <div class=\"bodyContContent\">\r\n");
	XYBody.Append("            <ul>\r\n");
	 data = GetCompanyProType();
	

	int type__loop__id=0;
	foreach(DataRow type in data.Rows)
	{
		type__loop__id++;

	XYBody.Append("		        <li>\r\n");
	XYBody.Append("			        <a href=\"javascript:pturls(" + type["id"].ToString().Trim() + ",'");
	XYBody.Append("		        </li>\r\n");

	}	//end loop

	XYBody.Append("            </ul>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div class=\"leftkuang\">\r\n");
	XYBody.Append("        <div class=\"lefttitle\">��ϵ��ʽ</div>\r\n");
	XYBody.Append("        <div class=\"linksContContent\">\r\n");
	XYBody.Append("            <ul>\r\n");
	XYBody.Append("                <li>��ϵ�ˣ�");
	XYBody.Append("                <li>��  ����");
	XYBody.Append("                <li>��  ����");
	XYBody.Append("                <li>��  �棺");
	XYBody.Append("            </ul>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div class=\"leftkuang\">\r\n");
	XYBody.Append("        <div class=\"lefttitle\">��������</div>\r\n");
	XYBody.Append("        <div class=\"linksContContent\">\r\n");
	XYBody.Append("            <ul>\r\n");
	XYBody.Append("                <li title=\"�й�Ӫ������\">��<a href=\"http://www.yylm.org\" target=\"_blank\">�й�Ӫ������</a></li>\r\n");
	XYBody.Append("                <li title=\"��Աչʾƽ̨\">��<a href=\"http://cy.yylm.org\" target=\"_blank\">��Աչʾƽ̨</a></li>\r\n");
	 data = GetLink();
	

	int link__loop__id=0;
	foreach(DataRow link in data.Rows)
	{
		link__loop__id++;

	XYBody.Append("                <li title=\"" + link["SiteName"].ToString().Trim() + "\">��<a href=\"" + link["Url"].ToString().Trim() + "\" target=\"_blank\">" + link["SiteName"].ToString().Trim() + "</a></li>\r\n");

	}	//end loop

	XYBody.Append("            </ul>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div class=\"leftkuang\">\r\n");
	XYBody.Append("        <div class=\"lefttitle\">վ������</div>\r\n");
	XYBody.Append("        <div class=\"bodyContContent\">\r\n");
	XYBody.Append("            <input  size=\"13\" value=\"\" name=\"Products\" id=\"Products\"/>\r\n");
	XYBody.Append("            <input name=\"button\" type=\"button\" onclick=\"xy_Shop_Search();\" value=\"����\"/>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");


	XYBody.Append("    <!--��λ����-->\r\n");
	XYBody.Append("    <div id=bodyright>\r\n");
	XYBody.Append("        <div class=leftkuang>\r\n");
	XYBody.Append("            <div class=righttitle>\r\n");
	XYBody.Append("                <ul>\r\n");
	XYBody.Append("                    <li>��ҵ����</li>\r\n");
	XYBody.Append("                </ul>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"newslist\">\r\n");
	XYBody.Append("                <ul>\r\n");

	int info__loop__id=0;
	foreach(DataRow info in infolist.Rows)
	{
		info__loop__id++;

	 infourl = GetInfoUrl("newsinfo",info["Newsid"]);
	
	XYBody.Append("                <li><a href=\"");

	}	//end loop

	XYBody.Append("                </ul>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        <div class=\"clr\"></div>\r\n");
	XYBody.Append("        <div class=page>\r\n");
	XYBody.Append("            ��");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div class=\"clr\"></div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div class=\"clr\"></div>\r\n");
	XYBody.Append("    </div>\r\n");

	XYBody.Append("<div class=\"copyright\">\r\n");
	XYBody.Append("    <table width=\"100%\">\r\n");
	XYBody.Append("        <tbody>\r\n");
	XYBody.Append("            <tr>\r\n");
	XYBody.Append("            <td align=\"middle\" width=\"100%\">\r\n");
	XYBody.Append("                <table width=\"100%\">\r\n");
	XYBody.Append("                    <tbody>\r\n");
	XYBody.Append("                    <tr>\r\n");
	XYBody.Append("                            <td align=\"middle\" width=\"54%\">\r\n");
	XYBody.Append("                            <table width=\"100%\">\r\n");
	XYBody.Append("                                <tbody>\r\n");
	XYBody.Append("                                    <tr><td align=\"middle\">");
	XYBody.Append("                                    <tr><td align=\"middle\">��λ��ַ��");
	XYBody.Append("                                    <tr>\r\n");
	XYBody.Append("                                    <td align=\"middle\">\r\n");
	XYBody.Append("                                        <a href=\"http://www.yylm.org\" target=\"_blank\">�й�Ӫ�����ˣ��ṩƽ̨֧��</a> | \r\n");
	XYBody.Append("                                        <a href=\"");
	XYBody.Append("                                        <a href=\"");
	XYBody.Append("                                    </td>\r\n");
	XYBody.Append("                                    </tr>\r\n");
	XYBody.Append("                                </tbody>\r\n");
	XYBody.Append("                            </table>\r\n");
	XYBody.Append("                        </td>\r\n");
	XYBody.Append("                       </tr>\r\n");
	XYBody.Append("                    </tbody>\r\n");
	XYBody.Append("                </table>\r\n");
	XYBody.Append("            </td>\r\n");
	XYBody.Append("            </tr>\r\n");
	XYBody.Append("        </tbody>\r\n");
	XYBody.Append("    </table>\r\n");
	XYBody.Append("</div>\r\n");


	XYBody.Append("    </div>\r\n");
	XYBody.Append("</body></html>\r\n");

	XYBody.Append("");
	Response.Write(XYBody.ToString());
}
</script>