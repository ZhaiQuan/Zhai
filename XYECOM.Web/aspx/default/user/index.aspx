<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.user.index,XYECOM.Page" %>
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

	XYBody.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	XYBody.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	XYBody.Append("<head>\r\n");
	XYBody.Append("    <title>");
	XYBody.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">\r\n");
	XYBody.Append("    <meta content=\"��������\" name=\"keywords\">\r\n");
	XYBody.Append("    <meta content=\"\" name=\"description\">\r\n");
	XYBody.Append("    <link href=\"");
	XYBody.Append("        type=\"text/css\" />\r\n");
	XYBody.Append("    <link href=\"/common/css/XYLib.css\" type=\"text/css\" rel=\"Stylesheet\" />\r\n");
	XYBody.Append("    <script language=\"javascript\" type=\"text/javascript\" src=\"");
	XYBody.Append("    <script language=\"javascript\" type=\"text/javascript\" src=\"");
	XYBody.Append("    <script language=\"javascript\" type=\"text/javascript\" src=\"");
	XYBody.Append("    <script language=\"javascript\" type=\"text/javascript\" src=\"");
	XYBody.Append("    <script language=\"javascript\" type=\"text/javascript\" src=\"");
	XYBody.Append("    <script language=\"javascript\" type=\"text/javascript\" src=\"");
	XYBody.Append("    ");
	XYBody.Append("</head>\r\n");
	XYBody.Append("<body onload=\"");
	XYBody.Append("    <div class=\"div_body\">\r\n");
	XYBody.Append("        <div class=\"New_top\">\r\n");
	XYBody.Append("            <div class=\"more\">\r\n");
	XYBody.Append("                <ul>\r\n");
	XYBody.Append("                    <li><a class=\"zeroc\" href=\"");
	XYBody.Append("                    <li><a class=\"zeroc\" href=\"");
	XYBody.Append("                    <li><a class=\"zeroc\" href=\"");
	XYBody.Append("                    <li><a class=\"zeroc\" href=\"");
	XYBody.Append("                    <li><a class=\"zeroc\" href=\"");
	XYBody.Append("                    <li><a class=\"zeroc\" href=\"");
	XYBody.Append("                </ul>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"r\">\r\n");
	XYBody.Append("                <a href=\"");
	XYBody.Append("                    ");
	XYBody.Append("                | <a href=\"");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div class=\"Head\">\r\n");
	XYBody.Append("        <div class=\"Head_1\">\r\n");
	XYBody.Append("            <img src=\"/templates/");
	XYBody.Append("        <div class=\"Head_2 mt8\">\r\n");
	XYBody.Append("            ");
	XYBody.Append("        <div class=\"Head_3\">\r\n");
	XYBody.Append("            <input value=\"\" id=\"txtsearchkey\" /><a href=\"#\" onclick=\"searchClick();\">����</a>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div class=\"Head_4\">\r\n");
	XYBody.Append("            <div class=\"index\">\r\n");
	XYBody.Append("                <div class=\"act\" id=\"_m_index\">\r\n");
	XYBody.Append("                    <a href=\"index.");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div onmouseover=\"document.getElementById('frend').style.display='block';\" onmouseout=\"document.getElementById('frend').style.display='none';\">\r\n");
	XYBody.Append("                <div>\r\n");
	XYBody.Append("                    <div class=\"menu\" id=\"frend\" style=\"z-index: 999;\">\r\n");
	XYBody.Append("                        <a href=\"infoselect.");
	XYBody.Append("                        <a href=\"engageadd.");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div class=\"nor\" id=\"_m_quick\">\r\n");
	XYBody.Append("                    <a class=\"more\" id=\"f_a\" href=\"infoselect.");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div onmouseover=\"document.getElementById('msg').style.display='block';\" onmouseout=\"document.getElementById('msg').style.display='none';\">\r\n");
	XYBody.Append("                <div>\r\n");
	XYBody.Append("                    <div class=\"menu\" id=\"msg\" style=\"z-index: 999\">\r\n");
	XYBody.Append("                        <a href=\"receivemessagelist.");
	XYBody.Append("                            �ѷ�����Ϣ</a> <a href=\"postadministratormessage.");
	XYBody.Append("                                �ռ�����Ϣ</a> <a href=\"joinlist.");
	XYBody.Append("                    </div>\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <div class=\"nor\" id=\"_m_msg\">\r\n");
	XYBody.Append("                    <a class=\"more\" id=\"m_a\" href=\"receivemessagelist.");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"nor\" id=\"_m_userinfo\">\r\n");
	XYBody.Append("                <a href=\"");
	XYBody.Append("            <div class=\"nor\" id=\"_m_safe\">\r\n");
	XYBody.Append("                <a href=\"");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <script>xy_Sel_CurTopMenu();</" + "script>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div class=\"div_body\" style=\"width: 994px\">\r\n");
	XYBody.Append("        <div class=\"body_bg\">\r\n");
	XYBody.Append("            <div>\r\n");
	XYBody.Append("                <img src=\"");
	XYBody.Append("            <div class=\"bodyW\">\r\n");


	XYBody.Append("<div class=\"location fia\">\r\n");
	XYBody.Append("    <a href=\"index.");
	XYBody.Append("</div>\r\n");

	XYBody.Append("<!--\r\n");
	XYBody.Append("    ��������ʱ��������һ����д�� ****����·��****\r\n");
	XYBody.Append("    -->\r\n");
	XYBody.Append("<div class=\"Al\">\r\n");
	XYBody.Append("    <div class=\"Al_1\">\r\n");
	XYBody.Append("        ��Ա�����б�:</div>\r\n");
	XYBody.Append("    <div class=\"Al_2\">\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a style=\"padding-right: 10px\" id=\"a_1\" onclick=\"javascript:switchShow('1')\"\r\n");
	XYBody.Append("                href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"/user/image/a9.gif\">\r\n");
	XYBody.Append("                �ҵ���ҵ��Ϣ </a></dt>\r\n");
	XYBody.Append("            <dd style=\"display: block\" id=\"div_1\">\r\n");
	XYBody.Append("                <a href=\"/user/infoselect.aspx\">������ҵ��Ϣ</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/adv_postbuy.aspx\">��������Ϣ</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/supplybuy.aspx\">��������Ϣ</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/SupplyPubList.aspx\">������Ӧ��Ϣ</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/teambuy/TeamBuyPublishList.aspx\">�����Ź���Ϣ</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/ContractSupplyPubList.aspx\">������ͬ��������</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/Venture/FinancingList.aspx\">����������Ϣ</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/Venture/InvestmentList.aspx\">����Ͷ����Ϣ</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/ReceiveAddressList.aspx\">�ջ�����Ϣ����</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/DepotList.aspx\">�ⷿ��Ϣ����</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/businesslist.aspx?ename=investment\">�������̴���</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/surrogatelist.aspx?ename=service\">����������Ϣ</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/userbrandlist.aspx\">����Ʒ����Ϣ</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/SupplyTypeList.aspx\">�Զ���������</a><br />\r\n");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a style=\"padding-right: 10px\" id=\"a_2\" onclick=\"javascript:switchShow('2')\"\r\n");
	XYBody.Append("                href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"/user/image/1.gif\">\r\n");
	XYBody.Append("                �ؼ������� </a></dt>\r\n");
	XYBody.Append("            <dd style=\"display: none\" id=\"div_2\">\r\n");
	XYBody.Append("                <a href=\"/user/searchkeyword.aspx\">�����ؼ���</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/curranking.aspx\">���ڲ���Ĺؼ���</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/historyranking.aspx\">������ʷ��¼</a><br />\r\n");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a style=\"padding-right: 10px\" id=\"a_3\" onclick=\"javascript:switchShow('3')\"\r\n");
	XYBody.Append("                href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"/user/image/5.gif\">\r\n");
	XYBody.Append("                �ҵ��������� </a></dt>\r\n");
	XYBody.Append("            <dd style=\"display: none\" id=\"div_3\">\r\n");
	XYBody.Append("                <a href=\"/user/selectshoptemp.aspx\">ѡ������ģ��</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/uploadlogo.aspx\">�ϴ�����ͼƬ</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/UploadVideo.aspx\">�ϴ�������Ƶ</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/SlidesInfoList.aspx\">�õ�Ƭ����</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/bindingdomain.aspx\">�󶨶�������</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/userfirendlink.aspx\">�������ӹ���</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/userannounce.aspx\">���̹������</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/newlist.aspx\">��ҵ��Ѷ����</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/engagelist.aspx\">��Ƹ��Ϣ����</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/certificatelist.aspx\">��ҵ֤�����</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/partlist.aspx\">��ҵר������</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/usertitleinfolist.aspx\">��Ѷ��Ŀ����</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/newlist.aspx\">��Ѷ��Ϣ����</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/SEO.aspx\">����SEO����</a><br />\r\n");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a style=\"padding-right: 10px\" id=\"a_8\" onclick=\"javascript:switchShow('8')\"\r\n");
	XYBody.Append("                href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"/user/image/3.gif\">\r\n");
	XYBody.Append("                �ҵĽ�����Ϣ </a></dt>\r\n");
	XYBody.Append("            <dd style=\"display: none\" id=\"div_8\">\r\n");
	XYBody.Append("                <a href=\"/user/BuyerOrderList.aspx\">�ɹ�����</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/SellerOrderList.aspx\">���۹���</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/Contract/ListBuyerContract.aspx\">��Ϊ��ҵĺ�ͬ</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/Contract/ListSellerContract.aspx\">��Ϊ���ҵĺ�ͬ</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/TeamBuy/TeamSellerOrderList.aspx\">���ҵ��Ź�����</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/TeamBuy/TeamBuyerOrderList.aspx\">��ҵ��Ź�����</a><br />\r\n");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a style=\"padding-right: 10px\" id=\"a_4\" onclick=\"javascript:switchShow('4')\"\r\n");
	XYBody.Append("                href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"/user/image/a9.gif\" alt=\"\" />\r\n");
	XYBody.Append("                ������λ </a></dt>\r\n");
	XYBody.Append("            <dd style=\"display: none\" id=\"div_4\">\r\n");
	XYBody.Append("                <a href=\"/user/buyclassads.aspx\">���������</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/curclassads.aspx\">���ڲ���Ĺ��</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/hisclassads.aspx\">��ʷ����Ĺ��</a><br />\r\n");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a style=\"padding-right: 10px\" id=\"a_5\" onclick=\"javascript:switchShow('5')\"\r\n");
	XYBody.Append("                href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"/user/image/a10.gif\" alt=\"\" />\r\n");
	XYBody.Append("                �ҵĲ�����Ϣ </a></dt>\r\n");
	XYBody.Append("            <dd style=\"display: none\" id=\"div_5\">\r\n");
	XYBody.Append("                <a href=\"/user/cashacount.aspx\">�ֽ�������ϸ</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/ContractMargin/SupplementConMargin.aspx\">��ֵ��ͬ��֤��</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/inputmoney.aspx\">��ֵ��ϸ</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/invoicelist.aspx\">��Ʊ�б�</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/invoice.aspx\">���뷢Ʊ</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/remit.aspx\">���ȷ��</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/FictitiouConsumptionInfo.aspx\">��վ��������ϸ</a><br />\r\n");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a style=\"padding-right: 10px\" id=\"a_9\" onclick=\"javascript:switchShow('9')\"\r\n");
	XYBody.Append("                href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"/user/image/a9.gif\">\r\n");
	XYBody.Append("                ��Ʒ�һ� </a></dt>\r\n");
	XYBody.Append("            <dd style=\"display: none\" id=\"div_9\">\r\n");
	XYBody.Append("                <a href=\"/user/getgift.aspx\">��Ʒ�б�</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/mygift.aspx\">�ҵ���Ʒ</a><br />\r\n");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a style=\"padding-right: 10px\" id=\"a_7\" onclick=\"javascript:switchShow('7')\"\r\n");
	XYBody.Append("                href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"/user/image/buyer.gif\">\r\n");
	XYBody.Append("                ���ղص���Ϣ </a></dt>\r\n");
	XYBody.Append("            <dd style=\"display: none\" id=\"div_7\">\r\n");
	XYBody.Append("                <a href=\"/user/companys.aspx\">�ղ���ҵ����</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/favoritelist.aspx\">�ղص���ҵ��Ϣ</a><br />\r\n");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("        <dl>\r\n");
	XYBody.Append("            <dt><a style=\"padding-right: 10px\" id=\"a_6\" onclick=\"javascript:switchShow('6')\"\r\n");
	XYBody.Append("                href=\"javascript:void(0);\">\r\n");
	XYBody.Append("                <img src=\"/user/image/a6.gif\">\r\n");
	XYBody.Append("                �ҵ��˻���Ϣ </a></dt>\r\n");
	XYBody.Append("            <dd style=\"display: none\" id=\"div_6\">\r\n");
	XYBody.Append("                <a href=\"/user/registerinfo.aspx\">�鿴ע����Ϣ</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/edituserinfo.aspx\">�޸�ע����Ϣ</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/edituserinfomore.aspx\">������ҵ����</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/edituserpassword.aspx\">�޸ĵ�½����</a><br />\r\n");
	XYBody.Append("                <a href=\"/user/editpaypassword.aspx\">�޸�֧������</a><br />\r\n");
	XYBody.Append("            </dd>\r\n");
	XYBody.Append("        </dl>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <script type=\"text/javascript\">\r\n");
	XYBody.Append("        xy_Sel_CurLeftMenu();\r\n");
	XYBody.Append("    </" + "script>\r\n");
	XYBody.Append("</div>\r\n");


	XYBody.Append("<div class=\"Am fia\">\r\n");
	XYBody.Append("    <div class=\"Am_1\">\r\n");
	XYBody.Append("        <div class=\"Am_11\">\r\n");
	XYBody.Append("            <a href=\"\" align=\"absMiddle\"></a>\r\n");
	XYBody.Append("            <img src=\"");
	XYBody.Append("        <a href=\"postadministratormessage.");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div class=\"Am_2\">\r\n");
	XYBody.Append("        <div class=\"Am_21\">\r\n");
	XYBody.Append("            <div style=\"padding-right: 10px; float: left\">\r\n");
	XYBody.Append("                <span class=\"f14b\">");
	XYBody.Append("                    �༭&gt;&gt;</a>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <br clear=\"all\">\r\n");
	XYBody.Append("            <div id=\"event1\">\r\n");
	XYBody.Append("                <span class=\"hui912\">");
	XYBody.Append("                    color: #336600;\">");

	if (days!="")
	{

	XYBody.Append("�����ʱ�仹�� <span style=\"font-family: Verdana, Arial, Helvetica, sans-serif;\r\n");
	XYBody.Append("                        color: #f60;\">");

	}	//end if

	XYBody.Append("</div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div style=\"float: left; width: 260px\">\r\n");
	XYBody.Append("            <dl class=\"hui612\" style=\"width: 260px\">\r\n");
	XYBody.Append("                <dt>������</dt><dd><b>");
	XYBody.Append("                <dt>��¼����</dt><dd><a href=\"");
	XYBody.Append("                    src=\"");
	XYBody.Append("                </dd>\r\n");
	XYBody.Append("                <dt>���ý�</dt><dd><b><img src=\"");
	XYBody.Append("                    style=\"color: #f60;\">&nbsp;");

	if (pageinfo.IsOnlinePayment)
	{

	XYBody.Append("<a href=\"");

	}	//end if

	XYBody.Append("</b></dd>\r\n");
	XYBody.Append("                <dt>�˻���</dt><dd><b><img src=\"");
	XYBody.Append("                    style=\"color: #f60;\">&nbsp;");
	XYBody.Append("                </dd>\r\n");
	XYBody.Append("                <dt>����ң�</dt><dd><b><img src=\"");
	XYBody.Append("                    style=\"color: #f60;\">&nbsp;");
	XYBody.Append("            </dl>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div>\r\n");
	XYBody.Append("            <div style=\"padding-right: 0px; margin-top: 50px; padding-left: 31px; background: url(");
	XYBody.Append("                float: left; padding-bottom: 0px; width: 109px; padding-top: 3px; height: 28px\">\r\n");
	XYBody.Append("                <a style=\"color: red; text-decoration: none\" href=\"");
	XYBody.Append("                    <font color=\"#cc0000\">�����ҵ�����</font></a>\r\n");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("        <div style=\"width: 388px; padding: 5px; border-top: 1px solid #ddd\">\r\n");
	XYBody.Append("            <ul>\r\n");
	XYBody.Append("                <li>�Ѷ�����Ʊ�֤��: <b><span style=\"color: #f60;\">&nbsp;");
	XYBody.Append("                <li>�Ѷ����ͬ��֤��: <b><span style=\"color: #f60;\">&nbsp;");
	XYBody.Append("                <li>���ú�ͬ��֤��: <b>&nbsp;&nbsp;&nbsp;<span style=\"color: #f60;\">&nbsp;");
	XYBody.Append("                    Ԫ</b></li>\r\n");

	if (isConMargin)
	{

	XYBody.Append("                    <b><span style=\"color: #f60;\">���ú�ͬ��֤������<a href=\"/user/ContractMargin/SupplementConMargin.aspx\">��ʱ��ֵ</a>������Ӱ�����ĺ�ͬ������Ϣ�Ľ���</span>\r\n");
	XYBody.Append("                    </b>\r\n");

	}	//end if

	XYBody.Append("            </ul>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");

	if (userinfo.isaudited==false)
	{

	XYBody.Append("    <div class=\"Am_6\" style=\"background-image: url=(");
	XYBody.Append("        text-align: left\">\r\n");
	XYBody.Append("        <b>&nbsp;ϵͳ��ʾ</b></div>\r\n");
	XYBody.Append("    <div class=\"Am_61\">\r\n");
	XYBody.Append("        <div class=\"bbs_tj fia\">\r\n");
	XYBody.Append("            �����ʻ�û��ͨ����ˣ�<br />\r\n");
	XYBody.Append("            ԭ��");
	XYBody.Append("            �����");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");

	}	//end if

	XYBody.Append("    <!--forum start -->\r\n");
	XYBody.Append("    <div class=\"Am_6\" style=\"text-align: left; background-image: url(http://icon.zol.com.cn/my/forum_mini_icon.gif)\">\r\n");
	XYBody.Append("        <b>&nbsp;�ҵ���Ϣͳ��</b></div>\r\n");
	XYBody.Append("    <div class=\"Am_61\">\r\n");
	XYBody.Append("        <div class=\"bbs_tj fia\">\r\n");
	XYBody.Append("            <div class=\"bbs_ln\">\r\n");
	XYBody.Append("                <em class=\"atv_icon2\"></em>��Ϣ��\r\n");
	 data = GetStatData();
	

	int stat__loop__id=0;
	foreach(DataRow stat in data.Rows)
	{
		stat__loop__id++;

	XYBody.Append("                " + stat["moduleName"].ToString().Trim() + ":<a href=\"" + stat["link"].ToString().Trim() + "\"><span style=\"font-family: Verdana, Arial, Helvetica, sans-serif;\">" + stat["total"].ToString().Trim() + "</span></a>\r\n");
	XYBody.Append("                |\r\n");

	}	//end loop

	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"bbs_ln\">\r\n");
	XYBody.Append("                <em class=\"atv_icon1\"></em>���ԣ���ͨ���� <a href=\"");
	XYBody.Append("                    ");
	XYBody.Append("                        ");
	XYBody.Append("                            ������Ա����</a></div>\r\n");
	XYBody.Append("            <div class=\"bbs_ln\">\r\n");
	XYBody.Append("                <em class=\"atv_icon3\"></em>�ղأ�<a href=\"companys.");
	XYBody.Append("                    class=\"hui912\">|</span> <a href=\"favoritelist.");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <!--forum end  -->\r\n");
	XYBody.Append("    <!--������Ϣ end-->\r\n");
	XYBody.Append("    <div class=\"Am_6\">\r\n");
	XYBody.Append("        <strong>��ϵ����Ϣ</strong></div>\r\n");
	XYBody.Append("    <br clear=\"all\">\r\n");
	XYBody.Append("    <div class=\"Am_61\">\r\n");
	XYBody.Append("        <div class=\"bbs_tj fia\">\r\n");
	XYBody.Append("            <div class=\"bbs_ln\">\r\n");
	XYBody.Append("                �绰��");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"bbs_ln\">\r\n");
	XYBody.Append("                ���棺");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"bbs_ln\">\r\n");
	XYBody.Append("                �ֻ���");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"bbs_ln\">\r\n");
	XYBody.Append("                ���ڵأ�");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"bbs_ln\">\r\n");
	XYBody.Append("                ��ַ��");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("            <div class=\"bbs_ln\">\r\n");
	XYBody.Append("                <a href=\"edituserinfo.");
	XYBody.Append("        </div>\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<div class=\"Ar\" style=\"background: #f2f2f2;\">\r\n");
	XYBody.Append("    <div class=\"Ar_1 Ucpm\">\r\n");
	XYBody.Append("        �̶�����\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div class=\"Ar_4\" style=\"line-height: 17px\">\r\n");
	XYBody.Append("        <table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n");
	XYBody.Append("            <tbody>\r\n");
	XYBody.Append("                <tr>\r\n");
	XYBody.Append("                    <td align=\"middle\" width=\"60\" height=\"60\">\r\n");
	XYBody.Append("                        <img src=\"");
	XYBody.Append("                    </td>\r\n");
	XYBody.Append("                    <td>\r\n");
	XYBody.Append("                        &nbsp;\r\n");
	XYBody.Append("                    </td>\r\n");
	XYBody.Append("                </tr>\r\n");
	XYBody.Append("            </tbody>\r\n");
	XYBody.Append("        </table>\r\n");
	XYBody.Append("        <div class=\"hui912 mt8\">\r\n");
	XYBody.Append("            ��Ϣ���������������ǰ��λ���ܹ�����ҵ�һʱ����ҵ���</div>\r\n");
	XYBody.Append("        <br clear=\"all\">\r\n");
	XYBody.Append("        <a class=\"fi\" href=\"");
	XYBody.Append("            <img src=\"");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <!--������ʾ end-->\r\n");
	XYBody.Append("    <!--˭�������� start-->\r\n");
	XYBody.Append("    <div class=\"Ar_1 Ucgg\">\r\n");
	XYBody.Append("        ��վ����</div>\r\n");
	XYBody.Append("    <br clear=\"all\">\r\n");
	XYBody.Append("    <div class=\"Ar_4 ggtext\">\r\n");
	XYBody.Append("        " +  XYECOMCreateHTML("XY_action_usercenter").ToString() + "\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("    <div class=\"Ar_1 Ucdc\">\r\n");
	XYBody.Append("        ���ڵ���</div>\r\n");
	XYBody.Append("    <br class=\"all\">\r\n");
	XYBody.Append("    <div class=\"Ar_4\" style=\"line-height: 25px\">\r\n");
	XYBody.Append("        " +  XYECOMCreateHTML("XY_POLL_wangdian").ToString() + "\r\n");
	XYBody.Append("    </div>\r\n");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<br clear=\"all\">\r\n");

	XYBody.Append("</div>\r\n");
	XYBody.Append("<div>\r\n");
	XYBody.Append("    <img src=\"");
	XYBody.Append("<br style=\"font: 0px/0 arial\" clear=\"all\" />\r\n");
	XYBody.Append("<div class=\"foot\">\r\n");
	XYBody.Append("    ���");
	XYBody.Append("    <br>\r\n");
	XYBody.Append("    <a href=\"http://www.xyecom.com\">XYECOM ���</a> | <a href=\"\">�û�ע��</a> | <a class=\"lan12i\"\r\n");
	XYBody.Append("        href=\"\" target=\"_top\">������</a> | <a class=\"lan12i\" href=\"\" target=\"_top\">��Ƹ</a>\r\n");
	XYBody.Append("    | <a class=\"lan12i\" href=\"\" target=\"_top\">վ���ͼ</a> | <a class=\"lan12i\" href=\"\" target=\"_top\">\r\n");
	XYBody.Append("        ��ϵ��ʽ</a> | <a class=\"lan12i\" href=\"\" target=\"_top\">��ӭͶ�� </a>| <a href=\"\">ͼ��\r\n");
	XYBody.Append("    </a>| <a class=\"lan12i\" href=\"\" target=\"_top\">RSS����</a>\r\n");
	XYBody.Append("    <br>\r\n");
	XYBody.Append("    Copyright &copy; 2005 - 2009 XYECOM. All rights reserved. ");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<br style=\"clear: both\">\r\n");
	XYBody.Append("</div> </div> </body> </html> \r\n");



	XYBody.Append(IsCopyright());
	Response.Write(XYBody.ToString());
}
</script>