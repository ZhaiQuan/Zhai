using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using XYECOM.Business;
using XYECOM.Model;

public partial class xymanage_news_ChargeNewsSetInfo : XYECOM.Web.BasePage.ManagePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CheckRole("chargenews");

        backURL = XYECOM.Core.XYRequest.GetQueryString("backURL");
        if (XYECOM.Core.XYRequest.GetQueryString("backURL").Equals(""))
            backURL = "ChargeNewsSetList.aspx";

        Button1.Attributes["onclick"] = "location='" + backURL + "'";

        this.nsid.Value = "0";
        if (Request.QueryString["NS_ID"] != null)
        {
            string newsIds = Request.QueryString["NS_ID"].ToString();

            this.nsid.Value = newsIds;

            string[] aryIds = newsIds.Split('|');
            
            string titles = "";

            long nsid = 0;

            this.tbnewstitle.Text = "";
            foreach (string s in aryIds)
            {
                nsid = XYECOM.Core.MyConvert.GetInt64(s);

                titles += GetNewsTitle(nsid) +"<br/>";
            }
            this.tbnewstitle.Text += titles;    

            if (XYECOM.Core.XYRequest.GetQueryString("action") == "edit")
            {
                InitPageControl(nsid);
            }
            else
            {
                InitPageControl(0);
            }
        }
        else
        {
            Alert("请选择你要设置的对象", backURL);
        }
    }

    /// <summary>
    /// 获取新闻标题
    /// </summary>
    /// <param name="nsid">新闻的编号</param>
    /// <returns>该新闻的标题</returns>
    private string GetNewsTitle(Int64 nsid)
    {
        XYECOM.Business.News ne = new XYECOM.Business.News();
        if (nsid <= 0)
            Alert("该新闻有误,无法设置,请从新选择", backURL);

        return ne.GetNewsName(nsid);
    }

    private void InitPageControl(long newsId)
    {
        XYECOM.Business.UserGrade ugBLL = new XYECOM.Business.UserGrade();
        List<XYECOM.Model.UserGradeInfo> infos =  ugBLL.GetItems();

        Table t = new Table();

        TableRow row = new TableRow();
        TableCell cell = new TableCell();
        row.CssClass = "vtop";

        cell.Text = "用户组";
        row.Cells.Add(cell);

        cell = new TableCell();

        cell.Text = "扣除虚拟货币数";
        row.Cells.Add(cell);

        cell = new TableCell();
        cell.Text = "扣除现金货币数";
        row.Cells.Add(cell);

        t.Rows.Add(row);

        XYECOM.Business.ChargeNewsSet cnBLL = new XYECOM.Business.ChargeNewsSet();
        XYECOM.Model.ChargeNewsSetInfo cnInfo = new XYECOM.Model.ChargeNewsSetInfo();

        bool isShowChargeNews = false;

        foreach (XYECOM.Model.UserGradeInfo info in infos)
        {
            isShowChargeNews = XYECOM.Business.UserGradePopedom.IsShowChargeNews(info.GradeId);

            row = new TableRow();
            cell = new TableCell();
            row.CssClass = "vtop";

            if (newsId == 0)
                cnInfo = new ChargeNewsSetInfo();
            else
                cnInfo = cnBLL.GetItem(newsId, info.GradeId);

            if(cnInfo == null) cnInfo = new ChargeNewsSetInfo();
                

            System.Web.UI.WebControls.Label lblGradeName = new System.Web.UI.WebControls.Label();
            lblGradeName.Enabled = isShowChargeNews;
            lblGradeName.ID = "lblGradeId" + info.GradeId;
            lblGradeName.Text = info.GradeName;
            cell.Controls.Add(lblGradeName);
            row.Cells.Add(cell);

            cell = new TableCell();
            TextBox txtWebMoney = new TextBox();
            txtWebMoney.Enabled = isShowChargeNews;
            txtWebMoney.Columns = 5;
            txtWebMoney.MaxLength = 4;
            txtWebMoney.ID = "txtWebMoney" + info.GradeId;
            txtWebMoney.Text = cnInfo.CN_ConsumeWebMoney.ToString();
            cell.Controls.Add(txtWebMoney);

            RangeValidator rv = new RangeValidator();
            rv.ControlToValidate = "txtWebMoney" + info.GradeId;
            rv.ErrorMessage = "*";
            rv.MaximumValue = "9999";
            rv.MinimumValue = "0";
            rv.Type = ValidationDataType.Integer;

            cell.Controls.Add(rv);

            row.Cells.Add(cell);

            cell = new TableCell();
            TextBox txtMoney = new TextBox();
            txtMoney.Enabled = isShowChargeNews;
            txtMoney.Columns = 5;
            txtMoney.MaxLength = 4;
            txtMoney.ID = "txtMoney" + info.GradeId;
            txtMoney.Text = cnInfo.CN_ConsumeMoney.ToString();
            cell.Controls.Add(txtMoney);

            RangeValidator rv1 = new RangeValidator();
            rv1.ControlToValidate = "txtMoney" + info.GradeId;
            rv1.ErrorMessage = "*";
            rv1.MaximumValue = "9999";
            rv1.MinimumValue = "0";
            rv1.Type = ValidationDataType.Integer;

            cell.Controls.Add(rv1);

            row.Cells.Add(cell);

            t.Rows.Add(row);
        }

        this.phMain.Controls.Add(t);
    }

    protected void btadd_Click(object sender, EventArgs e)
    {
        bool isUpdate = false;
        if (XYECOM.Core.XYRequest.GetQueryString("action") == "edit") isUpdate = true;

        XYECOM.Business.UserGrade ugBLL = new XYECOM.Business.UserGrade();
        List<XYECOM.Model.UserGradeInfo> infos = ugBLL.GetItems();

        XYECOM.Business.ChargeNewsSet cnBLL = new XYECOM.Business.ChargeNewsSet();
        XYECOM.Model.ChargeNewsSetInfo cnInfo = new XYECOM.Model.ChargeNewsSetInfo();

        bool isShowChargeNews = false;

        string newsIds = this.nsid.Value;

        this.nsid.Value = newsIds;

        string[] aryIds = newsIds.Split('|');

        long newsId = 0;

        foreach (string s in aryIds)
        {
            newsId = XYECOM.Core.MyConvert.GetInt64(s);

            foreach (XYECOM.Model.UserGradeInfo info in infos)
            {
                isShowChargeNews = XYECOM.Business.UserGradePopedom.IsShowChargeNews(info.GradeId);

                if (!isShowChargeNews) continue;

                if (isUpdate) cnInfo = cnBLL.GetItem(newsId, info.GradeId);

                if (cnInfo == null)
                {
                    cnInfo = new ChargeNewsSetInfo();
                    isUpdate = false;
                }

                TextBox txt = (TextBox)phMain.FindControl("txtWebMoney" + info.GradeId);
                cnInfo.CN_ConsumeWebMoney = XYECOM.Core.MyConvert.GetInt32(txt.Text.Trim());

                txt = (TextBox)phMain.FindControl("txtMoney" + info.GradeId);
                cnInfo.CN_ConsumeMoney = XYECOM.Core.MyConvert.GetInt32(txt.Text.Trim());

                if (!isUpdate && newsId > 0)
                {
                    cnInfo.CN_VisitPopedom = (short)info.GradeId;
                    cnInfo.NS_ID = newsId;
                    cnBLL.Insert(cnInfo);
                }
                else
                    cnBLL.Update(cnInfo);

                cnInfo = null;
                if (XYECOM.Core.XYRequest.GetQueryString("action") == "edit") isUpdate = true;
            }

            //更新表，使HTML页面字段保持为空
            XYECOM.Core.Function.UpdateColumuByWhere("NS_HTMLPage", "", " where NS_ID=" + this.nsid.Value, "n_news");
        }

        Alert("收费新闻设置成功", backURL);
    }
}
