<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.person.receiveoffermessagelist,XYECOM.Page" %>
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

	XYBody.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD html 4.01 Transitional//EN\" \"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd\">\r\n");
	XYBody.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	XYBody.Append("<head>\r\n");
	XYBody.Append("<TITLE>��������</TITLE>\r\n");
	XYBody.Append("<meta http-equiv=Content-Type content=\"text/html; charset=gb2312\">\r\n");
	XYBody.Append("<meta content=\"��������\" name=\"keywords\">\r\n");
	XYBody.Append("<meta content=\"\" name=\"description\">\r\n");
	XYBody.Append("<link href=\"/common/css/XYLib.css\" type=\"text/css\" rel=\"Stylesheet\" />\r\n");
	XYBody.Append("<link href=\"");
	XYBody.Append("<script language =\"javascript\" type=\"text/javascript\"  src=\"");
	XYBody.Append("<script language =\"javascript\" type=\"text/javascript\"  src=\"");
	XYBody.Append("<script language =\"javascript\" type=\"text/javascript\"  src=\"");
	XYBody.Append("<script language =\"javascript\" type=\"text/javascript\"  src=\"");
	XYBody.Append("<script language =\"javascript\" type=\"text/javascript\"  src=\"");
	XYBody.Append("</head>\r\n");
	XYBody.Append("<body onload=\"");
	XYBody.Append("<div class=div_body>\r\n");
	XYBody.Append("    <div class=New_top>\r\n");
	XYBody.Append("        <div class=more>\r\n");
	XYBody.Append("            <ul>\r\n");
	XYBody.Append("              <li><a class=\"zeroc\" href=\"");
	XYBody.Append("              <li><a class=\"zeroc\" href=\"");
	XYBody.Append("              <li><a class=\"zeroc\" href=\"");
	XYBody.Append("              <li><a class=\"zeroc\" href=\"");
	XYBody.Append("              <li><a class=\"zeroc\" href=\"");
	XYBody.Append("              <li><a class=\"zeroc\" href=\"");
	XYBody.Append("            </ul>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div class=\"r\">\r\n");
	XYBody.Append("            <a href=\"");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<div class=Head>\r\n");
	XYBody.Append("    <div class=\"Head_4\"> \r\n");
	XYBody.Append("        <div class=\"index\"><div class=\"act\"><a href=\"index.");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<div class=\"div_body\" style=\"WIDTH: 994px\">\r\n");
	XYBody.Append("    <div class=\"body_bg\">\r\n");
	XYBody.Append("        <div><img src=\"");
	XYBody.Append("        <div class=\"bodyW\">\r\n");


	XYBody.Append("<div class=\"location fia\"><a href=\"index.");

	XYBody.Append("<div class=\"Al\">\r\n");
	XYBody.Append("    <div class=\"Al_1\">\r\n");
	XYBody.Append("        ���˷����б�:</div>\r\n");
	XYBody.Append("    <div class=\"Al_2\">\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a class=\"\" id=\"a1\" style=\"padding-right: 10px;\" href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"");
	XYBody.Append("                ��Ա�˻����� </a></dt>\r\n");
	XYBody.Append("            <dd id=\"div_1\" style=\"display: block\">\r\n");
	XYBody.Append("                <a href=\"/person/individuallist.");
	XYBody.Append("                <a href=\"/person/individualinfo.");
	XYBody.Append("                <a href=\"/person/resume.");
	XYBody.Append("                <a href=\"/person/edituserpassword.");
	XYBody.Append("                <a href=\"/person/editpaypassword.aspx\">�޸�֧������</a><br />\r\n");
	XYBody.Append("                <a href=\"/person/resumesend.");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a class=\"\" id=\"a2\" style=\"padding-right: 10px;\" href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"");
	XYBody.Append("                ������Ϣ���� </a></dt>\r\n");
	XYBody.Append("            <dd id=\"div_2\" style=\"display: block\">\r\n");
	XYBody.Append("                <a href=\"/person/receivemessagelist.");
	XYBody.Append("                <a href=\"/person/sendmessagelist.");
	XYBody.Append("                <a href=\"/person/postadministratormessage.");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a class=\"\" id=\"a3\" style=\"padding-right: 10px;\" onclick=\"javascript:switchShow('3')\"\r\n");
	XYBody.Append("                href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"");
	XYBody.Append("                ������� </a></dt>\r\n");
	XYBody.Append("            <dd id=\"div_3\" style=\"display: block\">\r\n");
	XYBody.Append("                <a href=\"/person/cashacount.");
	XYBody.Append("                <a href=\"/person/invoice.");
	XYBody.Append("                <a href=\"/person/remit.");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a class=\"\" id=\"a4\" style=\"padding-right: 10px;\" onclick=\"javascript:switchShow('4')\"\r\n");
	XYBody.Append("                href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"");
	XYBody.Append("                �ҵĽ�����Ϣ </a></dt>\r\n");
	XYBody.Append("            <dd id=\"div_4\" style=\"display: block\">\r\n");
	XYBody.Append("                <a href=\"/person/BuyerOrderList.aspx\">�ɹ�����</a><br />\r\n");
	XYBody.Append("                <a href=\"/person/ListBuyerContract.aspx\">��ͬ����</a><br />\r\n");
	XYBody.Append("                <a href=\"/person/TeamBuy/TeamBuyerOrderList.aspx\">�Ź���������</a><br />\r\n");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a class=\"\" id=\"a5\" style=\"padding-right: 10px;\" onclick=\"javascript:switchShow('5')\"\r\n");
	XYBody.Append("                href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"");
	XYBody.Append("                �ҵ�����Ϣ </a></dt>\r\n");
	XYBody.Append("            <dd id=\"div_5\" style=\"display: block\">\r\n");
	XYBody.Append("                <a href=\"/person/adv_postbuy.aspx\">������</a><br />\r\n");
	XYBody.Append("                <a href=\"/person/supplybuy.aspx\">�ɹ�����</a><br />\r\n");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");


	XYBody.Append("<div id=\"right\">\r\n");
	XYBody.Append("    <form method=\"post\" id=\"news\">\r\n");
	XYBody.Append("        <h2>\r\n");
	XYBody.Append("        <span><a href=\"");
	XYBody.Append("        ���յ�����ҵ��Ϣ����\r\n");
	XYBody.Append("        </h2>\r\n");
	XYBody.Append("        <div class=\"ly_100\">\r\n");
	XYBody.Append("            <div class=\"ly_tit3\">\r\n");
	XYBody.Append("             <ul>\r\n");
	XYBody.Append("             <li class=\"out\"><a  href =\"");
	XYBody.Append("             <li class=\"on\"><a  href =\"");
	XYBody.Append("             <li class=\"out\"><a  href =\"");
	XYBody.Append("             </ul>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    <table class=\"ly_tab2 ly_w1\">\r\n");
	XYBody.Append("    <thead><tr><td></td><td></td><td>����</td><td>����</td></tr></thead>\r\n");
	XYBody.Append("    <tbody>\r\n");

	int s__loop__id=0;
	foreach(DataRow s in infolist.Rows)
	{
		s__loop__id++;

	XYBody.Append("     <tr>s\r\n");
	XYBody.Append("      <td><input name=\"sd_id\" id=\"sd_id\" type=\"checkbox\" value=\"" + s["M_ID"].ToString().Trim() + "\"/></td>\r\n");
	XYBody.Append("      <td valign=\"top\">\r\n");

	if (s["M_HasReply"].ToString().Trim()=="False")
	{

	XYBody.Append("      <img src=\"");

	}
	else
	{

	XYBody.Append("       <img src=\"");

	}	//end if

	XYBody.Append("      </td>\r\n");
	XYBody.Append("      <td>\r\n");
	XYBody.Append("      <a href=\"");
	XYBody.Append("    </td>\r\n");
	XYBody.Append("    <td>\r\n");

	if (s["U_ID"].ToString().Trim()=="0")
	{

	XYBody.Append("        " + s["M_UserName"].ToString().Trim() + "<em >(�ο�)</em> <br />" + s["M_CompanyName"].ToString().Trim() + "\r\n");

	}
	else
	{

	XYBody.Append("        <a href=\"javascript:;\">" + s["M_UserName"].ToString().Trim() + "</a> \r\n");

	if (s["At_Path"].ToString().Trim()=="")
	{

	XYBody.Append("               <img src=\"");

	}
	else
	{

	XYBody.Append("                <img src=\"" + s["S_URL"].ToString().Trim() + "" + s["At_Path"].ToString().Trim() + "\" width=\"20\" height=\"20\" /><br />" + s["M_CompanyName"].ToString().Trim() + "\r\n");

	}	//end if


	}	//end if

	XYBody.Append("       </td>\r\n");
	XYBody.Append("     </tr>\r\n");

	}	//end loop

	XYBody.Append("     </tbody> \r\n");
	XYBody.Append("    </table>\r\n");
	XYBody.Append("    <table class=\"content_action\">\r\n");
	XYBody.Append("    <tr >\r\n");
	XYBody.Append("    <td>\r\n");
	XYBody.Append("    <input id=\"chkAll\" name=\"chkAll\" type=\"checkbox\" value=\"\" onclick=\"CheckedAll();\"/>ȫѡ<input name=\"message\"  class=\"button\" type=\"submit\" value=\"ɾ��\"  onclick=\"return bntDelete()\"/>\r\n");
	XYBody.Append("    </td>\r\n");
	XYBody.Append("    </tr>\r\n");
	XYBody.Append("    </table>\r\n");
	XYBody.Append("    <div class=\"page\">\r\n");
	XYBody.Append("    ��ǰ�ǵ� <span>");
	XYBody.Append("     </div>\r\n");
	XYBody.Append("    <input type=\"hidden\" id=\"isDelete\" name=\"isDelete\" value=\"\" />\r\n");
	XYBody.Append("    </form>\r\n");
	XYBody.Append("</div> \r\n");

	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div><img src=\"");
	XYBody.Append("        <br style=\"FONT: 0px/0 arial\" clear=\"all\"/>\r\n");
	XYBody.Append("        <div class=\"foot\">\r\n");
	XYBody.Append("            ���");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <br style=\"CLEAR: both\">\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("</body>\r\n");
	XYBody.Append("</html>\r\n");



	XYBody.Append(IsCopyright());
	Response.Write(XYBody.ToString());
}
</script>