<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.shop.job,XYECOM.Page" %>
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
	XYBody.Append("    <!--վ�㵼��-->\r\n");
	XYBody.Append("	<div style=\"display:none;\"><em id=\"clicknum\" style=\"display :none \"></em><em id=\"msy\" style=\"display :none \"></em><em id=\"clicknum1\" style=\"display :none \"></em><em id=\"messnum\" style=\"display :none \"></em> </div>\r\n");
	XYBody.Append("	<!--��˾����ְλ-->\r\n");
	XYBody.Append("	<div class=\"rcon\">\r\n");
	XYBody.Append("	<h2>ְλ����</h2>\r\n");
	XYBody.Append("		<table class=\"table_infos\">\r\n");
	XYBody.Append("  <tr>\r\n");
	XYBody.Append("    <th class=\"line1\">ְλ���ƣ�</th>\r\n");
	XYBody.Append("    <td>");
	XYBody.Append("	<th class=\"line1\">��Ƹ������</th>\r\n");
	XYBody.Append("    <td>");
	XYBody.Append("  </tr>\r\n");
	XYBody.Append("   <tr>\r\n");
	XYBody.Append("    <th class=\"line1\">�������ʣ�</th>\r\n");
	XYBody.Append("    <td>");
	XYBody.Append("	<th class=\"line1\">�Ա�Ҫ��</th>\r\n");
	XYBody.Append("    <td>");
	XYBody.Append("  </tr>\r\n");
	XYBody.Append("  <tr>\r\n");
	XYBody.Append("    <th class=\"line1\">ѧ��Ҫ��</th>\r\n");
	XYBody.Append("    <td>");
	XYBody.Append("	<th class=\"line1\">����Ҫ��</th>\r\n");
	XYBody.Append("    <td>");
	XYBody.Append("  </tr>\r\n");
	XYBody.Append("   <tr>\r\n");
	XYBody.Append("    <th class=\"line1\">�������飺</th>\r\n");
	XYBody.Append("    <td>");
	XYBody.Append("	<th class=\"line1\">������</th>\r\n");
	XYBody.Append("    <td>");
	XYBody.Append("  </tr>\r\n");
	XYBody.Append("  <tr>\r\n");
	XYBody.Append("    <th class=\"line1\">�����ص㣺</th>\r\n");
	XYBody.Append("    <td>");
	XYBody.Append("	<th class=\"line1\">����ʱ�䣺</th>\r\n");
	XYBody.Append("    <td>");
	XYBody.Append("  </tr>\r\n");
	XYBody.Append("  <tr>\r\n");
	XYBody.Append("    <th class=\"line1\">ְλ˵����</th>\r\n");
	XYBody.Append("    <td class=\"w650\" colspan=\"3\">");
	XYBody.Append("  </tr>\r\n");
	XYBody.Append("  <tr>\r\n");
	XYBody.Append("    <th></th>\r\n");
	XYBody.Append("    <td class=\"w650\" colspan=\"3\"><a href=\"javascript:ApplyJob();\">�����ְλ</a></td>\r\n");
	XYBody.Append("  </tr>\r\n");
	XYBody.Append("</table>\r\n");
	XYBody.Append("     <h4>����ҵ����ְλ</h4>\r\n");
	XYBody.Append("	 <div class=\"jobqt\"> \r\n");
	 data = GetOtherJob();
	

	int job__loop__id=0;
	foreach(DataRow job in data.Rows)
	{
		job__loop__id++;

	 infourl = GetInfoUrl("job",job["EI_ID"],job["EI_HTMLPage"]);
	
	XYBody.Append("	 <span>\r\n");
	XYBody.Append("    <a href=\"");

	}	//end loop

	XYBody.Append("	 </div>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("		<!--��ϵ��ʽ-->\r\n");
	XYBody.Append("    <div class=\"rcon\">\r\n");
	XYBody.Append("    <h2>��ϵ��ʽ</h2>\r\n");
	XYBody.Append("    <!--��ϵ��ʽ-->\r\n");
	XYBody.Append("    <div  class=\"infoAbout\">\r\n");
	XYBody.Append("     <a name=\"link\"></a>\r\n");
	XYBody.Append("     <div id=\"linkmessage\"></div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("	 <!--�Ƽ�������-->\r\n");
	XYBody.Append("	<div class=\"rcon pb15\">\r\n");
	XYBody.Append("     <h2>�Ƽ�������</h2>\r\n");
	XYBody.Append("     <div class=\"commentList\">\r\n");
	XYBody.Append("      <ul>\r\n");
	XYBody.Append("        <li><label>����������<em>*</em></label><input type=\"text\" size=\"30\" id=\"txtFromName\"  maxlength =\"200\"/></li>\r\n");
	XYBody.Append("        <li><label>\r\n");
	XYBody.Append("        �������䣺<em>*</em></label><input type=\"text\" size=\"30\" id=\"txtFromEmail\"  maxlength =\"200\"/></li>\r\n");
	XYBody.Append("        <li><label>���������䣺<em>*</em></label><input type=\"text\" size=\"30\" id=\"txtToEmail\"  maxlength =\"200\"/><i> ���������\",\"����</i></li>\r\n");
	XYBody.Append("        <li><input name=\"\" type=\"button\" class=\"button\" value=\"ȷ ��\" onclick =\"CommendJob();\"/> \r\n");
	XYBody.Append("        <input type=\"button\" name=\"Submit\"  class=\"button\" value=\"�� ��\"   onclick =\"emptycommend();\" /></li>\r\n");
	XYBody.Append("  </ul>\r\n");
	XYBody.Append(" </div> \r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<input type=\"hidden\" id =\"JobId\" value=\"");
	XYBody.Append("<input type=\"hidden\" id=\"txtjobname\" value=\"");
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