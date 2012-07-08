<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="XYECOM.Page.investment.index,XYECOM.Page" %>
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

	XYBody.Append("    <title> 招商加盟 - xyecom 3.0 首页 </title>\r\n");
	XYBody.Append("	<meta name=\"description\" content=\"xyecom\" />\r\n");
	XYBody.Append("	<meta name=\"keywords\" content=\"xyecom\" />\r\n");
	XYBody.Append("	<meta name=\"robots\" content=\"all\"  />\r\n");
	XYBody.Append("	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=\"gb2312\" />\r\n");
	XYBody.Append("	<link href=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/css/global.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
	XYBody.Append("	<link href=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/css/index.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
	XYBody.Append("	<link href=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/css/channel.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
	XYBody.Append("	<script type=\"text/javascript\" src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("common/js/base.js\" language=\"javascript\"></" + "script>\r\n");
	XYBody.Append("	<script language =\"javascript\" type =\"text/javascript\" src =\"/templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/js/login.js\"></" + "script>	\r\n");


	XYBody.Append("</head>\r\n");
	XYBody.Append("<body>\r\n");
	XYBody.Append("<div id=\"wrapper\">\r\n");
	XYBody.Append("	<div id=\"hd_info\">\r\n");
	XYBody.Append("		<div id=\"cnts\">\r\n");
	XYBody.Append("			<div id=\"site_cang\">\r\n");
	XYBody.Append("				");	XYBody.Append(pageinfo.LoginStatus);	XYBody.Append("\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div id=\"log_info\">\r\n");
	XYBody.Append("				<a href=\"");	XYBody.Append(config.weburl);	XYBody.Append("\">首页</a> <a href=\"");	XYBody.Append(config.weburl);	XYBody.Append("offer/\">产品库</a> <a href=\"");	XYBody.Append(config.weburl);	XYBody.Append("news/\">行业资讯</a> <a href=\"");	XYBody.Append(config.weburl);	XYBody.Append("exhibition/\">展会</a> <a href=\"");	XYBody.Append(config.weburl);	XYBody.Append("job/\">人才</a>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div class=\"clr\"></div>\r\n");
	XYBody.Append("		</div>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("	<div class=\"clr\"></div>\r\n");
	XYBody.Append("	<div id=\"zs_header\">\r\n");
	XYBody.Append("		<div id=\"zs_logo\"><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/logo.gif\" width=\"219\" height=\"50\" alt=\"\" /></a></div>\r\n");
	XYBody.Append("		<div id=\"zs_search\">\r\n");
	XYBody.Append("			<select id=\"\">\r\n");
	XYBody.Append("				<option value=\"\" selected=\"selected\">展会</option>\r\n");
	XYBody.Append("				<option value=\"\">品牌</option>\r\n");
	XYBody.Append("			</select>\r\n");
	XYBody.Append("			<input maxLength=\"20\" name=\"keyword\" onFocus=\"this.value='';this.focus()\" value=\"输入关键词\" class=\"search_text2\" />\r\n");
	XYBody.Append("			<button value=\"搜索\" id=\"DoSearch\" name=\"DoSearch\" class=\"btsearch2\" />搜索</button>\r\n");
	XYBody.Append("		</div>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("	<div id=\"zs_bnr_hd\"><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp_bnr_5.gif\" width=\"980\" height=\"72\" alt=\"\" /></a></div>\r\n");
	XYBody.Append("	<div id=\"zs_nav\">\r\n");
	XYBody.Append("		<div class=\"guide\"><a href=\"\">运动休闲类</a>  |  <a href=\"\">皮鞋类品牌</a>  |  <a href=\"\">童鞋类品牌</a>  |  <a href=\"\">箱包类品牌</a>  |  <a href=\"\">服装服饰类</a>  |  <a href=\"\">鞋机鞋材类</a>  |  <a href=\"\">功能鞋品牌</a>  |  <a href=\"\">其他品牌</a></div>\r\n");
	XYBody.Append("		<div class=\"text\">\r\n");
	XYBody.Append("			<strong>热点招商：</strong>\r\n");
	XYBody.Append("			<ul>\r\n");
	XYBody.Append("				" +  XYECOMCreateHTML("XY_InvestmentIndex_ReDianZhaoShang").ToString() + "\r\n");
	XYBody.Append("				<div class=\"clr\"></div>\r\n");
	XYBody.Append("			</ul>\r\n");
	XYBody.Append("			<div class=\"clr\"></div>\r\n");
	XYBody.Append("		</div>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("	<div id=\"zhaoshang_medal\">\r\n");
	XYBody.Append("		<div id=\"tit\"><span class=\"fright\"><a href=\"#\">名门玉酒，酒中之玉——玉酒(玉典)全国总经销：四川玖玖酒业</a>&nbsp;&nbsp;</span></div>\r\n");
	XYBody.Append("		<table width=\"980\" border=\"0\" cellspacing=\"1\" cellpadding=\"2\" align=\"center\" bgcolor=\"#91B7DE\">\r\n");
	XYBody.Append("			<tr bgcolor=\"white\">\r\n");
	XYBody.Append("				<td><a href=\"\">渝新干锅辣鸭头</a></td>\r\n");
	XYBody.Append("				<td><a href=\"\">以酒会友诚交天下客</a></td>\r\n");
	XYBody.Append("				<td><a href=\"\">发掘传统美食精华</a></td>\r\n");
	XYBody.Append("				<td><a href=\"\">渝新干锅辣鸭头</a></td>\r\n");
	XYBody.Append("				<td><a href=\"\">新鲜屋精致无糖苹果醋饮</a></td>\r\n");
	XYBody.Append("			</tr>\r\n");
	XYBody.Append("			<tr bgcolor=\"white\">\r\n");
	XYBody.Append("				<td><a href=\"\">渝新干锅辣鸭头</a></td>\r\n");
	XYBody.Append("				<td><a href=\"\">以酒会友诚交天下客</a></td>\r\n");
	XYBody.Append("				<td><a href=\"\">发掘传统美食精华</a></td>\r\n");
	XYBody.Append("				<td><a href=\"\">渝新干锅辣鸭头诚邀加盟</a></td>\r\n");
	XYBody.Append("				<td><a href=\"\">新鲜屋精致无糖苹果醋饮</a></td>\r\n");
	XYBody.Append("			</tr>\r\n");
	XYBody.Append("			<tr bgcolor=\"white\">\r\n");
	XYBody.Append("				<td><a href=\"\">渝新干锅辣鸭头</a></td>\r\n");
	XYBody.Append("				<td><a href=\"\">以酒会友诚交天下客</a></td>\r\n");
	XYBody.Append("				<td><a href=\"\">发掘传统美食精华</a></td>\r\n");
	XYBody.Append("				<td><a href=\"\">渝新干锅辣鸭头 诚邀加盟</a></td>\r\n");
	XYBody.Append("				<td><a href=\"\">新鲜屋精致无糖苹果醋饮</td>\r\n");
	XYBody.Append("			</tr>\r\n");
	XYBody.Append("		</table>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("	<div id=\"idx_cnt2\">\r\n");
	XYBody.Append("		<div id=\"left\">\r\n");
	XYBody.Append("			<div class=\"area1\" id=\"zs_area1\">\r\n");
	XYBody.Append("				<div class=\"hd\">\r\n");
	XYBody.Append("					<div class=\"tit\">\r\n");
	XYBody.Append("						<span class=\"fright\"><a href=\"\" class=\"black\">更多&raquo;</a></span>\r\n");
	XYBody.Append("						<a href=\"\" class=\"h2_zs\"><h2>推荐招商</h2></a>\r\n");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("				<div class=\"cnt\">\r\n");
	XYBody.Append("					<div class=\"g_item\">\r\n");
	XYBody.Append("						<div class=\"gq_pics\">\r\n");
	XYBody.Append("							<ul>\r\n");
	XYBody.Append("								" +  XYECOMCreateHTML("XY_InvestmentIndex_TuiJianZhaoShangIMG").ToString() + "\r\n");
	XYBody.Append("							</ul>\r\n");
	XYBody.Append("						</div>\r\n");
	XYBody.Append("						<ul class=\"clr\">\r\n");
	XYBody.Append("							" +  XYECOMCreateHTML("XY_InvestmentIndex_TuiJianZhaoShang").ToString() + "\r\n");
	XYBody.Append("						</ul>\r\n");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div class=\"area1\" id=\"zs_area2\">\r\n");
	XYBody.Append("				<div class=\"hd\">\r\n");
	XYBody.Append("					<div class=\"tit\">\r\n");
	XYBody.Append("						<span class=\"fright\"><a href=\"\" class=\"black\">更多&raquo;</a></span>\r\n");
	XYBody.Append("						<a href=\"\" class=\"h2_jm\"><h2>推荐加盟</h2></a>\r\n");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("				<div class=\"cnt\">\r\n");
	XYBody.Append("					<div class=\"g_item\">\r\n");
	XYBody.Append("						<div class=\"gq_pics\">\r\n");
	XYBody.Append("							<ul>\r\n");
	XYBody.Append("								" +  XYECOMCreateHTML("XY_InvestmentIndex_TuiJianJiaMengIMG").ToString() + "\r\n");
	XYBody.Append("							</ul>\r\n");
	XYBody.Append("						</div>\r\n");
	XYBody.Append("						<ul class=\"clr\">\r\n");
	XYBody.Append("							" +  XYECOMCreateHTML("XY_InvestmentIndex_TuiJianJiaMeng").ToString() + "\r\n");
	XYBody.Append("						</ul>\r\n");
	XYBody.Append("					</div>\r\n");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div class=\"clr\"></div>\r\n");
	XYBody.Append("		</div>\r\n");
	XYBody.Append("		<div id=\"right\">\r\n");
	XYBody.Append("			<div class=\"MTitle_01\">\r\n");
	XYBody.Append("				<h2 id=\"h201\" class=\"\"><a target=\"_blank\" href=\"#\"><strong>地区导航</strong></a></h2>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div id=\"con01\" class=\"Mblk_01\">\r\n");
	XYBody.Append("				<div class=\"city_sel\">\r\n");
	XYBody.Append("					<ul>\r\n");
	XYBody.Append("						" +  XYECOMCreateHTML("XY_CLS_InvestmentDiQu").ToString() + "\r\n");
	XYBody.Append("						<div class=\"clr\"></div>\r\n");
	XYBody.Append("					</ul>\r\n");
	XYBody.Append("					<div class=\"clr\"></div>\r\n");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div class=\"MTitle_01\" style=\"margin-top:6px;\">\r\n");
	XYBody.Append("				<h2 id=\"y_tab1\" class=\"\" onmouseover=\"xy_selectBox(2,1,'y','selected');\"><a target=\"_blank\" href=\"#\">名优企业</a></h2>\r\n");
	XYBody.Append("			    <h2 id=\"y_tab2\" class=\"selected\" onmouseout=\"xy_selectBox(2,2,'y','selected');\"><a target=\"_blank\" href=\"#\">最新企业</a></h2>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("			<div id=\"y_box1\" class=\"Mblk_01\" style=\"margin-bottom:0;height:158px; display:none;\">\r\n");
	XYBody.Append("				<div class=\"rank_compy\">\r\n");
	XYBody.Append("					<ul>\r\n");
	XYBody.Append("						" +  XYECOMCreateHTML("XY_Index_ZuiXinQiYe").ToString() + "\r\n");
	XYBody.Append("					</ul>\r\n");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("            <div id=\"y_box2\" class=\"Mblk_01\" style=\"margin-bottom:0;height:158px;\">\r\n");
	XYBody.Append("				<div class=\"rank_compy\">\r\n");
	XYBody.Append("					<ul>\r\n");
	XYBody.Append("						" +  XYECOMCreateHTML("XY_Index_ZuiXinQiYe").ToString() + "\r\n");
	XYBody.Append("					</ul>\r\n");
	XYBody.Append("				</div>\r\n");
	XYBody.Append("			</div>\r\n");
	XYBody.Append("		</div>\r\n");
	XYBody.Append("		<div class=\"clr\"></div>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("	<div class=\"clr\"></div>\r\n");
	XYBody.Append("	<div class=\"zs_cate\">\r\n");
	XYBody.Append("		<span class=\"fright\">更多></span>\r\n");
	XYBody.Append("		<h2><a href=\"\">服装</a></h2>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("	<div class=\"zs_cnt\">\r\n");
	XYBody.Append("		<ul>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_1.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_2.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_3.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_4.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_5.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_5.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_6.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_7.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_8.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_9.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_10.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_3.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_4.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_6.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_5.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_1.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_10.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_7.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_9.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_8.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_2.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_8.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_9.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_10.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_3.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_4.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_6.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("		</ul>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("	<div class=\"zs_cate\">\r\n");
	XYBody.Append("		<span class=\"fright\">更多></span>\r\n");
	XYBody.Append("		<h2><a href=\"\">服装</a></h2>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("	<div class=\"zs_cnt\">\r\n");
	XYBody.Append("		<ul>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_1.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_2.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_3.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_4.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_5.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_5.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_6.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_7.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_8.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_9.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_10.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_3.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_4.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_6.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_5.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_1.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_10.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_7.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_9.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_8.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_2.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_8.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_9.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_10.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_3.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_4.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_6.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("		</ul>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("	<div class=\"zs_cate\">\r\n");
	XYBody.Append("		<span class=\"fright\">更多></span>\r\n");
	XYBody.Append("		<h2><a href=\"\">服装</a></h2>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("	<div class=\"zs_cnt\">\r\n");
	XYBody.Append("		<ul>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_1.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_2.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_3.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_4.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_5.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_5.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_6.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_7.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_8.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_9.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_10.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_3.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_4.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_6.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_5.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_1.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_10.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_7.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_9.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_8.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_2.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_8.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_9.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_10.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_3.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_4.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("			<li><a href=\"\"><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/temp/zs_pic_6.gif\" width=\"100\" height=\"100\" alt=\"\" /></a></li>\r\n");
	XYBody.Append("		</ul>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("	<div class=\"spacer\" style=\"height:8px;\"></div>\r\n");

	XYBody.Append("	<div id=\"footer\">\r\n");
	XYBody.Append("		<a href=\"\">集团首页</a> | <a href=\"/about/index.htm\" target=\"_blank\">关于我们</a> | <a href=\"\">免责声明</a> | <a href=\"\">媒体报道</a> | <a href=\"\">诚聘英才</a> | <a href=\"\">代理专区</a> | <a href=\"\">广告专区</a> | <a href=\"\">友情链接</a> | <a href=\"\">联系我们</a> | <a href=\"\">网站地图</a>\r\n");
	XYBody.Append("	</div>\r\n");
	XYBody.Append("	<div id=\"copyright\">\r\n");
	XYBody.Append("		<div id=\"copy_info\">\r\n");
	XYBody.Append("			<ul>\r\n");
	XYBody.Append("				<li>Copyright &copy; 2005-2009  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href=\"#\" target=\"_blank\">京ICP备05003331号</a></li>\r\n");
	XYBody.Append("				<li><img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/ico_phone.gif\" align=\"absmiddle\">电话：86-010-62669815 传真：86-010-86818791  <img src=\"");	XYBody.Append(config.WebURL);	XYBody.Append("templates/");	XYBody.Append(config.TemplatePath);	XYBody.Append("/images/ico_email.gif\" />E-Mail：<a href=\"#\">info@xyecom.com </a></li>\r\n");
	XYBody.Append("				<li>版权所有　纵横易商软件 - 致力于中小企业电子商务应用技术服务　未经授权请勿转载</li>\r\n");
	XYBody.Append("			</ul>			\r\n");
	XYBody.Append("		</div>\r\n");
	XYBody.Append("		<div class=\"copyright_i\">\r\n");
	XYBody.Append("		 <div class=\"com copyright_i1\"><p class=\"p\"><a href=\"#\" target=\"_blank\">深圳网络警察报警平台</a></p></div>\r\n");
	XYBody.Append("		 <div class=\"com copyright_i2\"><p class=\"p\">公共信息安全网络监察</p></div>\r\n");
	XYBody.Append("		 <div class=\"com copyright_i3\"><p class=\"p\"><a href=\"#\" target=\"_blank\">经营性网站备案信息</a></p></div>\r\n");
	XYBody.Append("		 <div class=\"com copyright_i4\"><p class=\"p\"><a href=\"#\" target=\"_blank\">不良信息举报中心</a></p></div>\r\n");
	XYBody.Append("		</div>\r\n");
	XYBody.Append("	 </div>\r\n");


	XYBody.Append("</div>\r\n");
	XYBody.Append("</body>\r\n");
	XYBody.Append("</html>\r\n");

	XYBody.Append(IsCopyright());
	Response.Write(XYBody.ToString());
}
</script>
