<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.user.edituserinfomore,XYECOM.Page" %>
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


	XYBody.Append("<div class=\"location fia\"><a href=\"index.");

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


	XYBody.Append(" <!--�ұ�����-->\r\n");
	XYBody.Append("<div id=\"right\">\r\n");
	XYBody.Append("   <form method =\"post\">\r\n");
	XYBody.Append("  <table  class=\"contentl\">\r\n");
	XYBody.Append("  <caption>���乫˾����<span>��*Ϊ��������乫˾���ϣ��������ӹ�˾���������</span></caption>\r\n");
	XYBody.Append("    <tr>\r\n");
	XYBody.Append("    <th style=\"width:160px\">��ҵ���ƣ�<em class=\"red\">*</em></th>\r\n");
	XYBody.Append("    <td>\r\n");
	XYBody.Append("     <input   type=\"text\" value=\"");
	XYBody.Append("  </tr>\r\n");
	XYBody.Append("      <tr>\r\n");
	XYBody.Append("    <th style=\"width:160px\">��Ӫģʽ��<em class=\"red\">*</em></th>\r\n");
	XYBody.Append("    <td>\r\n");

	int md__loop__id=0;
	foreach(DataRow md in modelist.Rows)
	{
		md__loop__id++;

	XYBody.Append("        <input  type=\"checkbox\"  value=\"" + md["M_Type"].ToString().Trim() + "\" name =\"modetype\"/>" + md["M_Type"].ToString().Trim() + "\r\n");

	}	//end loop

	XYBody.Append("        <em>���ֻ��ѡ�����־�Ӫģʽ</em>\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("  </tr>\r\n");
	XYBody.Append("     <tr>\r\n");
	XYBody.Append("    <th style=\"width:160px\">ע���ʱ���<em class=\"red\">*</em></th>\r\n");
	XYBody.Append("    <td>\r\n");
	XYBody.Append("      <select id=\"moneytype\" style=\"width: 97px\" name =\"moneytype\">\r\n");
	XYBody.Append("        <option value =\"�����\">�����</option>\r\n");
	XYBody.Append("        </select> <input id=\"money\" type=\"text\"  name =\"money\" maxlength =\"20\" style=\"width: 83px\" value =\"");
	XYBody.Append("  </tr>\r\n");
	XYBody.Append("    <tr>\r\n");
	XYBody.Append("    <th style=\"width:160px\">��˾������ݣ�<em class=\"red\">*</em></th>\r\n");
	XYBody.Append("    <td>\r\n");
	XYBody.Append("        <input id=\"companynian\" type=\"text\" name =\"companynian\" value =\"");
	XYBody.Append("        <em>������ݣ���:2005 </em></td>\r\n");
	XYBody.Append("  </tr>\r\n");
	XYBody.Append("<tr>\r\n");
	XYBody.Append("<th style=\"width:160px\">\r\n");
	XYBody.Append("��˾ע��أ�<em class=\"red\">*</em></th>\r\n");
	XYBody.Append("<td>\r\n");
	XYBody.Append("<div id=\"classType\"></div>\r\n");
	XYBody.Append("<input type =\"hidden\" id=\"citytypeid\"  name=\"citytypeid\"/> \r\n");
	XYBody.Append("<input type =\"hidden\" id=\"provinceid\"  name=\"provinceid\" /> \r\n");
	XYBody.Append("<input type =\"hidden\" id=\"areatypeid\"  name=\"areatypeid\" value=\"");
	XYBody.Append("<script type=\"text/javascript\">\r\n");
	XYBody.Append("var cla = new ClassType(\"cla\",'area','classType','areatypeid');\r\n");
	XYBody.Append("cla.Mode = \"select\";\r\n");
	XYBody.Append("cla.Init();\r\n");
	XYBody.Append("</" + "script>\r\n");
	XYBody.Append("</td>\r\n");
	XYBody.Append("</tr>\r\n");
	XYBody.Append("   <tr>\r\n");
	XYBody.Append("    <th style=\"width:160px\">��Ҫ��Ӫ�ص㣺<em class=\"red\">*</em></th>\r\n");
	XYBody.Append("    <td>\r\n");
	XYBody.Append("     <input  name=\"address\" type=\"text\"  id=\"address\" maxlength=\"100\" size=\"60\"  value =\"");
	XYBody.Append("     <em>����дҵ��������Ӫҵ��</em>\r\n");
	XYBody.Append("     </td>\r\n");
	XYBody.Append("  </tr>\r\n");
	XYBody.Append("  <tr>\r\n");
	XYBody.Append("    <th style=\"width:160px\">��˾������<em class=\"red\">*</em></th>\r\n");
	XYBody.Append("    <td>\r\n");
	XYBody.Append("    <select name=\"employeetotal\" id=\"employeetotal\">\r\n");
	XYBody.Append("        <option value=\"0\">��ѡ��˾����</option>\r\n");
	XYBody.Append("        <option value=\"50����\">50����</option>\r\n");
	XYBody.Append("        <option value=\"50 ~ 100\">50 ~ 100</option>\r\n");
	XYBody.Append("        <option value=\"100 ~ 200\">100 ~ 200</option>\r\n");
	XYBody.Append("        <option value=\"200����\">200����</option>\r\n");
	XYBody.Append("    </select></td>\r\n");
	XYBody.Append("  </tr>\r\n");
	XYBody.Append("<tr>\r\n");
	XYBody.Append("    <th style=\"width:160px\">��Ӫ��Ʒ�����<em class=\"red\">*</em></th>\r\n");
	XYBody.Append("    <td class=\"unline\">\r\n");
	XYBody.Append("     <input  name=\"pt\" type=\"text\"  id=\"pt\" maxlength=\"10\" size=\"18\"  value=\"");
	XYBody.Append("      <input  name=\"pt4\" type=\"text\" id=\"pt4\" maxlength=\"10\" size=\"18\" value=\"");
	XYBody.Append("      <input  name=\"pt8\" type=\"text\"  id=\"pt8\" maxlength=\"10\" size=\"18\" value=\"");
	XYBody.Append("      <div style=\"display :none;width:100% \" id=\"pmore\"> \r\n");
	XYBody.Append("      <input  name=\"pt12\" type=\"text\" id=\"pt12\" maxlength=\"10\" size=\"18\" value=\"");
	XYBody.Append("      <input  name=\"pt13\" type=\"text\"  id=\"pt13\" maxlength=\"10\" size=\"18\" value=\"");
	XYBody.Append("      <input  name=\"pt14\" type=\"text\"  id=\"pt14\" maxlength=\"10\" size=\"18\" value=\"");
	XYBody.Append("      <input  name=\"pt15\" type=\"text\" id=\"pt15\" maxlength=\"10\" size=\"18\" value=\"");
	XYBody.Append("      <input  name=\"pt16\" type=\"text\"  id=\"pt16\" maxlength=\"10\" size=\"18\" value=\"");
	XYBody.Append("      <input  name=\"pt17\" type=\"text\"  id=\"pt17\" maxlength=\"10\" size=\"18\" value=\"");
	XYBody.Append("      <input  name=\"pt18\" type=\"text\"  id=\"pt18\" maxlength=\"10\" size=\"18\" value=\"");
	XYBody.Append("      <input  name=\"pt19\" type=\"text\"  id=\"pt19\" maxlength=\"10\" size=\"18\" value=\"");
	XYBody.Append("      <input  name=\"pt20\" type=\"text\"  id=\"pt20\" maxlength=\"10\" size=\"18\" value=\"");
	XYBody.Append("      <input  name=\"pt21\" type=\"text\"  id=\"pt21\" maxlength=\"10\" size=\"18\" value=\"");
	XYBody.Append("      <input  name=\"pt22\" type=\"text\"  id=\"pt22\" maxlength=\"10\" size=\"18\" value=\"");
	XYBody.Append("      <input  name=\"pt23\" type=\"text\"  id=\"pt23\" maxlength=\"10\" size=\"18\" value=\"");
	XYBody.Append("      </div><br />\r\n");
	XYBody.Append("      <em>(ÿ������1�ֲ�Ʒ����,����10��ĸ����,�磻ë�����)</em>\r\n");
	XYBody.Append("    </td>\r\n");
	XYBody.Append("  </tr>\r\n");
	XYBody.Append("  <tr>\r\n");
	XYBody.Append("    <th >��飺<em class=\"red\">*</em></th>\r\n");
	XYBody.Append("    <td>\r\n");
	XYBody.Append("        <textarea id=\"lbjianjie\" cols=\"81\" rows=\"9\" name=\"lbjianjie\">");
	XYBody.Append("        <br />�� ����������ϸ˵����˾�ĳ�������ʷ,��Ӫ��Ʒ, Ʒ��,��������ơ�\r\n");
	XYBody.Append("        <br />�� ������ݹ��ڼ򵥻���д�����Ĳ�Ʒ���ܣ����п����޷�ͨ����ˡ�\r\n");
	XYBody.Append("        <br />�� ��ϵ��ʽ���绰�����棬�ֻ��������ʼ��ȣ����ڻ�Ա��������д���˴������ظ���д��\r\n");
	XYBody.Append("     </td>\r\n");
	XYBody.Append("  </tr>\r\n");
	XYBody.Append("  </table>\r\n");
	XYBody.Append("  <input type =\"hidden\"  id=\"getmode\"/>\r\n");
	XYBody.Append("  <table width=\"100%\">\r\n");
	XYBody.Append("    <tr>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <div class=\"content_action\">\r\n");
	XYBody.Append("          <input name=\"but01\" type =\"submit\" value=\" ȷ��\" onclick =\"return personinfo();\" class =\"button\" />\r\n");
	XYBody.Append("            <input name=\"but02\" type=\"button\" value=\"ȡ��\" onclick =\"window.location.href='");
	XYBody.Append("            </div>\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("    </tr>\r\n");
	XYBody.Append("  </table>\r\n");
	XYBody.Append("</form>\r\n");
	XYBody.Append("</div> \r\n");

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