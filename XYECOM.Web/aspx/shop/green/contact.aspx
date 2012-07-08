<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.shop.contact,XYECOM.Page" %>
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
	XYBody.Append("<meta name=\"description\" content=\"");
	XYBody.Append("<meta name=\"keywords\" content=\"");

	if (seo.Robots==true)
	{

	XYBody.Append("<meta name=\"robots\" content=\"all\"  />\r\n");

	}	//end if

	XYBody.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\" />\r\n");
	XYBody.Append("<meta http-equiv=\"Content-Language\" content=\"zh-CN\" />\r\n");
	XYBody.Append("<meta name=\"author\" content=\"www.xyecs.com\" />\r\n");
	XYBody.Append("<meta name=\"Copyright\" content=\"copyright (c) www.xyecs.com.��Ȩ����.\" />\r\n");
	XYBody.Append("<link rel=\"stylesheet\" href=\"");
	XYBody.Append("<link rel=\"stylesheet\" href=\"");
	XYBody.Append("<link rel=\"stylesheet\" href=\"");
	XYBody.Append("<script type=\"text/javascript\" src=\"");
	XYBody.Append("<script type=\"text/javascript\" src=\"");
	XYBody.Append("<script type=\"text/javascript\" src=\"");
	XYBody.Append("<script type=\"text/javascript\" src=\"");
	XYBody.Append("<script type=\"text/javascript\" src=\"");
	XYBody.Append("<script type=\"text/javascript\" src=\"");
	XYBody.Append("</head>\r\n");


	XYBody.Append("<body onLoad=\"");
	XYBody.Append("<!--ͷ������ header-->\r\n");
	XYBody.Append("<div id=\"head\">\r\n");
	XYBody.Append("    <div id=\"TopInfo\"><span>\r\n");
	XYBody.Append("    ");
	XYBody.Append("    |<a href=\"http://www.yylm.org/contents/859/11418.html\">��ϵ����</a></span><a href=\"http://www.yylm.org\" target=\"_blank\" style=\"color:#00f;text-decoration: underline;;\">�й�Ӫ������</a>�����й�Ӫ��������ҵ�����һƷ��</div>\r\n");
	XYBody.Append("	<div id=\"htop\">\r\n");
	XYBody.Append("		<a href=\"");
	XYBody.Append("		<div id=\"hri\">\r\n");
	XYBody.Append("		   <ul id=\"nav\">\r\n");
	XYBody.Append("		    <li id=\"ssoffer\" class=\"on\"><a href=\"javascript:shoptopflag(1);\">����</a></li>\r\n");
	XYBody.Append("			<li id=\"ssmachining\" ><a href=\"javascript:shoptopflag(2);\">�ӹ�</a></li>\r\n");
	XYBody.Append("			<li id=\"ssinvestment\" ><a href=\"javascript:shoptopflag(3);\">����</a></li>\r\n");
	XYBody.Append("			<li id=\"ssservice\" ><a href=\"javascript:shoptopflag(4);\">����</a></li>\r\n");
	XYBody.Append("			<li id=\"ssexhibition\" ><a href=\"javascript:shoptopflag(5);\">չ��</a></li>\r\n");
	XYBody.Append("			<li id=\"ssbrand\" ><a href=\"javascript:shoptopflag(6);\">Ʒ��</a></li>\r\n");
	XYBody.Append("		   </ul>\r\n");
	XYBody.Append("		   <ul id=\"nav2\">\r\n");
	XYBody.Append("		    <li><input type=\"text\" class=\"button_text1\" size=\"43\" maxlength=\"50\" id=\"shopsearchkey\" /> <input type=\"button\" class=\"button_search1 button\" value=\"����\" onclick=\"shoptopsearch();\" /></li>\r\n");
	XYBody.Append("		   </ul>\r\n");
	XYBody.Append("		</div>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("    <div id=\"hcen\">");
	XYBody.Append("	<div id=\"hbot\">\r\n");
	XYBody.Append("		<em class=\"colorFF7B00\"><a href=\"javascript:Favorite();\">�����ղ�</a></em>\r\n");
	XYBody.Append("		<span>\r\n");

	if (shopuserinfo.gradeimgurl!="")
	{

	XYBody.Append("		    <img src=\"");

	}
	else
	{

	XYBody.Append("	        <img src=\"");

	}	//end if

	XYBody.Append("	    ");
	XYBody.Append("	    �� <span class=\"colorFF7B00s\">");
	XYBody.Append("        <input type =\"hidden\" id=\"_param_userinfo_parent_module\" value =\"company\" />\r\n");
	XYBody.Append("<input type =\"hidden\" id=\"_param_userinfo_infoid\" value =\"");
	XYBody.Append("<input type =\"hidden\" id=\"_param_userinfo_userid\" value =\"");
	XYBody.Append("    <input id=\"weburl\" name =\"weburl\" type =\"hidden\" value =\"");
	XYBody.Append("     <input id=\"suffix\" name =\"suffix\" type =\"hidden\" value =\"");
	XYBody.Append("     <input id=\"hidlinkmodule\" name=\"suffix\" type=\"hidden\" value=\"company\" />\r\n");
	XYBody.Append("     <input id=\"bogusstatic\" name=\"suffix\" type=\"hidden\" value=\"");
	XYBody.Append("     <input id=\"hidshopsearchflag\" type=\"hidden\" value=\"offer\" />\r\n");
	XYBody.Append("     <input id=\"_param_message_parent_module\" type=\"hidden\" value=\"company\" />\r\n");
	XYBody.Append("     <input id=\"_param_message_infoid\" type=\"hidden\" value=\"");
	XYBody.Append("     <input id=\"_param_message_userid\" type=\"hidden\" value=\"");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("</div>\r\n");


	XYBody.Append("<div id=\"ubox\">\r\n");
	XYBody.Append("<!--��ߵ���-->\r\n");
	XYBody.Append("<div id=\"uleftnav\">\r\n");

	 str = GetLinkPrefix();
	
	XYBody.Append("<div>\r\n");
	XYBody.Append("    <a href=\"");
	XYBody.Append("<div>\r\n");
	XYBody.Append("    <a href=\"");
	XYBody.Append("<div>\r\n");
	XYBody.Append("    <a href=\"");
	XYBody.Append("<div>\r\n");
	XYBody.Append("    <a href=\"");
	XYBody.Append("<div>\r\n");
	XYBody.Append("    <a href=\"");
	XYBody.Append("<div>\r\n");
	XYBody.Append("    <a href=\"");
	XYBody.Append("<div>\r\n");
	XYBody.Append("    <a href=\"");
	XYBody.Append("<div>\r\n");
	XYBody.Append("    <a href=\"");
	XYBody.Append("<div>\r\n");
	XYBody.Append("    <a href=\"");
	XYBody.Append("<div>\r\n");
	XYBody.Append("    <a href=\"");


	XYBody.Append("</div>\r\n");
	XYBody.Append("<!--��ߵ���  end-->\r\n");
	XYBody.Append("<!--�ұ���Ҫ����-->\r\n");
	XYBody.Append("<div id=\"uright\">\r\n");
	XYBody.Append("<div class=\"rcon\">\r\n");
	XYBody.Append("<h2>��ϵ��ʽ</h2>\r\n");
	XYBody.Append("<!--��ϵ��ʽ-->\r\n");
	XYBody.Append("<div  class=\"infoAbout\">\r\n");
	XYBody.Append(" <a name=\"link\"></a>\r\n");
	XYBody.Append(" <div id=\"linkmessage\"></div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<input type =\"hidden\" id=\"infotype\"  value =\"5\"/>\r\n");
	XYBody.Append("<!--- ����ģ����� ---->\r\n");
	XYBody.Append("<input type =\"hidden\" id=\"_param_message_module\" value=\"company\" />\r\n");
	XYBody.Append("<input type =\"hidden\" id=\"_param_message_title\" value=\"");
	XYBody.Append("<input type =\"hidden\" id=\"_param_message_parent_module\" value =\"");
	XYBody.Append("<input type =\"hidden\" id=\"_param_message_infoid\" value =\"");
	XYBody.Append("<input type =\"hidden\" id=\"_param_message_userid\" value =\"");

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


	XYBody.Append("</div>\r\n");
	XYBody.Append("</div>\r\n");

	XYBody.Append("<!--foot-->\r\n");
	XYBody.Append("<div id=\"foot\">\r\n");
	XYBody.Append("<input type =\"hidden\" id=\"type\" value =\"");
	XYBody.Append("<input type =\"hidden\" id=\"ids\" value =\"");
	XYBody.Append("<input type =\"hidden\" id=\"isshop\" value =\"");
	XYBody.Append("<input type =\"hidden\" id=\"uids\" value =\"");
	XYBody.Append("<input type =\"hidden\" id =\"linktype\"  value =\"");
	XYBody.Append("<input type =\"hidden\" id =\"isaudited\"  value =\"");
	XYBody.Append("<tr><td align=\"middle\">");
	XYBody.Append("                                    <tr><td align=\"middle\">��˾��ַ��");
	XYBody.Append("                                    <tr>\r\n");
	XYBody.Append("                                    <td align=\"middle\">\r\n");
	XYBody.Append("                                        <a href=\"");
	XYBody.Append("                            <a href=\"");
	XYBody.Append("                                        <a href=\"");
	XYBody.Append("      <br/>	\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<!--foot end-->	\r\n");
	XYBody.Append("</body>\r\n");
	XYBody.Append("</html>\r\n");



	XYBody.Append("");
	Response.Write(XYBody.ToString());
}
</script>