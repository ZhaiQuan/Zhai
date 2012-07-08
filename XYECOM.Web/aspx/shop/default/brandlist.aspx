<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.shop.brandlist,XYECOM.Page" %>
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
	XYBody.Append("</div>\r\n");
	XYBody.Append("<div>\r\n");
	XYBody.Append("    <a href=\"");
	XYBody.Append("</div>\r\n");


	XYBody.Append("</div>\r\n");
	XYBody.Append("<!--��ߵ���  end-->\r\n");
	XYBody.Append("<!--�ұ���Ҫ����-->\r\n");
	XYBody.Append("<div id=\"uright\">\r\n");
	XYBody.Append("<div style=\"display:none;\"><em id=\"clicknum1\" style =\"display :none\"></em> <em id=\"clicknum\" style =\"display :none\"></em><em id=\"linkmessage\" style =\"display :none\"></em><em id=\"msy\" style =\"display :none\"></em><em id=\"messnum\" style =\"display :none\"></em></div>\r\n");
	XYBody.Append("	<!--Ʒ��-->\r\n");
	XYBody.Append("	 <div class=\"rcon topimg pb15\">\r\n");
	XYBody.Append("	 <h2>Ʒ�ƽ���</h2>\r\n");
	XYBody.Append("	 <!-- ����Ϣ-->\r\n");
	XYBody.Append("		 <ul> \r\n");
	 data = GetBrand();
	

	int info__loop__id=0;
	foreach(DataRow info in data.Rows)
	{
		info__loop__id++;

	 str = GetInfoUrl("brandinfo",info["InfoId"].ToString(),"");
	
	 str1 = GetInfoImgHref("brand",info["InfoId"]);
	
	XYBody.Append("	 <li>\r\n");
	XYBody.Append("	 	<!--ͼƬ--> \r\n");
	XYBody.Append("       <a href=\"");
	XYBody.Append("      <img src=\"");
	XYBody.Append("      </a><br />	\r\n");
	XYBody.Append("	  <!--����-->	 \r\n");
	XYBody.Append("	  <a href=\"");

	XYBody.Append("	    </a>	\r\n");
	XYBody.Append("	</li>\r\n");

	}	//end loop

	XYBody.Append("	 </ul>\r\n");
	XYBody.Append("	 <!--��ҳ-->\r\n");
	XYBody.Append("     <div class=\"pg\">��ǰ�ǵ� <span class=\"colorf00s\">");
	XYBody.Append("	<!--��ҳ��-->\r\n");
	XYBody.Append("</div>		\r\n");
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