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

namespace XYECOM.Web.xymanage.TemplatesManage
{
    public partial class ShopTemplateSetting : XYECOM.Web.BasePage.ManagePage
    {
        private XYECOM.Template.ShopTemplateInfo templateInfo = null;        
        private string folder = "";
        private string type = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            CheckRole("template");

            if (!IsPostBack)
            {
                PageInit();
            }
        }


        protected void btnSearchUser_Click(object sender, EventArgs e)
        {
            this.pnlSearchUser.Visible = !this.pnlSearchUser.Visible;
        }

        private void PageInit()
        {
            this.lstUsers.Attributes.Add("ondblclick", "javascript:SelectUser(this,'txtUserIdList');");

            folder = XYECOM.Core.XYRequest.GetQueryString("folder");
            type = XYECOM.Core.XYRequest.GetQueryString("type");
            
            if (folder.Equals("")) throw new Exception("ģ���ȡ��ز�����������");

            string styleName = "";
            if (folder.IndexOf("|") != -1 || type.Equals("style"))
            {
                XYECOM.Template.ShopStyleInfo sInfo = XYECOM.Template.ShopStyle.GetItem(folder.Split('|')[0]);

                if (sInfo != null)
                {
                    styleName = sInfo.Name;
                }
            }

            folder = folder.Replace("|","/");

            if (type.Equals(""))
                templateInfo = XYECOM.Template.ShopAbout.GetItem(Server.MapPath("/templates/_shop/" + folder));
            else
                templateInfo = XYECOM.Template.ShopStyle.GetItem(folder);

            if (templateInfo == null) throw new Exception("ģ�岻���ڻ��ѱ�ɾ����");

            if (templateInfo.Access == XYECOM.Template.ShopTemplateAccess.Public
                && !templateInfo.User.Equals("all"))
            {
                BindUserGroupData(templateInfo.User);
            }
            else
            {
                BindUserGroupData();
            }

            if (type.Equals("style"))
                this.lblTemplateName.Text = styleName;
            else
            {
                if (!styleName.Equals("")) styleName = styleName + " > ";
                this.lblTemplateName.Text = styleName + ((XYECOM.Template.ShopAboutInfo)templateInfo).CName;
            }

            if (templateInfo.Access == XYECOM.Template.ShopTemplateAccess.Private)
            {
                rdoAccessPrivate.Checked = true;
                txtUserIdList.Text = templateInfo.User;

                trPublic.Visible = false;
                trPrivate.Visible = true;
            }
            else
            {
                trPublic.Visible = true;
                trPrivate.Visible = false;

                rdoAccessPublic.Checked = true;
                if (templateInfo.User.ToLower().Equals("all"))
                {
                    rdoAllUser.Checked = true;
                    chkUserGroup.Visible = false;
                }
                else
                {
                    rdoAssignUser.Checked = true;
                    chkUserGroup.Visible = true;
                }
            }
        }

        private void BindUserGroupData()
        {
            List<Model.UserGradeInfo> infos =  new Business.UserGrade().GetItems();

            foreach (Model.UserGradeInfo info in infos)
            {
                ListItem item = new ListItem(info.GradeName, info.GradeId.ToString());
                this.chkUserGroup.Items.Add(item);
            }
        }

        private void BindUserGroupData(string userIdList)
        {
            List<Model.UserGradeInfo> infos = new Business.UserGrade().GetItems();

            foreach (Model.UserGradeInfo info in infos)
            {
                ListItem item = new ListItem(info.GradeName, info.GradeId.ToString());

                if (userIdList.Equals(info.GradeId.ToString())
                    || userIdList.StartsWith(info.GradeId.ToString() + ",")
                    || userIdList.Contains("," + info.GradeId.ToString() + ",")
                    || userIdList.EndsWith("," + info.GradeId.ToString()))
                    item.Selected = true;

                this.chkUserGroup.Items.Add(item);
            }
        }

        protected void rdoAccessPublic_CheckedChanged(object sender, EventArgs e)
        {
            if (rdoAccessPublic.Checked)
            {
                trPublic.Visible = true;
                trPrivate.Visible = false;

                if (!rdoAllUser.Checked && !rdoAssignUser.Checked)
                {
                    this.rdoAllUser.Checked = true;
                    this.chkUserGroup.Visible = false;
                }
            }
        }

        protected void rdoAccessPrivate_CheckedChanged(object sender, EventArgs e)
        {
            if (rdoAccessPrivate.Checked)
            {
                trPublic.Visible = false;
                trPrivate.Visible = true;

                if (txtUserName.Text.Trim().Equals(""))
                {
                    txtUserName.Text = "�������û�����˾����";
                }
            }
        }

        protected void rdoAllUser_CheckedChanged(object sender, EventArgs e)
        {
            if (rdoAllUser.Checked)
            {
                this.chkUserGroup.Visible = false;
            }
        }

        protected void rdoAssignUser_CheckedChanged(object sender, EventArgs e)
        {
            if (rdoAssignUser.Checked)
            {
                this.chkUserGroup.Visible = true;
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string key = txtUserName.Text.Trim();

            if (key.Equals("") || key.Equals("�������û�����˾����"))
            {
                this.lblMessage.Text = "�����ؼ��ֲ���Ϊ�գ�";
                return;
            }

            this.lstUsers.Items.Clear();

            DataTable table = XYECOM.Business.Utils.ExecuteTable("XYV_UserInfo", "U_ID,UI_Name", "UI_Name <> ''  and (U_Name like'%" + key + "%' or UI_Name like '%" + key + "%')");

            if (table.Rows.Count <= 0)
            {
                this.lblMessage.Text = "û�з��������ļ�¼��";
                return;
            }

            foreach (DataRow row in table.Rows)
            {
                ListItem item = new ListItem(row["UI_Name"].ToString(),row["U_ID"].ToString());
                this.lstUsers.Items.Add(item);
            }
        }

        private string GetSelectUserGroupValue()
        {
            string value = "";
            for (int i = 0; i < this.chkUserGroup.Items.Count; i++)
            {
                if (chkUserGroup.Items[i].Selected)
                {
                    if (value.Equals(""))
                        value = chkUserGroup.Items[i].Value;
                    else
                        value +="," + chkUserGroup.Items[i].Value;
                }
            }
            return value;
        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            if (!Check()) return;
            
            folder = XYECOM.Core.XYRequest.GetQueryString("folder");

            type = XYECOM.Core.XYRequest.GetQueryString("type");

            folder = folder.Replace("|", "/");

            if (type.Equals(""))
                templateInfo = XYECOM.Template.ShopAbout.GetItem(Server.MapPath("/templates/_shop/" + folder));
            else
                templateInfo = XYECOM.Template.ShopStyle.GetItem(folder);

            if (rdoAccessPublic.Checked)
            {
                templateInfo.Access = XYECOM.Template.ShopTemplateAccess.Public;

                if (rdoAllUser.Checked)
                    templateInfo.User = "all";
                else
                    templateInfo.User = GetSelectUserGroupValue();
            }
            else
            {
                templateInfo.Access = XYECOM.Template.ShopTemplateAccess.Private;
                templateInfo.User = this.txtUserIdList.Text.Trim().Replace("��", ",").Replace(",,", ",");
            }

            bool update = true;

            if(type.Equals(""))
                update = XYECOM.Template.ShopAbout.Update(folder, templateInfo);
            else
                update = XYECOM.Template.ShopStyle.Update(folder, templateInfo);

            if (!update)
            {
                this.lblMessage.Text = "����ʧ�ܣ�����ģ��Ŀ¼дȨ�ޣ�";
                return; 
            }

            this.ClientScript.RegisterClientScriptBlock(GetType(), "", "<script type=\"text/javascript\">parent.ShopAboutSettingClose();</" + "" + "script>");
        }

        private bool Check()
        {
            if (rdoAccessPrivate.Checked)
            {
                if (txtUserIdList.Text.Equals(""))
                {
                    this.lblMessage.Text = "�û�ID�б�����Ϊ�գ�";
                    return false;
                }
            }

            if (rdoAccessPublic.Checked)
            {
                if (rdoAssignUser.Checked)
                {
                    if (chkUserGroup.SelectedValue.Equals(""))
                    {
                        this.lblMessage.Text = "����ָ������һ���û��飡";
                        return false;
                    }
                }
            }

            return true;
        }
    }
}