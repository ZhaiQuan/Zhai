<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.shop.certificateinfo,XYECOM.Page" %>
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


	XYBody.Append("<body>\r\n");
	XYBody.Append("<div class=\"k\">\r\n");
	XYBody.Append(" <ul class=\"top\"><li class=\"tl\"></li><li class=\"t\"></li><li class=\"tr\"></li></ul>\r\n");
	XYBody.Append(" <ul class=\"main\">\r\n");
	XYBody.Append("  <li class=\"l\"></li>\r\n");
	XYBody.Append("  <li class=\"c\">\r\n");
	XYBody.Append("   <img src=\"");
	XYBody.Append("  </li>\r\n");
	XYBody.Append("  <li class=\"r\"></li>\r\n");
	XYBody.Append(" </ul>\r\n");
	XYBody.Append(" <ul class=\"bot\"><li class=\"bl\"></li><li class=\"b\"></li><li class=\"br\"></li></ul>\r\n");
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