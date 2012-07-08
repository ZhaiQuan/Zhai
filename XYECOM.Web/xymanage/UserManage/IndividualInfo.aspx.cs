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

public partial class xymanage_UserManage_IndividualInfo : XYECOM.Web.BasePage.ManagePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CheckRole("individual");
        if(!IsPostBack)
        {
            if (XYECOM.Core.XYRequest.GetQueryString("U_ID") != "")
            {
                this.BindData(Convert.ToInt64(this.Request.QueryString["U_ID"].ToString()));
            }
        }
    }

    #region 个人数据绑定 

    private void BindData(long U_ID)
    {
        XYECOM.Business.Individual bin = new XYECOM.Business.Individual();
        XYECOM.Model.IndividualInfo Ind = new XYECOM.Model.IndividualInfo();
        Ind = bin.GetItem(U_ID);
        XYECOM.Business.Area ar = new XYECOM.Business.Area();
        XYECOM.Model.AreaInfo arif = new XYECOM.Model.AreaInfo();
        if (Ind != null)
        {
            this.tbname.InnerHtml = Ind.UI_Name;
            if (Ind.UI_Sex)
            { 
                this.tbsex.InnerHtml = "先生"; 
            }
            else
            { 
                this.tbsex.InnerHtml = "女士"; 
            }
            this.tblinktelephone.InnerHtml = Ind.Telephone;
            this.tbaddress.InnerHtml = Ind.UI_Address;
            this.tbcode.InnerHtml = Ind.UI_Code;
            this.tbpostcode.InnerHtml = Ind.UI_Postcode;
            this.tbmobile.InnerHtml = Ind.UI_Mobil;

            XYECOM.Model.AreaInfo areaInfo = new XYECOM.Business.Area().GetItem(Ind.AreaID);
            if (areaInfo != null)
            {
                this.tbcity.InnerHtml = areaInfo.FullNameAll;
            }
            this.tbemail.InnerHtml = Ind.U_Email;
        }
        else
        {
            this.Label1.Text = "没有填写";
        }
        //简历信息
        XYECOM.Business.Resume bre = new XYECOM.Business.Resume();
        XYECOM.Model.ResumeInfo re = new XYECOM.Model.ResumeInfo();

        re = bre.GetItem(U_ID);
        
        if (re != null)
        {
            this.tdschool.InnerHtml = re.RE_School;

            this.tdschoolage.InnerHtml = re.RE_Schoolage;
            this.tdspeciality.InnerHtml = re.RE_Speciality;
            this.tdresume.InnerHtml = re.RE_Resume;
            this.tdintentpay.InnerHtml = re.RE_Intentpay;
            this.tdintentjob.InnerHtml = re.RE_Intentjob;
            arif = ar.GetItem(Convert.ToInt32(re.RE_Intentadd));
            //this.tdintentadd.InnerHtml = arif.FullName;
            this.tdgradate.InnerHtml = re.RE_Gyear.ToString();
            this.tdexperience.InnerHtml = re.RE_Experience;

        }
        else
        {
            this.Label2.Text = "没有填写";
        }
    }
    #endregion

    protected void btnBack_ServerClick(object sender, EventArgs e)
    {
        if (XYECOM.Core.XYRequest.GetQueryString("backURL") != "")
            this.Response.Redirect(XYECOM.Core.XYRequest.GetQueryString("backURL"));
        else
            this.Response.Redirect("IndividualList.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String pwd = XYECOM.Core.SecurityUtil.MD5(this.txtpwd.Text, XYECOM.Configuration.Security.Instance.Md5value);
        XYECOM.Business.UserReg userRegBLL = new XYECOM.Business.UserReg();
        int num = userRegBLL.UpdatePassWord(XYECOM.Core.MyConvert.GetInt64(this.Request.QueryString["U_ID"].ToString()), pwd);
        if (num > 0)
        {
            this.libok.Text = "重设密码成功";
        }
        else
        {
            this.libok.Text = "重设密码失败";
        }
    }
}
