<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.shop.list,XYECOM.Page" %>
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


	XYBody.Append("<script type=\"text/javascript\" src=\"/Common/js/forebase.js\"></" + "script>\r\n");
	XYBody.Append("<link rel=\"stylesheet\" href=\"/common/css/XYLib.css\" type=\"text/css\" media=\"screen\" />\r\n");
	XYBody.Append("<script type=\"text/javascript\" src=\"/common/js/jquery-1.4.2.js\"></" + "script>\r\n");
	XYBody.Append("<script type=\"text/javascript\">\r\n");
	XYBody.Append("    $(document).ready(function () {\r\n");
	XYBody.Append("        var size = '");
	XYBody.Append("        if (size == '0') {\r\n");
	XYBody.Append("            size = 20;\r\n");
	XYBody.Append("        }\r\n");
	XYBody.Append("        $(\"#txtpagesize\").val(size);\r\n");
	XYBody.Append("        $(\"#txtText\").val('");
	XYBody.Append("    });\r\n");
	XYBody.Append("    function bntSearch(style) {\r\n");
	XYBody.Append("        var url = config.WebURL + \"shop/");
	XYBody.Append("        var keyword = $(\"#txtText\").val();\r\n");
	XYBody.Append("        var pagesize = $(\"#txtpagesize\").val();\r\n");
	XYBody.Append("        var pageindex = $(\"#cpage\").val();\r\n");
	XYBody.Append("        if (keyword != '') {\r\n");
	XYBody.Append("            url += \"-\" + keyword;\r\n");
	XYBody.Append("        } else {\r\n");
	XYBody.Append("            url += \"-\";\r\n");
	XYBody.Append("        }\r\n");
	XYBody.Append("        if (style != '') {\r\n");
	XYBody.Append("            url += \"-\" + style;\r\n");
	XYBody.Append("        } else {\r\n");
	XYBody.Append("            url += \"-");
	XYBody.Append("        }\r\n");
	XYBody.Append("        if (pagesize != '') {\r\n");
	XYBody.Append("            if (!IsNum(pagesize)) {\r\n");
	XYBody.Append("                return alertmsg(false, 'ÿҳ��ʾҳ�����������֣�');\r\n");
	XYBody.Append("            }\r\n");
	XYBody.Append("            url += \"-\" + pagesize;\r\n");
	XYBody.Append("        } else {\r\n");
	XYBody.Append("            url += \"-");
	XYBody.Append("        }\r\n");
	XYBody.Append("        if (pageindex != '') {\r\n");
	XYBody.Append("            url += \"-\" + pageindex;\r\n");
	XYBody.Append("        } else {\r\n");
	XYBody.Append("            url += \"-");
	XYBody.Append("        }\r\n");
	XYBody.Append("        window.location.href = url + \".\" + config.Suffix;\r\n");
	XYBody.Append("    }\r\n");
	XYBody.Append("</" + "script>\r\n");
	XYBody.Append("<div id=\"ubox\">\r\n");
	XYBody.Append("    <!--��ߵ���-->\r\n");
	XYBody.Append("    <div id=\"uleftnav\">\r\n");

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
	XYBody.Append("</div>\r\n");
	XYBody.Append("<div>\r\n");
	XYBody.Append("    <a href=\"");
	XYBody.Append("</div>\r\n");


	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <!--��ߵ���  end-->\r\n");
	XYBody.Append("    <!--�ұ���Ҫ����-->\r\n");
	XYBody.Append("    <div id=\"uright\">\r\n");
	XYBody.Append("        <!--վ�㵼��-->\r\n");
	XYBody.Append("        <div style=\"display: none;\">\r\n");
	XYBody.Append("            <em id=\"clicknum1\" style=\"display: none\"></em><em id=\"clicknum\" style=\"display: none\">\r\n");
	XYBody.Append("            </em><em id=\"linkmessage\" style=\"display: none\"></em><em id=\"msy\" style=\"display: none\">\r\n");
	XYBody.Append("            </em><em id=\"messnum\" style=\"display: none\"></em>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <!--��˾����-->\r\n");
	XYBody.Append("        <div class=\"rcon\">\r\n");
	XYBody.Append("            <h2>\r\n");
	XYBody.Append("                �Ź���Ϣ</h2>\r\n");
	XYBody.Append("            <div class=\"newslist\">\r\n");
	XYBody.Append("                <div class=\"tabcon cur\">\r\n");
	XYBody.Append("                    �������Ź��ؼ���\r\n");
	XYBody.Append("                    <input id=\"txtText\" type=\"text\" />\r\n");
	XYBody.Append("                    ÿҳ��ʾ����<input id=\"txtpagesize\" type=\"text\" />\r\n");
	XYBody.Append("                    <input id=\"btnSearch\" type=\"button\" value=\"����\" onclick=\"bntSearch('')\" />\r\n");
	XYBody.Append("                    <br />\r\n");
	XYBody.Append("                    <input id=\"Text1\" type=\"button\" onclick=\"bntSearch('1')\" value=\"��ʽ1\" />\r\n");
	XYBody.Append("                    <input id=\"Text2\" type=\"button\" onclick=\"bntSearch('2')\" value=\"��ʽ2\" />\r\n");
	XYBody.Append("                    <input id=\"Text3\" type=\"button\" onclick=\"bntSearch('3')\" value=\"��ʽ3\" />\r\n");
	XYBody.Append("                    <hr />\r\n");
	XYBody.Append("                    " +  XYECOMCreateHTML("XY_tbpagetest").ToString() + "\r\n");
	XYBody.Append("                    <hr />\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"pg\">\r\n");
	XYBody.Append("                <div id=\"splitPage\">\r\n");
	XYBody.Append("                    ");
	XYBody.Append("                    ֱ��ת��&nbsp;\r\n");
	XYBody.Append("                    <input name=\"pageformat\" type=\"hidden\" value=\".html /\">\r\n");
	XYBody.Append("                    <input name=\"page\" id=\"cpage\" size=\"3\" maxlength=\"3\" style=\"height: 13px;\" value=\"");
	XYBody.Append("                    <input type=\"submit\" value=\"ȷ��>>\" style=\"height: 20px;\" onclick=\"xy_GoToPage(cpage.value);\" />\r\n");
	XYBody.Append("                    <input type=\"hidden\" id=\"totalPage\" value=\"");
	XYBody.Append("                    <span style=\"font-size: 14px;\">�� <strong class=\"orange\">");
	XYBody.Append("                        ����¼&nbsp;&nbsp;&nbsp;��ǰΪ�� <strong class=\"orange\">");
	XYBody.Append("                        <strong class=\"orange\">");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");

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