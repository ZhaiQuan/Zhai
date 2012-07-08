using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XYECOM.Web.xymanage.LabelManage
{
    public partial class SelectUserGroup : XYECOM.Web.BasePage.ManagePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected override void BindData()
        {
            XYECOM.Business.UserGrade userGradeBll = new Business.UserGrade();
            List<XYECOM.Model.UserGradeInfo> userGradeList = userGradeBll.GetItems();
            this.rptList.DataSource = userGradeList;
            this.rptList.DataBind();
        }
    }
}