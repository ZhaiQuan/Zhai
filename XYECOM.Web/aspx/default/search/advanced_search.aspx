<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.search.advanced_search,XYECOM.Page" %>
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
	XYBody.Append("	<title> �߼����� - ");
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
	XYBody.Append("	<script language =\"javascript\" type=\"text/javascript\"  src=\"");
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


	XYBody.Append("    <div id=\"s_body\">\r\n");
	XYBody.Append("    <ul class=\"s_comment\">\r\n");
	XYBody.Append("        <li class=\"choiceon\" id=\"tab1\"><a href=\"javascript:;\" onclick=\"selectSearchBox(1)\">��Ʒ����</a></li>\r\n");
	XYBody.Append("        <li class=\"choiceout\" id=\"tab2\"><a href=\"javascript:;\" onclick=\"selectSearchBox(2)\">�ӹ�����</a></li>\r\n");
	XYBody.Append("        <li class=\"choiceout\" id=\"tab3\"><a href=\"javascript:;\" onclick=\"selectSearchBox(3)\">���̴�������</a></li>\r\n");
	XYBody.Append("        <li class=\"choiceout\" id=\"tab4\"><a href=\"javascript:;\" onclick=\"selectSearchBox(4)\">��������</a></li>\r\n");
	XYBody.Append("        <li class=\"choiceout\" id=\"tab5\"><a href=\"javascript:;\" onclick=\"selectSearchBox(5)\">��ҵ����</a></li>\r\n");
	XYBody.Append("        <li class=\"choiceout\" id=\"tab6\"><a href=\"javascript:;\" onclick=\"selectSearchBox(6)\">��Ѷ����</a></li>\r\n");
	XYBody.Append("    </ul>\r\n");
	XYBody.Append("   <!--��������-->\r\n");
	XYBody.Append("   <div id=\"contentBox1\" style=\"display: block;\">\r\n");
	XYBody.Append("   <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"tabBody\">\r\n");
	XYBody.Append("    <tr>\r\n");
	XYBody.Append("        <th>��Ϣ���ͣ�</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"offerInfoType\" value=\"sell\" checked=\"checked\" />��Ӧ\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"offerInfoType\" value=\"buy\" />��\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("      </tr>\r\n");
	XYBody.Append("      <tr>\r\n");
	XYBody.Append("        <th>�ؼ��֣�</th>\r\n");
	XYBody.Append("        <td><input type=\"text\" id=\"offerkey\" name=\"offerkey\" value=\"\" size=\"40\" maxlength=\"40\" class=\"s_txt\"/></td>\r\n");
	XYBody.Append("      </tr>\r\n");
	XYBody.Append("      <tr>\r\n");
	XYBody.Append("        <th>��Ʒ���ͣ�</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <div id=\"supply\" style=\"display:block;\" ></div>\r\n");
	XYBody.Append("            <input id=\"offerTypeId\" runat=\"server\" type=\"hidden\" value=\"\" />\r\n");
	XYBody.Append("            <script type=\"text/javascript\">\r\n");
	XYBody.Append("            var cla = new ClassType(\"cla\",'offer','supply','offerTypeId');\r\n");
	XYBody.Append("            cla.Mode =\"select\";\r\n");
	XYBody.Append("            cla.Init();\r\n");
	XYBody.Append("            </" + "script>\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("       </tr>\r\n");
	XYBody.Append("       <tr>\r\n");
	XYBody.Append("        <th>������</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <div id=\"areaByOffer\"></div>\r\n");
	XYBody.Append("            <input type =\"hidden\" id=\"areaIdByOffer\"  name=\"areaIdByOffer\"/>\r\n");
	XYBody.Append("            <script type=\"text/javascript\">\r\n");
	XYBody.Append("            var cla1 = new ClassType(\"cla1\",'area','areaByOffer','areaIdByOffer',2);\r\n");
	XYBody.Append("            cla1.Mode =\"select\";\r\n");
	XYBody.Append("            cla1.Init();\r\n");
	XYBody.Append("            </" + "script>\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("       </tr>\r\n");
	XYBody.Append("       <tr>\r\n");
	XYBody.Append("        <th>ʱ�䣺</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByOffer\" value=\"0\" checked/>ȫ��\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByOffer\" value=\"1\" />����\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByOffer\" value=\"3\" />3����\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByOffer\" value=\"7\" />7����\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByOffer\" value=\"15\" />15��֮��\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByOffer\" value=\"30\" />30��֮��\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <th></th>\r\n");
	XYBody.Append("            <td><input  type=\"button\" value =\" ���� \" id=\"btnOfferSearch\" class=\"s_btn\" onclick=\"OfferSearch();\"/></td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("   </table>\r\n");
	XYBody.Append("    </div> \r\n");
	XYBody.Append("    <!--�ӹ�����-->\r\n");
	XYBody.Append("    <div id=\"contentBox2\" style=\"display: none;\">\r\n");
	XYBody.Append("    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"tabBody\">\r\n");
	XYBody.Append("    <tr>\r\n");
	XYBody.Append("        <th>��Ϣ���ͣ�</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"machiningInfoType\" value=\"sell\" checked=\"checked\" />�ӹ���Ϣ\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"machiningInfoType\" value=\"buy\" />Ѱ��ӹ�\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("      </tr>\r\n");
	XYBody.Append("      <tr>\r\n");
	XYBody.Append("        <th>�ؼ��֣�</th>\r\n");
	XYBody.Append("        <td><input type=\"text\" id=\"machiningkey\" name=\"machiningkey\" value=\"\" size=\"40\" maxlength=\"40\" class=\"s_txt\"/></td>\r\n");
	XYBody.Append("      </tr>\r\n");
	XYBody.Append("      <tr>\r\n");
	XYBody.Append("        <th>�ӹ����ͣ�</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <div id=\"divMachining\" style=\"display:block;\" ></div>\r\n");
	XYBody.Append("            <input id=\"machiningTypeId\" runat=\"server\" type=\"hidden\" value=\"\" />\r\n");
	XYBody.Append("            <script type=\"text/javascript\">\r\n");
	XYBody.Append("                var cla2 = new ClassType(\"cla2\", 'ventureType', 'divMachining', 'machiningTypeId');\r\n");
	XYBody.Append("            cla2.Mode =\"select\";\r\n");
	XYBody.Append("            cla2.Init();\r\n");
	XYBody.Append("            </" + "script>\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("       </tr>\r\n");
	XYBody.Append("       <tr>\r\n");
	XYBody.Append("        <th>������</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <div id=\"areaByMachining\"></div>\r\n");
	XYBody.Append("            <input type =\"hidden\" id=\"areaIdByMachining\"  name=\"areaIdByMachining\"/>\r\n");
	XYBody.Append("            <script type=\"text/javascript\">\r\n");
	XYBody.Append("            var cla3 = new ClassType(\"cla3\",'area','areaByMachining','areaIdByMachining',2);\r\n");
	XYBody.Append("            cla3.Mode =\"select\";\r\n");
	XYBody.Append("            cla3.Init();\r\n");
	XYBody.Append("            </" + "script>\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("       </tr>\r\n");
	XYBody.Append("       <tr>\r\n");
	XYBody.Append("        <th>ʱ�䣺</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByMachining\" value=\"0\" checked/>ȫ��\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByMachining\" value=\"1\" />����\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByMachining\" value=\"3\" />3����\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByMachining\" value=\"7\" />7����\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByMachining\" value=\"15\" />15��֮��\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByMachining\" value=\"30\" />30��֮��\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <th></th>\r\n");
	XYBody.Append("            <td><input  type=\"button\" value =\" ���� \" id=\"btnMachiningSearch\" class=\"s_btn\" onclick=\"MachiningSearch();\"/></td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("   </table>\r\n");
	XYBody.Append("    </div> \r\n");
	XYBody.Append("    <!--��������-->\r\n");
	XYBody.Append("    <div id=\"contentBox3\" style=\"display: none;\">\r\n");
	XYBody.Append("    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"tabBody\">\r\n");
	XYBody.Append("    <tr>\r\n");
	XYBody.Append("        <th>��Ϣ���ͣ�</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"investmentInfoType\" value=\"sell\" checked=\"checked\" />���д���\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"investmentInfoType\" value=\"buy\" />������ҵ\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("      </tr>\r\n");
	XYBody.Append("      <tr>\r\n");
	XYBody.Append("        <th>�ؼ��֣�</th>\r\n");
	XYBody.Append("        <td><input type=\"text\" id=\"investmentkey\" name=\"investmentkey\" value=\"\" size=\"40\" maxlength=\"40\" class=\"s_txt\"/></td>\r\n");
	XYBody.Append("      </tr>\r\n");
	XYBody.Append("      <tr>\r\n");
	XYBody.Append("        <th>�������ͣ�</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <div id=\"divInvestment\" style=\"display:block;\" ></div>\r\n");
	XYBody.Append("            <input id=\"investmentTypeId\" runat=\"server\" type=\"hidden\" value=\"\" />\r\n");
	XYBody.Append("            <script type=\"text/javascript\">\r\n");
	XYBody.Append("            var cla4 = new ClassType(\"cla4\",'investment','divInvestment','investmentTypeId');\r\n");
	XYBody.Append("            cla4.Mode =\"select\";\r\n");
	XYBody.Append("            cla4.Init();\r\n");
	XYBody.Append("            </" + "script>\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("       </tr>\r\n");
	XYBody.Append("       <tr>\r\n");
	XYBody.Append("        <th>������</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <div id=\"areaByInvestment\"></div>\r\n");
	XYBody.Append("            <input type =\"hidden\" id=\"areaIdByInvestment\"  name=\"areaIdByInvestment\"/>\r\n");
	XYBody.Append("            <script type=\"text/javascript\">\r\n");
	XYBody.Append("            var cla5 = new ClassType(\"cla5\",'area','areaByInvestment','areaIdByInvestment',2);\r\n");
	XYBody.Append("            cla5.Mode =\"select\";\r\n");
	XYBody.Append("            cla5.Init();\r\n");
	XYBody.Append("            </" + "script>\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("       </tr>\r\n");
	XYBody.Append("       <tr>\r\n");
	XYBody.Append("        <th>ʱ�䣺</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByInvestment\" value=\"0\" checked/>ȫ��\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByInvestment\" value=\"1\" />����\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByInvestment\" value=\"3\" />3����\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByInvestment\" value=\"7\" />7����\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByInvestment\" value=\"15\" />15��֮��\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByInvestment\" value=\"30\" />30��֮��\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <th></th>\r\n");
	XYBody.Append("            <td><input  type=\"button\" value =\" ���� \" id=\"btnInvestmentSearch\" class=\"s_btn\" onclick=\"InvestmentSearch();\"/></td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("   </table>\r\n");
	XYBody.Append("    </div> \r\n");
	XYBody.Append("    <!--��������-->\r\n");
	XYBody.Append("    <div id=\"contentBox4\" style=\"display: none;\">\r\n");
	XYBody.Append("    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"tabBody\">\r\n");
	XYBody.Append("    <tr>\r\n");
	XYBody.Append("        <th>��Ϣ���ͣ�</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"serviceInfoType\" value=\"sell\" checked=\"checked\" />������Ϣ\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"serviceInfoType\" value=\"buy\" />Ѱ�����\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("      </tr>\r\n");
	XYBody.Append("      <tr>\r\n");
	XYBody.Append("        <th>�ؼ��֣�</th>\r\n");
	XYBody.Append("        <td><input type=\"text\" id=\"servicekey\" name=\"servicekey\" value=\"\" size=\"40\" maxlength=\"40\" class=\"s_txt\"/></td>\r\n");
	XYBody.Append("      </tr>\r\n");
	XYBody.Append("      <tr>\r\n");
	XYBody.Append("        <th>�������ͣ�</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <div id=\"divService\" style=\"display:block;\" ></div>\r\n");
	XYBody.Append("            <input id=\"serviceTypeId\" runat=\"server\" type=\"hidden\" value=\"\" />\r\n");
	XYBody.Append("            <script type=\"text/javascript\">\r\n");
	XYBody.Append("            var cla6 = new ClassType(\"cla6\",'service','divService','serviceTypeId');\r\n");
	XYBody.Append("            cla6.Mode =\"select\";\r\n");
	XYBody.Append("            cla6.Init();\r\n");
	XYBody.Append("            </" + "script>\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("       </tr>\r\n");
	XYBody.Append("       <tr>\r\n");
	XYBody.Append("        <th>������</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <div id=\"areaByService\"></div>\r\n");
	XYBody.Append("            <input type =\"hidden\" id=\"areaIdByService\"  name=\"areaIdByService\"/>\r\n");
	XYBody.Append("            <script type=\"text/javascript\">\r\n");
	XYBody.Append("            var cla7 = new ClassType(\"cla7\",'area','areaByService','areaIdByService',2);\r\n");
	XYBody.Append("            cla7.Mode =\"select\";\r\n");
	XYBody.Append("            cla7.Init();\r\n");
	XYBody.Append("            </" + "script>\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("       </tr>\r\n");
	XYBody.Append("       <tr>\r\n");
	XYBody.Append("        <th>ʱ�䣺</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByService\" value=\"0\" checked/>ȫ��\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByService\" value=\"1\" />����\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByService\" value=\"3\" />3����\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByService\" value=\"7\" />7����\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByService\" value=\"15\" />15��֮��\r\n");
	XYBody.Append("            <input type=\"radio\" name=\"dateByService\" value=\"30\" />30��֮��\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <th></th>\r\n");
	XYBody.Append("            <td><input  type=\"button\" value =\" ���� \" id=\"btnServiceSearch\" class=\"s_btn\" onclick=\"ServiceSearch();\"/></td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("   </table>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <!--��ҵ����-->\r\n");
	XYBody.Append("    <div id=\"contentBox5\" style=\"display: none;\">\r\n");
	XYBody.Append("    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"tabBody\">\r\n");
	XYBody.Append("      <tr>\r\n");
	XYBody.Append("        <th>�ؼ��֣�</th>\r\n");
	XYBody.Append("        <td><input type=\"text\" id=\"userkey\" name=\"userkey\" value=\"\" size=\"40\" maxlength=\"40\" class=\"s_txt\"/></td>\r\n");
	XYBody.Append("      </tr>\r\n");
	XYBody.Append("      <tr>\r\n");
	XYBody.Append("        <th>��ҵ���ࣺ</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <div id=\"classTypecompany\"></div>\r\n");
	XYBody.Append("            <input type =\"hidden\" id=\"userTypeId\"  name=\"userTypeId\"/>\r\n");
	XYBody.Append("            <script type=\"text/javascript\">\r\n");
	XYBody.Append("            var clacompany = new ClassType(\"clacompany\",'company','classTypecompany','userTypeId');\r\n");
	XYBody.Append("            clacompany.Mode =\"select\";\r\n");
	XYBody.Append("            clacompany.Init();\r\n");
	XYBody.Append("            </" + "script>           \r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("       </tr>\r\n");
	XYBody.Append("       <tr>\r\n");
	XYBody.Append("        <th>������</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <div id=\"areaByUser\"></div>\r\n");
	XYBody.Append("            <input type =\"hidden\" id=\"areaIdByUser\"  name=\"areaIdByUser\"/>\r\n");
	XYBody.Append("            <script type=\"text/javascript\">\r\n");
	XYBody.Append("            var cla8 = new ClassType(\"cla8\",'area','areaByUser','areaIdByUser',2);\r\n");
	XYBody.Append("            cla8.Mode =\"select\";\r\n");
	XYBody.Append("            cla8.Init();\r\n");
	XYBody.Append("            </" + "script>\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("       </tr>\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <th></th>\r\n");
	XYBody.Append("            <td><input  type=\"button\" value =\" ���� \" id=\"btnUserSearch\" class=\"s_btn\" onclick=\"UserSearch();\"/></td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("   </table>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <!--��Ѷ����-->\r\n");
	XYBody.Append("    <div id=\"contentBox6\" style=\"display: none;\">\r\n");
	XYBody.Append("    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"tabBody\">\r\n");
	XYBody.Append("      <tr>\r\n");
	XYBody.Append("        <th>�ؼ��֣�</th>\r\n");
	XYBody.Append("        <td><input type=\"text\" id=\"newskey\" name=\"newskey\" value=\"\" size=\"40\" maxlength=\"40\" class=\"s_txt\"/></td>\r\n");
	XYBody.Append("      </tr>\r\n");
	XYBody.Append("      <tr>\r\n");
	XYBody.Append("        <th>��Ѷ��Ŀ��</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <div id=\"divNews\"></div>\r\n");
	XYBody.Append("            <input type=\"hidden\" id=\"newstitleid\" />\r\n");
	XYBody.Append("            <script type=\"text/javascript\">\r\n");
	XYBody.Append("            var cla9 = new ClassType(\"cla9\",'news','divNews','newstitleid');\r\n");
	XYBody.Append("            cla9.Mode =\"select\";\r\n");
	XYBody.Append("            cla9.Init();\r\n");
	XYBody.Append("            </" + "script>\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("       </tr>\r\n");
	XYBody.Append("       <tr>\r\n");
	XYBody.Append("        <th>����ʱ�䣺</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            ��\r\n");
	XYBody.Append("            <input onclick=\"getDateString(this);\" id=\"newsStartDate\"  readonly=\"readonly\" name =\"newsStartDate\" class=\"s_txt s_date\" size=\"10\"/>\r\n");
	XYBody.Append("            ��\r\n");
	XYBody.Append("            <input onclick=\"getDateString(this);\" id=\"newsEndDate\"  readonly=\"readonly\" name =\"newsEndDate\" class=\"s_txt s_date\" size=\"10\"/>\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <th>��Ѷ���ͣ�</th>\r\n");
	XYBody.Append("            <td>\r\n");
	XYBody.Append("                <input type=\"radio\" name=\"newsType\" value=\"\" checked=\"checked\"/>ȫ��\r\n");
	XYBody.Append("                <input type=\"radio\" name=\"newsType\" value=\"1\" />��ͨ����\r\n");
	XYBody.Append("                <input type=\"radio\" name=\"newsType\" value=\"2\" />ͼƬ����\r\n");
	XYBody.Append("                <input type=\"radio\" name=\"newsType\" value=\"3\" />��������\r\n");
	XYBody.Append("            </td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <th>�Ƿ��Ƽ���</th>\r\n");
	XYBody.Append("            <td>\r\n");
	XYBody.Append("                 <input type=\"radio\" name=\"isCommend\" value=\"\" checked=\"checked\"/>ȫ��\r\n");
	XYBody.Append("                <input type=\"radio\" name=\"isCommend\" value=\"1\" />�Ƽ�\r\n");
	XYBody.Append("                <input type=\"radio\" name=\"isCommend\" value=\"0\" />���Ƽ�      \r\n");
	XYBody.Append("            </td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("        <tr>\r\n");
	XYBody.Append("            <th></th>\r\n");
	XYBody.Append("            <td><input  type=\"button\" value =\" ���� \" id=\"btnNewsSearch\" class=\"s_btn\" onclick=\"AdvNewsSearch();\"/></td>\r\n");
	XYBody.Append("        </tr>\r\n");
	XYBody.Append("   </table>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append(" </div> \r\n");
	XYBody.Append("    <br />\r\n");

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