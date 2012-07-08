<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.shop.product,XYECOM.Page" %>
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
	XYBody.Append("<!--��Ʒ��Ŀ��ҳ-->\r\n");

	XYBody.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	XYBody.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	XYBody.Append("<head>\r\n");
	XYBody.Append("    <title>");
	XYBody.Append("    <meta name=\"description\" content=\"");
	XYBody.Append("    <meta name=\"keywords\" content=\"");

	if (seo.Robots==true)
	{

	XYBody.Append("    <meta name=\"robots\" content=\"all\" />\r\n");

	}	//end if

	XYBody.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\" />\r\n");
	XYBody.Append("    <meta http-equiv=\"Content-Language\" content=\"zh-CN\" />\r\n");
	XYBody.Append("    <meta name=\"author\" content=\"www.xyecs.com\" />\r\n");
	XYBody.Append("    <meta name=\"Copyright\" content=\"copyright (c) www.xyecs.com.��Ȩ����.\" />\r\n");
	XYBody.Append("    <link rel=\"stylesheet\" charset=\"utf-8\" href=\"");
	XYBody.Append("    <script type=\"text/javascript\" src=\"");
	XYBody.Append("    <script type=\"text/javascript\" src=\"");
	XYBody.Append("    <script type=\"text/javascript\" src=\"");
	XYBody.Append("    <script type=\"text/javascript\" src=\"");

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

	XYBody.Append("</head>\r\n");


	XYBody.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
	XYBody.Append("<script type=\"text/javascript\" src=\"");
	XYBody.Append("<script language=\"javascript\">\r\n");
	XYBody.Append("    $(document).ready(function () {\r\n");
	XYBody.Append("        $('.spfl_list').mouseover(function () {\r\n");
	XYBody.Append("            $(this).addClass('spfl_this');\r\n");
	XYBody.Append("            $(this).children('.detail').removeClass('d_hide');\r\n");
	XYBody.Append("        }).mouseout(function () {\r\n");
	XYBody.Append("            $(this).removeClass('spfl_this');\r\n");
	XYBody.Append("            $(this).children('.detail').addClass('d_hide');\r\n");
	XYBody.Append("        });\r\n");
	XYBody.Append("    });\r\n");
	XYBody.Append("</" + "script>\r\n");

	XYBody.Append("<body>\r\n");
	XYBody.Append("    <input type=\"hidden\" id=\"shopuserloginname\" name=\"shopuserloginname\" value=\"");
	XYBody.Append("    <div id=\"content\">\r\n");

	XYBody.Append("<div class=\"top\">\r\n");
	XYBody.Append("    <div class=\"logo\">\r\n");
	XYBody.Append("        <img src=\"");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div class=\"submenu\">\r\n");
	XYBody.Append("        <div class=\"login\">\r\n");

	if (islogin)
	{

	XYBody.Append("            <!--�ѵ�½-->\r\n");
	XYBody.Append("            ����");
	XYBody.Append("                href=\"/user/index.aspx\" target=\"_blank\">�ҵ��ʻ�</a> | <a href=\"/user/BuyerOrderList.aspx\"\r\n");
	XYBody.Append("                    target=\"_blank\">�ҵĶ���</a> | <a href=\"#\" target=\"_blank\">��������</a>\r\n");

	}
	else
	{

	XYBody.Append("            <!--δ��½-->\r\n");
	XYBody.Append("            ���ã���ӭ�����ڼ��̳ǣ�<a href=\"/login.aspx\" target=\"_blank\">[���½]</a><a href=\"/register.aspx\"\r\n");
	XYBody.Append("                target=\"_blank\">[���ע��]</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"/user/index.aspx\" target=\"_blank\">�ҵ��ʻ�</a>\r\n");
	XYBody.Append("            | <a href=\"/user/BuyerOrderList.aspx\" target=\"_self\">�ҵĶ���</a> | <a href=\"#\" target=\"_blank\">\r\n");
	XYBody.Append("                ��������</a>\r\n");

	}	//end if

	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div class=\"dh\">\r\n");
	XYBody.Append("            <ul>\r\n");
	XYBody.Append("                <li>\r\n");
	XYBody.Append("                    <h1 class=\"h1\">\r\n");
	XYBody.Append("                        <a href=\"");
	XYBody.Append("                </li>\r\n");
	XYBody.Append("                <li>\r\n");
	XYBody.Append("                    <h1>\r\n");
	XYBody.Append("                        <a href=\"");
	XYBody.Append("                </li>\r\n");
	XYBody.Append("                <li>\r\n");
	XYBody.Append("                    <h1>\r\n");
	XYBody.Append("                        <a href=\"");
	XYBody.Append("                </li>\r\n");
	XYBody.Append("                <li>\r\n");
	XYBody.Append("                    <h1>\r\n");
	XYBody.Append("                        <a href=\"");
	XYBody.Append("                </li>\r\n");
	XYBody.Append("            </ul>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div style=\"clear: both\">\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");


	XYBody.Append("        <!--����-->\r\n");

	XYBody.Append("<!--����-->\r\n");
	XYBody.Append("<div class=\"dh_full\">\r\n");
	XYBody.Append("    <div class=\"menu\">\r\n");
	XYBody.Append("        <ul class=\"cd\">\r\n");

	int row1__loop__id=0;
	foreach(DataRow row1 in customtypelist.Rows)
	{
		row1__loop__id++;

	XYBody.Append("            <li><a href='");
	XYBody.Append("                target=\"_self\" class=\"menu\">" + row1["PtName"].ToString().Trim() + " </a></li>\r\n");

	}	//end loop

	XYBody.Append("            <li><a href='");
	XYBody.Append("                target=\"_blank\" class=\"menu\">������Ϣ</a></li>\r\n");
	XYBody.Append("            <li><a href='");
	XYBody.Append("                target=\"_blank\" class=\"menu\">���з���</a></li>\r\n");
	XYBody.Append("        </ul>\r\n");
	XYBody.Append("        <div class=\"list\" style=\"_overflow: hidden\">\r\n");
	XYBody.Append("            <div class=\"listcart\">\r\n");
	XYBody.Append("                <a href=\"#\" target=\"_blank\" id=\"showCard\">�鿴���ﳵȥ���� </a>\r\n");
	XYBody.Append("                <div class=\"listCartDetail\" id=\"listCartDetail\">\r\n");
	XYBody.Append("                    <p>\r\n");
	XYBody.Append("                        ��һ��ѡ���� <em>");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<div class=\"clear\">\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<!--���� end-->\r\n");


	XYBody.Append("        <div class=\"clear\">\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <!--���� end-->\r\n");
	XYBody.Append("        <!--search start-->\r\n");

	XYBody.Append("<!--search start-->\r\n");
	XYBody.Append("<div class=\"search\">\r\n");
	XYBody.Append("    <div class=\"s-bg\">\r\n");
	XYBody.Append("        <img height=\"34\" alt=\"\" src=\"");
	XYBody.Append("            width=\"4\"></div>\r\n");
	XYBody.Append("    <div class=\"s-bg1\">\r\n");
	XYBody.Append("        <ul class=\"fs\">\r\n");
	XYBody.Append("            <li>\r\n");
	XYBody.Append("                <h3>\r\n");
	XYBody.Append("                    <a href=\"");
	XYBody.Append("                        target=\"_blank\">���ֻ���</a></h3>\r\n");
	XYBody.Append("            </li>\r\n");
	XYBody.Append("            <li>\r\n");
	XYBody.Append("                <h4>\r\n");
	XYBody.Append("                    <a href=\"#\" class=\"font12redA\" target=\"_blank\">������Ʒ</a></h4>\r\n");
	XYBody.Append("            </li>\r\n");
	XYBody.Append("            <li>\r\n");
	XYBody.Append("                <h4>\r\n");
	XYBody.Append("                    <a class=\"font12redA\" href=\"#\" target=\"_blank\">������Ʒ</a></h4>\r\n");
	XYBody.Append("            </li>\r\n");
	XYBody.Append("            <li>\r\n");
	XYBody.Append("                <h4>\r\n");
	XYBody.Append("                    <a class=\"font12redA\" href=\"#\" target=\"_blank\">�̳ǹ���</a></h4>\r\n");
	XYBody.Append("            </li>\r\n");
	XYBody.Append("        </ul>\r\n");
	XYBody.Append("        <div class=\"sous\">\r\n");
	XYBody.Append("            <form action=\"\" method=\"get\">\r\n");
	XYBody.Append("            <div class=\"s1\">\r\n");
	XYBody.Append("                <input name=\"keyword\" id=\"txtkeyword\" type=\"text\" value=\"");
	XYBody.Append("            <div class=\"s2\">\r\n");
	XYBody.Append("                <input type=\"button\" src=\"");
	XYBody.Append("                    id=\"btnsearch\" value=\"sousuo\"></div>\r\n");
	XYBody.Append("            <a href=\"#\" target=\"_blank\">�߼�����</a>\r\n");
	XYBody.Append("            </form>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div class=\"s-bg\">\r\n");
	XYBody.Append("        <img height=\"34\" alt=\"\" src=\"");
	XYBody.Append("            width=\"6\" /></div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<!--search end-->\r\n");


	XYBody.Append("        <!--search end-->\r\n");
	XYBody.Append("    </div>\r\n");


	XYBody.Append("<!--main start-->\r\n");
	XYBody.Append("<div class=\"mian\">\r\n");
	XYBody.Append("    <!-- ������ -->\r\n");
	XYBody.Append("    <div id=\"daohang\">\r\n");
	XYBody.Append("        <a href=\"./\">��ҳ</a> &gt; �̳ǹ���\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div id=\"main_left\">\r\n");
	XYBody.Append("        <div id=\"spfl\">\r\n");
	XYBody.Append("            <!-- ��Ʒ���� -->\r\n");
	XYBody.Append("            <div id=\"spfl_top\">\r\n");
	XYBody.Append("                <img src=\"");
	XYBody.Append("                    border=\"0\" />\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div id=\"spfl_box\">\r\n");
	XYBody.Append("                <div class=\"spfl_title\">\r\n");
	XYBody.Append("                    <strong>С��Ʒ</strong>\r\n");
	XYBody.Append("                    <div class=\"spfl_all\">\r\n");
	XYBody.Append("                        <a href=\"");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div class=\"spfl_list\">\r\n");
	XYBody.Append("                    <div class=\"spfl_list_left2\">\r\n");
	XYBody.Append("                        <a href=\"");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                    <div class=\"detail d_hide\">\r\n");
	XYBody.Append("                        <div class=\"d_list\">\r\n");
	XYBody.Append("                            <div class=\"d_title\">\r\n");
	XYBody.Append("                                <a href=\"");
	XYBody.Append("                            </div>\r\n");
	XYBody.Append("                            <div class=\"d_box\">\r\n");
	XYBody.Append("                                <ul>\r\n");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                </ul>\r\n");
	XYBody.Append("                            </div>\r\n");
	XYBody.Append("                        </div>\r\n");
	XYBody.Append("                        <div class=\"d_line\">\r\n");
	XYBody.Append("                        </div>\r\n");
	XYBody.Append("                        <div class=\"d_list\">\r\n");
	XYBody.Append("                            <div class=\"d_title\">\r\n");
	XYBody.Append("                                <a href=\"");
	XYBody.Append("                            </div>\r\n");
	XYBody.Append("                            <div class=\"d_box\">\r\n");
	XYBody.Append("                                <ul>\r\n");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                </ul>\r\n");
	XYBody.Append("                            </div>\r\n");
	XYBody.Append("                        </div>\r\n");
	XYBody.Append("                        <div class=\"d_line\">\r\n");
	XYBody.Append("                        </div>\r\n");
	XYBody.Append("                        <div class=\"d_list\">\r\n");
	XYBody.Append("                            <div class=\"d_title\">\r\n");
	XYBody.Append("                                <a href=\"");
	XYBody.Append("                            </div>\r\n");
	XYBody.Append("                            <div class=\"d_box\">\r\n");
	XYBody.Append("                                <ul>\r\n");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                </ul>\r\n");
	XYBody.Append("                            </div>\r\n");
	XYBody.Append("                        </div>\r\n");
	XYBody.Append("                        <div class=\"d_line\">\r\n");
	XYBody.Append("                        </div>\r\n");
	XYBody.Append("                        <div class=\"d_list\">\r\n");
	XYBody.Append("                            <div class=\"d_title\">\r\n");
	XYBody.Append("                                <a href=\"");
	XYBody.Append("                            </div>\r\n");
	XYBody.Append("                            <div class=\"d_box\">\r\n");
	XYBody.Append("                                <ul>\r\n");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                </ul>\r\n");
	XYBody.Append("                            </div>\r\n");
	XYBody.Append("                        </div>\r\n");
	XYBody.Append("                        <div class=\"d_line\">\r\n");
	XYBody.Append("                        </div>\r\n");
	XYBody.Append("                        <div class=\"d_list\">\r\n");
	XYBody.Append("                            <div class=\"d_title\">\r\n");
	XYBody.Append("                                <a href=\"");
	XYBody.Append("                            </div>\r\n");
	XYBody.Append("                            <div class=\"d_box\">\r\n");
	XYBody.Append("                                <ul>\r\n");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                    <li><a href=\"");
	XYBody.Append("                                </ul>\r\n");
	XYBody.Append("                            </div>\r\n");
	XYBody.Append("                        </div>\r\n");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div class=\"spfl_xiao\">\r\n");
	XYBody.Append("                    <ul>\r\n");
	XYBody.Append("                        <li><a href=\"");
	XYBody.Append("                        <li><a href=\"");
	XYBody.Append("                        <li><a href=\"");
	XYBody.Append("                        <li><a href=\"");
	XYBody.Append("                        <li><a href=\"");
	XYBody.Append("                        <li><a href=\"");
	XYBody.Append("                    </ul>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div id=\"spfl_gengduo\">\r\n");
	XYBody.Append("                    <a href=\"");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");

	XYBody.Append("<div id=\"xzpp\">\r\n");
	XYBody.Append("    <!-- ѡ��Ʒ�� -->\r\n");
	XYBody.Append("    <div id=\"xzpp_top\">\r\n");
	XYBody.Append("        ѡ��Ʒ��\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div id=\"xzpp_all\">\r\n");
	XYBody.Append("        <a href=\"");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div id=\"xzpp_box\">\r\n");
	XYBody.Append("        <ul>\r\n");

	int brand__loop__id=0;
	foreach(DataRow brand in brandlist.Rows)
	{
		brand__loop__id++;

	XYBody.Append("            <li><a href='");
	XYBody.Append("                target=\"_self\">" + brand["BrandName"].ToString().Trim() + " </a></li>\r\n");

	if (brand__loop__id==10)
	{



	}	//end if


	}	//end loop

	XYBody.Append("        </ul>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");


	XYBody.Append("        <div id=\"zjll\">\r\n");
	XYBody.Append("            <!-- ����������Ʒ -->\r\n");
	XYBody.Append("            <div id=\"zjll_top\">\r\n");
	XYBody.Append("                ������������Ʒ\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div id=\"zjll_clear\">\r\n");
	XYBody.Append("                <a href=\"#\">���</a>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div id=\"zjll_box\">\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div id=\"main_right\">\r\n");
	XYBody.Append("        <div class=\"spzs\">\r\n");
	XYBody.Append("            <!-- �̳����� -->\r\n");
	XYBody.Append("            <div class=\"spzs_top\">\r\n");
	XYBody.Append("                �̳�����\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"spzs_more\">\r\n");
	XYBody.Append("                <a href=\"");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"spzs_box\">\r\n");
	XYBody.Append("                " +  XYECOMCreateHTML("XY_shangchengrexiao").ToString() + "\r\n");
	XYBody.Append("                <div class=\"clear\">\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div class=\"blank\">\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div class=\"spzs\">\r\n");
	XYBody.Append("            <!-- ������Ʒ -->\r\n");
	XYBody.Append("            <div class=\"spzs_top\">\r\n");
	XYBody.Append("                ������Ʒ\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"spzs_more\">\r\n");
	XYBody.Append("                <a href=\"");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"spzs_box\">\r\n");
	XYBody.Append("                " +  XYECOMCreateHTML("XY_shangchengrexiao").ToString() + "\r\n");
	XYBody.Append("                <div class=\"clear\">\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div class=\"blank\">\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div class=\"spzs\">\r\n");
	XYBody.Append("            <!-- �̳��Ƽ� -->\r\n");
	XYBody.Append("            <div class=\"spzs_top\">\r\n");
	XYBody.Append("                �̳��Ƽ�\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"spzs_more\">\r\n");
	XYBody.Append("                <a href=\"");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"spzs_box\">\r\n");
	XYBody.Append("                " +  XYECOMCreateHTML("XY_shangchengrexiao").ToString() + "\r\n");
	XYBody.Append("                <div class=\"clear\">\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div class=\"blank\">\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div class=\"spzs\">\r\n");
	XYBody.Append("            <!-- �̳��ؼ� -->\r\n");
	XYBody.Append("            <div class=\"spzs_top\">\r\n");
	XYBody.Append("                �̳��ؼ�\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"spzs_more\">\r\n");
	XYBody.Append("                <a href=\"");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"spzs_box\">\r\n");
	XYBody.Append("                " +  XYECOMCreateHTML("XY_shangchengrexiao").ToString() + "\r\n");
	XYBody.Append("                <div class=\"clear\">\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div class=\"clear\">\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<!--main end-->\r\n");

	XYBody.Append("<!--footer-->\r\n");
	XYBody.Append("<div class=\"indexHelp margin_top8\">\r\n");
	XYBody.Append("    <div class=\"helpList\">\r\n");
	XYBody.Append("        <ul>\r\n");
	XYBody.Append("            <li><a href=\"#\">��������</a></li>\r\n");
	XYBody.Append("            <li><a href=\"#\">��Ա�ƶ�</a></li>\r\n");
	XYBody.Append("            <li><a href=\"#\">��������</a></li>\r\n");
	XYBody.Append("            <li><a href=\"#\">��������</a></li>\r\n");
	XYBody.Append("        </ul>\r\n");
	XYBody.Append("        <ul>\r\n");
	XYBody.Append("            <li><a href=\"#\">��������</a></li>\r\n");
	XYBody.Append("            <li><a href=\"#\">��Ʒǩ��</a></li>\r\n");
	XYBody.Append("        </ul>\r\n");
	XYBody.Append("        <ul>\r\n");
	XYBody.Append("            <li><a href=\"#\">��������</a></li>\r\n");
	XYBody.Append("            <li><a href=\"#\">����֧��</a></li>\r\n");
	XYBody.Append("            <li><a href=\"#\">���е��</a></li>\r\n");
	XYBody.Append("            <li><a href=\"#\">��Ʊ�ƶ�</a></li>\r\n");
	XYBody.Append("        </ul>\r\n");
	XYBody.Append("        <ul>\r\n");
	XYBody.Append("            <li><a href=\"#\">�˻�������</a></li>\r\n");
	XYBody.Append("            <li><a href=\"#\">�˻�����</a></li>\r\n");
	XYBody.Append("            <li><a href=\"#\">��������</a></li>\r\n");
	XYBody.Append("            <li><a href=\"#\">��ϵ����</a></li>\r\n");
	XYBody.Append("        </ul>\r\n");
	XYBody.Append("        <ul>\r\n");
	XYBody.Append("            <li><a href=\"#\">��������</a></li>\r\n");
	XYBody.Append("            <li><a href=\"#\">�Ż�ȯ</a></li>\r\n");
	XYBody.Append("            <li><a href=\"#\">�һ�����</a></li>\r\n");
	XYBody.Append("        </ul>\r\n");
	XYBody.Append("        <div class=\"clear\">\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div class=\"indexEnsure\">\r\n");
	XYBody.Append("        <img src=\"");
	XYBody.Append("            height=\"45\">\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<div class=\"footer\">\r\n");
	XYBody.Append("    <a href=\"#\">��ҳ</a> | <a href=\"#\">��������</a> | <a href=\"#\">�����Ź�</a> | <a href=\"#\">��������</a>\r\n");
	XYBody.Append("    | <a href=\"#\">��ȫ˵��</a> | <a href=\"#\">��˽����</a> | <a href=\"#\">��վ����</a> | <a href=\"#\">��������</a>\r\n");
	XYBody.Append("    <br />\r\n");
	XYBody.Append("    ��ϵ�绰��0531-83532658 ���棺0531-83532658 E-mail��sdyjsw@163.com ��ַ�������ж�����·3966�Ŷ������ʹ㳡B��1301<br />\r\n");
	XYBody.Append("    ��Ȩ���� ɽ���ڼ�����������޹�˾ All Rights Reserved ³ICP��00000000��\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<!--footer end-->\r\n");
	XYBody.Append("</body> </html>\r\n");



	XYBody.Append("");
	Response.Write(XYBody.ToString());
}
</script>