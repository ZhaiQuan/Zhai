<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.user.dis_post_step,XYECOM.Page" %>
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


	XYBody.Append(" <div id=\"right\">\r\n");
	XYBody.Append("  <form  action=\"#\" method=\"post\">\r\n");
	XYBody.Append("  <h3>����");
	XYBody.Append(" <table  class=\"contentl\">\r\n");
	XYBody.Append("    <tr>\r\n");
	XYBody.Append("        <th>��Ϣ���ͣ�<em>*</em></th>\r\n");
	XYBody.Append("        <td>\r\n");

	int item__loop__id=0;
	foreach(ModuleItemInfo item in module.Item)
	{
		item__loop__id++;


	if (item__loop__id==1)
	{

	 initvalue = item.Prefix;
	
	 infotypestr = item.InfoTypeStr;
	
	XYBody.Append("                <input type=\"radio\" name=\"items\" value=\"");

	}
	else
	{

	XYBody.Append("                <input type=\"radio\" name=\"items\" value=\"");

	}	//end if


	}	//end loop

	XYBody.Append("        </td>\r\n");
	XYBody.Append("    </tr>   \r\n");
	XYBody.Append("  <tr id=\"ptname\">\r\n");
	XYBody.Append("   <th>��Ϣ���ƣ�<em>*</em></th>\r\n");
	XYBody.Append("   <td  class=\"two\"><input id=\"infotitle\" name=\"infotitle\" type=\"text\" size=\"35\"  maxlength=\"40\" value=\"");
	XYBody.Append("   <em id=\"txt0\" class=\"three\">��Ϣ������������������ַ���</em>\r\n");
	XYBody.Append("   </td>\r\n");
	XYBody.Append("  </tr>\r\n");

	if (module.EName=="offer"||module.PEName=="offer")
	{


	if (userinfo.iscompanyprotype==true)
	{

	XYBody.Append("    <tr>\r\n");
	XYBody.Append("    <th>�Զ����Ʒ���ࣺ</th>\r\n");
	XYBody.Append("    <td  class=\"two\">\r\n");
	XYBody.Append("         <div id=\"customerType\">\r\n");
	XYBody.Append("                </div>\r\n");
	XYBody.Append("                <input id=\"upt\" name=\"upt\" type=\"hidden\" value=\"\" />\r\n");
	XYBody.Append("                <input id=\"flag\" type=\"hidden\" value=\"companytype\" />\r\n");
	XYBody.Append("                <script type=\"text/javascript\">\r\n");
	XYBody.Append("                    var cla2 = new ClassType(\"cla2\", 'flag', 'customerType', 'upt', 999, 'xy001', 'uid:\r\n");
	XYBody.Append("<%=userinfo.userid %>\r\n");
	XYBody.Append("');\r\n");
	XYBody.Append("                    cla2.Mode = \"select\";\r\n");
	XYBody.Append("                    cla2.Init();\r\n");
	XYBody.Append("                </" + "script>\r\n");
	XYBody.Append("    <em id=\"Em1\" class=\"three\">ѡ���Զ����Ʒ���ࡣ</em>\r\n");
	XYBody.Append("    </td></tr>\r\n");

	}	//end if


	}	//end if

	XYBody.Append("  <tr id=\"prodpt\">\r\n");
	XYBody.Append("  <input type=\"hidden\" id=\"hidInfoTypeStr\" value=\"");
	XYBody.Append("  <input type=\"hidden\" id=\"hidInfoType\" value=\"");
	XYBody.Append("  <input type=\"hidden\" id=\"hidModuleName\" value=\"");
	XYBody.Append("  <input type=\"hidden\" id=\"hidTypeId\"  name=\"hidTypeId\"/>\r\n");
	XYBody.Append("   <th>ѡ����Ϣ���<em>*</em></th>\r\n");
	XYBody.Append("   <td>\r\n");
	XYBody.Append("   <div id=\"classType\"></div>\r\n");
	XYBody.Append("    <script type=\"text/javascript\">\r\n");
	XYBody.Append("    var cla = new ClassType(\"cla\",'hidModuleName','classType','hidTypeId',null,null,\"tradeids:");
	XYBody.Append("    cla.Mode = \"select\";\r\n");
	XYBody.Append("    cla.OnChange = GetFieldInnerHTML;\r\n");
	XYBody.Append("    cla.Init();\r\n");
	XYBody.Append("    </" + "script>\r\n");
	XYBody.Append("   </td>\r\n");
	XYBody.Append("  </tr>\r\n");
	XYBody.Append("  <tr>\r\n");
	XYBody.Append("<th> ��Ϣ���ԣ�<em>*</em></th>\r\n");
	XYBody.Append("<td id=\"tabFieldBody\">\r\n");
	XYBody.Append("</td>\r\n");
	XYBody.Append("</tr>\r\n");
	XYBody.Append(" <tr>\r\n");
	XYBody.Append(" <th>��ϸ˵����<em>*</em></th>\r\n");
	XYBody.Append(" <td>\r\n");
	XYBody.Append("<script language =\"javascript\" type=\"text/javascript\"  src=\"");
	XYBody.Append("  <script language=\"javascript\" type=\"text/javascript\">\r\n");
	XYBody.Append("var oFCKeditor = new FCKeditor('xyecom');\r\n");
	XYBody.Append("oFCKeditor.BasePath = '/Common/fckeditor/';\r\n");
	XYBody.Append("oFCKeditor.ToolbarSet = 'BaiKe';\r\n");
	XYBody.Append("oFCKeditor.Width = \"100%\";\r\n");
	XYBody.Append("oFCKeditor.Height = \"400\";\r\n");
	XYBody.Append("oFCKeditor.Value = '';\r\n");
	XYBody.Append("oFCKeditor.Create();\r\n");
	XYBody.Append(" </" + "script>\r\n");
	XYBody.Append(" </td>\r\n");
	XYBody.Append(" </tr>\r\n");
	XYBody.Append("<tr>\r\n");
	XYBody.Append("<th>�ϴ�ͼƬ��</th>\r\n");
	XYBody.Append("<td >\r\n");

	XYBody.Append(" <div id=\"UploadFile\">\r\n");
	XYBody.Append("    <input id=\"Upload_TabName\" name=\"Upload_TabName\" type=\"hidden\" value=\"");
	XYBody.Append("    <input id=\"Upload_IDs\" name=\"Upload_IDs\" type=\"hidden\" value=\"");
	XYBody.Append("    <input id=\"Upload_Files\" name=\"Upload_Files\" type=\"hidden\" value=\"");
	XYBody.Append("    <input id=\"Upload_DelIDs\" name=\"Upload_DelIDs\" type=\"hidden\" />\r\n");
	XYBody.Append("    <input id=\"Upload_UpIDs\" name=\"Upload_UpIDs\" type=\"hidden\" />\r\n");
	XYBody.Append("    <input id=\"Upload_MaxAmount\" name=\"Upload_MaxAmount\" type=\"hidden\" value=\"");
	XYBody.Append("    <input id=\"Upload_IsWaterMark\" name=\"Upload_IsWaterMark\" type=\"hidden\" value=\"");
	XYBody.Append("    <script language=\"javascript\" type=\"text/javascript\">UploadInit();</" + "script>\r\n");
	XYBody.Append("</div>\r\n");


	XYBody.Append("</td>\r\n");
	XYBody.Append("</tr>\r\n");

	if (config.DateType==false)
	{

	XYBody.Append("<tr>\r\n");
	XYBody.Append("<th>��Ϣ��Ч�ڣ�<em class=\"red\">*</em></th>\r\n");
	XYBody.Append("<td > \r\n");
	XYBody.Append("<input onclick=\"getDateString(this);\" id=\"EndDate\" maxlength=\"15\" readonly=\"readonly\" name =\"EndDate\"/>\r\n");
	XYBody.Append("</td>\r\n");
	XYBody.Append("</tr>\r\n");

	}
	else
	{

	XYBody.Append("<tr>\r\n");
	XYBody.Append("<th>��Ϣ��Ч�ڣ�<em class=\"red\">*</em></th>\r\n");
	XYBody.Append("<td ><input  type =\"radio\"  value =\"10\" name =\"rad\"/>10��\r\n");
	XYBody.Append("<input  type =\"radio\"   value =\"20\"  name =\"rad\"/>20��\r\n");
	XYBody.Append("<input  type =\"radio\"  value =\"30\"  name =\"rad\"/>1����\r\n");
	XYBody.Append("<input  type =\"radio\"  value =\"90\"  name =\"rad\"/>3����\r\n");
	XYBody.Append("<input  type =\"radio\"  value =\"180\"  name =\"rad\" checked =\"checked\"/>6����\r\n");
	XYBody.Append("<input id=\"EndDate\"  readonly=\"readonly\" style=\"display:none;\" />\r\n");
	XYBody.Append("</td>\r\n");
	XYBody.Append("</tr>\r\n");

	}	//end if

	XYBody.Append("</table>\r\n");
	XYBody.Append("<input id=\"datetype\"  type=\"hidden\" value=\"");

	if (module.EName=="offer"||module.PEName=="offer")
	{

	XYBody.Append("<table class=\"contentl mt8\">\r\n");
	XYBody.Append("<tr>\r\n");
	XYBody.Append("<th >���ۣ�</th>\r\n");
	XYBody.Append("<td><input maxlength=\"10\"  name =\"txtsprice\" id=\"txtsprice\" value=\"0\"/>Ԫ<em>ע����0λ���飬ֻ�������֣�</em></td>\r\n");
	XYBody.Append("</tr>\r\n");
	XYBody.Append("<tr>\r\n");
	XYBody.Append("<th >������λ��</th>\r\n");
	XYBody.Append("<td><input maxlength=\"10\"  name =\"txtsunit\"/></td>\r\n");
	XYBody.Append("</tr>\r\n");
	XYBody.Append("<tr>\r\n");
	XYBody.Append("<th >��С������</th>\r\n");
	XYBody.Append("<td><input maxlength=\"6\"  name =\"txtssmallnum\" value=\"1\"/><em>ע����0Ϊ��������ֻ�������֣�</em></td>\r\n");
	XYBody.Append("</tr>\r\n");
	XYBody.Append("<tr>\r\n");
	XYBody.Append("<th >����������</th>\r\n");
	XYBody.Append("<td><input maxlength=\"6\"  name =\"txtscountnum\" value=\"0\"/><em>ע����0Ϊ��������ֻ�������֣�</em></td>\r\n");
	XYBody.Append("</tr>\r\n");

	if (ispayment==true)
	{

	XYBody.Append("<tr>\r\n");
	XYBody.Append("<th >�Ƿ�֧�����߽��ף�<em class=\"red\">*</em></th>\r\n");
	XYBody.Append("<td><input type=\"radio\" value=\"1\" name=\"rbIsPayMent\" />֧��<input type=\"radio\" value=\"0\" name=\"rbIsPayMent\" checked=\"checked\" />��֧��</td>\r\n");
	XYBody.Append("</tr>\r\n");

	}	//end if

	XYBody.Append("</table>\r\n");

	}	//end if


	if (module.EName=="venture"||module.PEName=="venture")
	{

	XYBody.Append("<table class=\"contentl mt8\">\r\n");
	XYBody.Append("<tr>\r\n");
	XYBody.Append("<th >���ۣ�<em class=\"red\">*</em></th>\r\n");
	XYBody.Append("<td><input maxlength=\"10\" id=\"txtcprice\"  name =\"txtcprice\" value=\"0\"/>Ԫ<em>ע����0Ϊ���飬ֻ�������֣�</em></td>\r\n");
	XYBody.Append("</tr>\r\n");
	XYBody.Append("<tr>\r\n");
	XYBody.Append("<th >������λ��<em class=\"red\">*</em></th>\r\n");
	XYBody.Append("<td><input maxlength=\"10\"  name =\"txtcunit\"/></td>\r\n");
	XYBody.Append("</tr>\r\n");
	XYBody.Append("<tr>\r\n");
	XYBody.Append("<th >��С������<em class=\"red\">*</em></th>\r\n");
	XYBody.Append("<td><input maxlength=\"6\"  id =\"txtcsmallnum\" name =\"txtcsmallnum\" value=\"1\"/><em>ע����0Ϊ��������ֻ�������֣�</em></td>\r\n");
	XYBody.Append("</tr>\r\n");
	XYBody.Append("<tr>\r\n");
	XYBody.Append("<th >����������<em class=\"red\">*</em></th>\r\n");
	XYBody.Append("<td><input maxlength=\"6\"  id =\"txtccountnum\" name =\"txtccountnum\" value=\"0\"/><em>ע����0Ϊ��������ֻ�������֣�</em></td>\r\n");
	XYBody.Append("</tr>\r\n");
	XYBody.Append("</table>\r\n");

	}	//end if


	if (module.EName=="investment"||module.PEName=="investment")
	{

	XYBody.Append("<table class=\"contentl mt8\">\r\n");
	XYBody.Append("    <tr>\r\n");
	XYBody.Append("        <th>׼������(����)�ĵ�����</th>\r\n");
	XYBody.Append("        <td>\r\n");
	XYBody.Append("            <input  type=\"radio\"  id=\"citys\" name =\"rbcity\" onclick =\"showcityname(1);\" checked=\"checked\" value =\"ȫ��\"/>ȫ��\r\n");
	XYBody.Append("            <input id=\"cityl\" type=\"radio\" name=\"rbcity\"  onclick =\"showcityname(2);\" value=\"\"/> ����\r\n");
	XYBody.Append("        </td>\r\n");
	XYBody.Append("    </tr>\r\n");
	XYBody.Append("    <tr style=\"display:none\" id=\"cityls\">\r\n");
	XYBody.Append("        <th>&nbsp;</th>\r\n");
	XYBody.Append("        <td id=\"divarea\"><input type =\"hidden\" id=\"city\"  name=\"city\"/></td>\r\n");
	XYBody.Append("    </tr>\r\n");
	XYBody.Append("</table>\r\n");
	XYBody.Append("<script type=\"text/javascript\">\r\n");
	XYBody.Append("    var claarea = new ClassTypes(\"claarea\",'area','divarea','city');\r\n");
	XYBody.Append("    claarea.Init();\r\n");
	XYBody.Append("</" + "script>\r\n");
	XYBody.Append("<table  class=\"contentl\" id=\"tabInvestmentSell\" style=\"display:none; border-top:0px;\">\r\n");
	XYBody.Append("    <tr>\r\n");
	XYBody.Append("        <th >����֧�֣�</th>\r\n");
	XYBody.Append("        <td><textarea id=\"txtsupport\" name =\"txtsupport\" cols=\"80\" rows=\"7\"></textarea></td>\r\n");
	XYBody.Append("    </tr>\r\n");
	XYBody.Append("    <tr>\r\n");
	XYBody.Append("        <th >����Ҫ��</th>\r\n");
	XYBody.Append("        <td> <textarea id=\"txtdemand\" name =\"txtdemand\" cols=\"80\" rows=\"7\"></textarea></td>\r\n");
	XYBody.Append("    </tr>\r\n");
	XYBody.Append("    <tr>\r\n");
	XYBody.Append("        <th >չʾ��ַ��</th>\r\n");
	XYBody.Append("        <td><input maxlength=\"95\"  name =\"pageurl\" id=\"pageurl\"/></td>\r\n");
	XYBody.Append("    </tr>\r\n");
	XYBody.Append("</table>\r\n");
	XYBody.Append("<table class=\"contentl\" id=\"tabInvestmentBuy\" style=\"display:none;border-top:0px;\">\r\n");
	XYBody.Append("    <tr>\r\n");
	XYBody.Append("        <th >��������Ʒ�ƣ�</th>\r\n");
	XYBody.Append("        <td><input type=\"text\"  name =\"txtbrand\" style=\"width: 255px\" id=\"txtbrand\"/></td>\r\n");
	XYBody.Append("    </tr>\r\n");
	XYBody.Append("</table>\r\n");

	}	//end if

	XYBody.Append("<input type =\"hidden\" id=\"title\" />\r\n");
	XYBody.Append(" <div class=\"content_action\">\r\n");
	XYBody.Append("<input  type=\"submit\" value=\"ͬ����������Ҫ����\"   class =\"button\" onclick =\"return CheckInfoEditFrom('");
	XYBody.Append("</div>\r\n");
	XYBody.Append("<br/>\r\n");
	XYBody.Append("<table class=\"contentl top5\">\r\n");
	XYBody.Append("<caption>\r\n");
	XYBody.Append("    <i><img src=\"/templates/");
	XYBody.Append("    ��ϵ��ʽ��ȷ�����޸�  <span>����������������Ϣ���޷�ͨ����ˣ�</span>\r\n");
	XYBody.Append("</caption>\r\n");
	XYBody.Append("<tr>\r\n");
	XYBody.Append("<th>������</th>\r\n");
	XYBody.Append("<td>");
	XYBody.Append("</tr>\r\n");
	XYBody.Append("<tr>\r\n");
	XYBody.Append("<th>��˾���ƣ�</th>\r\n");
	XYBody.Append("<td>");
	XYBody.Append("</tr>\r\n");
	XYBody.Append("<tr>\r\n");
	XYBody.Append("<th>�绰��</th>\r\n");
	XYBody.Append("<td>");
	XYBody.Append("</tr>\r\n");
	XYBody.Append("<tr>\r\n");
	XYBody.Append("<th>���棺</th>\r\n");
	XYBody.Append("<td>");
	XYBody.Append("</tr>\r\n");
	XYBody.Append("<tr>\r\n");
	XYBody.Append("<th>�����ʼ���</th>\r\n");
	XYBody.Append("<td>");
	XYBody.Append("</tr>\r\n");
	XYBody.Append("</table>\r\n");
	XYBody.Append(" </form>\r\n");
	XYBody.Append("</div> \r\n");
	XYBody.Append(" <!--����Ҫ������ɾ��-->\r\n");
	XYBody.Append(" <script language=\"javascript\" type=\"text/javascript\">\r\n");
	XYBody.Append("    InitInfoAddPageForm('");
	XYBody.Append(" </" + "script>\r\n");

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