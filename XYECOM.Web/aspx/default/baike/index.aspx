<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.baike.index,XYECOM.Page" %>
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
	XYBody.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\" id=\"html\">\r\n");
	XYBody.Append("<head>\r\n");


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

	XYBody.Append("<title>");
	XYBody.Append("<meta name=\"description\" content=\"");
	XYBody.Append("<meta name=\"keywords\" content=\"");
	XYBody.Append("<meta name=\"robots\" content=\"all\" />\r\n");
	XYBody.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\" />\r\n");
	XYBody.Append("<link rel=\"stylesheet\" href=\"");
	XYBody.Append("    media=\"screen\" />\r\n");
	XYBody.Append("<link href=\"");
	XYBody.Append("    type=\"text/css\" />\r\n");
	XYBody.Append("<link href=\"");
	XYBody.Append("    type=\"text/css\" />\r\n");
	XYBody.Append("<script type=\"text/javascript\" src=\"");
	XYBody.Append("<script type=\"text/javascript\" src=\"");
	XYBody.Append("    language=\"javascript\"></" + "script>\r\n");
	XYBody.Append("<script type=\"text/javascript\" src=\"");
	XYBody.Append("    language=\"javascript\"></" + "script>\r\n");
	XYBody.Append("<script language=\"javascript\" type=\"text/javascript\" src=\"");


	XYBody.Append("</head>\r\n");
	XYBody.Append("<body onload=\"");
	XYBody.Append("<div id=\"wrap\">\r\n");
	XYBody.Append("<!--ad start -->\r\n");

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



	XYBody.Append("<div class=\"bk_search\">\r\n");
	XYBody.Append("    <div class=\"bk_sleft\">\r\n");
	XYBody.Append("        <!--<form class=\"bk_form\" action=\"");
	XYBody.Append("<font color=\"#0268cd\" size=\"2\"><b>�ٿ����� </b></font> <input type=\"text\" name=\"keyword\" class=\"bk_input\">\r\n");
	XYBody.Append("<input type=\"submit\" value=\"����\" class=\"form3-input2\">\r\n");
	XYBody.Append("</form>-->\r\n");
	XYBody.Append("        <form class=\"form_search\">\r\n");
	XYBody.Append("        <span class=\"bk_bt\">�ٿ�����</span>\r\n");
	XYBody.Append("        <input type=\"hidden\" id=\"\" name=\"typeid\" />\r\n");
	XYBody.Append("        �ٿ����<span id=\"classcatogry\"></span>\r\n");
	XYBody.Append("        <script type=\"text/javascript\">\r\n");
	XYBody.Append("			    var cla = new ClassType(\"cla\", 'baike', 'classcatogry', 'typeid',1);\r\n");
	XYBody.Append("                cla.Mode = \"select\";\r\n");
	XYBody.Append("                cla.Init();\r\n");
	XYBody.Append("        </" + "script>\r\n");
	XYBody.Append("        <input type=\"text\" class=\"inp\" id=\"txtkeyword\" />\r\n");
	XYBody.Append("        <input type=\"button\" class=\"submit2\" value=\"����\" onclick=\"BaikeListSearch()\" />\r\n");
	XYBody.Append("        </form>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div class=\"bk_sright\">\r\n");
	XYBody.Append("        <a href=\"");
	XYBody.Append("            �û�ע��</a>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");


	XYBody.Append("<div id=\"left\">\r\n");
	XYBody.Append("<div id=\"bkfl\" class=\"columns\">\r\n");
	XYBody.Append("	<h2 class=\"col-h2\">�ٿƷ���</h2>\r\n");
	XYBody.Append("	<div class=\"bor-white-t\"></div>\r\n");
	XYBody.Append("	" +  XYECOMCreateHTML("XY_CLS_bk_class").ToString() + "\r\n");
	XYBody.Append("    	<dl>\r\n");
	XYBody.Append("	  <dt><a href=\"#\" >��������</a></dt>\r\n");
	XYBody.Append("        		<dd class=\"link_gray\">\r\n");
	XYBody.Append("      		 	 <a href=\"#\" >��Ӱ��Ƶ</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >��Ϸ</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >С˵</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >�Ż���̳</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >��������</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >ͼƬ</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         		 </dd>\r\n");
	XYBody.Append("         	</dl>\r\n");
	XYBody.Append("    	<dl>\r\n");
	XYBody.Append("	  <dt><a href=\"#\" >�ط���վ</a></dt>\r\n");
	XYBody.Append("        		<dd class=\"link_gray\">\r\n");
	XYBody.Append("      		 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >�㽭</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >�㶫</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >�Ϻ�</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >ɽ��</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >ɽ��</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >���</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >�ӱ�</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >�Ĵ�</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >�½�</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >�ຣ</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >̨��</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >���</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >������</a>\r\n");
	XYBody.Append("         		 </dd>\r\n");
	XYBody.Append("         	</dl>\r\n");
	XYBody.Append("    	<dl>\r\n");
	XYBody.Append("	  <dt><a href=\"#\" >��������</a></dt>\r\n");
	XYBody.Append("        		<dd class=\"link_gray\">\r\n");
	XYBody.Append("      		 	 <a href=\"#\" >���˲���</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >�ʼ�����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >��������</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >�����ռ�</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >��Դ����</a>\r\n");
	XYBody.Append("         	 	 <a href=\"#\" >��������</a>\r\n");
	XYBody.Append("         		 </dd>\r\n");
	XYBody.Append("         	</dl>\r\n");
	XYBody.Append("    	<dl>\r\n");
	XYBody.Append("	  <dt><a href=\"#\" >��������</a></dt>\r\n");
	XYBody.Append("        	</dl>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("<div id=\"zxpl\" class=\"columns\">\r\n");
	XYBody.Append("   <h2 class=\"col-h2\">�������</h2>\r\n");
	XYBody.Append("   <ul class=\"col-ul a-c mar-t8\">\r\n");
	XYBody.Append("      </ul>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<div id=\"mid\">\r\n");
	XYBody.Append("<div id=\"tjct\"  class=\"columns\">\r\n");
	XYBody.Append("	<h2 class=\"col-h2 link_black\"><span class=\"l\">�Ƽ�����</span><a href=\"#\"  class=\"r font12\">����&gt;&gt;</a></h2>\r\n");
	XYBody.Append("		" +  XYECOMCreateHTML("XY_Wikipediaindex").ToString() + "\r\n");
	XYBody.Append("	<div id=\"other-word\">\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("<!--ad start -->\r\n");
	XYBody.Append("<!--ad end -->\r\n");
	XYBody.Append("<div id=\"zjgx\" class=\"columns\">\r\n");
	XYBody.Append("	<h2 class=\"col-h2 link_black\"><span class=\"l til-fl\">�������</span><a href=\"#\"  class=\"r font12\">����&gt;&gt;</a></h2>\r\n");
	XYBody.Append("   <ul class=\"col-ul a-c\">\r\n");
	XYBody.Append("         		<li><a href=\"#\"  class=\"l til-fl\">[��Ӱ��Ƶ] </a><a href=\"#\"  class=\"ctm\" title=\"\">������</a><a href=\"#\"  class=\"name\">admin</a><span class=\"r\">������ 04-22 22:25 </span></li>\r\n");
	XYBody.Append("         		<li><a href=\"#\"  class=\"l til-fl\">[��������] </a><a href=\"#\"  class=\"ctm\" title=\"\">������</a><a href=\"#\"  class=\"name\">admin</a><span class=\"r\">������ 03-25 09:14 </span></li>\r\n");
	XYBody.Append("         		<li><a href=\"#\"  class=\"l til-fl\">[��������] </a><a href=\"#\"  class=\"ctm\" title=\"\">35����</a><a href=\"#\"  class=\"name\">admin</a><span class=\"r\">������ 03-17 20:22 </span></li>\r\n");
	XYBody.Append("         		<li><a href=\"#\"  class=\"l til-fl\">[����] </a><a href=\"#\"  class=\"ctm\" title=\"\">��̶�˲���</a><a href=\"#\"  class=\"name\">czj88888</a><span class=\"r\">������ 02-24 20:36 </span></li>\r\n");
	XYBody.Append("         		<li><a href=\"#\"  class=\"l til-fl\">[����] </a><a href=\"#\"  class=\"ctm\" title=\"\">�����˲���</a><a href=\"#\"  class=\"name\">czj88888</a><span class=\"r\">������ 02-24 12:18 </span></li>\r\n");
	XYBody.Append("         		<li><a href=\"#\"  class=\"l til-fl\">[����] </a><a href=\"#\"  class=\"ctm\" title=\"\">�����˲���</a><a href=\"#\"  class=\"name\">czj88888</a><span class=\"r\">������ 02-24 12:15 </span></li>\r\n");
	XYBody.Append("         		<li><a href=\"#\"  class=\"l til-fl\">[��ѧ����] </a><a href=\"#\"  class=\"ctm\" title=\"\">�⺽Ͷ������</a><a href=\"#\"  class=\"name\">aa282668989</a><span class=\"r\">������ 02-23 13:30 </span></li>\r\n");
	XYBody.Append("         		<li><a href=\"#\"  class=\"l til-fl\">[���˲���] </a><a href=\"#\"  class=\"ctm\" title=\"\">�ֹ���</a><a href=\"#\"  class=\"name\">΢��</a><span class=\"r\">�༭�� 02-03 22:00 </span></li>\r\n");
	XYBody.Append("         		<li><a href=\"#\"  class=\"l til-fl\">[С˵] </a><a href=\"#\"  class=\"ctm\" title=\"\">����С˵��</a><a href=\"#\"  class=\"name\">С˵������</a><span class=\"r\">������ 01-30 16:50 </span></li>\r\n");
	XYBody.Append("         		<li><a href=\"#\"  class=\"l til-fl\">[��������] </a><a href=\"#\"  class=\"ctm\" title=\"\">265������ַ֮��</a><a href=\"#\"  class=\"name\">admin</a><span class=\"r\">�༭�� 01-30 16:16 </span></li>\r\n");
	XYBody.Append("         		<li><a href=\"#\"  class=\"l til-fl\">[С˵] </a><a href=\"#\"  class=\"ctm\" title=\"\">���������</a><a href=\"#\"  class=\"name\">С˵������</a><span class=\"r\">������ 01-29 22:49 </span></li>\r\n");
	XYBody.Append("         		<li><a href=\"#\"  class=\"l til-fl\">[��������] </a><a href=\"#\"  class=\"ctm\" title=\"\">�н���</a><a href=\"#\"  class=\"name\">�н���</a><span class=\"r\">������ 01-29 15:07 </span></li>\r\n");
	XYBody.Append("         		<li><a href=\"#\"  class=\"l til-fl\">[��������] </a><a href=\"#\"  class=\"ctm\" title=\"\">�����㹤����</a><a href=\"#\"  class=\"name\">����</a><span class=\"r\">�༭�� 01-29 11:03 </span></li>\r\n");
	XYBody.Append("         		<li><a href=\"#\"  class=\"l til-fl\">[���Ϲ���] </a><a href=\"#\"  class=\"ctm\" title=\"\">������</a><a href=\"#\"  class=\"name\">����</a><span class=\"r\">������ 01-25 14:54 </span></li>\r\n");
	XYBody.Append("         		<li><a href=\"#\"  class=\"l til-fl\">[��������] </a><a href=\"#\"  class=\"ctm\" title=\"\">Technorati</a><a href=\"#\"  class=\"name\">����</a><span class=\"r\">������ 01-25 14:27 </span></li>		\r\n");
	XYBody.Append("      </ul>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<div id=\"right\" class=\"default-r\">\r\n");
	XYBody.Append("<div id=\"notice\" class=\"columns\">\r\n");
	XYBody.Append("	<h2 class=\"col-h2 link_black\"><span class=\"l\">վ�ڹ���</span></h2>\r\n");
	XYBody.Append("	<p class=\"mar-lr8 mar-t8\">��վ����<span style=\"color:#FF0000\">1</span>λ����ͬ׫д�İٿ�ȫ�飬Ŀǰ����¼����<span style=\"color:#FF0000\"> 0</span>��</p>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<div id=\"yzwkb\" class=\"columns\">\r\n");
	XYBody.Append("	<h2 class=\"col-h2 link_black\"><span class=\"l\">���а�</span></h2>\r\n");
	XYBody.Append("	<ul id=\"topuser\" class=\"col-ul a-c \">\r\n");
	XYBody.Append("				<li><span class=\"ranking\">1</span><a href=\"#\" class=\"l\" target=\"_blank\">admin</a> <span class=\"r1\">91</span></li>\r\n");
	XYBody.Append("				<li><span class=\"ranking\">2</span><a href=\"#\" class=\"l\" target=\"_blank\">����</a> <span class=\"r1\">50</span></li>\r\n");
	XYBody.Append("				<li><span class=\"ranking\">3</span><a href=\"#\" class=\"l\" target=\"_blank\">czj88888</a> <span class=\"r1\">36</span></li>\r\n");
	XYBody.Append("				<li><span class=\"ranking\">4</span><a href=\"#\" class=\"l\" target=\"_blank\">С˵������</a> <span class=\"r1\">30</span></li>\r\n");
	XYBody.Append("				<li><span class=\"ranking\">5</span><a href=\"#\" class=\"l\" target=\"_blank\">aa282668989</a> <span class=\"r1\">25</span></li>\r\n");
	XYBody.Append("				<li><span class=\"ranking\">6</span><a href=\"#\" class=\"l\" target=\"_blank\">΢��</a> <span class=\"r1\">25</span></li>\r\n");
	XYBody.Append("				<li><span class=\"ranking\">7</span><a href=\"#\" class=\"l\" target=\"_blank\">�н���</a> <span class=\"r1\">25</span></li>\r\n");
	XYBody.Append("				<li><span class=\"ranking\">8</span><a href=\"#\" class=\"l\" target=\"_blank\">danglijie</a> <span class=\"r1\">20</span></li>\r\n");
	XYBody.Append("				<li><span class=\"ranking\">9</span><a href=\"#\" class=\"l\" target=\"_blank\">bcgzll</a> <span class=\"r1\">20</span></li>\r\n");
	XYBody.Append("				<li><span class=\"ranking\">10</span><a href=\"#\" class=\"l\" target=\"_blank\">fm234</a> <span class=\"r1\">20</span></li>\r\n");
	XYBody.Append("				<li><a href=\"#\" class=\"r bg_no\">����&gt;&gt;</a></li>\r\n");
	XYBody.Append("	</ul>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<div id=\"rmbq\" class=\"columns\">\r\n");
	XYBody.Append("	<h2 class=\"col-h2 link_black\"><span class=\"l\">���ű�ǩ</span></h2>\r\n");
	XYBody.Append("	<ul class=\"col-ul a-c\">\r\n");
	XYBody.Append("    	</ul>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<div class=\"clear\"></div>\r\n");

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