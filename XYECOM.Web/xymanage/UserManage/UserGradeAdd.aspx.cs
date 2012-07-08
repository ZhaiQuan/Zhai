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
using XYECOM.Core;
using XYECOM.Business;
using System.Net;
using System.IO;

public partial class xymanage_UserManage_UserGradeAdd : XYECOM.Web.BasePage.ManagePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CheckRole("userGrade");
        Server s = new Server();
        DataTable dtg;
        dtg  = s.GetDataTable();
        if (dtg.Rows.Count > 0)
        {
            if (dtg.Rows[0]["S_IsCurrent"].ToString().ToLower() == "true" && dtg.Rows[0]["S_Flag"].ToString().ToLower() == "false")
                this.akey.Value = dtg.Rows[0]["S_URL"].ToString();
        }

        this.btnOk.Attributes.Add("onclick", "javascript:return usergradeadd();");
    }

    
    #region 
    protected void btnOk_ServerClick1(object sender, EventArgs e)
    {
        XYECOM.Model.UserGradeInfo eu = new XYECOM.Model.UserGradeInfo();
        XYECOM.Business.UserGrade ug = new XYECOM.Business.UserGrade();

        eu.GradeName = this.txtName.Text;
        eu.AnnualRent = Convert.ToDecimal(this.ymoney.Text);
        eu.MonthlyRent = Convert.ToDecimal(this.mmoney.Text);
        eu.SmallIconName = this.tbsmall.Text;
        eu.BigIconName = tbbig.Text;

        string url = "UserGrade.aspx";

        int UG_ID = 0;
        int i = ug.Insert(eu, out UG_ID);

        if (i >= 0)
        {
            XYECOM.Model.UserGradePopedomInfo info = new XYECOM.Model.UserGradePopedomInfo();

            info.UG_ID = UG_ID;

            new XYECOM.Business.UserGradePopedom().Insert(info);
            Response.Redirect(url);
        }
        else if (i == -1)
        {
            Alert("该用户等级名已经存在，请重新输入用户等级名！", url);
        }
        else
        {
            Alert("添加失败！", url);
        }
    }
    #endregion 
}
