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
using System.Data.SqlClient;
using XYECOM.Core;
using XYECOM.Business;
using System.Net;
using System.IO;
public partial class xymanage_basic_UserGrade :XYECOM.Web.BasePage.ManagePage
{
    #region 页面加载
    protected void Page_Load(object sender, EventArgs e)
    {
        CheckRole("userGrade");

        if (!Page.IsPostBack)
        {
            this.Button1.Attributes.Add("onclick", "javascript:return usergradeedit();");            
        }
    }
    #endregion

    #region 绑定数据
    protected override void BindData()
    {
        this.lblMessage.Text = "";

        DataTable dt = XYECOM.Business.Utils.ExecuteTable("b_UserGrade","*","","UG_Order asc",0);

        if (dt.Rows.Count > 0)
        {
            this.gvlist.DataSource = dt;
            this.gvlist.DataBind();
        }
        else
        {
            this.lblMessage.Text = "没有相关记录";
            this.gvlist.DataBind();
        }
    }
    #endregion

    #region 删除操作
    protected void gvlist_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        XYECOM.Business.UserGrade ug = new XYECOM.Business.UserGrade();
        if (e.CommandName == "up")
        {
            this.key.Value = "2";
            XYECOM.Model.UserGradeInfo eu = new XYECOM.Model.UserGradeInfo();
            this.UG_ID.Value = gvlist.DataKeys[Convert.ToInt16(e.CommandArgument)].Value.ToString();
            eu = ug.GetItem(Convert.ToInt16(gvlist.DataKeys[Convert.ToInt16(e.CommandArgument)].Value.ToString()));

            this.txtname1.Text = eu.GradeName.ToString();
            this.ymoney1.Text = XYECOM.Core.Utils.GetMoney(eu.AnnualRent.ToString());
            this.mmoney1.Text = XYECOM.Core.Utils.GetMoney(eu.MonthlyRent.ToString());
            this.tbsmall.Text = eu.SmallIconName;
            this.tbbig.Text = eu.BigIconName;
        }
        else if (e.CommandName == "del")
        {
            if (new XYECOM.Business.UserGrade().HasSubUser(gvlist.DataKeys[Convert.ToInt16(e.CommandArgument)].Value.ToString()))
            {
                Alert("该等级下已有用户信息，故不能删除！", "UserGrade.aspx");
            }
            else
            {
                int i = 0;
                XYECOM.Business.Log l = new XYECOM.Business.Log();
                XYECOM.Model.LogInfo el = new XYECOM.Model.LogInfo();

                i = ug.Delete(Convert.ToInt16(gvlist.DataKeys[Convert.ToInt16(e.CommandArgument)].Value.ToString()));
                if (i >= 0)
                {
                    el.L_Title = "用户等级管理";
                    el.L_Content = "删除用户等级成功";
                    el.L_MF = "用户等级";
                    
                    {
                        el.UM_ID = AdminId;
                    }
                    l.Insert(el);
                    string url = "UserGrade.aspx";
                    this.key.Value = "3";
                    Response.Redirect(url);
                }
                else
                {
                    el.L_Title = "用户等级管理";
                    el.L_Content = "删除用户等级失败";
                    el.L_MF = "用户等级";
                    
                    {
                        el.UM_ID = AdminId;
                    }
                    l.Insert(el);

                    string url = "UserGrade.aspx";
                    Alert("删除失败！", url);
                }
            }
        }
    }
    #endregion

    #region 修改操作
    protected void Button1_Click(object sender, EventArgs e)
    {
        XYECOM.Business.Log l = new XYECOM.Business.Log();
        XYECOM.Model.LogInfo el = new XYECOM.Model.LogInfo();
        XYECOM.Model.UserGradeInfo eu = new XYECOM.Model.UserGradeInfo();
        XYECOM.Business.UserGrade ug = new XYECOM.Business.UserGrade();
        eu.GradeId = Convert.ToInt16(this.UG_ID.Value);
        eu.GradeName = this.txtname1.Text;
        eu.MonthlyRent = Convert.ToDecimal(this.mmoney1.Text);
        eu.AnnualRent = Convert.ToDecimal(this.ymoney1.Text);
        eu.SmallIconName = this.tbsmall.Text.Trim();
        eu.BigIconName = this.tbbig.Text.Trim();

        int i = 0;
        i = ug.Update(eu);
        string url = "UserGrade.aspx";
        if (i >= 0)
        {
            el.L_Title = "用户等级管理";
            el.L_Content = "修改用户等级成功";
            el.L_MF = "财务管理";
            el.UM_ID = AdminId;
            l.Insert(el);
            Response.Redirect(url);
            this.key.Value = "2";
        }
        else
        {
            el.L_Title = "用户等级管理";
            el.L_Content = "修改用户等级失败";
            el.L_MF = "财务管理";
            el.UM_ID = AdminId;
            l.Insert(el);
            Alert("修改失败！", url);
        }
    }
    #endregion

    protected void btnUpdateOrder_Click(object sender, EventArgs e)
    {
        int order = 0;
        string orderValue ="";
        int userGradeId =0;

        XYECOM.Model.UserGradeInfo ugInfo = null;
        XYECOM.Business.UserGrade ugBLL = new UserGrade();

        foreach (GridViewRow GR in this.gvlist.Rows)
        {
            orderValue = ((TextBox)(GR.FindControl("txtOrder"))).Text.Trim();

            order = XYECOM.Core.MyConvert.GetInt32(orderValue);

            userGradeId =XYECOM.Core.MyConvert.GetInt32(gvlist.DataKeys[GR.DataItemIndex].Value.ToString());

            if (userGradeId <= 0) continue;

            ugInfo = ugBLL.GetItem(userGradeId);

            if (ugInfo == null) continue;

            ugInfo.OrderId = order;

            ugBLL.Update(ugInfo);
        }

        BindData();
    }
}
