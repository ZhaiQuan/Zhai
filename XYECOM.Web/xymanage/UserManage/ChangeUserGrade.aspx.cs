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
using System.Collections.Generic;

namespace XYECOM.Web.xymanage.UserManage
{
    public partial class ChangeUserGrade : XYECOM.Web.BasePage.ManagePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckRole("userGrade");

            backURL = "UserInfo.aspx?U_ID=" + Core.XYRequest.GetQueryString("ui") + "&backURL=" + XYECOM.Core.Utils.JSEscape(XYECOM.Core.XYRequest.GetQueryString("backURL"));

            if (!IsPostBack)
            {
                BindCurrentGradeInfo();
                BindGradeInfo();
            }
        }

        private void BindGradeInfo()
        {
            List<Model.UserGradeInfo> infos = new Business.UserGrade().GetItems();

            int i = 1;
            foreach (Model.UserGradeInfo info in infos)
            {
                ListItem item = new ListItem(info.GradeName,info.GradeId.ToString());
                if (i == 1) item.Selected = true;
                i++;
                this.rdolstUserGrade.Items.Add(item);
            }
        }

        private void BindCurrentGradeInfo()
        {
            string userId = XYECOM.Core.XYRequest.GetQueryString("ui");

            long _UserId =0;
            if(userId !="")
                _UserId = Core.MyConvert.GetInt64(userId);

            if (_UserId <= 0) return;

            Model.UserInfo userInfo = new Business.UserInfo().GetItem(_UserId);

            if (userInfo == null) return;

            Model.UserGradeInfo gradeInfo = new Business.UserGrade().GetItem((short)userInfo.RegInfo.GradeId);

            Model.UserGradeRelationInfo relationInfo = new Business.UserGradeRelation().GetItem(_UserId);

            if (gradeInfo == null || relationInfo == null) return;

            lblGradeName.Text =  gradeInfo.GradeName ;

            if (relationInfo.U_BeginTime.ToString() != "")
                lblStartDate.Text = relationInfo.U_BeginTime.ToShortDateString();

            if(relationInfo.U_EndTime!="")
                lblEndDate.Text =  Convert.ToDateTime(relationInfo.U_EndTime).ToShortDateString();

            if (relationInfo.U_BeginTime.ToString() != "" && relationInfo.U_EndTime != "")
            {
                TimeSpan ts = Convert.ToDateTime(relationInfo.U_EndTime) - DateTime.Now;
                lblRemainingTime.Text = ts.Days.ToString();
            }
        }

        protected void rdoMonth_CheckedChanged(object sender, EventArgs e)
        {
            if (rdoMonth.Checked)
            {
                ddlMonth.Visible = true;
                spanYear.Visible = false;
            }
        }

        protected void rdoYear_CheckedChanged(object sender, EventArgs e)
        {
            if (rdoYear.Checked)
            {
                ddlMonth.Visible = false;
                spanYear.Visible = true;
            }
        }

        private bool CheckFrom()
        {
            if (this.rdolstUserGrade.SelectedValue.Equals(""))
            {
                lblErrMsg.Text = "��ѡ���Ա�ȼ�";
                return false;
            }

            if (rdoYear.Checked && (txtYear.Text.Trim().Equals("") || !Core.Utils.IsNumber(txtYear.Text.Trim())))
            {
                lblErrMsg.Text = "���������";
                return false;
            }
            return true;
        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            if (!CheckFrom()) return;

            string str = "";
            str += "<li>��Ա�ȼ���" + this.rdolstUserGrade.SelectedItem.Text +";";
            
            if(rdoMonth.Checked)
                str += "��Чʱ�䣺" + ddlMonth.SelectedValue + "����" ;
            if (rdoYear.Checked)
                str += "��Чʱ�䣺" + txtYear.Text + "��";

            str += "</li>";

            decimal balance = GetBalance();
            decimal totalPaid = GetTotalPaid();
            decimal accountBalance = GetAccountBalance();
            decimal needPaid = totalPaid - balance;

            str += "<li>";
            str += "�ܷ��ã�" + totalPaid.ToString("0.00") + ";";
            if (balance > 0)
            {
                str += "������" + balance.ToString("0.00") + ";";
                if (needPaid >= 0)
                {
                    str += "��֧����" + needPaid.ToString("0.00");
                }
                else
                {
                    str += "ʣ��" + (-1  * needPaid).ToString("0.00")+ ",���Զ������Ա�ʻ���";
                }
            }
            str += "</li>";

            str += "<li>";
            str += "��ǰ�ʻ���" + accountBalance.ToString("0.00") + ";";
            if (needPaid > accountBalance)
            {
                str += "��ǰ�ʻ����������֧����";
                btnFinish.Enabled = false;
            }
            else
            {
                btnFinish.Enabled = true;
            }

            str += "</li>";
            lblSure.InnerHtml = str;

            pnlChange.Visible = false;
            pnlMessage.Visible = true;
        }

        /// <summary>
        /// �������
        /// </summary>
        /// <returns></returns>
        private decimal GetBalance()
        {
            long userId = Core.MyConvert.GetInt64(Core.XYRequest.GetQueryString("ui"));

            if (userId <= 0) return 0;

            Model.UserGradeRelationInfo relationInfo = new Business.UserGradeRelation().GetItem(userId);

            if (relationInfo.U_EndTime.Equals("") || relationInfo.U_Money <= 0) return 0;

            TimeSpan ts = DateTime.Now - relationInfo.U_BeginTime;

            //�����Ա�ʸ�����û�г���3�����ٸ�����Ա�ȼ�ʱ�� 0 ���Ѵ���
            if (ts.Days <= 3) return relationInfo.U_Money;

            decimal balance =0;

            Model.UserGradeInfo gradeInfo = new Business.UserGrade().GetItem(relationInfo.UGR_ID);

            //�����Ѿ�ֻ�õ��·���
            int usedMonth = (DateTime.Now.Year - relationInfo.U_BeginTime.Year) * 12 + DateTime.Now.Month - relationInfo.U_BeginTime.Month;

            usedMonth += 1;

            balance = relationInfo.U_Money - (gradeInfo.MonthlyRent * usedMonth);

            if (balance <= 0) return 0;

            return balance;
        }

        /// <summary>
        /// ������֧�����
        /// </summary>
        /// <returns></returns>
        private decimal GetTotalPaid()
        {
            long userId = Core.MyConvert.GetInt64(Core.XYRequest.GetQueryString("ui"));

            if (userId <= 0) return 0;

            short selectGradeId = Core.MyConvert.GetInt16(rdolstUserGrade.SelectedValue);

            Model.UserGradeInfo gradeInfo = new Business.UserGrade().GetItem(selectGradeId);

            if (gradeInfo == null) return -1;

            if (rdoMonth.Checked)
                return gradeInfo.MonthlyRent * Core.MyConvert.GetInt16(ddlMonth.SelectedValue);

            if (rdoYear.Checked)
                return gradeInfo.AnnualRent * Core.MyConvert.GetInt16(txtYear.Text.Trim());

            return -1;
        }

        /// <summary>
        /// �����ʻ����
        /// </summary>
        /// <returns></returns>
        private decimal GetAccountBalance()
        {
            long userId = Core.MyConvert.GetInt64(Core.XYRequest.GetQueryString("ui"));

            if (userId <= 0) return 0;

            Model.UserAccountInfo account = new Business.UserAccount().GetItem(userId);

            if (account == null) return 0;

            return account.UGR_LeftMoney;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect(backURL);
        }

        protected void btnFinish_Click(object sender, EventArgs e)
        {
            decimal balance = GetBalance();
            decimal totalPaid = GetTotalPaid();
            decimal accountBalance = GetAccountBalance();
            decimal needPaid = totalPaid - balance;


            long userId = Core.MyConvert.GetInt64(Core.XYRequest.GetQueryString("ui"));

            if (userId <= 0) return;

            Model.UserGradeRelationInfo relationInfo = new Business.UserGradeRelation().GetItem(userId);

            Business.UserAccount accountBLL = new XYECOM.Business.UserAccount();

            


            //���Ļ�Ա�ȼ�
            XYECOM.Business.UserGradeRelation relationBLL = new XYECOM.Business.UserGradeRelation();
            relationInfo.U_BeginTime = DateTime.Now;
            
            if(rdoMonth.Checked)
            {
                if (totalPaid <= 0)
                {
                    relationInfo.U_EndTime = "";
                }
                else
                {
                    relationInfo.U_EndTime = DateTime.Now.AddMonths(Core.MyConvert.GetInt32(this.ddlMonth.SelectedValue)).ToShortDateString();
                }
                relationInfo.UR_Flag = false;
            }
            else
            {
                if (totalPaid <= 0)
                {
                    relationInfo.U_EndTime = "";
                }
                else
                {
                    relationInfo.U_EndTime = DateTime.Now.AddYears(Core.MyConvert.GetInt32(this.txtYear.Text.Trim())).ToShortDateString();
                }
                relationInfo.UR_Flag = true;
            }

            relationInfo.U_Money = totalPaid;

            short selectGradeId = Core.MyConvert.GetInt16(this.rdolstUserGrade.SelectedValue);
            relationInfo.UGR_ID = selectGradeId;

            int i = relationBLL.UpdateGradeRelation(relationInfo);

            Business.UserInfo userInfoBLL = new XYECOM.Business.UserInfo();
            int j = userInfoBLL.UpdateUGID(userId, selectGradeId);

            if (i > 0 && j > 0)
            {
                SendMessage(userId, "�����û��ȼ�", "�����û��ȼ���Ϣ�ɹ�,ͬʱҲ�۳������ĵȼ�����ķ��ã�������ʱ�鿴");

                Response.Redirect(backURL);
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            this.pnlChange.Visible = true;
            this.pnlMessage.Visible = false;
        }

        private void SendMessage(long userId, string title, string content)
        {
            XYECOM.Model.MessageInfo em = new XYECOM.Model.MessageInfo();
            XYECOM.Business.Message m = new XYECOM.Business.Message();
            em.M_Adress = "";
            em.M_CompanyName = "";
            em.M_Email = "";
            em.M_FHM = "";
            em.M_HasReply = false;
            em.M_Moblie = "";
            em.M_PHMa = "";
            em.M_RecverType = "administrator";
            em.M_Restore = false;
            em.M_SenderType = "user";
            if (webInfo.AuditingUserMessageTitle.ToString() != "")
            {
                em.M_Title = webInfo.AuditingUserMessageTitle.ToString();
            }
            else
            {
                em.M_Title = "";
            }
            if (webInfo.AuditingUserMessageContent.ToString() != "")
            {
                em.M_Content = webInfo.AuditingUserMessageContent.ToString();
            }
            else
            {
                em.M_Content = "";
            }
            em.M_UserName = "";
            em.M_UserType = false;
            em.U_ID = -1;
            em.UR_ID = userId;
            m.Insert(em);
    }
    }
}
