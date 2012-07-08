using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using XYECOM.Business;
using XYECOM.Core;

public partial class xymanage_UserManage_UserGradePopedom : XYECOM.Web.BasePage.ManagePage
{
    #region 页面加载
    protected void Page_Load(object sender, EventArgs e)
    {
        CheckRole("userGrade");

        DDLBind();
        BindMessageNum();

        if (!Page.IsPostBack)
        {
            this.Button1.Attributes.Add("onclick", "javascript:return CheckUserGradePopedmoSetting() ;");
            if (XYECOM.Core.XYRequest.GetQueryString("UG_ID") != "")
            {
                int userGradeId = XYECOM.Core.MyConvert.GetInt32(XYECOM.Core.XYRequest.GetQueryString("UG_ID"));
                XYECOM.Business.UserGradePopedom uf = new XYECOM.Business.UserGradePopedom();
                XYECOM.Model.UserGradePopedomInfo info = uf.GetItem(userGradeId);

                if (info == null) throw new Exception("权限信息不存在！");

                this.lbusergradetype.Text = new XYECOM.Business.UserGrade().GetItem(userGradeId).GradeName;

                if (info.UGP_IsShop)
                {
                    this.rbshopyes.Checked = true;
                    this.rbshopno.Checked = false;
                }
                else
                {
                    this.rbshopno.Checked = true;
                    this.rbshopyes.Checked = false;
                }

                if (info.IsCompanyProType)
                {
                    this.rbiscompanyprotypeyes.Checked = true;
                    this.rbiscompanyprotypeno.Checked = false;
                }
                else
                {
                    this.rbiscompanyprotypeyes.Checked = false;
                    this.rbiscompanyprotypeno.Checked = true;
                }

                if (info.UGP_IsMessage)
                {
                    this.rbmessageyes.Checked = true;
                    this.rbmessageno.Checked = false;
                }
                else
                {
                    this.rbmessageno.Checked = true;
                    this.rbmessageyes.Checked = false;
                }


                this.chkIsSubdomain.Checked = info.IsSubdomain;
                this.chkIsBindingTopdomain.Checked = info.IsBindingTopdomain;

                //if (info.IsViewJoinContact)
                //{
                //    rdoIsViewJoinContactYes.Checked = true;
                //    rdoIsViewJoinContactNo.Checked = false;
                //}
                //else
                //{
                //    rdoIsViewJoinContactNo.Checked = true;
                //    rdoIsViewJoinContactYes.Checked = false;
                //}

                this.refashtime.Text = info.UGP_RefurbishTime.ToString();

                this.refashtimes.Text = info.UGP_RefubishTimes.ToString();

                this.refashnum.Text = info.UGP_RefubishNum.ToString();


                if (info.UGP_IsPayMent)
                {
                    this.rbispaymentyes.Checked = true;
                    this.rbispaymentno.Checked = false;
                }
                else
                {
                    this.rbispaymentno.Checked = true;
                    this.rbispaymentyes.Checked = false;
                }

                if (info.UGP_IsLeachKeyWord)
                {
                    this.keywordyes.Checked = true;
                    this.keywordno.Checked = false;
                }
                else
                {
                    this.keywordno.Checked = true;
                    this.keywordyes.Checked = false;
                }

                if (info.IsShowChargeNews)
                {
                    this.rdoShowChargeNewsYes.Checked = true;
                    this.rdoShowChargeNewsNo.Checked = false;
                }
                else
                {
                    this.rdoShowChargeNewsYes.Checked = false;
                    this.rdoShowChargeNewsNo.Checked = true;
                }

                //查看权限
                if (info.UGP_IsSupplyLinkMathod)//供应是否可以查看联系方式
                {
                    this.cblgradelist.Items[0].Selected = true;
                }
                else
                {
                    this.cblgradelist.Items[0].Selected = false;
                }
                if (info.UGP_IsBuyLinkMathod)//求购是否可以查看联系方式
                    this.cblgradelist.Items[1].Selected = true;
                else
                    this.cblgradelist.Items[1].Selected = false;

                if (info.UGP_IsSupplyMachiningLinkMathod)//提供加工是否可以查看联系方式
                    this.cblgradelist.Items[2].Selected = true;
                else
                    this.cblgradelist.Items[2].Selected = false;

                if (info.UGP_IsBuyMachiningLinkMathod)//寻求加工是否可以查看联系方式
                    this.cblgradelist.Items[3].Selected = true;
                else
                    this.cblgradelist.Items[3].Selected = false;

                if (info.UGP_IsBuinessLinkMathod)//招商是否可以查看联系方式
                    this.cblgradelist.Items[4].Selected = true;
                else
                    this.cblgradelist.Items[4].Selected = false;

                if (info.UGP_IsSurrogateLinkMathod)//代理是否可以查看联系方式
                    this.cblgradelist.Items[5].Selected = true;
                else
                    this.cblgradelist.Items[5].Selected = false;

                if (info.UGP_IsSupplyServerLinkMathod)//提供服务是否可以查看联系方式
                    this.cblgradelist.Items[6].Selected = true;
                else
                    this.cblgradelist.Items[6].Selected = false;

                if (info.UGP_IsBuyServerLinkMathod)//寻求服务是否可以查看联系方式
                    this.cblgradelist.Items[7].Selected = true;
                else
                    this.cblgradelist.Items[7].Selected = false;

                //if (info.UGP_IsExhibtionLinkMathod)//展会是否可以查看联系方式
                //    this.cblgradelist.Items[8].Selected = true;
                //else
                //    this.cblgradelist.Items[8].Selected = false;

                //if (info.UGP_IsBrandLinkMathod)//品牌是否可以查看联系方式
                //    this.cblgradelist.Items[9].Selected = true;
                //else
                //    this.cblgradelist.Items[9].Selected = false;

                if (info.UGP_IsJobLinkMathod)//人才是否可以查看联系方式
                    this.cblgradelist.Items[8].Selected = true;
                else
                    this.cblgradelist.Items[8].Selected = false;

                if (info.UGP_IsCompanyLinkMathod)//企业是否可以查看联系方式
                    this.cblgradelist.Items[9].Selected = true;
                else
                    this.cblgradelist.Items[9].Selected = false;

                //被查看权限
                if (info.SeeBySellOffer)//供应是否可以查看联系方式
                    this.chkOtherUserLookContactsSetting.Items[0].Selected = true;
                else
                    this.chkOtherUserLookContactsSetting.Items[0].Selected = false;

                if (info.SeeByBuyOffer)//求购是否可以查看联系方式
                    this.chkOtherUserLookContactsSetting.Items[1].Selected = true;
                else
                    this.chkOtherUserLookContactsSetting.Items[1].Selected = false;

                if (info.SeeBySellMachining)//提供加工是否可以查看联系方式
                    this.chkOtherUserLookContactsSetting.Items[2].Selected = true;
                else
                    this.chkOtherUserLookContactsSetting.Items[2].Selected = false;

                if (info.SeeByBuyMachining)//寻求加工是否可以查看联系方式
                    this.chkOtherUserLookContactsSetting.Items[3].Selected = true;
                else
                    this.chkOtherUserLookContactsSetting.Items[3].Selected = false;

                if (info.SeeBySellBusiness)//招商是否可以查看联系方式
                    this.chkOtherUserLookContactsSetting.Items[4].Selected = true;
                else
                    this.chkOtherUserLookContactsSetting.Items[4].Selected = false;

                if (info.SeeByBuyBusiness)//代理是否可以查看联系方式
                    this.chkOtherUserLookContactsSetting.Items[5].Selected = true;
                else
                    this.chkOtherUserLookContactsSetting.Items[5].Selected = false;

                if (info.SeeBySellService)//提供服务是否可以查看联系方式
                    this.chkOtherUserLookContactsSetting.Items[6].Selected = true;
                else
                    this.chkOtherUserLookContactsSetting.Items[6].Selected = false;

                if (info.SeeByBuyService)//寻求服务是否可以查看联系方式
                    this.chkOtherUserLookContactsSetting.Items[7].Selected = true;
                else
                    this.chkOtherUserLookContactsSetting.Items[7].Selected = false;

                //if (info.SeeByExhibtion)//展会是否可以查看联系方式
                //    this.chkOtherUserLookContactsSetting.Items[8].Selected = true;
                //else
                //    this.chkOtherUserLookContactsSetting.Items[8].Selected = false;

                //if (info.SeeByBrand)//品牌是否可以查看联系方式
                //    this.chkOtherUserLookContactsSetting.Items[9].Selected = true;
                //else
                //    this.chkOtherUserLookContactsSetting.Items[9].Selected = false;

                //if (info.SeeByJob)//人才是否可以查看联系方式
                //    this.chkOtherUserLookContactsSetting.Items[8].Selected = true;
                //else
                //    this.chkOtherUserLookContactsSetting.Items[8].Selected = false;

                if (info.SeeByCompany)//企业是否可以查看联系方式
                    this.chkOtherUserLookContactsSetting.Items[8].Selected = true;
                else
                    this.chkOtherUserLookContactsSetting.Items[8].Selected = false;

                this.tbadvisedays.Text = info.AdviseDays.ToString();

                if (Convert.ToInt32(info.DebaseUserGrade) == 0)
                    this.ddldebaseusergrade.SelectedValue = "-1";
                else
                    this.ddldebaseusergrade.SelectedValue = info.DebaseUserGrade.ToString();

                if (info.IsIMOnlineTalk)
                {
                    this.rdoQQOnLineTalkYes.Checked = true;
                    this.rdoQQOnLineTalkNo.Checked = false;
                }
                else
                {
                    this.rdoQQOnLineTalkYes.Checked = false;
                    this.rdoQQOnLineTalkNo.Checked = true;
                }

                this.uploadpicnum.Text = info.UploadPicNum.ToString();
                this.seecontactsnum.Text = info.SeeContactsNum.ToString();

                if (!info.MessageNum.Equals("") && !info.Equals(null))
                {
                    this.MessageNum.InnerHtml = GetModuleList("", "", "1", info.MessageNum);
                }
                if (info.LimitDate.ToString().Equals("0"))
                {
                    this.HidLimitDate.Value = "0";
                    this.LimitDate.Text = "0";
                    this.chkIsLimit.Checked = true;

                    this.trInfoNumber.Style.Add("display", "none");
                }
                else
                {
                    this.LimitDate.Text = info.LimitDate.ToString();
                }
                txtOperationMargin.Text = info.OperationMargin;
                txtTicheng.Text = info.Ticheng;
                txtContact.Text = info.ContractPercent;
            }
        }
    }
    #endregion

    #region  设置
    protected void Button1_Click(object sender, EventArgs e)
    {
        XYECOM.Business.UserGradePopedom ugpBLL = new XYECOM.Business.UserGradePopedom();

        if (XYECOM.Core.XYRequest.GetQueryString("UG_ID") == "") throw new Exception("参数异常！");

        int userGradeId = XYECOM.Core.MyConvert.GetInt32(XYECOM.Core.XYRequest.GetQueryString("UG_ID"));

        XYECOM.Model.UserGradePopedomInfo info = new XYECOM.Business.UserGradePopedom().GetItem(userGradeId);

        if (info == null) throw new Exception("用户组不存在或已被删除！");

        if (this.rbshopyes.Checked == true)//是否可以开店
            info.UGP_IsShop = true;
        else
            info.UGP_IsShop = false;

        if (this.rbispaymentyes.Checked == true)//是否支持在线支付 
            info.UGP_IsPayMent = true;
        else
            info.UGP_IsPayMent = false;

        if (this.rbiscompanyprotypeyes.Checked == true)//是否可以在用户中心添加自己的分类
            info.IsCompanyProType = true;
        else
            info.IsCompanyProType = false;

        info.IsSubdomain = chkIsSubdomain.Checked;
        info.IsBindingTopdomain = chkIsBindingTopdomain.Checked;


        if (this.keywordyes.Checked == true)//是否过滤关键字
            info.UGP_IsLeachKeyWord = true;
        else
            info.UGP_IsLeachKeyWord = false;

        if (this.rbmessageyes.Checked == true)//是否可以查看留言
            info.UGP_IsMessage = true;
        else
            info.UGP_IsMessage = false;

        //info.IsViewJoinContact = false;
        //if (rdoIsViewJoinContactYes.Checked) info.IsViewJoinContact = true;

        info.IsIMOnlineTalk = false;
        if (this.rdoQQOnLineTalkYes.Checked) info.IsIMOnlineTalk = true;

        info.IsShowChargeNews = false;
        if (this.rdoShowChargeNewsYes.Checked) info.IsShowChargeNews = true;


        if (!info.IsShowChargeNews)
        {
            new XYECOM.Business.ChargeNewsSet().DeleteByUserGradeId(userGradeId);
        }

        if (this.tbadvisedays.Text != "")
            info.AdviseDays = Convert.ToInt32(this.tbadvisedays.Text.Trim());
        else
            info.AdviseDays = 0;

        if (this.ddldebaseusergrade.SelectedValue == "-1")
            info.DebaseUserGrade = 0;
        else
            info.DebaseUserGrade = Convert.ToInt32(this.ddldebaseusergrade.SelectedValue);

        if (this.refashtime.Text != "")
            info.UGP_RefurbishTime = Convert.ToInt32(this.refashtime.Text);

        if (this.refashtimes.Text != "")
            info.UGP_RefubishTimes = Convert.ToInt32(this.refashtimes.Text);

        if (this.refashnum.Text != "")
            info.UGP_RefubishNum = Convert.ToInt32(this.refashnum.Text);


        #region 查看联系方式权限
        if (this.cblgradelist.Items[0].Selected == true)//供应是否可以查看联系方式
            info.UGP_IsSupplyLinkMathod = true;
        else
            info.UGP_IsSupplyLinkMathod = false;

        if (this.cblgradelist.Items[1].Selected == true)//求购是否可以查看联系方式
            info.UGP_IsBuyLinkMathod = true;
        else
            info.UGP_IsBuyLinkMathod = false;

        if (this.cblgradelist.Items[2].Selected == true)//提供加工是否可以查看联系方式
            info.UGP_IsSupplyMachiningLinkMathod = true;
        else
            info.UGP_IsSupplyMachiningLinkMathod = false;

        if (this.cblgradelist.Items[3].Selected == true)//寻求加工是否可以查看联系方式
            info.UGP_IsBuyMachiningLinkMathod = true;
        else
            info.UGP_IsBuyMachiningLinkMathod = false;

        if (this.cblgradelist.Items[4].Selected == true)//招商是否可以查看联系方式
            info.UGP_IsBuinessLinkMathod = true;
        else
            info.UGP_IsBuinessLinkMathod = false;

        if (this.cblgradelist.Items[5].Selected == true)//代理是否可以查看联系方式
            info.UGP_IsSurrogateLinkMathod = true;
        else
            info.UGP_IsSurrogateLinkMathod = false;

        if (this.cblgradelist.Items[6].Selected == true)//提供服务是否可以查看联系方式
            info.UGP_IsSupplyServerLinkMathod = true;
        else
            info.UGP_IsSupplyServerLinkMathod = false;

        if (this.cblgradelist.Items[7].Selected == true)//寻求服务是否可以查看联系方式
            info.UGP_IsBuyServerLinkMathod = true;
        else
            info.UGP_IsBuyServerLinkMathod = false;

        //if (this.cblgradelist.Items[8].Selected == true)//展会是否可以查看联系方式
        //    info.UGP_IsExhibtionLinkMathod = true;
        //else
        //    info.UGP_IsExhibtionLinkMathod = false;

        //if (this.cblgradelist.Items[9].Selected == true)//品牌是否可以查看联系方式
        //    info.UGP_IsBrandLinkMathod = true;
        //else
        //    info.UGP_IsBrandLinkMathod = false;

        if (this.cblgradelist.Items[8].Selected == true)//人才是否可以查看联系方式
            info.UGP_IsJobLinkMathod = true;
        else
            info.UGP_IsJobLinkMathod = false;

        if (this.cblgradelist.Items[9].Selected == true)//企业是否可以查看联系方式
            info.UGP_IsCompanyLinkMathod = true;
        else
            info.UGP_IsCompanyLinkMathod = false;
        #endregion

        #region 被查看权限
        if (this.chkOtherUserLookContactsSetting.Items[0].Selected == true)//供应
            info.SeeBySellOffer = true;
        else
            info.SeeBySellOffer = false;

        if (this.chkOtherUserLookContactsSetting.Items[1].Selected == true)//求购
            info.SeeByBuyOffer = true;
        else
            info.SeeByBuyOffer = false;

        if (this.chkOtherUserLookContactsSetting.Items[2].Selected == true)//提供
            info.SeeBySellMachining = true;
        else
            info.SeeBySellMachining = false;

        if (this.chkOtherUserLookContactsSetting.Items[3].Selected == true)//寻求
            info.SeeByBuyMachining = true;
        else
            info.SeeByBuyMachining = false;

        if (this.chkOtherUserLookContactsSetting.Items[4].Selected == true)//招商
            info.SeeBySellBusiness = true;
        else
            info.SeeBySellBusiness = false;

        if (this.chkOtherUserLookContactsSetting.Items[5].Selected == true)//代理
            info.SeeByBuyBusiness = true;
        else
            info.SeeByBuyBusiness = false;

        if (this.chkOtherUserLookContactsSetting.Items[6].Selected == true)//提供服务
            info.SeeBySellService = true;
        else
            info.SeeBySellService = false;

        if (this.chkOtherUserLookContactsSetting.Items[7].Selected == true)//寻求服务
            info.SeeByBuyService = true;
        else
            info.SeeByBuyService = false;

        //if (this.chkOtherUserLookContactsSetting.Items[8].Selected == true)//展会
        //    info.SeeByExhibtion = true;
        //else
        //    info.SeeByExhibtion = false;

        //if (this.chkOtherUserLookContactsSetting.Items[9].Selected == true)//品牌
        //    info.SeeByBrand = true;
        //else
        //    info.SeeByBrand = false;

        //if (this.chkOtherUserLookContactsSetting.Items[8].Selected == true)//人才
        //    info.SeeByJob = true;
        //else
        //    info.SeeByJob = false;

        if (this.chkOtherUserLookContactsSetting.Items[8].Selected == true)//企业
            info.SeeByCompany = true;
        else
            info.SeeByCompany = false;
        #endregion

        if (this.uploadpicnum.Text != "")
            info.UploadPicNum = Convert.ToInt32(this.uploadpicnum.Text);

        if (this.seecontactsnum.Text != "")
            info.SeeContactsNum = Convert.ToInt32(this.seecontactsnum.Text);

        if (this.HidMessagenum.Value != "")
        {
            info.MessageNum = this.HidMessagenum.Value;
        }
        if (this.HidLimitDate.Value.Equals("1"))
        {
            info.LimitDate = 0;
        }
        else
        {
            if (this.LimitDate.Text != "")
            {
                info.LimitDate = Convert.ToInt32(this.LimitDate.Text);
            }
        }
        info.Ticheng = txtTicheng.Text.Trim();
        info.ContractPercent = txtContact.Text.Trim();
        info.OperationMargin = txtOperationMargin.Text.Trim();

        string url = "UserGrade.aspx";
        int i = ugpBLL.Update(info);
        if (i > 0)
        {
            Alert("设置成功！", url);
        }
        else
        {
            Alert("设置失败！", url);
        }
    }
    #endregion

    #region 绑定该级别用户到期后所降至级别
    private void DDLBind()
    {
        XYECOM.Business.UserGrade ugread = new UserGrade();

        this.ddldebaseusergrade.DataSource = ugread.GetItems();

        if (ugread.GetItems().Count > 0)
        {
            foreach (XYECOM.Model.UserGradeInfo info in ugread.GetItems())
            {
                this.ddldebaseusergrade.Items.Add(new ListItem(info.GradeName.Trim(), info.GradeId.ToString()));
            }
        }
        this.ddldebaseusergrade.Items.Insert(0, new ListItem("请选择", "-1"));
    }
    #endregion

    #region 绑定发布信息条数里模块项

    private void BindMessageNum()
    {
        this.MessageNum.InnerHtml = GetModuleList("", "", "0", "");
    }


    protected string GetModuleList(string currentModuleName, string parentModuleName, String flag, String str)
    {
        String tabHTML = "<ul>";

        DataRowCollection rows = null;

        if (!parentModuleName.Equals(""))
            rows = moduleConfig.GetItem(parentModuleName).ToTables.Rows;
        else
            rows = moduleConfig.GetDataTable.Rows;

        int i = 0;

        if (flag.Equals("0"))
        {
            foreach (DataRow row in rows)
            {
                tabHTML += "<li>" + row["CName"].ToString() + "：<input id=\"messagevalue_" + row["EName"].ToString() + "\" type=\"text\" size=\"8\" name=\"" + row["EName"].ToString() + "\" value=\"0\" /> 条</li>";
                i++;
            }
            tabHTML += "<li>品牌信息：<input id=\"messagevalue_brand\" type=\"text\" size=\"8\"name=\"brand\" value=\"0\" /> 条</li>";
        }
        if (flag.Equals("1"))
        {
            String[] msgnum = str.Split(',');
            String numvalue = "";
            int j = 0;
            foreach (DataRow row in rows)
            {
                for (j = 0; j < (msgnum.Length - 1); j++)
                {
                    if (row["EName"].ToString().Equals(msgnum[j].Substring(0, msgnum[j].IndexOf('-'))))
                    {
                        try
                        {
                            numvalue = msgnum[j].Substring((msgnum[j].IndexOf('-') + 1), (msgnum[j].Length - msgnum[j].IndexOf('-') - 1));
                        }
                        catch (Exception ex)
                        {
                            WriteLog("xymanage_UserManage_UserGradePopedom.GetModuleList", ex);
                            numvalue = "0";
                        }
                        tabHTML += "<li>" + row["CName"].ToString() + "：<input id=\"messagevalue_" + row["EName"].ToString() + "\" type=\"text\" size=\"8\" name=\"" + row["EName"].ToString() + "\" value=\"" + numvalue + "\" /> 条</li>";
                        break;
                    }
                }
                if (j == (msgnum.Length - 1))
                {
                    tabHTML += "<li>" + row["CName"].ToString() + "：<input id=\"messagevalue_" + row["EName"].ToString() + "\" type=\"text\" size=\"8\" name=\"" + row["EName"].ToString() + "\" value=\"0\" /> 条</li>";
                }
                i++;
            }

            for (int n = 0; n < (msgnum.Length - 1); n++)
            {
                if ((msgnum[n].Substring(0, msgnum[n].IndexOf('-'))).Equals("brand"))
                {
                    if (msgnum[n].Substring((msgnum[n].IndexOf('-') + 1), (msgnum[n].Length - msgnum[n].IndexOf('-') - 1)) != "")
                    {
                        tabHTML += "<li>品牌信息：<input id=\"messagevalue_brand\" type=\"text\" size=\"8\"name=\"brand\" value=\"" + msgnum[n].Substring((msgnum[n].IndexOf('-') + 1), (msgnum[n].Length - msgnum[n].IndexOf('-') - 1)) + "\" /> 条</li>";
                    }
                    else
                    {
                        tabHTML += "<li>品牌信息：<input id=\"messagevalue_brand\" type=\"text\" size=\"8\"name=\"brand\" value=\"0\" /> 条</li>";
                    }
                }
            }
        }
        tabHTML += "</ul>";

        return tabHTML;
    }
    #endregion



}
