using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

namespace XYECOM.Label
{
    /* ***************************************************************
     * 
     *  XYECOM.Label.FieldManager.cs
     *  创建标识 TC 20080618
     *  
     * 功能：根据内容标签的字段内容生成需要从数据库中查询的字段列表
     *  
     * ***************************************************************/

    /// <summary> 
    /// 标签字段管理类
    /// </summary>
    internal class FieldManager
    {
        XYECOM.Configuration.WebInfo webInfo = XYECOM.Configuration.WebInfo.Instance;
        XYECOM.Configuration.Template templateInfo = XYECOM.Configuration.Template.Instance;
        XYECOM.Configuration.Module moduleInfo = XYECOM.Configuration.Module.Instance;

        static readonly string SYS_NOIMAGE_PATH = "/Common/Images/DefaultImg.gif";

        static string domainHost = "";

        static FieldManager()
        {
            if (System.Web.HttpContext.Current.Request.Params["HTTP_HOST"].ToString().Contains("localhost"))
                domainHost = "0.0.1";
            else
                domainHost = System.Web.HttpContext.Current.Request.Params["HTTP_HOST"].Substring(System.Web.HttpContext.Current.Request.Params["HTTP_HOST"].IndexOf('.'));
        }



        #region 生成需要查询的列名
        /// <summary>
        /// 生成需要查询的列名
        /// </summary>
        /// <param name="strLabelBody">样式循环体标记</param>
        /// <returns>列名列表</returns>
        public string GetColumnName(string strLabelBody)
        {
            StringBuilder columns = new StringBuilder("");

            #region 友情链接
            if (strLabelBody.Contains("{WI:XY_URL}"))
            {
                columns.Append(",FL_URL");
            }
            if (strLabelBody.Contains("{WI:XY_ALT}"))
            {
                columns.Append(",FL_Alt");
            }
            if (strLabelBody.Contains("{WI:XY_Font}"))
            {
                columns.Append(",FL_Font");
            }
            if (strLabelBody.Contains("{WI:XY_SRC}"))
            {
                columns.Append(",FL_Font,S_URL,At_Path");
            }
            #endregion

            #region 供应信息
            if (strLabelBody.Contains("{SP:XY_ID}"))
            {
                columns.Append(",SD_ID");
            }
            if (strLabelBody.Contains("{SP:MarketPrice}"))
            {
                columns.Append(",MarketPrice");
            }
            if (strLabelBody.Contains("{SP:IsContractVouch}"))
            {
                columns.Append(",IsContractVouch");
            }
            if (strLabelBody.Contains("{SP:IsPayBail}"))
            {
                columns.Append(",IsPayBail");
            }
            if (strLabelBody.Contains("{SP:DepotName}"))
            {
                columns.Append(",DepotName");
            }

            if (strLabelBody.Contains("{SP:DepotAddress}"))
            {
                columns.Append(",DepotAddress");
            }
            if (strLabelBody.Contains("{SP:DepotManager}"))
            {
                columns.Append(",DepotManager");
            }
            if (strLabelBody.Contains("{SP:DepotFax}"))
            {
                columns.Append(",DepotFax");
            }
            if (strLabelBody.Contains("{SP:DepotPhone}"))
            {
                columns.Append(",DepotPhone");
            }
            if (strLabelBody.Contains("{SP:DepotEmail}"))
            {
                columns.Append(",DepotEmail");
            }

            if (strLabelBody.Contains("{SP:XY_TitleAll}"))
            {
                columns.Append(",SD_Title,UG_ID");
            }
            if (strLabelBody.Contains("{SP:XY_Title}"))
            {
                columns.Append(",SD_Title,UG_ID");
            }
            if (strLabelBody.Contains("{SP:XY_PName}"))
            {
                columns.Append(",PT_Name");
            }
            if (strLabelBody.Contains("{SP:XY_PURL}"))
            {
                columns.Append(",PT_ID");
            }
            if (strLabelBody.Contains("{SP:XY_Price}"))
            {
                columns.Append(",SD_Price");
            }
            if (strLabelBody.Contains("{SP:XY_Unit}"))
            {
                columns.Append(",SD_Unit");
            }
            if (strLabelBody.Contains("{SP:XY_SmallNum}"))
            {
                columns.Append(",SD_SmallNum");
            }
            if (strLabelBody.Contains("{SP:XY_Num}"))
            {
                columns.Append(",SD_CountNum");
            }
            if (strLabelBody.Contains("{SP:XY_Description}"))
            {
                columns.Append(",SD_Description,UG_ID");
            }
            if (strLabelBody.Contains("{SP:XY_Date}"))
            {
                columns.Append(",SD_PublishDate");
            }
            if (strLabelBody.Contains("{SP:XY_EndDate}"))
            {
                columns.Append(",SD_EndDate");
            }
            if (strLabelBody.Contains("{SP:XY_URL}"))
            {
                columns.Append(",SD_HTMLPage,SD_ID,U_Name,U_id");
            }
            if (strLabelBody.Contains("{SP:XY_Click}"))
            {
                columns.Append(",SD_ClickNum");
            }
            if (strLabelBody.Contains("{SP:XY_IMG}"))
            {
                columns.Append(",IsHasImage,SD_ID");
            }

            if (strLabelBody.Contains("{SP:XY_SmallImg1}") || strLabelBody.Contains("{SP:XY_SmallImg2}") || strLabelBody.Contains("{SP:XY_SmallImg3}"))
            {
                columns.Append(",IsHasImage,SD_ID");
            }

            #endregion

            #region 求购信息
            if (strLabelBody.Contains("{SB:SD_ID}"))
                columns.Append(",SD_ID");
            if (strLabelBody.Contains("{SB:UID}"))
                columns.Append(",UID");
            if (strLabelBody.Contains("{SB:Title}"))
                columns.Append(",Title");
            if (strLabelBody.Contains("{SB:KeyWord}"))
                columns.Append(",KeyWord");
            if (strLabelBody.Contains("{SB:Contetns}"))
                columns.Append(",Contetns");
            if (strLabelBody.Contains("{SB:Name}"))
                columns.Append(",Name");
            if (strLabelBody.Contains("{SB:Tel}"))
                columns.Append(",Tel");
            if (strLabelBody.Contains("{SB:PublishDate}"))
                columns.Append(",PublishDate");

            if (strLabelBody.Contains("{SB:Emergency}"))
                columns.Append(",Emergency");
            if (strLabelBody.Contains("{SB:AuditingState}"))
                columns.Append(",AuditingState");
            if (strLabelBody.Contains("{SB:Url}"))
                columns.Append(",SD_ID");
            if (strLabelBody.Contains("{SB:buyId}"))
                columns.Append(",buyId");
            if (strLabelBody.Contains("{SB:buyareaname}"))
                columns.Append(",buyareaname");
            #endregion

            #region 加工信息
            if (strLabelBody.Contains("{DM:XY_ID}"))
            {
                columns.Append(",SD_ID");
            }
            if (strLabelBody.Contains("{DM:XY_TitleAll}"))
            {
                columns.Append(",SD_Title,UG_ID");
            }
            if (strLabelBody.Contains("{DM:XY_Title}"))
            {
                columns.Append(",SD_Title,UG_ID");
            }
            if (strLabelBody.Contains("{DM:XY_TypeName}"))
            {
                columns.Append(",TypeName");
            }
            if (strLabelBody.Contains("{DM:XY_Summary}"))
            {
                columns.Append(",Summary");
            }
            if (strLabelBody.Contains("{DM:XY_Area}"))
            {
                columns.Append(",Area");
            }
            if (strLabelBody.Contains("{DM:XY_WebSite}"))
            {
                columns.Append(",WebSite");
            }

            //if (strLabelBody.Contains("{DM:XY_PURL}"))
            //{
            //    columns.Append(",TypeId");
            //}
            if (strLabelBody.Contains("{DM:XY_Flag}"))
            {
                columns.Append(",SD_Flag");
            }
            if (strLabelBody.Contains("{DM:XY_Price}"))
            {
                columns.Append(",SD_Price");
            }
            if (strLabelBody.Contains("{DM:XY_Trade}"))
            {
                columns.Append(",Trade");
            }
            if (strLabelBody.Contains("{DM:XY_Description}"))
            {
                columns.Append(",SD_Description,UG_ID");
            }
            if (strLabelBody.Contains("{DM:XY_Date}"))
            {
                columns.Append(",SD_PublishDate");
            }

            if (strLabelBody.Contains("{DM:XY_EndDate}"))
            {
                columns.Append(",SD_EndDate");
            }
            if (strLabelBody.Contains("{DM:XY_URL}"))
            {
                columns.Append(",SD_HTMLPage,SD_ID,SD_Flag,U_Name,u_id");
            }
            #endregion

            #region 招商代理信息
            if (strLabelBody.Contains("{BS:XY_ID}"))
                columns.Append(",IBI_ID");

            if (strLabelBody.Contains("{BS:XY_TitleAll}"))
                columns.Append(",IBI_Title,IBI_Sign,ModuleName,UG_ID");

            if (strLabelBody.Contains("{BS:XY_Title}"))
                columns.Append(",IBI_Title,IBI_Sign,ModuleName,UG_ID");

            if (strLabelBody.Contains("{BS:XY_PName}"))
                columns.Append(",IT_Name");

            if (strLabelBody.Contains("{BS:XY_PURL}"))
                columns.Append(",IT_ID,ModuleName");

            if (strLabelBody.Contains("{BS:XY_Flag}"))
                columns.Append(",IBI_Sign,ModuleName");

            if (strLabelBody.Contains("{BS:XY_Content}"))
                columns.Append(",IBI_Content,UG_ID");

            //删除产品描述字段
            if (strLabelBody.Contains("{BS:XY_Description}"))
                columns.Append(",IBI_Content,UG_ID");

            if (strLabelBody.Contains("{BS:XY_Area}"))
                columns.Append(",A_Area");

            if (strLabelBody.Contains("{BS:XY_BName}"))
                columns.Append(",S_Name,UG_ID");

            if (strLabelBody.Contains("{BS:XY_Support}"))
                columns.Append(",IBI_Support,UG_ID");

            if (strLabelBody.Contains("{BS:XY_Demand}"))
                columns.Append(",IBI_Demand,UG_ID");

            if (strLabelBody.Contains("{BS:XY_Date}"))
                columns.Append(",IBI_PublishDate");

            if (strLabelBody.Contains("{BS:XY_EndDate}"))
                columns.Append(",IBI_EndTime");

            if (strLabelBody.Contains("{BS:XY_ShowURL}"))
                columns.Append(",IBI_URL,IBI_URL,IBI_HTMLPage,IBI_Sign,ModuleName");

            if (strLabelBody.Contains("{BS:XY_URL}"))
                columns.Append(",IBI_HTMLPage,IBI_ID,IBI_Sign");

            if (strLabelBody.Contains("{BS:XY_Click}"))
                columns.Append(",IBI_ClickNum");

            if (strLabelBody.Contains("{BS:XY_IMG}"))
                columns.Append(",IBI_ID,IsHasImage");


            if (strLabelBody.Contains("{BS:XY_SmallImg1}") || strLabelBody.Contains("{BS:XY_SmallImg2}") || strLabelBody.Contains("{BS:XY_SmallImg3}"))
            {
                columns.Append(",IsHasImage,IBI_ID");
            }

            #endregion

            #region 服务信息
            if (strLabelBody.Contains("{SG:XY_ID}"))
                columns.Append(",S_ID");

            if (strLabelBody.Contains("{SG:XY_TitleAll}"))
                columns.Append(",S_Title,S_Flag,ModuleName,UG_ID");

            if (strLabelBody.Contains("{SG:XY_Title}"))
                columns.Append(",S_Title,S_Flag,UG_ID,ModuleName");

            if (strLabelBody.Contains("{SG:XY_PName}"))
                columns.Append(",ST_Name");

            if (strLabelBody.Contains("{SG:XY_Flag}"))
                columns.Append(",S_Flag");

            if (strLabelBody.Contains("{SG:XY_PURL}"))
                columns.Append(",ST_ID,ModuleName");

            if (strLabelBody.Contains("{SG:XY_Date}"))
                columns.Append(",S_AddTime");

            if (strLabelBody.Contains("{SG:XY_EndDate}"))
                columns.Append(",S_EndTime");

            if (strLabelBody.Contains("{SG:XY_Click}"))
                columns.Append(",S_ClickNum");

            if (strLabelBody.Contains("{SG:XY_URL}"))
                columns.Append(",S_HTMLPage,S_ID,S_Flag,ModuleName");

            if (strLabelBody.Contains("{SG:XY_IMG}"))
                columns.Append(",S_ID,IsHasImage");

            if (strLabelBody.Contains("{SG:XY_Content}"))
                columns.Append(",S_Content,UG_ID");

            if (strLabelBody.Contains("{SG:XY_SmallImg1}") || strLabelBody.Contains("{SG:XY_SmallImg2}") || strLabelBody.Contains("{SG:XY_SmallImg3}"))
            {
                columns.Append(",IsHasImage,S_ID");
            }
            #endregion

            #region 展会信息
            if (strLabelBody.Contains("{SH:XY_ID}"))
                columns.Append(",id");

            if (strLabelBody.Contains("{SH:XY_TitleAll}"))
                columns.Append(",infotitle");

            if (strLabelBody.Contains("{SH:XY_Title}"))
                columns.Append(",infotitle");

            if (strLabelBody.Contains("{SH:XY_EndFlag}"))
                columns.Append(",endtime");

            if (strLabelBody.Contains("{SH:XY_PName}"))
                columns.Append(",SHT_Name");

            if (strLabelBody.Contains("{SH:XY_PURL}"))
                columns.Append(",typeid");

            if (strLabelBody.Contains("{SH:XY_Content}"))
                columns.Append(",contents");

            if (strLabelBody.Contains("{SH:XY_BeginTime}"))
                columns.Append(",BeginTime");

            if (strLabelBody.Contains("{SH:XY_EndTime}"))
                columns.Append(",EndTime");

            if (strLabelBody.Contains("{SH:XY_Place}"))
                columns.Append(",District");

            if (strLabelBody.Contains("{SH:XY_Stadiums}"))
                columns.Append(",Site");

            if (strLabelBody.Contains("{SH:XY_Sponsor}"))
                columns.Append(",sponsor");

            if (strLabelBody.Contains("{SH:XY_Undertake}"))
                columns.Append(",undertake");

            if (strLabelBody.Contains("{SH:XY_Coorganizor}"))
                columns.Append(",coorganizor");

            if (strLabelBody.Contains("{SH:XY_Sustain}"))
                columns.Append(",sustain");

            if (strLabelBody.Contains("{SH:XY_ShowSycle}"))
                columns.Append(",Sycle");

            if (strLabelBody.Contains("{SH:XY_ShowCharacter}"))
                columns.Append(",Type");

            if (strLabelBody.Contains("{SH:XY_ShowURL}"))
                columns.Append(",URL,htmlPage,id,ModuleName");

            if (strLabelBody.Contains("{SH:XY_Landmeasure}"))
                columns.Append(",Area");

            if (strLabelBody.Contains("{SH:XY_UnitPrice}"))
                columns.Append(",unitPrice");

            if (strLabelBody.Contains("{SH:XY_MinRation}"))
                columns.Append(",leastRation");

            if (strLabelBody.Contains("{SH:XY_TotalArea}"))
                columns.Append(",areaTotal");

            if (strLabelBody.Contains("{SH:XY_Date}"))
                columns.Append(",AddInfoTime");

            if (strLabelBody.Contains("{SH:XY_URL}"))
                columns.Append(",htmlPage,id");

            if (strLabelBody.Contains("{SH:XY_IMG}"))
                columns.Append(",id,IsHasImage");


            if (strLabelBody.Contains("{SH:XY_SmallImg1}") || strLabelBody.Contains("{SH:XY_SmallImg2}") || strLabelBody.Contains("{SH:XY_SmallImg3}"))
            {
                columns.Append(",IsHasImage,id");
            }

            #endregion

            #region 品牌信息
            if (strLabelBody.Contains("{BD:XY_ID}"))
                columns.Append(",B_ID");

            if (strLabelBody.Contains("{BD:XY_NameAll}"))
                columns.Append(",B_Type,UG_ID");

            if (strLabelBody.Contains("{BD:XY_Name}"))
                columns.Append(",B_Type,UG_ID");

            if (strLabelBody.Contains("{BD:XY_PName}"))
                columns.Append(",PT_Name");

            if (strLabelBody.Contains("{BD:XY_Remark}"))
                columns.Append(",B_Remark,UG_ID");

            if (strLabelBody.Contains("{BD:XY_Date}"))
                columns.Append(",addtime");

            if (strLabelBody.Contains("{BD:XY_ClickNum}"))
                columns.Append(",B_ClickNum");

            if (strLabelBody.Contains("{BD:XY_URL}"))
                columns.Append(",B_HtmlPage,B_ID");

            if (strLabelBody.Contains("{BD:XY_IMG}"))
                columns.Append(",B_ID,IsHasImage");

            if (strLabelBody.Contains("{BD:XY_SmallImg1}") || strLabelBody.Contains("{BD:XY_SmallImg2}") || strLabelBody.Contains("{BD:XY_SmallImg3}"))
            {
                columns.Append(",IsHasImage,B_ID");
            }

            #endregion

            #region 人才信息
            if (strLabelBody.Contains("{EG:XY_ID}"))
                columns.Append(",EI_ID");

            if (strLabelBody.Contains("{EG:XY_Post}"))
                columns.Append(",P_Name");

            if (strLabelBody.Contains("{EG:XY_TitleAll}"))
                columns.Append(",EI_Job,UG_ID");

            if (strLabelBody.Contains("{EG:XY_Title}"))
                columns.Append(",EI_Job,UG_ID");

            if (strLabelBody.Contains("{EG:XY_Branch}"))
                columns.Append(",EI_Branch");

            if (strLabelBody.Contains("{EG:XY_Type}"))
                columns.Append(",EI_Type");

            //if (strLabelBody.Contains("{EG:XY_Province}"))
            //    columns.Append(",Province_Name");

            //if (strLabelBody.Contains("{EG:XY_City}"))
            //    columns.Append(",C_Name");

            if (strLabelBody.Contains("{EG:XY_Area}"))
                columns.Append(",WorkAreaId");

            if (strLabelBody.Contains("{EG:XY_Request}"))
                columns.Append(",EI_Request,UG_ID");

            if (strLabelBody.Contains("{EG:XY_Pay}"))
                columns.Append(",EI_Pay");

            if (strLabelBody.Contains("{EG:XY_SA}"))
                columns.Append(",EI_Eb");

            if (strLabelBody.Contains("{EG:XY_Age}"))
                columns.Append(",EI_Age");

            if (strLabelBody.Contains("{EG:XY_Sex}"))
                columns.Append(",EI_Sex");

            if (strLabelBody.Contains("{EG:XY_Experience}"))
                columns.Append(",EI_Experience");

            if (strLabelBody.Contains("{EG:XY_Nationality}"))
                columns.Append(",EI_Nationality");

            if (strLabelBody.Contains("{EG:XY_Number}"))
                columns.Append(",EI_Number");

            if (strLabelBody.Contains("{EG:XY_Date}"))
                columns.Append(",EI_AddDate");

            if (strLabelBody.Contains("{EG:XY_EndDate}"))
                columns.Append(",EI_EndDate");

            if (strLabelBody.Contains("{EG:XY_URL}"))
                columns.Append(",EI_HTMLPage,U_Name,EI_ID,U_ID");

            if (strLabelBody.Contains("{EG:XY_Click}"))
                columns.Append(",EI_ClickNum");

            #endregion

            #region 企业信息
            if (strLabelBody.Contains("{CP:XY_ID}"))
                columns.Append(",U_ID");

            if (strLabelBody.Contains("{CP:XY_CreditIntegral}") || strLabelBody.Contains("{CP:XY_CreditIntegralImage}") || strLabelBody.Contains("{CP:XY_CreditIntegralLeavl}"))
            {
                columns.Append(",CreditIntegral,u_flag");
            }

            if (strLabelBody.Contains("{CP:XY_NameAll}"))
                columns.Append(",UI_Name");

            if (strLabelBody.Contains("{CP:XY_Name}"))
                columns.Append(",UI_Name");

            if (strLabelBody.Contains("{CP:XY_Area}"))
                columns.Append(",Area_ID");

            if (strLabelBody.Contains("{CP:XY_Address}"))
                columns.Append(",UI_Area");

            if (strLabelBody.Contains("{CP:XY_License}"))
                columns.Append(",UI_License");

            if (strLabelBody.Contains("{CP:XY_Character}"))
                columns.Append(",UI_Character");

            if (strLabelBody.Contains("{CP:XY_LinkMan}"))
                columns.Append(",UI_LinkMan");

            if (strLabelBody.Contains("{CP:XY_IM}"))
                columns.Append(",IM,UG_ID");

            if (strLabelBody.Contains("{CP:XY_Telephone}"))
                columns.Append(",Telephone");

            if (strLabelBody.Contains("{CP:XY_Number}"))
                columns.Append(",UI_Number");

            if (strLabelBody.Contains("{CP:XY_HomePage}"))
                columns.Append(",UI_HomePage");

            if (strLabelBody.Contains("{CP:XY_Fax}"))
                columns.Append(",Fax");

            if (strLabelBody.Contains("{CP:XY_jianjie}"))
                columns.Append(",UI_Synopsis");

            if (strLabelBody.Contains("{CP:XY_Postcode}"))
                columns.Append(",UI_Postcode");

            if (strLabelBody.Contains("{CP:XY_Mobil}"))
                columns.Append(",UI_Mobil");

            if (strLabelBody.Contains("{CP:XY_Type}"))
                columns.Append(",UT_ID");

            if (strLabelBody.Contains("{CP:XY_Gread}"))
                columns.Append(",UG_ID");

            if (strLabelBody.Contains("{CP:XY_GIMG}"))
                columns.Append(",UG_ID");

            if (strLabelBody.Contains("{CP:XY_Section}"))
                columns.Append(",U_Section");

            if (strLabelBody.Contains("{CP:XY_Post}"))
                columns.Append(",U_Post");

            if (strLabelBody.Contains("{CP:XY_Way}"))
                columns.Append(",U_Way");

            if (strLabelBody.Contains("{CP:XY_SupplyProduct}"))
                columns.Append(",U_SupplyProduct");

            if (strLabelBody.Contains("{CP:XY_BuyProduct}"))
                columns.Append(",U_BuyProduct");

            if (strLabelBody.Contains("{CP:XY_Mode}"))
                columns.Append(",U_Mode");

            if (strLabelBody.Contains("{CP:XY_Money}"))
                columns.Append(",U_Money,U_MoneyType");

            if (strLabelBody.Contains("{CP:XY_Year}"))
                columns.Append(",U_Year");

            if (strLabelBody.Contains("{CP:XY_RArea}"))
                columns.Append(",A_N");

            if (strLabelBody.Contains("{CP:XY_LAddress}"))
                columns.Append(",U_Address");

            if (strLabelBody.Contains("{CP:XY_PType}"))
                columns.Append(",U_PType");

            if (strLabelBody.Contains("{CP:XY_Date}"))
                columns.Append(",U_RegDate");

            if (strLabelBody.Contains("{CP:XY_URL}"))
                columns.Append(",U_Name,UG_ID,U_ID");

            if (strLabelBody.Contains("{CP:XY_Click}"))
                columns.Append(",U_ClickNum");

            if (strLabelBody.Contains("{CP:XY_IMG}"))
                columns.Append(",U_ID,UserIsHasImage");

            //if (strLabelBody.Contains("{CP:XY_Cred}"))
            //    columns.Append(",U_Cred");

            if (strLabelBody.Contains("{CP:XY_SmallImg1}") || strLabelBody.Contains("{CP:XY_SmallImg2}") || strLabelBody.Contains("{CP:XY_SmallImg3}"))
            {
                columns.Append(",U_ID,UserIsHasImage");
            }

            #endregion

            #region 个人信息
            if (strLabelBody.Contains("{AC:XY_ID}"))
                columns.Append(",U_ID");

            if (strLabelBody.Contains("{AC:XY_Name}"))
                columns.Append(",UI_Name");

            if (strLabelBody.Contains("{AC:XY_Sex}"))
                columns.Append(",UI_Sex");

            if (strLabelBody.Contains("{AC:XY_Code}"))
                columns.Append(",UI_Code");

            if (strLabelBody.Contains("{AC:XY_Area}"))
                columns.Append(",Area_ID");

            if (strLabelBody.Contains("{AC:XY_Address}"))
                columns.Append(",UI_Address");

            if (strLabelBody.Contains("{AC:XY_Telephone}"))
                columns.Append(",Telephone");

            if (strLabelBody.Contains("{AC:XY_Postcode}"))
                columns.Append(",UI_Postcode");

            if (strLabelBody.Contains("{AC:XY_Mobil}"))
                columns.Append(",UI_Mobil");

            if (strLabelBody.Contains("{AC:XY_Date}"))
                columns.Append(",U_RegDate");
            //
            if (strLabelBody.Contains("{AC:XY_School}"))
                columns.Append(",RE_School");

            if (strLabelBody.Contains("{AC:XY_Speciality}"))
                columns.Append(",RE_Speciality");

            if (strLabelBody.Contains("{AC:XY_Graduate}"))
                columns.Append(",RE_Gyear");

            if (strLabelBody.Contains("{AC:XY_Level}"))
                columns.Append(",RE_Schoolage");

            if (strLabelBody.Contains("{AC:XY_Job}"))
                columns.Append(",RE_Intentjob");

            if (strLabelBody.Contains("{AC:XY_Pay}"))
                columns.Append(",RE_Intentpay");

            if (strLabelBody.Contains("{AC:XY_Hopecity}"))
                columns.Append(",Area_ID");

            if (strLabelBody.Contains("{AC:XY_Years}"))
                columns.Append(",RE_JobYear");

            if (strLabelBody.Contains("{AC:XY_Experience}"))
                columns.Append(",RE_Experience");

            if (strLabelBody.Contains("{AC:XY_Appraise}"))
                columns.Append(",RE_Resume");

            if (strLabelBody.Contains("{AC:XY_URL}"))
                columns.Append(",U_ID");


            #endregion

            #region 企业类别
            if (strLabelBody.Contains("{UT:XY_Title}"))
                columns.Append(",UT_Type");

            if (strLabelBody.Contains("{UT:XY_URL}"))
                columns.Append(",UT_ID");
            #endregion

            #region 资讯栏目
            if (strLabelBody.Contains("{NT:XY_Title}"))
                columns.Append(",NT_Name");

            if (strLabelBody.Contains("{NT:XY_URL}"))
                columns.Append(",NT_EnName,NT_TempletAddress,NT_ID,DomainName");

            #endregion

            #region 资讯信息

            if (strLabelBody.Contains("{NS:XY_ID}"))
                columns.Append(",NS_ID");

            if (strLabelBody.Contains("{NS:XY_TitleAll}"))
                columns.Append(",NS_NewsName,NS_TitleStyle");

            if (strLabelBody.Contains("{NS:XY_Title}"))
                columns.Append(",NS_NewsName,NS_TitleStyle");

            if (strLabelBody.Contains("{NS:XY_TName}"))
                columns.Append(",NT_Name");

            if (strLabelBody.Contains("{NS:XY_STName}"))
                columns.Append(",NT_NessName");

            if (strLabelBody.Contains("{NS:XY_TURL}"))
                columns.Append(",NT_ID,NT_TempletFolderAddress,DomainName");

            if (strLabelBody.Contains("{NS:XY_CurtTitle}"))
                columns.Append(",NS_TwoName");

            if (strLabelBody.Contains("{NS:XY_NaviContentAll}"))
                columns.Append(",NS_NewsLess");

            if (strLabelBody.Contains("{NS:XY_NaviContent}"))
                columns.Append(",NS_NewsLess");

            if (strLabelBody.Contains("{NS:XY_Content}"))
                columns.Append(",NS_NewsNote");

            if (strLabelBody.Contains("{NS:XY_Author}"))
                columns.Append(",NS_NewsAuthor");

            if (strLabelBody.Contains("{NS:XY_Source}"))
                columns.Append(",NS_NewsOrigin");

            if (strLabelBody.Contains("{NS:XY_KeyWord}"))
                columns.Append(",NS_KeyWord");

            if (strLabelBody.Contains("{NS:XY_Date}"))
                columns.Append(",NS_AddTime");

            if (strLabelBody.Contains("{NS:XY_Link}"))
                columns.Append(",NS_LinkAddress,NS_ID,NT_TempletFolderAddress,DomainName");

            if (strLabelBody.Contains("{NS:XY_URL}"))
                columns.Append(",NS_HTMLPage,NS_LinkAddress,NS_ID,NS_Type,NT_TempletFolderAddress,DomainName");

            if (strLabelBody.Contains("{NS:XY_Click}"))
                columns.Append(",NS_Count");

            //资讯图片地址（为兼容之前字段保留）
            if (strLabelBody.Contains("{NS:XY_SmallPicPath}"))
                columns.Append(",IsHasImage,NS_ID");

            //资讯图片地址
            if (strLabelBody.Contains("{NS:XY_PicPath}"))
                columns.Append(",IsHasImage,NS_ID,NS_PicUrl");

            //行业标识
            if (strLabelBody.Contains("{NS:XY_TradeFlag}"))
                columns.Append(",TradeIds");

            //地区标识
            if (strLabelBody.Contains("{NS:XY_AreaFlag}"))
                columns.Append(",AreaIds");

            //新闻附件
            if (strLabelBody.Contains("{NS:XY_Attachment}"))
            {
                columns.Append(",NS_ID");
            }

            #endregion

            #region 用户资讯信息

            if (strLabelBody.Contains("{UNS:XY_ID}"))
                columns.Append(",N_ID");

            if (strLabelBody.Contains("{UNS:XY_TitleAll}"))
                columns.Append(",N_title,TitleStyle");

            //if (strLabelBody.Contains("{UNS:XY_Title}"))
            //    columns.Append(",NS_NewsName,NS_TitleStyle");

            if (strLabelBody.Contains("{UNS:XY_TName}"))
                columns.Append(",Name");

            //if (strLabelBody.Contains("{UNS:XY_STName}"))
            //    columns.Append(",NT_NessName");

            //if (strLabelBody.Contains("{UNS:XY_TURL}"))
            //    columns.Append(",N_ID,NS_TempletFolderAddress,DomainName");

            if (strLabelBody.Contains("{UNS:XY_CurtTitle}"))
                columns.Append(",TwoName");

            if (strLabelBody.Contains("{UNS:XY_NaviContentAll}"))
                columns.Append(",Less");

            //if (strLabelBody.Contains("{UNS:XY_NaviContent}"))
            //    columns.Append(",NS_NewsLess");

            if (strLabelBody.Contains("{UNS:XY_Content}"))
                columns.Append(",N_Content");

            if (strLabelBody.Contains("{UNS:XY_Author}"))
                columns.Append(",Author");

            if (strLabelBody.Contains("{UNS:XY_Source}"))
                columns.Append(",Origin");

            if (strLabelBody.Contains("{UNS:XY_KeyWord}"))
                columns.Append(",KeyWord");

            if (strLabelBody.Contains("{UNS:XY_Date}"))
                columns.Append(",N_addtime");

            //if (strLabelBody.Contains("{UNS:XY_Link}"))
            //    columns.Append(",NS_LinkAddress,NS_ID,NT_TempletFolderAddress,DomainName");

            if (strLabelBody.Contains("{UNS:XY_URL}"))
                columns.Append(",N_ID,U_Name");

            if (strLabelBody.Contains("{UNS:XY_Click}"))
                columns.Append(",Count");

            ////资讯图片地址（为兼容之前字段保留）
            //if (strLabelBody.Contains("{UNS:XY_SmallPicPath}"))
            //    columns.Append(",IsHasImage,NS_ID");

            ////资讯图片地址
            //if (strLabelBody.Contains("{UNS:XY_PicPath}"))
            //    columns.Append(",IsHasImage,NS_ID,NS_PicUrl");

            ////行业标识
            //if (strLabelBody.Contains("{UNS:XY_TradeFlag}"))
            //    columns.Append(",TradeIds");

            ////地区标识
            //if (strLabelBody.Contains("{UNS:XY_AreaFlag}"))
            //    columns.Append(",AreaIds");

            ////新闻附件
            //if (strLabelBody.Contains("{UNS:XY_Attachment}"))
            //{
            //    columns.Append(",NS_ID");
            //}


            #endregion

            #region 广告

            if (strLabelBody.Contains("{AD:XY_AdInfo}"))
                columns.Append(",AD_ID,AD_Size,AD_Color,AD_Font,AD_Type,AD_NoteText,AD_High,AD_Alt,AD_Width,AD_PicURL,AD_JSname,AD_CodeContent,S_URL,AT_Path,AD_Letter,AD_LinkURL,AD_OpenType");

            if (strLabelBody.Contains("{AD:XY_Description}"))
                columns.Append(",AD_Alt");

            #endregion

            #region 专题信息
            if (strLabelBody.Contains("{TP:XY_ID}"))
                columns.Append(",ID");

            if (strLabelBody.Contains("{TP:XY_CName}"))
                columns.Append(",CName");

            if (strLabelBody.Contains("{TP:XY_EName}"))
                columns.Append(",EName");

            if (strLabelBody.Contains("{TP:XY_TPCID}"))
                columns.Append(",TCID");

            if (strLabelBody.Contains("{TP:XY_TPCName}"))
                columns.Append(",TCName");

            if (strLabelBody.Contains("{TP:XY_URL}"))
                columns.Append(",URL,EName,IsDomain");

            if (strLabelBody.Contains("{TP:XY_AddTime}"))
                columns.Append(",AddTime");

            if (strLabelBody.Contains("{TP:XY_HTMLPage}"))
                columns.Append(",HTMLPage");

            #endregion

            #region 热门关键字相关
            if (strLabelBody.Contains("{hk:xy_url}"))
                columns.Append(",sk_sort,sk_name");

            if (strLabelBody.Contains("{hk:xy_keyword}"))
                columns.Append(",sk_name");

            if (strLabelBody.Contains("{hk:xy_clicknum}"))
                columns.Append(",sk_count");
            #endregion

            #region 企业新闻相关
            if (strLabelBody.Contains("{un:xy_title}"))
                columns.Append(",n_title,ug_id");

            if (strLabelBody.Contains("{un:xy_content}"))
                columns.Append(",n_content");

            if (strLabelBody.Contains("{un:xy_addtime}"))
                columns.Append(",n_addtime");

            if (strLabelBody.Contains("{un:xy_url}"))
                columns.Append(",n_id,u_name");
            #endregion

            #region 百科
            if (strLabelBody.Contains("{BK:XY_LemmaName}"))
                columns.Append(",LemmaName");

            if (strLabelBody.Contains("{BK:XY_Reference}"))
                columns.Append(",Reference");

            if (strLabelBody.Contains("{BK:XY_LemmaCategory}"))
                columns.Append(",LemmaCategory");

            if (strLabelBody.Contains("{BK:XY_ExtendRead}"))
                columns.Append(",ExtendRead");

            if (strLabelBody.Contains("{BK:XY_Creator}"))
                columns.Append(",Creator");

            if (strLabelBody.Contains("{BK:XY_CreateTime}"))
                columns.Append(",CreateTime");

            if (strLabelBody.Contains("{BK:XY_EditTimes}"))
                columns.Append(",EditTimes");

            if (strLabelBody.Contains("{BK:XY_BrowseTimes}"))
                columns.Append(",BrowseTimes");

            if (strLabelBody.Contains("{BK:XY_Synonyms}"))
                columns.Append(",Synonyms");

            if (strLabelBody.Contains("{BK:XY_EnName}"))
                columns.Append(",EnName");

            if (strLabelBody.Contains("{BK:XY_Content}"))
                columns.Append(",Content");

            if (strLabelBody.Contains("{BK:XY_LastModiyTime}"))
                columns.Append(",LastModiyTime");

            if (strLabelBody.Contains("{BK:XY_Picture}"))
                columns.Append(",Picture");

            if (strLabelBody.Contains("{BK:XY_url}"))
                columns.Append(",LemmaId");


            #endregion

            #region 网上调查
            if (strLabelBody.Contains("{vote:xy_title}"))
                columns.Append(",Title");

            if (strLabelBody.Contains("{vote:xy_desc}"))
                columns.Append(",[Desc]");

            if (strLabelBody.Contains("{vote:xy_url}"))
                columns.Append(",VoteId");

            #endregion


            #region 团购
            if (strLabelBody.Contains("{TB:Url}") || strLabelBody.Contains("{TB:Image}") || strLabelBody.Contains("{TB:Id}"))
                columns.Append(",Id,HtmlPage,UserId,IsPlatForm");
            if (strLabelBody.Contains("{TB:Address}"))
                columns.Append(",Address");
            if (strLabelBody.Contains("{TB:CompanyName}"))
                columns.Append(",CompanyName");
            if (strLabelBody.Contains("{TB:Telephone}"))
                columns.Append(",Telephone");
            if (strLabelBody.Contains("{TB:LoginName}"))
                columns.Append(",LoginName");
            if (strLabelBody.Contains("{TB:IsRecommend}"))
                columns.Append(",IsRecommend");
            if (strLabelBody.Contains("{TB:IsUserRecommend}"))
                columns.Append(",IsUserRecommend");
            if (strLabelBody.Contains("{TB:IsPlat}"))
                columns.Append(",IsPlatform");
            if (strLabelBody.Contains("{TB:UserId}"))
                columns.Append(",UserId");
            if (strLabelBody.Contains("{TB:EndDate}"))
                columns.Append(",EndDate");
            if (strLabelBody.Contains("{TB:StartDate}"))
                columns.Append(",StartDate");
            if (strLabelBody.Contains("{TB:PubLishDate}"))
                columns.Append(",PublishDate");
            if (strLabelBody.Contains("{TB:SucPeopleNum}"))
                columns.Append(",SucPeopleNum");
            if (strLabelBody.Contains("{TB:KeyWord}"))
                columns.Append(",KeyWord");
            if (strLabelBody.Contains("{TB:ProductId}"))
                columns.Append(",ProductId");
            if (strLabelBody.Contains("{TB:Title}") || strLabelBody.Contains("{TB:AllTitle}"))
                columns.Append(",Title");
            if (strLabelBody.Contains("{TB:Description}"))
                columns.Append(",Description");
            if (strLabelBody.Contains("{TB:LimitCountOfBuy}"))
                columns.Append(",LimitCountOfBuy");
            if (strLabelBody.Contains("{TB:SubScription}"))
                columns.Append(",SubScription");


            if (strLabelBody.Contains("{TB:MarketPrice}") || strLabelBody.Contains("{TB:Discount}")
                || strLabelBody.Contains("{TB:Saved}") || strLabelBody.Contains("{TB:CurrentPrice}")
                || strLabelBody.Contains("{TB:Joins}"))
                columns.Append(",Id,MarketPrice,CurrentJoin,CurrentPrice,SucPeopleNum");

            #endregion

            if (columns.Length > 0)
            {
                string str = columns.ToString().Substring(1);

                string[] cols = Core.Utils.RepaceSpilthItem(str.Split(','));

                return Core.Utils.ArrayToString(cols);
            }

            return columns.ToString();
        }
        #endregion

        #region 替换样式
        /// <summary>
        /// 替换标签字段为真实数据
        /// </summary>
        /// <param name="index">索引号</param>
        /// <param name="labelFlagName">标签标识名称</param>
        /// <param name="labelBody">标签主体</param>
        /// <param name="dataRow">数据行</param>
        /// <param name="queryParam">标签格式条件</param>
        /// <returns></returns>
        public string ReplaceField(int index, string labelFlagName, string labelBody, DataRow dataRow, LabelQueryParameterInfo queryParam)
        {

            List<XYECOM.Configuration.ModuleItemInfo> moduleItems = new List<XYECOM.Configuration.ModuleItemInfo>();

            labelFlagName = labelFlagName.ToLower().Trim();

            string moduleName = "";

            labelBody = labelBody.Replace("{i}", index.ToString());

            #region  系统字段
            if (labelBody.Contains("{SY:XY_WebURL}"))
            {
                labelBody = labelBody.Replace("{SY:XY_WebURL}", webInfo.WebDomain);
            }
            if (labelBody.Contains("{SY:XY_TemplatePath}"))
            {
                labelBody = labelBody.Replace("{SY:XY_TemplatePath}", templateInfo.Path);
            }
            //if (str.IndexOf("{SY:XY_Coptright}") > 0)
            //{
            //    str = str.Replace("{SY:XY_Coptright}", "XYECS!b2b");
            //}
            if (labelBody.Contains("{SY:XY_Version}"))
            {
                labelBody = labelBody.Replace("{SY:XY_Version}", System.Diagnostics.FileVersionInfo.GetVersionInfo(System.Web.HttpContext.Current.Server.MapPath("/bin/XYECOM.Web.dll")).FileVersion);
            }
            #endregion

            #region 友情链接

            if (labelBody.Contains("{WI:XY_URL}"))
            {
                if (IsHaveColumn(dataRow, "FL_URL"))
                    labelBody = labelBody.Replace("{WI:XY_URL}", dataRow["FL_URL"].ToString());
            }

            if (labelBody.Contains("{WI:XY_ALT}"))
            {
                if (queryParam.IsFriendLinkAlt)
                {
                    if (IsHaveColumn(dataRow, "FL_Alt"))
                        labelBody = labelBody.Replace("{WI:XY_ALT}", dataRow["FL_Alt"].ToString());
                }
                else
                {
                    labelBody = labelBody.Replace("{WI:XY_ALT}", "");
                }
            }

            if (labelBody.Contains("{WI:XY_SRC}"))
            {
                if (dataRow["FL_Font"].ToString() == "Image")
                {
                    if (IsHaveColumn(dataRow, "At_Path"))
                        labelBody = labelBody.Replace("{WI:XY_SRC}", dataRow["S_URL"].ToString() + dataRow["At_Path"].ToString());
                }
                else
                {
                    if (IsHaveColumn(dataRow, "FL_Font"))
                        labelBody = labelBody.Replace("{WI:XY_SRC}", dataRow["FL_Font"].ToString());
                }
            }
            if (labelBody.Contains("{WI:XY_Font}"))
            {
                if (IsHaveColumn(dataRow, "FL_Font"))
                    labelBody = labelBody.Replace("{WI:XY_Font}", dataRow["FL_Font"].ToString());
            }

            #endregion

            #region 供应信息
            if (labelBody.Contains("{SP:XY_ID}"))
            {
                labelBody = labelBody.Replace("{SP:XY_ID}", dataRow["SD_ID"].ToString());
            }


            if (labelBody.Contains("{SP:MarketPrice}"))
            {
                decimal mp = XYECOM.Core.MyConvert.GetDecimal(dataRow["MarketPrice"].ToString());
                labelBody = labelBody.Replace("{SP:MarketPrice}", mp.ToString("f2"));
            }
            if (labelBody.Contains("{SP:IsContractVouch}"))
            {
                labelBody = labelBody.Replace("{SP:IsContractVouch}", dataRow["IsContractVouch"].ToString());
            }
            if (labelBody.Contains("{SP:IsPayBail}"))
            {
                labelBody = labelBody.Replace("{SP:IsPayBail}", dataRow["IsPayBail"].ToString());
            }
            if (labelBody.Contains("{SP:DepotName}"))
            {
                labelBody = labelBody.Replace("{SP:DepotName}", dataRow["DepotName"].ToString());
            }

            if (labelBody.Contains("{SP:DepotAddress}"))
            {
                labelBody = labelBody.Replace("{SP:DepotAddress}", dataRow["DepotAddress"].ToString());
            }
            if (labelBody.Contains("{SP:DepotManager}"))
            {
                labelBody = labelBody.Replace("{SP:DepotManager}", dataRow["DepotManager"].ToString());
            }
            if (labelBody.Contains("{SP:DepotFax}"))
            {
                labelBody = labelBody.Replace("{SP:DepotFax}", dataRow["DepotFax"].ToString());
            }
            if (labelBody.Contains("{SP:DepotPhone}"))
            {
                labelBody = labelBody.Replace("{SP:DepotPhone}", dataRow["DepotPhone"].ToString());
            }
            if (labelBody.Contains("{SP:DepotEmail}"))
            {
                labelBody = labelBody.Replace("{SP:DepotEmail}", dataRow["DepotEmail"].ToString());
            }

            if (labelBody.Contains("{SP:XY_TitleAll}"))
            {
                labelBody = labelBody.Replace("{SP:XY_TitleAll}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), dataRow["SD_Title"].ToString()));
            }
            if (labelBody.Contains("{SP:XY_Title}"))
            {
                if (IsHaveColumn(dataRow, "SD_Title"))
                {
                    labelBody = labelBody.Replace("{SP:XY_Title}", XYECOM.Core.Utils.IsLength(queryParam.TitleFontNumbers, XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), dataRow["SD_Title"].ToString())));
                }
            }
            if (labelBody.Contains("{SP:XY_PName}"))
            {
                if (IsHaveColumn(dataRow, "PT_Name"))
                    labelBody = labelBody.Replace("{SP:XY_PName}", dataRow["PT_Name"].ToString());
            }
            if (labelBody.Contains("{SP:XY_PURL}"))
            {
                if (IsHaveColumn(dataRow, "PT_ID"))
                {
                    moduleName = "offer";

                    if (webInfo.IsBogusStatic)
                        labelBody = labelBody.Replace("{SP:XY_PURL}", webInfo.WebDomain + "search/seller_search-" + moduleName + "-" + dataRow["PT_ID"].ToString() + "--------." + webInfo.WebSuffix);
                    else
                        labelBody = labelBody.Replace("{SP:XY_PURL}", webInfo.WebDomain + "search/seller_search." + webInfo.WebSuffix + "?flag=" + moduleName + "&pt_id=" + dataRow["PT_ID"].ToString());
                }
            }
            if (labelBody.Contains("{SP:XY_Price}"))
            {
                if (IsHaveColumn(dataRow, "SD_Price"))
                {
                    if (XYECOM.Core.MyConvert.GetDecimal(dataRow["SD_Price"].ToString()) <= 0)
                    {
                        labelBody = labelBody.Replace("{SP:XY_Price}", "面议");
                    }
                    else
                    {
                        labelBody = labelBody.Replace("{SP:XY_Price}", "￥" + XYECOM.Core.Utils.GetMoney(dataRow["SD_Price"].ToString()) + " 元");
                    }
                }
            }
            if (labelBody.Contains("{SP:XY_Unit}"))
            {
                labelBody = labelBody.Replace("{SP:XY_Unit}", dataRow["SD_Unit"].ToString());
            }
            if (labelBody.Contains("{SP:XY_SmallNum}"))
            {
                if (IsHaveColumn(dataRow, "SD_SmallNum"))
                    labelBody = labelBody.Replace("{SP:XY_SmallNum}", dataRow["SD_SmallNum"].ToString());
            }
            if (labelBody.Contains("{SP:XY_Num}"))
            {
                if (IsHaveColumn(dataRow, "SD_CountNum"))
                    labelBody = labelBody.Replace("{SP:XY_Num}", dataRow["SD_CountNum"].ToString());
            }
            if (labelBody.Contains("{SP:XY_Description}"))
            {
                if (IsHaveColumn(dataRow, "SD_Description"))
                    labelBody = labelBody.Replace("{SP:XY_Description}", XYECOM.Core.Utils.IsLength(queryParam.ProductSummaryFontNumbers, XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), XYECOM.Core.Utils.RemoveHTML(dataRow["SD_Description"].ToString()))));
            }
            if (labelBody.Contains("{SP:XY_Date}"))
            {
                if (IsHaveColumn(dataRow, "SD_PublishDate"))
                {
                    if (queryParam.DateFormat != "")
                        labelBody = labelBody.Replace("{SP:XY_Date}", FormatDateTime(dataRow["SD_PublishDate"].ToString(), queryParam.DateFormat));
                    else
                        labelBody = labelBody.Replace("{SP:XY_Date}", dataRow["SD_PublishDate"].ToString());
                }
            }
            if (labelBody.Contains("{SP:XY_EndDate}"))
            {
                if (IsHaveColumn(dataRow, "SD_EndDate"))
                {
                    if (queryParam.DateFormat != "")
                    {
                        labelBody = labelBody.Replace("{SP:XY_EndDate}", FormatDateTime(dataRow["SD_EndDate"].ToString(), queryParam.DateFormat));
                    }
                    else
                    {
                        labelBody = labelBody.Replace("{SP:XY_EndDate}", dataRow["SD_EndDate"].ToString());
                    }
                }
            }
            if (labelBody.Contains("{SP:XY_URL}"))
            {
                string htmlpage = dataRow["SD_HTMLPage"].ToString();
                if (!string.IsNullOrEmpty(htmlpage))
                {
                    labelBody = labelBody.Replace("{SP:XY_URL}", string.Format("{0}{1}", webInfo.WebDomain, htmlpage));
                }
                else
                {
                    int userid = XYECOM.Core.MyConvert.GetInt32(dataRow["u_id"].ToString());
                    Model.GeneralUserInfo f = Business.CheckUser.GetUserInfo(userid);
                    if (f != null)
                    {
                        labelBody = labelBody.Replace("{SP:XY_URL}", string.Format("{0}offerdetail-{1}.{2}", f.domain, dataRow["SD_ID"], webInfo.WebSuffix));
                    }
                }
            }
            if (labelBody.Contains("{SP:XY_Click}"))
            {
                labelBody = labelBody.Replace("{SP:XY_Click}", dataRow["SD_ClickNum"].ToString());
            }

            if (labelBody.Contains("{SP:XY_IMG}"))
            {
                if (IsHaveColumn(dataRow, "IsHasImage"))
                {
                    if (dataRow["IsHasImage"].ToString() != "0")
                    {
                        long infoId = Core.MyConvert.GetInt64(dataRow["SD_ID"].ToString());

                        string imgUrl = Business.Attachment.GetInfoDefaultImgHref(XYECOM.Model.AttachmentItem.Supply, infoId);

                        labelBody = labelBody.Replace("{SP:XY_IMG}", imgUrl);
                    }
                    else
                    {
                        labelBody = labelBody.Replace("{SP:XY_IMG}", SYS_NOIMAGE_PATH);
                    }
                }
            }

            if (labelBody.Contains("{SP:XY_SmallImg1}"))
            {
                if (dataRow["IsHasImage"].ToString() != "0")
                    labelBody = labelBody.Replace("{SP:XY_SmallImg1}", GetThumbnailiImagePath(dataRow["SD_ID"].ToString(), XYECOM.Model.AttachmentItem.Supply, 1));
                else
                    labelBody = labelBody.Replace("{SP:XY_SmallImg1}", SYS_NOIMAGE_PATH);
            }

            if (labelBody.Contains("{SP:XY_SmallImg2}"))
            {
                if (dataRow["IsHasImage"].ToString() != "0")
                    labelBody = labelBody.Replace("{SP:XY_SmallImg2}", GetThumbnailiImagePath(dataRow["SD_ID"].ToString(), XYECOM.Model.AttachmentItem.Supply, 2));
                else
                    labelBody = labelBody.Replace("{SP:XY_SmallImg2}", SYS_NOIMAGE_PATH);
            }

            if (labelBody.Contains("{SP:XY_SmallImg3}"))
            {
                if (dataRow["IsHasImage"].ToString() != "0")
                    labelBody = labelBody.Replace("{SP:XY_SmallImg3}", GetThumbnailiImagePath(dataRow["SD_ID"].ToString(), XYECOM.Model.AttachmentItem.Supply, 3));
                else
                    labelBody = labelBody.Replace("{SP:XY_SmallImg3}", SYS_NOIMAGE_PATH);
            }
            #endregion

            #region 求购信息
            if (labelBody.Contains("{SB:SD_ID}"))
            {
                if (IsHaveColumn(dataRow, "SD_ID"))
                    labelBody = labelBody.Replace("{SB:SD_ID}", dataRow["SD_ID"].ToString());
            }

            if (labelBody.Contains("{SB:UID}"))
            {
                if (IsHaveColumn(dataRow, "UID"))
                    labelBody = labelBody.Replace("{SB:UID}", dataRow["UID"].ToString());
            }
            if (labelBody.Contains("{SB:Title}"))
            {
                if (IsHaveColumn(dataRow, "Title"))
                    labelBody = labelBody.Replace("{SB:Title}", dataRow["Title"].ToString());
            }
            if (labelBody.Contains("{SB:KeyWord}"))
            {
                if (IsHaveColumn(dataRow, "KeyWord"))
                    labelBody = labelBody.Replace("{SB:KeyWord}", dataRow["KeyWord"].ToString());
            }
            if (labelBody.Contains("{SB:Contetns}"))
            {
                if (IsHaveColumn(dataRow, "Contetns"))
                    labelBody = labelBody.Replace("{SB:Contetns}", dataRow["Contetns"].ToString());
            }

            if (labelBody.Contains("{SB:Name}"))
            {
                if (IsHaveColumn(dataRow, "Name"))
                    labelBody = labelBody.Replace("{SB:Name}", dataRow["Name"].ToString());
            }
            if (labelBody.Contains("{SB:Tel}"))
            {
                if (IsHaveColumn(dataRow, "Tel"))
                    labelBody = labelBody.Replace("{SB:Tel}", dataRow["Tel"].ToString());
            }
            if (labelBody.Contains("{SB:PublishDate}"))
            {
                if (IsHaveColumn(dataRow, "PublishDate"))
                    labelBody = labelBody.Replace("{SB:PublishDate}", dataRow["PublishDate"].ToString());
            }
            if (labelBody.Contains("{SB:Emergency}"))
            {
                if (IsHaveColumn(dataRow, "Emergency"))
                    labelBody = labelBody.Replace("{SB:Emergency}", dataRow["Emergency"].ToString());
            }
            if (labelBody.Contains("{SB:AuditingState}"))
            {
                if (IsHaveColumn(dataRow, "AuditingState"))
                    labelBody = labelBody.Replace("{SB:AuditingState}", dataRow["AuditingState"].ToString());
            }
            if (labelBody.Contains("{SB:Url}"))
            {

                if (webInfo.IsBogusStatic)
                    labelBody = labelBody.Replace("{SB:Url}", webInfo.WebDomain + "search/buyinfo." + webInfo.WebSuffix + "?sdid=" + dataRow["SD_ID"].ToString());
                else
                    labelBody = labelBody.Replace("{SB:Url}", webInfo.WebDomain + "search/buyinfo." + webInfo.WebSuffix + "?sdid=" + dataRow["SD_ID"].ToString());

            }
            //求购地区
            if (labelBody.Contains("{SB:buyId}"))
            {
                if (IsHaveColumn(dataRow, "buyId"))
                    labelBody = labelBody.Replace("{SB:buyId}", dataRow["buyId"].ToString());
            }

            if (labelBody.Contains("{SB:buyareaname}"))
            {
                if (IsHaveColumn(dataRow, "buyareaname"))
                    labelBody = labelBody.Replace("{SB:buyareaname}", dataRow["buyareaname"].ToString());
            }

            #endregion

            #region 加工信息
            if (labelBody.Contains("{DM:XY_ID}"))
            {
                if (IsHaveColumn(dataRow, "SD_ID"))
                    labelBody = labelBody.Replace("{DM:XY_ID}", dataRow["SD_ID"].ToString());
            }
            if (labelBody.Contains("{DM:XY_Summary}"))
            {
                if (IsHaveColumn(dataRow, "Summary"))
                    labelBody = labelBody.Replace("{DM:XY_Summary}", dataRow["summary"].ToString());
            }
            if (labelBody.Contains("{DM:XY_Area}"))
            {
                if (IsHaveColumn(dataRow, "area"))
                    labelBody = labelBody.Replace("{DM:XY_Area}", dataRow["area"].ToString());
            }
            if (labelBody.Contains("{DM:XY_TypeName}"))
            {
                if (IsHaveColumn(dataRow, "typename"))
                    labelBody = labelBody.Replace("{DM:XY_TypeName}", dataRow["typename"].ToString());
            }
            if (labelBody.Contains("{DM:XY_WebSite}"))
            {
                if (IsHaveColumn(dataRow, "WebSite"))
                    labelBody = labelBody.Replace("{DM:XY_WebSite}", dataRow["WebSite"].ToString());
            }
            if (labelBody.Contains("{DM:XY_TitleAll}"))
            {
                if (IsHaveColumn(dataRow, "SD_Title"))
                {
                    labelBody = labelBody.Replace("{DM:XY_TitleAll}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), dataRow["SD_Title"].ToString()));
                }
            }
            if (labelBody.Contains("{DM:XY_Title}"))
            {
                if (IsHaveColumn(dataRow, "SD_Title"))
                {
                    labelBody = labelBody.Replace("{DM:XY_Title}", XYECOM.Core.Utils.IsLength(queryParam.TitleFontNumbers, XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), dataRow["SD_Title"].ToString())));
                }
            }
            //if (labelBody.Contains("{DM:XY_PURL}"))
            //{
            //    if (IsHaveColumn(dataRow, "TypeId"))
            //    {
            //        moduleName = "venture";

            //        if (webInfo.IsBogusStatic)
            //            labelBody = labelBody.Replace("{DM:XY_PURL}", webInfo.WebDomain + "search/seller_search-" + moduleName + "-" + dataRow["TypeId"].ToString() + "--------." + webInfo.WebSuffix);
            //        else
            //            labelBody = labelBody.Replace("{DM:XY_PURL}", webInfo.WebDomain + "search/seller_search." + webInfo.WebSuffix + "?flag=" + moduleName + "&pt_id=" + dataRow["TypeId"].ToString());
            //    }
            //}

            //("信息编号", "{DM:XY_ID}"));
            //("信息完整标题", "{DM:XY_TitleAll}"));
            //("信息截取标题", "{DM:XY_Title}"));
            //("投融资类型名称", "{DM:XY_TypeName}"));
            //("投融资信息摘要", "{DM:XY_Summary}"));
            //("投融资地区", "{DM:XY_Area}"));
            //("融资项目网址", "{DM:XY_WebSite}"));
            //("信息类别链接地址", "{DM:XY_PURL}"));
            //("是否是融资信息", "{DM:XY_Flag}"));
            //("投融资金额", "{DM:XY_Price}"));
            //("投融资所属区域", "{DM:XY_Trade}"));
            //("投融资信息详细描述", "{DM:XY_Description}"));
            //("发布日期", "{DM:XY_Date}"));
            //("信息有效期", "{DM:XY_EndDate}"));
            //("链接地址", "{DM:XY_URL}"));     

            if (labelBody.Contains("{DM:XY_Flag}"))
            {
                if (IsHaveColumn(dataRow, "SD_Flag"))
                {
                    string flag = dataRow["SD_Flag"].ToString();
                    labelBody = labelBody.Replace("{DM:XY_Flag}", (flag == "0" ? "投资" : "融资"));
                }
            }
            if (labelBody.Contains("{DM:XY_Price}"))
            {
                if (IsHaveColumn(dataRow, "SD_Price"))
                    labelBody = labelBody.Replace("{DM:XY_Price}", XYECOM.Core.Utils.GetMoney(dataRow["SD_Price"].ToString()));
            }
            if (labelBody.Contains("{DM:XY_Trade}"))
            {
                if (IsHaveColumn(dataRow, "trade"))
                    labelBody = labelBody.Replace("{DM:XY_Trade}", dataRow["trade"].ToString());
            }
            if (labelBody.Contains("{DM:XY_Description}"))
            {
                if (IsHaveColumn(dataRow, "SD_Description"))
                    labelBody = labelBody.Replace("{DM:XY_Description}", XYECOM.Core.Utils.IsLength(queryParam.ProductSummaryFontNumbers, XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), XYECOM.Core.Utils.RemoveHTML(dataRow["SD_Description"].ToString()))));
            }
            if (labelBody.Contains("{DM:XY_Date}"))
            {
                if (IsHaveColumn(dataRow, "SD_PublishDate"))
                {
                    if (queryParam.DateFormat != "")
                        labelBody = labelBody.Replace("{DM:XY_Date}", FormatDateTime(dataRow["SD_PublishDate"].ToString(), queryParam.DateFormat));
                    else
                        labelBody = labelBody.Replace("{DM:XY_Date}", dataRow["SD_PublishDate"].ToString());
                }
            }
            if (labelBody.Contains("{DM:XY_EndDate}"))
            {
                if (IsHaveColumn(dataRow, "SD_EndDate"))
                {
                    if (queryParam.DateFormat != "")
                        labelBody = labelBody.Replace("{DM:XY_EndDate}", FormatDateTime(dataRow["SD_EndDate"].ToString(), queryParam.DateFormat));
                    else
                        labelBody = labelBody.Replace("{DM:XY_EndDate}", dataRow["SD_EndDate"].ToString());
                }
            }
            if (labelBody.Contains("{DM:XY_URL}"))
            {
                string htmppage = dataRow["SD_HTMLPage"].ToString();
                if (!string.IsNullOrEmpty(htmppage))
                {
                    labelBody = labelBody.Replace("{DM:XY_URL}", string.Format("{1}{1}", webInfo.WebDomain, htmppage));
                }
                else
                {
                    int userId = XYECOM.Core.MyConvert.GetInt32(dataRow["U_id"].ToString());
                    Model.GeneralUserInfo guinfo = null;
                    if (userId > 0 && (guinfo = XYECOM.Business.CheckUser.GetUserInfo(userId)) != null)
                    {
                        labelBody = labelBody.Replace("{DM:XY_URL}", string.Format("{0}venture-{1}.{2}", guinfo.domain, dataRow["SD_ID"], webInfo.WebSuffix));
                    }
                    else
                    {
                        if (webInfo.IsDomain)
                        {
                            string domain = webInfo.GetSubDomain(dataRow["U_Name"].ToString());
                            labelBody = labelBody.Replace("{DM:XY_URL}", string.Format("{0}venture-{1}.{2}", domain, dataRow["SD_ID"], webInfo.WebSuffix));
                        }
                        else
                        {
                            labelBody = labelBody.Replace("{DM:XY_URL}", webInfo.WebDomain + "shop/" + dataRow["U_Name"].ToString() + "/venture-" + dataRow["SD_ID"].ToString() + "." + webInfo.WebSuffix);
                        }
                    }
                }
            }

            #endregion

            #region 招商代理信息
            if (labelBody.Contains("{BS:XY_ID}"))
            {
                if (IsHaveColumn(dataRow, "IBI_ID"))
                    labelBody = labelBody.Replace("{BS:XY_ID}", dataRow["IBI_ID"].ToString());
            }
            if (labelBody.Contains("{BS:XY_TitleAll}"))
            {
                if (IsHaveColumn(dataRow, "IBI_Title"))
                {
                    labelBody = labelBody.Replace("{BS:XY_TitleAll}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), dataRow["IBI_Title"].ToString()));
                }

            }
            if (labelBody.Contains("{BS:XY_Title}"))
            {
                if (IsHaveColumn(dataRow, "IBI_Title"))
                {
                    labelBody = labelBody.Replace("{BS:XY_Title}", XYECOM.Core.Utils.IsLength(queryParam.TitleFontNumbers, XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), dataRow["IBI_Title"].ToString())));
                }
            }
            if (labelBody.Contains("{BS:XY_PName}"))
            {
                if (IsHaveColumn(dataRow, "IT_Name"))
                    labelBody = labelBody.Replace("{BS:XY_PName}", dataRow["IT_Name"].ToString());
            }
            if (labelBody.Contains("{BS:XY_PURL}"))
            {
                if (IsHaveColumn(dataRow, "IT_ID"))
                {
                    moduleName = dataRow["moduleName"].ToString();

                    if (moduleName.Equals("")) moduleName = "investment";

                    if (webInfo.IsBogusStatic)
                        labelBody = labelBody.Replace("{BS:XY_PURL}", webInfo.WebDomain + "search/seller_search-" + moduleName + "-" + dataRow["IT_ID"].ToString() + "--------." + webInfo.WebSuffix);
                    else
                        labelBody = labelBody.Replace("{BS:XY_PURL}", webInfo.WebDomain + "search/seller_search." + webInfo.WebSuffix + "?flag=" + moduleName + "&pt_id=" + dataRow["IT_ID"].ToString());
                }
            }
            if (labelBody.Contains("{BS:XY_Flag}"))
            {
                if (IsHaveColumn(dataRow, "IBI_Sign"))
                {
                    moduleName = dataRow["moduleName"].ToString();

                    if (moduleName.Equals("")) moduleName = "investment";

                    moduleItems = moduleInfo.GetItem(moduleName).Item;

                    foreach (XYECOM.Configuration.ModuleItemInfo item in moduleItems)
                    {
                        if (dataRow["IBI_Sign"].ToString().Equals(item.ID.ToString()))
                        {
                            labelBody = labelBody.Replace("{BS:XY_Flag}", item.Prefix + item.Postfix);
                        }
                    }
                }
            }
            if (labelBody.Contains("{BS:XY_Content}"))
            {
                if (IsHaveColumn(dataRow, "IBI_Content"))
                    labelBody = labelBody.Replace("{BS:XY_Content}", XYECOM.Core.Utils.IsLength(queryParam.ProductSummaryFontNumbers, XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), XYECOM.Core.Utils.RemoveHTML(dataRow["IBI_Content"].ToString()))));
            }

            if (labelBody.Contains("{BS:XY_Area}"))
            {
                if (IsHaveColumn(dataRow, "A_Area"))
                {
                    string areaNames = dataRow["A_Area"].ToString();

                    if (!areaNames.Equals("全国"))
                    {
                        areaNames = new Business.Area().GetNamesByIDs(areaNames);
                    }

                    labelBody = labelBody.Replace("{BS:XY_Area}", areaNames);
                }
            }

            if (labelBody.Contains("{BS:XY_BName}"))
            {
                if (IsHaveColumn(dataRow, "S_Name"))
                    labelBody = labelBody.Replace("{BS:XY_BName}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), XYECOM.Core.Utils.RemoveHTML(dataRow["S_Name"].ToString())));
            }
            if (labelBody.Contains("{BS:XY_Description}"))
            {
                if (IsHaveColumn(dataRow, "IBI_Content"))
                    labelBody = labelBody.Replace("{BS:XY_Description}", XYECOM.Core.Utils.IsLength(queryParam.ProductSummaryFontNumbers, XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), XYECOM.Core.Utils.RemoveHTML(dataRow["IBI_Content"].ToString()))));
            }
            if (labelBody.Contains("{BS:XY_Support}"))
            {
                if (IsHaveColumn(dataRow, "IBI_Support"))
                    labelBody = labelBody.Replace("{BS:XY_Support}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), XYECOM.Core.Utils.RemoveHTML(dataRow["IBI_Support"].ToString())));
            }
            if (labelBody.Contains("{BS:XY_Demand}"))
            {
                if (IsHaveColumn(dataRow, "IBI_Demand"))
                    labelBody = labelBody.Replace("{BS:XY_Demand}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), XYECOM.Core.Utils.RemoveHTML(dataRow["IBI_Demand"].ToString())));
            }
            if (labelBody.Contains("{BS:XY_Date}"))
            {
                if (IsHaveColumn(dataRow, "IBI_PublishDate"))
                {
                    if (queryParam.DateFormat != "")
                        labelBody = labelBody.Replace("{BS:XY_Date}", FormatDateTime(dataRow["IBI_PublishDate"].ToString(), queryParam.DateFormat));
                    else
                        labelBody = labelBody.Replace("{BS:XY_Date}", dataRow["IBI_PublishDate"].ToString());
                }
            }
            if (labelBody.Contains("{BS:XY_EndDate}"))
            {
                if (IsHaveColumn(dataRow, "IBI_EndTime"))
                {
                    if (queryParam.DateFormat != "")
                        labelBody = labelBody.Replace("{BS:XY_EndDate}", FormatDateTime(dataRow["IBI_EndTime"].ToString(), queryParam.DateFormat));
                    else
                        labelBody = labelBody.Replace("{BS:XY_EndDate}", dataRow["IBI_EndTime"].ToString());
                }
            }
            if (labelBody.Contains("{BS:XY_ShowURL}"))
            {
                if (IsHaveColumn(dataRow, "IBI_URL"))
                {
                    if (dataRow["IBI_URL"].ToString() != "")
                        labelBody = labelBody.Replace("{BS:XY_ShowURL}", dataRow["IBI_URL"].ToString());
                    else
                    {
                        if (dataRow["IBI_HTMLPage"].ToString() != "")
                            labelBody = labelBody.Replace("{BS:XY_ShowURL}", webInfo.WebDomain + dataRow["IBI_HTMLPage"].ToString());
                        else
                        {
                            moduleName = dataRow["moduleName"].ToString();

                            if (moduleName.Equals("")) moduleName = "investment";

                            moduleItems = moduleInfo.GetItem(moduleName).Item;

                            foreach (XYECOM.Configuration.ModuleItemInfo info in moduleItems)
                            {
                                if (dataRow["IBI_Sign"].ToString().Equals(info.ID.ToString()))
                                {
                                    if (info.InfoType == XYECOM.Configuration.InfoType.Sell)
                                    {
                                        if (webInfo.IsBogusStatic)
                                            labelBody = labelBody.Replace("{BS:XY_ShowURL}", webInfo.WebDomain + "search/sell-" + moduleName + "-" + dataRow["IBI_ID"].ToString() + "." + webInfo.WebSuffix);
                                        else
                                            labelBody = labelBody.Replace("{BS:XY_ShowURL}", webInfo.WebDomain + "search/sell." + webInfo.WebSuffix + "?flag=" + moduleName + "&infoid=" + dataRow["IBI_ID"].ToString());
                                    }
                                    else if (info.InfoType == XYECOM.Configuration.InfoType.Buy)
                                    {
                                        if (webInfo.IsBogusStatic)
                                            labelBody = labelBody.Replace("{BS:XY_ShowURL}", webInfo.WebDomain + "search/buy-" + moduleName + "-" + dataRow["IBI_ID"].ToString() + "." + webInfo.WebSuffix);
                                        else
                                            labelBody = labelBody.Replace("{BS:XY_ShowURL}", webInfo.WebDomain + "search/buy." + webInfo.WebSuffix + "?flag=" + moduleName + "&infoid=" + dataRow["IBI_ID"].ToString());
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (labelBody.Contains("{BS:XY_URL}"))
            {
                if (IsHaveColumn(dataRow, "IBI_HTMLPage"))
                {
                    if (dataRow["IBI_HTMLPage"].ToString() != "")
                        labelBody = labelBody.Replace("{BS:XY_URL}", webInfo.WebDomain + dataRow["IBI_HTMLPage"].ToString());
                    else
                    {
                        moduleName = dataRow["moduleName"].ToString();

                        if (moduleName.Equals("")) moduleName = "investment";

                        moduleItems = moduleInfo.GetItem(moduleName).Item;

                        foreach (XYECOM.Configuration.ModuleItemInfo info in moduleItems)
                        {
                            if (dataRow["IBI_Sign"].ToString().Equals(info.ID.ToString()))
                            {
                                if (info.InfoType == XYECOM.Configuration.InfoType.Sell)
                                {

                                    if (webInfo.IsBogusStatic)
                                        labelBody = labelBody.Replace("{BS:XY_URL}", webInfo.WebDomain + "search/sell-" + moduleName + "-" + dataRow["IBI_ID"].ToString() + "." + webInfo.WebSuffix);
                                    else
                                        labelBody = labelBody.Replace("{BS:XY_URL}", webInfo.WebDomain + "search/sell." + webInfo.WebSuffix + "?flag=" + moduleName + "&infoid=" + dataRow["IBI_ID"].ToString());
                                }
                                else if (info.InfoType == XYECOM.Configuration.InfoType.Buy)
                                {
                                    if (webInfo.IsBogusStatic)
                                        labelBody = labelBody.Replace("{BS:XY_URL}", webInfo.WebDomain + "search/buy-" + moduleName + "-" + dataRow["IBI_ID"].ToString() + "." + webInfo.WebSuffix);
                                    else
                                        labelBody = labelBody.Replace("{BS:XY_URL}", webInfo.WebDomain + "search/buy." + webInfo.WebSuffix + "?flag=" + moduleName + "&infoid=" + dataRow["IBI_ID"].ToString());
                                }
                            }
                        }
                    }
                }
            }
            if (labelBody.Contains("{BS:XY_Click}"))
            {
                if (IsHaveColumn(dataRow, "IBI_ClickNum"))
                    labelBody = labelBody.Replace("{BS:XY_Click}", dataRow["IBI_ClickNum"].ToString());
            }


            if (labelBody.Contains("{BS:XY_IMG}"))
            {
                if (IsHaveColumn(dataRow, "IsHasImage"))
                {
                    if (dataRow["IsHasImage"].ToString() != "0")
                    {
                        long _InfoId = Core.MyConvert.GetInt64(dataRow["IBI_ID"].ToString());

                        string imgUrl = Business.Attachment.GetInfoDefaultImgHref(XYECOM.Model.AttachmentItem.Investment, _InfoId);

                        labelBody = labelBody.Replace("{BS:XY_IMG}", imgUrl);
                    }
                    else
                    {
                        labelBody = labelBody.Replace("{BS:XY_IMG}", SYS_NOIMAGE_PATH);
                    }

                }
            }

            if (labelBody.Contains("{BS:XY_SmallImg1}"))
            {
                if (dataRow["IsHasImage"].ToString() != "0")
                    labelBody = labelBody.Replace("{BS:XY_SmallImg1}", GetThumbnailiImagePath(dataRow["IBI_ID"].ToString(), XYECOM.Model.AttachmentItem.Investment, 1));
                else
                    labelBody = labelBody.Replace("{BS:XY_SmallImg1}", SYS_NOIMAGE_PATH);
            }

            if (labelBody.Contains("{BS:XY_SmallImg2}"))
            {
                if (dataRow["IsHasImage"].ToString() != "0")
                    labelBody = labelBody.Replace("{BS:XY_SmallImg2}", GetThumbnailiImagePath(dataRow["IBI_ID"].ToString(), XYECOM.Model.AttachmentItem.Investment, 2));
                else
                    labelBody = labelBody.Replace("{BS:XY_SmallImg2}", SYS_NOIMAGE_PATH);
            }

            if (labelBody.Contains("{BS:XY_SmallImg3}"))
            {
                if (dataRow["IsHasImage"].ToString() != "0")
                    labelBody = labelBody.Replace("{BS:XY_SmallImg3}", GetThumbnailiImagePath(dataRow["IBI_ID"].ToString(), XYECOM.Model.AttachmentItem.Investment, 3));
                else
                    labelBody = labelBody.Replace("{BS:XY_SmallImg3}", SYS_NOIMAGE_PATH);
            }
            #endregion

            #region 服务信息
            if (labelBody.Contains("{SG:XY_ID}"))
            {
                if (IsHaveColumn(dataRow, "S_ID"))
                    labelBody = labelBody.Replace("{SG:XY_ID}", dataRow["S_ID"].ToString());
            }
            if (labelBody.Contains("{SG:XY_TitleAll}"))
            {
                if (IsHaveColumn(dataRow, "S_Title"))
                {
                    labelBody = labelBody.Replace("{SG:XY_TitleAll}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), dataRow["S_Title"].ToString()));
                }
            }
            if (labelBody.Contains("{SG:XY_Title}"))
            {
                if (IsHaveColumn(dataRow, "S_Title"))
                {
                    labelBody = labelBody.Replace("{SG:XY_Title}", XYECOM.Core.Utils.IsLength(queryParam.TitleFontNumbers, XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), dataRow["S_Title"].ToString())));
                }
            }
            if (labelBody.Contains("{SG:XY_PName}"))
            {
                if (IsHaveColumn(dataRow, "ST_Name"))
                    labelBody = labelBody.Replace("{SG:XY_PName}", dataRow["ST_Name"].ToString());
            }
            if (labelBody.Contains("{SG:XY_PURL}"))
            {
                if (IsHaveColumn(dataRow, "ST_ID"))
                {
                    moduleName = dataRow["moduleName"].ToString();

                    if (moduleName.Equals("")) moduleName = "service";

                    if (webInfo.IsBogusStatic)
                        labelBody = labelBody.Replace("{SG:XY_PURL}", webInfo.WebDomain + "search/seller_search-" + moduleName + "-" + dataRow["ST_ID"].ToString() + "--------." + webInfo.WebSuffix);
                    else
                        labelBody = labelBody.Replace("{SG:XY_PURL}", webInfo.WebDomain + "search/seller_search." + webInfo.WebSuffix + "?flag=" + moduleName + "&pt_id=" + dataRow["ST_ID"].ToString());
                }
            }
            if (labelBody.Contains("{SG:XY_Flag}"))
            {
                if (IsHaveColumn(dataRow, "S_Flag"))
                {
                    moduleName = dataRow["moduleName"].ToString();

                    if (moduleName.Equals("")) moduleName = "service";

                    moduleItems = moduleInfo.GetItem(moduleName).Item;

                    foreach (XYECOM.Configuration.ModuleItemInfo item in moduleItems)
                    {
                        if (dataRow["S_Flag"].ToString().Equals(item.ID.ToString()))
                            labelBody = labelBody.Replace("{SG:XY_Flag}", item.Prefix + item.Postfix);
                    }
                }
            }
            if (labelBody.Contains("{SG:XY_Content}"))
            {
                if (IsHaveColumn(dataRow, "S_Content"))
                    labelBody = labelBody.Replace("{SG:XY_Content}", XYECOM.Core.Utils.IsLength(queryParam.ProductSummaryFontNumbers, XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), XYECOM.Core.Utils.RemoveHTML(dataRow["S_Content"].ToString()))));
            }
            if (labelBody.Contains("{SG:XY_Date}"))
            {
                if (IsHaveColumn(dataRow, "S_AddTime"))
                {
                    if (queryParam.DateFormat != "")
                        labelBody = labelBody.Replace("{SG:XY_Date}", FormatDateTime(dataRow["S_AddTime"].ToString(), queryParam.DateFormat));
                    else
                        labelBody = labelBody.Replace("{SG:XY_Date}", dataRow["S_AddTime"].ToString());
                }
            }
            if (labelBody.Contains("{SG:XY_EndDate}"))
            {
                if (IsHaveColumn(dataRow, "S_EndTime"))
                {
                    if (queryParam.DateFormat != "")
                        labelBody = labelBody.Replace("{SG:XY_EndDate}", FormatDateTime(dataRow["S_EndTime"].ToString(), queryParam.DateFormat));
                    else
                        labelBody = labelBody.Replace("{SG:XY_EndDate}", dataRow["S_EndTime"].ToString());
                }
            }
            if (labelBody.Contains("{SG:XY_Click}"))
            {
                if (IsHaveColumn(dataRow, "S_ClickNum"))
                    labelBody = labelBody.Replace("{SG:XY_Click}", dataRow["S_ClickNum"].ToString());
            }
            if (labelBody.Contains("{SG:XY_URL}"))
            {
                if (IsHaveColumn(dataRow, "S_HTMLPage"))
                {
                    if (dataRow["S_HTMLPage"].ToString() != "")
                        labelBody = labelBody.Replace("{SG:XY_URL}", webInfo.WebDomain + dataRow["S_HTMLPage"].ToString());
                    else
                    {
                        moduleName = dataRow["moduleName"].ToString();

                        if (moduleName.Equals("")) moduleName = "service";

                        moduleItems = moduleInfo.GetItem(moduleName).Item;

                        foreach (XYECOM.Configuration.ModuleItemInfo info in moduleItems)
                        {
                            if (dataRow["S_Flag"].ToString().Equals(info.ID.ToString()))
                            {
                                if (info.InfoType == XYECOM.Configuration.InfoType.Sell)
                                {
                                    if (webInfo.IsBogusStatic)
                                        labelBody = labelBody.Replace("{SG:XY_URL}", webInfo.WebDomain + "search/sell-" + moduleName + "-" + dataRow["S_ID"].ToString() + "." + webInfo.WebSuffix);
                                    else
                                        labelBody = labelBody.Replace("{SG:XY_URL}", webInfo.WebDomain + "search/sell." + webInfo.WebSuffix + "?flag=" + moduleName + "&infoid=" + dataRow["S_ID"].ToString());
                                }
                                else if (info.InfoType == XYECOM.Configuration.InfoType.Buy)
                                {
                                    if (webInfo.IsBogusStatic)
                                        labelBody = labelBody.Replace("{SG:XY_URL}", webInfo.WebDomain + "search/buy-" + moduleName + "-" + dataRow["S_ID"].ToString() + "." + webInfo.WebSuffix);
                                    else
                                        labelBody = labelBody.Replace("{SG:XY_URL}", webInfo.WebDomain + "search/buy." + webInfo.WebSuffix + "?flag=" + moduleName + "&infoid=" + dataRow["S_ID"].ToString());
                                }
                            }
                        }
                    }
                }
            }

            if (labelBody.Contains("{SG:XY_IMG}"))
            {
                if (IsHaveColumn(dataRow, "IsHasImage"))
                {
                    if (dataRow["IsHasImage"].ToString() != "0")
                    {
                        long _InfoId = Core.MyConvert.GetInt64(dataRow["S_ID"].ToString());

                        string imgUrl = Business.Attachment.GetInfoDefaultImgHref(XYECOM.Model.AttachmentItem.Service, _InfoId);

                        labelBody = labelBody.Replace("{SG:XY_IMG}", imgUrl);
                    }
                    else
                    {
                        labelBody = labelBody.Replace("{SG:XY_IMG}", SYS_NOIMAGE_PATH);
                    }
                }
            }

            if (labelBody.Contains("{SG:XY_SmallImg1}"))
            {
                if (dataRow["IsHasImage"].ToString() != "0")
                    labelBody = labelBody.Replace("{SG:XY_SmallImg1}", GetThumbnailiImagePath(dataRow["S_ID"].ToString(), XYECOM.Model.AttachmentItem.Service, 1));
                else
                    labelBody = labelBody.Replace("{SG:XY_SmallImg1}", SYS_NOIMAGE_PATH);
            }

            if (labelBody.Contains("{SG:XY_SmallImg2}"))
            {
                if (dataRow["IsHasImage"].ToString() != "0")
                    labelBody = labelBody.Replace("{SG:XY_SmallImg2}", GetThumbnailiImagePath(dataRow["S_ID"].ToString(), XYECOM.Model.AttachmentItem.Service, 2));
                else
                    labelBody = labelBody.Replace("{SG:XY_SmallImg2}", SYS_NOIMAGE_PATH);
            }

            if (labelBody.Contains("{SG:XY_SmallImg3}"))
            {
                if (dataRow["IsHasImage"].ToString() != "0")
                    labelBody = labelBody.Replace("{SG:XY_SmallImg3}", GetThumbnailiImagePath(dataRow["S_ID"].ToString(), XYECOM.Model.AttachmentItem.Service, 3));
                else
                    labelBody = labelBody.Replace("{SG:XY_SmallImg3}", SYS_NOIMAGE_PATH);
            }

            #endregion

            #region 展会信息
            if (labelBody.Contains("{SH:XY_ID}"))
            {
                if (IsHaveColumn(dataRow, "id"))
                    labelBody = labelBody.Replace("{SH:XY_ID}", dataRow["id"].ToString());
            }
            if (labelBody.Contains("{SH:XY_TitleAll}"))
            {
                if (IsHaveColumn(dataRow, "infotitle"))
                    labelBody = labelBody.Replace("{SH:XY_TitleAll}", dataRow["infotitle"].ToString());
            }
            if (labelBody.Contains("{SH:XY_Title}"))
            {
                if (IsHaveColumn(dataRow, "infotitle"))
                    labelBody = labelBody.Replace("{SH:XY_Title}", XYECOM.Core.Utils.IsLength(queryParam.TitleFontNumbers, dataRow["infotitle"].ToString()));
            }

            if (labelBody.Contains("{SH:XY_EndFlag}"))
            {
                if (IsHaveColumn(dataRow, "endtime"))
                {
                    DateTime endTime = Core.MyConvert.GetDateTime(dataRow["EndTime"].ToString());
                    DateTime nowTime = Core.MyConvert.GetDateTime(DateTime.Now.ToString("yyyy-MM-dd"));
                    int isEnd = DateTime.Compare(endTime, nowTime);

                    if (isEnd >= 0)
                        labelBody = labelBody.Replace("{SH:XY_EndFlag}", "");
                    else
                        labelBody = labelBody.Replace("{SH:XY_EndFlag}", "已结束");
                }
            }

            if (labelBody.Contains("{SH:XY_PName}"))
            {
                if (IsHaveColumn(dataRow, "SHT_Name"))
                    labelBody = labelBody.Replace("{SH:XY_PName}", dataRow["SHT_Name"].ToString());
            }
            if (labelBody.Contains("{SH:XY_PURL}"))
            {
                if (IsHaveColumn(dataRow, "typeid"))
                {
                    if (webInfo.IsBogusStatic)
                        labelBody = labelBody.Replace("{SH:XY_PURL}", webInfo.WebDomain + "search/seller_search-exhibition-" + dataRow["typeid"].ToString() + "--------." + webInfo.WebSuffix);
                    else
                        labelBody = labelBody.Replace("{SH:XY_PURL}", webInfo.WebDomain + "search/seller_search." + webInfo.WebSuffix + "?flag=exhibition&pt_id=" + dataRow["typeid"].ToString());
                }
            }
            if (labelBody.Contains("{SH:XY_Content}"))
            {
                if (IsHaveColumn(dataRow, "contents"))
                    labelBody = labelBody.Replace("{SH:XY_Content}", XYECOM.Core.Utils.IsLength(queryParam.ProductSummaryFontNumbers, XYECOM.Core.Utils.RemoveHTML(dataRow["contents"].ToString())));
            }
            if (labelBody.Contains("{SH:XY_BeginTime}"))
            {
                if (IsHaveColumn(dataRow, "BeginTime"))
                {
                    if (queryParam.DateFormat != "")
                        labelBody = labelBody.Replace("{SH:XY_BeginTime}", FormatDateTime(dataRow["BeginTime"].ToString(), queryParam.DateFormat));
                    else
                        labelBody = labelBody.Replace("{SH:XY_BeginTime}", dataRow["BeginTime"].ToString());
                }
            }
            if (labelBody.Contains("{SH:XY_EndTime}"))
            {
                if (IsHaveColumn(dataRow, "EndTime"))
                {
                    if (queryParam.DateFormat != "")
                        labelBody = labelBody.Replace("{SH:XY_EndTime}", FormatDateTime(dataRow["EndTime"].ToString(), queryParam.DateFormat));
                    else
                        labelBody = labelBody.Replace("{SH:XY_EndTime}", dataRow["EndTime"].ToString());
                }
            }
            if (labelBody.Contains("{SH:XY_Place}"))
            {
                if (IsHaveColumn(dataRow, "District"))
                    labelBody = labelBody.Replace("{SH:XY_Place}", XYECOM.Core.Utils.RemoveHTML(dataRow["District"].ToString()));
            }
            if (labelBody.Contains("{SH:XY_Stadiums}"))
            {
                if (IsHaveColumn(dataRow, "Site"))
                    labelBody = labelBody.Replace("{SH:XY_Stadiums}", XYECOM.Core.Utils.RemoveHTML(dataRow["Site"].ToString()));
            }
            if (labelBody.Contains("{SH:XY_Sponsor}"))
            {
                if (IsHaveColumn(dataRow, "sponsor"))
                    labelBody = labelBody.Replace("{SH:XY_Sponsor}", XYECOM.Core.Utils.RemoveHTML(dataRow["sponsor"].ToString()));
            }
            if (labelBody.Contains("{SH:XY_Undertake}"))
            {
                if (IsHaveColumn(dataRow, "undertake"))
                    labelBody = labelBody.Replace("{SH:XY_Undertake}", XYECOM.Core.Utils.RemoveHTML(dataRow["undertake"].ToString()));
            }
            if (labelBody.Contains("{SH:XY_Coorganizor}"))
            {
                if (IsHaveColumn(dataRow, "coorganizor"))
                    labelBody = labelBody.Replace("{SH:XY_Coorganizor}", XYECOM.Core.Utils.RemoveHTML(dataRow["coorganizor"].ToString()));
            }
            if (labelBody.Contains("{SH:XY_Sustain}"))
            {
                if (IsHaveColumn(dataRow, "sustain"))
                    labelBody = labelBody.Replace("{SH:XY_Sustain}", XYECOM.Core.Utils.RemoveHTML(dataRow["sustain"].ToString()));
            }
            if (labelBody.Contains("{SH:XY_ShowSycle}"))
            {
                if (IsHaveColumn(dataRow, "Sycle"))
                    labelBody = labelBody.Replace("{SH:XY_ShowSycle}", dataRow["Sycle"].ToString());
            }
            if (labelBody.Contains("{SH:XY_ShowCharacter}"))
            {
                if (IsHaveColumn(dataRow, "Type"))
                    labelBody = labelBody.Replace("{SH:XY_ShowCharacter}", dataRow["Type"].ToString());
            }
            if (labelBody.Contains("{SH:XY_ShowURL}"))
            {
                if (IsHaveColumn(dataRow, "URL"))
                {
                    if (dataRow["URL"].ToString() != "")
                        labelBody = labelBody.Replace("{SH:XY_ShowURL}", dataRow["URL"].ToString());
                    else
                    {
                        if (dataRow["htmlPage"].ToString() != "")
                            labelBody = labelBody.Replace("{SH:XY_URL}", webInfo.WebDomain + dataRow["htmlPage"].ToString());
                        else
                        {
                            if (webInfo.IsBogusStatic)
                                labelBody = labelBody.Replace("{SH:XY_URL}", webInfo.WebDomain + "exhibition/info-" + dataRow["id"].ToString() + "." + webInfo.WebSuffix);
                            else
                                labelBody = labelBody.Replace("{SH:XY_URL}", webInfo.WebDomain + "exhibition/info." + webInfo.WebSuffix + "?infoid=" + dataRow["id"].ToString());
                        }
                    }
                }
            }
            if (labelBody.Contains("{SH:XY_Landmeasure}"))
            {
                if (IsHaveColumn(dataRow, "Area"))
                    labelBody = labelBody.Replace("{SH:XY_Landmeasure}", dataRow["Area"].ToString());
            }
            if (labelBody.Contains("{SH:XY_UnitPrice}"))
            {
                if (IsHaveColumn(dataRow, "unitPrice"))
                    labelBody = labelBody.Replace("{SH:XY_UnitPrice}", dataRow["unitPrice"].ToString());
            }
            if (labelBody.Contains("{SH:XY_MinRation}"))
            {
                if (IsHaveColumn(dataRow, "leastRation"))
                    labelBody = labelBody.Replace("{SH:XY_MinRation}", dataRow["leastRation"].ToString());
            }
            if (labelBody.Contains("{SH:XY_TotalArea}"))
            {
                if (IsHaveColumn(dataRow, "areaTotal"))
                    labelBody = labelBody.Replace("{SH:XY_TotalArea}", dataRow["areaTotal"].ToString());
            }
            if (labelBody.Contains("{SH:XY_Date}"))
            {
                if (IsHaveColumn(dataRow, "AddInfoTime"))
                {
                    if (queryParam.DateFormat != "")
                        labelBody = labelBody.Replace("{SH:XY_Date}", FormatDateTime(dataRow["AddInfoTime"].ToString(), queryParam.DateFormat));
                    else
                        labelBody = labelBody.Replace("{SH:XY_Date}", dataRow["AddInfoTime"].ToString());
                }
            }
            if (labelBody.Contains("{SH:XY_URL}"))
            {
                if (IsHaveColumn(dataRow, "htmlPage"))
                {
                    if (dataRow["htmlPage"].ToString() != "")
                        labelBody = labelBody.Replace("{SH:XY_URL}", webInfo.WebDomain + dataRow["htmlPage"].ToString());
                    else
                    {
                        if (webInfo.IsBogusStatic)
                            labelBody = labelBody.Replace("{SH:XY_URL}", webInfo.WebDomain + "exhibition/info-" + dataRow["id"].ToString() + "." + webInfo.WebSuffix);
                        else
                            labelBody = labelBody.Replace("{SH:XY_URL}", webInfo.WebDomain + "exhibition/info." + webInfo.WebSuffix + "?infoid=" + dataRow["id"].ToString());
                    }
                }
            }

            if (labelBody.Contains("{SH:XY_IMG}"))
            {
                if (IsHaveColumn(dataRow, "IsHasImage"))
                {
                    if (dataRow["IsHasImage"].ToString() != "0")
                    {
                        long _InfoId = Core.MyConvert.GetInt64(dataRow["ID"].ToString());

                        string imgUrl = Business.Attachment.GetInfoDefaultImgHref(XYECOM.Model.AttachmentItem.Exhibition, _InfoId);

                        labelBody = labelBody.Replace("{SH:XY_IMG}", imgUrl);
                    }
                    else
                    {
                        labelBody = labelBody.Replace("{SH:XY_IMG}", SYS_NOIMAGE_PATH);
                    }
                }
            }

            if (labelBody.Contains("{SH:XY_SmallImg1}"))
            {
                if (dataRow["IsHasImage"].ToString() != "0")
                    labelBody = labelBody.Replace("{SH:XY_SmallImg1}", GetThumbnailiImagePath(dataRow["ID"].ToString(), XYECOM.Model.AttachmentItem.Exhibition, 1));
                else
                    labelBody = labelBody.Replace("{SH:XY_SmallImg1}", SYS_NOIMAGE_PATH);
            }

            if (labelBody.Contains("{SH:XY_SmallImg2}"))
            {
                if (dataRow["IsHasImage"].ToString() != "0")
                    labelBody = labelBody.Replace("{SH:XY_SmallImg2}", GetThumbnailiImagePath(dataRow["ID"].ToString(), XYECOM.Model.AttachmentItem.Exhibition, 2));
                else
                    labelBody = labelBody.Replace("{SH:XY_SmallImg2}", SYS_NOIMAGE_PATH);
            }

            if (labelBody.Contains("{SH:XY_SmallImg3}"))
            {
                if (dataRow["IsHasImage"].ToString() != "0")
                    labelBody = labelBody.Replace("{SH:XY_SmallImg3}", GetThumbnailiImagePath(dataRow["ID"].ToString(), XYECOM.Model.AttachmentItem.Exhibition, 3));
                else
                    labelBody = labelBody.Replace("{SH:XY_SmallImg3}", SYS_NOIMAGE_PATH);
            }

            #endregion

            #region 人才信息

            if (labelFlagName == "engagelist" || labelFlagName == "engagepagelist")
            {
                if (labelBody.Contains("{EG:XY_ID}"))
                {
                    if (IsHaveColumn(dataRow, "EI_ID"))
                        labelBody = labelBody.Replace("{EG:XY_ID}", dataRow["EI_ID"].ToString());
                }
                if (labelBody.Contains("{EG:XY_Post}"))
                {
                    if (IsHaveColumn(dataRow, "P_Name"))
                        labelBody = labelBody.Replace("{EG:XY_Post}", dataRow["P_Name"].ToString());
                }
                if (labelBody.Contains("{EG:XY_TitleAll}"))
                {
                    if (IsHaveColumn(dataRow, "EI_Job"))
                        labelBody = labelBody.Replace("{EG:XY_TitleAll}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), dataRow["EI_Job"].ToString()));
                }
                if (labelBody.Contains("{EG:XY_Title}"))
                {
                    if (IsHaveColumn(dataRow, "EI_Job"))
                        labelBody = labelBody.Replace("{EG:XY_Title}", XYECOM.Core.Utils.IsLength(queryParam.TitleFontNumbers, XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), dataRow["EI_Job"].ToString())));
                }
                if (labelBody.Contains("{EG:XY_Branch}"))
                {
                    if (IsHaveColumn(dataRow, "EI_Branch"))
                        labelBody = labelBody.Replace("{EG:XY_Branch}", XYECOM.Core.Utils.GetMoney(dataRow["EI_Branch"].ToString()));
                }
                if (labelBody.Contains("{EG:XY_Type}"))
                {
                    if (IsHaveColumn(dataRow, "EI_Type"))
                        labelBody = labelBody.Replace("{EG:XY_Type}", dataRow["EI_Type"].ToString());
                }
                if (labelBody.Contains("{EG:XY_Area}"))
                {
                    string areaName = "未知";
                    if (IsHaveColumn(dataRow, "WorkAreaID"))
                    {
                        //=========================================================================/
                        //可以考虑加缓存，减少数据库访问
                        int areaId = XYECOM.Core.MyConvert.GetInt32(dataRow["WorkAreaID"].ToString());
                        XYECOM.Model.AreaInfo areaInfo = new XYECOM.Business.Area().GetItem(areaId);
                        if (null != areaInfo) areaName = areaInfo.FullNameAll;
                        //=========================================================================/
                    }
                    labelBody = labelBody.Replace("{EG:XY_Area}", areaName);
                }
                if (labelBody.Contains("{EG:XY_Request}"))
                {
                    if (IsHaveColumn(dataRow, "EI_Request"))
                        labelBody = labelBody.Replace("{EG:XY_Request}", XYECOM.Core.Utils.IsLength(queryParam.TitleFontNumbers, XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), XYECOM.Core.Utils.RemoveHTML(dataRow["EI_Request"].ToString()))));
                }
                if (labelBody.Contains("{EG:XY_Pay}"))
                {
                    if (IsHaveColumn(dataRow, "EI_Pay"))
                    {
                        if (dataRow["EI_Pay"].ToString() != "0")
                            labelBody = labelBody.Replace("{EG:XY_Pay}", dataRow["EI_Pay"].ToString() + "元");
                        else
                            labelBody = labelBody.Replace("{EG:XY_Pay}", "面议");
                    }
                }
                if (labelBody.Contains("{EG:XY_SA}"))
                {
                    if (IsHaveColumn(dataRow, "EI_Eb"))
                        labelBody = labelBody.Replace("{EG:XY_SA}", dataRow["EI_Eb"].ToString());
                }
                if (labelBody.Contains("{EG:XY_Age}"))
                {
                    if (IsHaveColumn(dataRow, "EI_Age"))
                        labelBody = labelBody.Replace("{EG:XY_Age}", dataRow["EI_Age"].ToString());
                }
                if (labelBody.Contains("{EG:XY_Sex}"))
                {
                    if (IsHaveColumn(dataRow, "EI_Sex"))
                        labelBody = labelBody.Replace("{EG:XY_Sex}", dataRow["EI_Sex"].ToString());
                }
                if (labelBody.Contains("{EG:XY_Experience}"))
                {
                    if (IsHaveColumn(dataRow, "EI_Experience"))
                        labelBody = labelBody.Replace("{EG:XY_Experience}", dataRow["EI_Experience"].ToString() + "年以上");
                }
                if (labelBody.Contains("{EG:XY_Nationality}"))
                {
                    if (IsHaveColumn(dataRow, "EI_Nationality"))
                        labelBody = labelBody.Replace("{EG:XY_Nationality}", dataRow["EI_Nationality"].ToString());
                }
                if (labelBody.Contains("{EG:XY_Number}"))
                {
                    if (IsHaveColumn(dataRow, "EI_Number"))
                    {
                        if (dataRow["EI_Number"].ToString().Equals("0")) labelBody = labelBody.Replace("{EG:XY_Number}", "若干");
                        else labelBody = labelBody.Replace("{EG:XY_Number}", dataRow["EI_Number"].ToString());
                    }
                }
                if (labelBody.Contains("{EG:XY_Date}"))
                {
                    if (IsHaveColumn(dataRow, "EI_AddDate"))
                    {
                        if (queryParam.DateFormat != "")
                            labelBody = labelBody.Replace("{EG:XY_Date}", FormatDateTime(dataRow["EI_AddDate"].ToString(), queryParam.DateFormat));
                        else
                            labelBody = labelBody.Replace("{EG:XY_Date}", dataRow["EI_AddDate"].ToString());
                    }
                }
                if (labelBody.Contains("{EG:XY_EndDate}"))
                {
                    if (IsHaveColumn(dataRow, "EI_EndDate"))
                    {
                        if (queryParam.DateFormat != "")
                            labelBody = labelBody.Replace("{EG:XY_EndDate}", FormatDateTime(dataRow["EI_EndDate"].ToString(), queryParam.DateFormat));
                        else
                            labelBody = labelBody.Replace("{EG:XY_EndDate}", dataRow["EI_EndDate"].ToString());
                    }
                }
                if (labelBody.Contains("{EG:XY_URL}"))
                {
                    if (IsHaveColumn(dataRow, "EI_HTMLPage"))
                    {
                        string htmlPage = dataRow["EI_HTMLPage"].ToString();
                        string url = "";
                        if (!string.IsNullOrEmpty(htmlPage))
                        {
                            url = webInfo.WebDomain + htmlPage;
                        }
                        else
                        {
                            long uid = XYECOM.Core.MyConvert.GetInt64(dataRow["U_ID"].ToString());
                            Model.UserRegInfo userRegInfo = new XYECOM.Business.UserReg().GetItem(uid);
                            if (userRegInfo != null)
                            {
                                int gradeId = userRegInfo.GradeId;
                                bool isShop = Business.UserGradePopedom.IsShop(gradeId);

                                string uname = dataRow["U_Name"].ToString();
                                string eid = dataRow["EI_ID"].ToString();
                                if (isShop)
                                {
                                    //可以开启网店
                                    if (Business.UserGradePopedom.IsBindingTopdomain(gradeId))
                                    {
                                        //是否能绑定顶级域名
                                        Model.UserDomainInfo domainInfo = new Business.UserDomain().GetItem(uid);

                                        if (domainInfo != null && domainInfo.State == XYECOM.Model.AuditingState.Passed)
                                        {
                                            string domainhost = webInfo.GetSubDomain(userRegInfo.LoginName);

                                            url = "http://" + domainInfo.Domain + "/job-" + eid + "." + webInfo.WebSuffix;
                                        }
                                    }
                                    else if (webInfo.IsDomain && Business.UserGradePopedom.IsSubdomain(gradeId))
                                    {
                                        //是否能绑定二级域名
                                        string shopindex = webInfo.GetSubDomain(userRegInfo.LoginName);
                                        url = shopindex + "job-" + eid + "." + webInfo.WebSuffix;

                                    }
                                    else
                                    {
                                        url = webInfo.WebDomain + "shop/" + uname + "/job-" + eid + "." + webInfo.WebSuffix;
                                    }
                                }
                                else
                                {
                                    //不能开启网店
                                    url = "#";
                                }
                            }
                            else
                            {
                                //用户不存在
                                url = "#";
                            }
                        }
                        labelBody = labelBody.Replace("{EG:XY_URL}", url);
                    }
                }
                if (labelBody.Contains("{EG:XY_Click}"))
                {
                    if (IsHaveColumn(dataRow, "EI_ClickNum"))
                        labelBody = labelBody.Replace("{EG:XY_Click}", dataRow["EI_ClickNum"].ToString());
                }
            }
            #endregion

            #region 企业信息
            if (labelBody.Contains("{CP:XY_ID}"))
            {
                if (IsHaveColumn(dataRow, "U_ID"))
                    labelBody = labelBody.Replace("{CP:XY_ID}", dataRow["U_ID"].ToString());
            }
            if (labelBody.Contains("{CP:XY_NameAll}"))
            {
                if (IsHaveColumn(dataRow, "UI_Name"))
                    labelBody = labelBody.Replace("{CP:XY_NameAll}", dataRow["UI_Name"].ToString());
            }
            if (labelBody.Contains("{CP:XY_Name}"))
            {
                if (IsHaveColumn(dataRow, "UI_Name"))
                    labelBody = labelBody.Replace("{CP:XY_Name}", XYECOM.Core.Utils.IsLength(queryParam.CompanyNameFontNumbers, dataRow["UI_Name"].ToString()));
            }

            if (labelBody.Contains("{CP:XY_Area}"))
            {
                string areaName = "未知";
                if (IsHaveColumn(dataRow, "Area_ID"))
                {
                    //=========================================================================/
                    //可以考虑加缓存，减少数据库访问
                    int areaId = XYECOM.Core.MyConvert.GetInt32(dataRow["Area_ID"].ToString());
                    XYECOM.Model.AreaInfo areaInfo = new XYECOM.Business.Area().GetItem(areaId);
                    if (null != areaInfo) areaName = areaInfo.FullNameAll;
                    //=========================================================================/
                }
                labelBody = labelBody.Replace("{CP:XY_Area}", areaName);
            }
            if (labelBody.Contains("{CP:XY_Address}"))
            {
                if (IsHaveColumn(dataRow, "UI_Area"))
                    labelBody = labelBody.Replace("{CP:XY_Address}", dataRow["UI_Area"].ToString());
            }
            if (labelBody.Contains("{CP:XY_License}"))
            {
                if (IsHaveColumn(dataRow, "UI_License"))
                    labelBody = labelBody.Replace("{CP:XY_License}", dataRow["UI_License"].ToString());
            }
            if (labelBody.Contains("{CP:XY_Character}"))
            {
                if (IsHaveColumn(dataRow, "UI_Character"))
                    labelBody = labelBody.Replace("{CP:XY_Character}", dataRow["UI_Character"].ToString());
            }
            if (labelBody.Contains("{CP:XY_LinkMan}"))
            {
                if (IsHaveColumn(dataRow, "UI_LinkMan"))
                    labelBody = labelBody.Replace("{CP:XY_LinkMan}", dataRow["UI_LinkMan"].ToString());
            }

            if (labelBody.Contains("{CP:XY_IM}"))
            {
                if (IsHaveColumn(dataRow, "IM"))
                {
                    //系统是否开启
                    bool isSystemEnabled = XYECOM.Configuration.FreeCode.Instance.IM.IsEnabled;
                    //当前用户所在等级是否允许IM在线交流
                    bool isAllowIMOnline = XYECOM.Business.UserGradePopedom.IsIMOnLine((XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString())));
                    //自定义代码
                    string IMCode = XYECOM.Configuration.FreeCode.Instance.IM.Code.ToLower();
                    //IM号码
                    string IM = dataRow["IM"].ToString().Trim();

                    //如果有权限并且qq不为空时
                    if (isSystemEnabled && isAllowIMOnline && !IM.Equals(""))
                    {
                        IMCode = IMCode.Replace("{xy_im}", IM);

                        labelBody = labelBody.Replace("{CP:XY_IM}", IMCode);
                    }
                    else
                    {
                        labelBody = labelBody.Replace("{CP:XY_IM}", "");
                    }
                }
            }

            if (labelBody.Contains("{CP:XY_Telephone}"))
            {
                if (IsHaveColumn(dataRow, "Telephone"))
                    labelBody = labelBody.Replace("{CP:XY_Telephone}", dataRow["Telephone"].ToString());
            }
            if (labelBody.Contains("{CP:XY_Number}"))
            {
                if (IsHaveColumn(dataRow, "UI_Number"))
                    labelBody = labelBody.Replace("{CP:XY_Number}", dataRow["UI_Number"].ToString());
            }
            if (labelBody.Contains("{CP:XY_HomePage}"))
            {
                if (IsHaveColumn(dataRow, "UI_HomePage"))
                    labelBody = labelBody.Replace("{CP:XY_HomePage}", dataRow["UI_HomePage"].ToString());
            }
            if (labelBody.Contains("{CP:XY_Fax}"))
            {
                if (IsHaveColumn(dataRow, "Fax"))
                    labelBody = labelBody.Replace("{CP:XY_Fax}", dataRow["Fax"].ToString());
            }

            if (labelBody.Contains("{CP:XY_jianjie}"))
            {
                if (IsHaveColumn(dataRow, "UI_Synopsis"))
                    labelBody = labelBody.Replace("{CP:XY_jianjie}", XYECOM.Core.Utils.IsLength(queryParam.CompanySummaryFontNumbers, XYECOM.Core.Utils.RemoveHTML(dataRow["UI_Synopsis"].ToString())));
            }
            if (labelBody.Contains("{CP:XY_Postcode}"))
            {
                if (IsHaveColumn(dataRow, "UI_Postcode"))
                    labelBody = labelBody.Replace("{CP:XY_Postcode}", dataRow["UI_Postcode"].ToString());
            }
            if (labelBody.Contains("{CP:XY_Mobil}"))
            {
                if (IsHaveColumn(dataRow, "UI_Mobil"))
                    labelBody = labelBody.Replace("{CP:XY_Mobil}", dataRow["UI_Mobil"].ToString());
            }
            if (labelBody.Contains("{CP:XY_Type}"))
            {
                if (IsHaveColumn(dataRow, "UT_ID"))
                {
                    XYECOM.Business.UserType utBLL = new XYECOM.Business.UserType();

                    Model.UserTypeInfo utInfo = utBLL.GetItem(Core.MyConvert.GetInt64(dataRow["UT_ID"].ToString()));

                    if (utInfo != null)
                        labelBody = labelBody.Replace("{CP:XY_Type}", utInfo.UT_Type);
                    else
                        labelBody = labelBody.Replace("{CP:XY_Type}", "");
                }
            }
            if (labelBody.Contains("{CP:XY_Gread}"))
            {
                if (IsHaveColumn(dataRow, "UG_ID"))
                {
                    XYECOM.Business.UserGrade ugBLL = new XYECOM.Business.UserGrade();

                    XYECOM.Model.UserGradeInfo ugInfo = ugBLL.GetItem(Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()));

                    if (ugInfo != null)
                        labelBody = labelBody.Replace("{CP:XY_Gread}", ugInfo.GradeName);
                    else
                        labelBody = labelBody.Replace("{CP:XY_Gread}", "");
                }
            }
            if (labelBody.Contains("{CP:XY_GIMG}"))
            {
                if (IsHaveColumn(dataRow, "UG_ID"))
                {
                    XYECOM.Model.UserGradeInfo userGreadInfo = new XYECOM.Business.UserGrade().GetItem(XYECOM.Core.MyConvert.GetInt16(dataRow["UG_ID"].ToString()));
                    if (null != userGreadInfo)
                    {
                        labelBody = labelBody.Replace("{CP:XY_GIMG}", webInfo.WebDomain + "Icon/" + userGreadInfo.SmallIconName);
                    }
                    else
                    {
                        labelBody = labelBody.Replace("{CP:XY_GIMG}", webInfo.WebDomain + "icon/default.gif");
                    }
                }
            }
            if (labelBody.Contains("{CP:XY_Section}"))
            {
                if (IsHaveColumn(dataRow, "U_Section"))
                    labelBody = labelBody.Replace("{CP:XY_Section}", dataRow["U_Section"].ToString());
            }
            if (labelBody.Contains("{CP:XY_Post}"))
            {
                if (IsHaveColumn(dataRow, "U_Post"))
                    labelBody = labelBody.Replace("{CP:XY_Post}", dataRow["U_Post"].ToString());
            }
            if (labelBody.Contains("{CP:XY_Way}"))
            {
                if (IsHaveColumn(dataRow, "U_Way"))
                {
                    if (dataRow["U_Way"].ToString() == "1")
                        labelBody = labelBody.Replace("{CP:XY_Way}", "供方");
                    else if (dataRow["U_Way"].ToString() == "2")
                        labelBody = labelBody.Replace("{CP:XY_Way}", "求方");
                    else if (dataRow["U_Way"].ToString() == "3")
                        labelBody = labelBody.Replace("{CP:XY_Way}", "两者都有");
                    else
                        labelBody = labelBody.Replace("{CP:XY_Way}", "不详");
                }
            }
            if (labelBody.Contains("{CP:XY_SupplyProduct}"))
            {
                if (IsHaveColumn(dataRow, "U_SupplyProduct"))
                    labelBody = labelBody.Replace("{CP:XY_SupplyProduct}", dataRow["U_SupplyProduct"].ToString());
            }
            if (labelBody.Contains("{CP:XY_BuyProduct}"))
            {
                if (IsHaveColumn(dataRow, "U_BuyProduct"))
                    labelBody = labelBody.Replace("{CP:XY_BuyProduct}", dataRow["U_BuyProduct"].ToString());
            }
            if (labelBody.Contains("{CP:XY_Mode}"))
            {
                if (IsHaveColumn(dataRow, "U_Mode"))
                    labelBody = labelBody.Replace("{CP:XY_Mode}", dataRow["U_Mode"].ToString());
            }
            if (labelBody.Contains("{CP:XY_Money}"))
            {
                if (IsHaveColumn(dataRow, "U_Money"))
                {
                    string money = "--";
                    if (!dataRow["U_Money"].ToString().Equals("0")) money = dataRow["U_Money"].ToString() + "万";

                    labelBody = labelBody.Replace("{CP:XY_Money}", money + dataRow["U_MoneyType"].ToString());
                }
            }
            if (labelBody.Contains("{CP:XY_Year}"))
            {
                if (IsHaveColumn(dataRow, "U_Year"))
                {
                    string regYear = "--";
                    if (!dataRow["U_Year"].ToString().Equals("0")) regYear = dataRow["U_Year"].ToString() + "年";
                    labelBody = labelBody.Replace("{CP:XY_Year}", regYear);
                }
            }

            if (labelBody.Contains("{CP:XY_LAddress}"))
            {
                if (IsHaveColumn(dataRow, "U_Address"))
                    labelBody = labelBody.Replace("{CP:XY_LAddress}", dataRow["U_Address"].ToString());
            }
            if (labelBody.Contains("{CP:XY_PType}"))
            {
                if (IsHaveColumn(dataRow, "U_PType"))
                    labelBody = labelBody.Replace("{CP:XY_PType}", dataRow["U_PType"].ToString());
            }
            if (labelBody.Contains("{CP:XY_Date}"))
            {
                if (IsHaveColumn(dataRow, "U_RegDate"))
                {
                    if (queryParam.DateFormat != "")
                        labelBody = labelBody.Replace("{CP:XY_Date}", FormatDateTime(dataRow["U_RegDate"].ToString(), queryParam.DateFormat));
                    else
                        labelBody = labelBody.Replace("{CP:XY_Date}", dataRow["U_RegDate"].ToString());
                }
            }
            if (labelBody.Contains("{CP:XY_URL}"))
            {
                if (IsHaveColumn(dataRow, "UG_ID"))
                {
                    int userGradeId = XYECOM.Core.MyConvert.GetInt16(dataRow["UG_ID"].ToString());
                    long userId = XYECOM.Core.MyConvert.GetInt64(dataRow["U_ID"].ToString());

                    bool isShop = false;
                    string shopIndex = "";

                    if (userGradeId > 0)
                    {
                        isShop = Business.UserGradePopedom.IsShop(userGradeId);
                    }

                    if (isShop)
                    {
                        shopIndex = webInfo.WebDomain + "shop/" + dataRow["U_Name"].ToString() + "/index." + webInfo.WebSuffix;

                        if (webInfo.IsDomain && Business.UserGradePopedom.IsSubdomain(userGradeId))
                        {
                            shopIndex = webInfo.GetSubDomain(dataRow["U_Name"].ToString());
                        }

                        //如果允许绑定顶级域名
                        if (Business.UserGradePopedom.IsBindingTopdomain(userGradeId))
                        {
                            Model.UserDomainInfo domainInfo = new Business.UserDomain().GetItem(userId);

                            if (domainInfo != null && domainInfo.State == XYECOM.Model.AuditingState.Passed)
                            {
                                shopIndex = "http://" + domainInfo.Domain;
                            }
                        }
                    }
                    else
                    {
                        if (webInfo.IsBogusStatic)
                            shopIndex = webInfo.WebDomain + "company/info-" + userId + "." + webInfo.WebSuffix;
                        else
                            shopIndex = webInfo.WebDomain + "company/info." + webInfo.WebSuffix + "?ui=" + userId;
                    }

                    labelBody = labelBody.Replace("{CP:XY_URL}", shopIndex);
                }
            }
            if (labelBody.Contains("{CP:XY_Click}"))
            {
                if (IsHaveColumn(dataRow, "U_ClickNum"))
                    labelBody = labelBody.Replace("{CP:XY_Click}", dataRow["U_ClickNum"].ToString());
            }
            if (labelBody.Contains("{CP:XY_IMG}"))
            {
                if (IsHaveColumn(dataRow, "U_ID"))
                {
                    if (dataRow["UserIsHasImage"].ToString() != "0")
                    {
                        string defaultImg = XYECOM.Business.Attachment.GetInfoDefaultImgHref(XYECOM.Model.AttachmentItem.Logo, Core.MyConvert.GetInt64(dataRow["U_ID"].ToString()));

                        labelBody = labelBody.Replace("{CP:XY_IMG}", defaultImg);
                    }
                    else
                    {
                        labelBody = labelBody.Replace("{CP:XY_IMG}", SYS_NOIMAGE_PATH);
                    }
                }
            }

            if (labelBody.Contains("{CP:XY_SmallImg1}"))
            {
                if (dataRow["UserIsHasImage"].ToString() != "0")
                    labelBody = labelBody.Replace("{CP:XY_SmallImg1}", GetUserThumbnailiImagePath(dataRow, 1));
                else
                    labelBody = labelBody.Replace("{CP:XY_SmallImg1}", SYS_NOIMAGE_PATH);
            }

            if (labelBody.Contains("{CP:XY_SmallImg2}"))
            {
                if (dataRow["UserIsHasImage"].ToString() != "0")
                    labelBody = labelBody.Replace("{CP:XY_SmallImg2}", GetUserThumbnailiImagePath(dataRow, 2));
                else
                    labelBody = labelBody.Replace("{CP:XY_SmallImg2}", SYS_NOIMAGE_PATH);
            }

            if (labelBody.Contains("{CP:XY_SmallImg3}"))
            {
                if (dataRow["UserIsHasImage"].ToString() != "0")
                    labelBody = labelBody.Replace("{CP:XY_SmallImg3}", GetUserThumbnailiImagePath(dataRow, 3));
                else
                    labelBody = labelBody.Replace("{CP:XY_SmallImg3}", SYS_NOIMAGE_PATH);
            }

            if (labelBody.Contains("{CP:XY_Cred}"))
            {
                if (IsHaveColumn(dataRow, "U_Cred"))
                    labelBody = labelBody.Replace("{CP:XY_Cred}", dataRow["U_Cred"].ToString());
            }

            if (labelBody.Contains("{CP:XY_CreditIntegral}") || labelBody.Contains("{CP:XY_CreditIntegralImage}") || labelBody.Contains("{CP:XY_CreditIntegralLeavl}"))
            {
                string strCredit = dataRow["CreditIntegral"].ToString();
                string flag = dataRow["U_Flag"].ToString();
                decimal creditIntegral = XYECOM.Core.MyConvert.GetDecimal(strCredit);

                Model.CreditLeavlInfo info = new Business.CreditLeavlManager().GetItemByPoint(creditIntegral);
                if (info != null && flag == "1")
                {
                    labelBody = labelBody.Replace("{CP:XY_CreditIntegral}", strCredit);
                    labelBody = labelBody.Replace("{CP:XY_CreditIntegralImage}", webInfo.WebDomain + info.ImagePath);
                    labelBody = labelBody.Replace("{CP:XY_CreditIntegralLeavl}", info.LeavlName);
                }
                else
                {
                    labelBody = labelBody.Replace("{CP:XY_CreditIntegral}", "000");
                    labelBody = labelBody.Replace("{CP:XY_CreditIntegralImage}", "000");
                    labelBody = labelBody.Replace("{CP:XY_CreditIntegralLeavl}", "000");
                }
            }

            #endregion

            #region 个人信息
            if (labelBody.Contains("{AC:XY_ID}"))
            {
                if (IsHaveColumn(dataRow, "U_ID"))
                    labelBody = labelBody.Replace("{AC:XY_ID}", dataRow["U_ID"].ToString());
            }
            if (labelBody.Contains("{AC:XY_Name}"))
            {
                if (IsHaveColumn(dataRow, "UI_Name"))
                    labelBody = labelBody.Replace("{AC:XY_Name}", dataRow["UI_Name"].ToString());
            }
            if (labelBody.Contains("{AC:XY_Sex}"))
            {
                if (IsHaveColumn(dataRow, "UI_Sex"))
                    labelBody = labelBody.Replace("{AC:XY_Sex}", "true" == dataRow["UI_Sex"].ToString().ToLower() ? "男" : "女");
            }
            if (labelBody.Contains("{AC:XY_Code}"))
            {
                if (IsHaveColumn(dataRow, "UI_Code"))
                    labelBody = labelBody.Replace("{AC:XY_Code}", dataRow["UI_Code"].ToString());
            }
            if (labelBody.Contains("{AC:XY_Area}"))
            {
                string areaName = "未知";
                if (IsHaveColumn(dataRow, "Area_ID"))
                {
                    //=========================================================================/
                    //可以考虑加缓存，减少数据库访问
                    int areaId = XYECOM.Core.MyConvert.GetInt32(dataRow["Area_ID"].ToString());
                    XYECOM.Model.AreaInfo areaInfo = new XYECOM.Business.Area().GetItem(areaId);
                    if (null != areaInfo) areaName = areaInfo.FullNameAll;
                    //=========================================================================/
                }
                labelBody = labelBody.Replace("{AC:XY_Area}", areaName);
            }
            if (labelBody.Contains("{AC:XY_Address}"))
            {
                if (IsHaveColumn(dataRow, "UI_Address"))
                    labelBody = labelBody.Replace("{AC:XY_Address}", dataRow["UI_Address"].ToString());
            }
            if (labelBody.Contains("{AC:XY_Telephone}"))
            {
                if (IsHaveColumn(dataRow, "Telephone"))
                    labelBody = labelBody.Replace("{AC:XY_Telephone}", dataRow["Telephone"].ToString());
            }
            if (labelBody.Contains("{AC:XY_Postcode}"))
            {
                if (IsHaveColumn(dataRow, "UI_Postcode"))
                    labelBody = labelBody.Replace("{AC:XY_Postcode}", dataRow["UI_Postcode"].ToString());
            }
            if (labelBody.Contains("{AC:XY_Mobil}"))
            {
                if (IsHaveColumn(dataRow, "UI_Mobil"))
                    labelBody = labelBody.Replace("{AC:XY_Mobil}", dataRow["UI_Mobil"].ToString());
            }
            if (labelBody.Contains("{AC:XY_Date}"))
            {
                if (IsHaveColumn(dataRow, "U_RegDate"))
                {
                    if (queryParam.DateFormat != "")
                        labelBody = labelBody.Replace("{AC:XY_Date}", FormatDateTime(dataRow["U_RegDate"].ToString(), queryParam.DateFormat));
                    else
                        labelBody = labelBody.Replace("{AC:XY_Date}", dataRow["U_RegDate"].ToString());
                }
            }
            //
            if (labelBody.Contains("{AC:XY_School}"))
            {
                if (IsHaveColumn(dataRow, "RE_School"))
                    labelBody = labelBody.Replace("{AC:XY_School}", dataRow["RE_School"].ToString());
            }
            if (labelBody.Contains("{AC:XY_Speciality}"))
            {
                if (IsHaveColumn(dataRow, "RE_Speciality"))
                    labelBody = labelBody.Replace("{AC:XY_Speciality}", dataRow["RE_Speciality"].ToString());
            }
            if (labelBody.Contains("{AC:XY_Graduate}"))
            {
                if (IsHaveColumn(dataRow, "RE_Gyear"))
                    labelBody = labelBody.Replace("{AC:XY_Graduate}", dataRow["RE_Gyear"].ToString());
            }
            if (labelBody.Contains("{AC:XY_Level}"))
            {
                if (IsHaveColumn(dataRow, "RE_Schoolage"))
                    labelBody = labelBody.Replace("{AC:XY_Level}", dataRow["RE_Schoolage"].ToString());
            }
            if (labelBody.Contains("{AC:XY_Job}"))
            {
                if (IsHaveColumn(dataRow, "RE_Intentjob"))
                    labelBody = labelBody.Replace("{AC:XY_Job}", dataRow["RE_Intentjob"].ToString());
            }
            if (labelBody.Contains("{AC:XY_Pay}"))
            {
                if (IsHaveColumn(dataRow, "RE_Intentpay"))
                    labelBody = labelBody.Replace("{AC:XY_Pay}", dataRow["RE_Intentpay"].ToString());
            }
            if (labelBody.Contains("{AC:XY_Hopecity}"))
            {
                string areaName = "未知";
                if (IsHaveColumn(dataRow, "Area_ID"))
                {
                    //=========================================================================/
                    //可以考虑加缓存，减少数据库访问
                    int areaId = XYECOM.Core.MyConvert.GetInt32(dataRow["Area_ID"].ToString());
                    XYECOM.Model.AreaInfo areaInfo = new XYECOM.Business.Area().GetItem(areaId);
                    if (null != areaInfo) areaName = areaInfo.FullNameAll;
                    //=========================================================================/
                }
                labelBody = labelBody.Replace("{AC:XY_Hopecity}", areaName);
            }
            if (labelBody.Contains("{AC:XY_Years}"))
            {
                if (IsHaveColumn(dataRow, "RE_JobYear"))
                    labelBody = labelBody.Replace("{AC:XY_Years}", dataRow["RE_JobYear"].ToString());
            }
            if (labelBody.Contains("{AC:XY_Experience}"))
            {
                if (IsHaveColumn(dataRow, "RE_Experience"))
                    labelBody = labelBody.Replace("{AC:XY_Experience}", dataRow["RE_Experience"].ToString());
            }
            if (labelBody.Contains("{AC:XY_Appraise}"))
            {
                if (IsHaveColumn(dataRow, "RE_Resume"))
                    labelBody = labelBody.Replace("{AC:XY_Appraise}", dataRow["RE_Resume"].ToString());
            }
            if (labelBody.Contains("{AC:XY_URL}"))
            {
                if (IsHaveColumn(dataRow, "RE_HtmlPage"))
                {
                    if (dataRow["RE_HtmlPage"].ToString() != "")
                        labelBody = labelBody.Replace("{AC:XY_URL}", webInfo.WebDomain + dataRow["RE_HtmlPage"].ToString());
                }
                if (webInfo.IsBogusStatic)
                    labelBody = labelBody.Replace("{AC:XY_URL}", webInfo.WebDomain + "job/resume-" + dataRow["U_ID"].ToString() + "." + webInfo.WebSuffix);
                else
                    labelBody = labelBody.Replace("{AC:XY_URL}", webInfo.WebDomain + "job/resume." + webInfo.WebSuffix + "?id=" + dataRow["U_ID"].ToString());
            }
            #endregion

            #region 资讯栏目

            string allDomainName = "";
            if (labelBody.Contains("{NT:XY_Title}"))
            {
                if (IsHaveColumn(dataRow, "NT_Name"))
                    labelBody = labelBody.Replace("{NT:XY_Title}", dataRow["NT_Name"].ToString());
            }
            if (labelBody.Contains("{NT:XY_URL}"))
            {
                if (dataRow["DomainName"].ToString() != "")
                {
                    allDomainName = webInfo.GetSubDomain(dataRow["DomainName"].ToString());
                }
                if (dataRow["NT_TempletAddress"].ToString() != "")
                    labelBody = labelBody.Replace("{NT:XY_URL}", webInfo.WebDomain + "news/" + dataRow["NT_EnName"].ToString() + "/" + dataRow["NT_TempletAddress"].ToString().Substring(0, dataRow["NT_TempletAddress"].ToString().IndexOf('.')) + "." + webInfo.WebSuffix);
                else
                {
                    if (webInfo.IsBogusStatic)
                    {
                        if (webInfo.IsNewsDomain && dataRow["DomainName"].ToString() != "")
                        {
                            labelBody = labelBody.Replace("{NT:XY_URL}", allDomainName + "channel-" + dataRow["NT_ID"].ToString() + "." + webInfo.WebSuffix);
                        }
                        else
                        {
                            labelBody = labelBody.Replace("{NT:XY_URL}", webInfo.WebDomain + "news/channel-" + dataRow["NT_ID"].ToString() + "." + webInfo.WebSuffix);
                        }
                    }
                    else
                    {
                        if (webInfo.IsNewsDomain && dataRow["DomainName"].ToString() != "")
                        {
                            labelBody = labelBody.Replace("{NT:XY_URL}", allDomainName + "channel." + webInfo.WebSuffix + "?nt_id=" + dataRow["NT_ID"].ToString());
                        }
                        else
                        {
                            labelBody = labelBody.Replace("{NT:XY_URL}", webInfo.WebDomain + "news/channel." + webInfo.WebSuffix + "?nt_id=" + dataRow["NT_ID"].ToString());
                        }
                    }
                }
            }
            #endregion

            #region 新闻信息
            if (labelFlagName.Equals("newslist") || labelFlagName.Equals("newspagelist"))
            {
                if (labelBody.Contains("{NS:XY_ID}"))
                    labelBody = labelBody.Replace("{NS:XY_ID}", dataRow["NS_ID"].ToString());

                if (labelBody.Contains("{NS:XY_TitleAll}"))
                {
                    string newsName = XYECOM.Business.FiltrateKeyWord.LeachKeyWord(dataRow["NS_NewsName"].ToString());

                    if (!dataRow["NS_TitleStyle"].ToString().Trim().Equals(""))
                    {
                        newsName = "<font style=" + dataRow["NS_TitleStyle"].ToString().Trim() + ">" + newsName + "</font>";
                    }

                    labelBody = labelBody.Replace("{NS:XY_TitleAll}", newsName);
                }

                if (labelBody.Contains("{NS:XY_Title}"))
                {
                    string newsName = XYECOM.Core.Utils.IsLength(queryParam.TitleFontNumbers, XYECOM.Business.FiltrateKeyWord.LeachKeyWord(dataRow["NS_NewsName"].ToString()));

                    if (!dataRow["NS_TitleStyle"].ToString().Trim().Equals(""))
                    {
                        newsName = "<font style=" + dataRow["NS_TitleStyle"].ToString().Trim() + ">" + newsName + "</font>";
                    }

                    labelBody = labelBody.Replace("{NS:XY_Title}", newsName);
                }

                if (labelBody.Contains("{NS:XY_TName}"))
                    labelBody = labelBody.Replace("{NS:XY_TName}", dataRow["NT_Name"].ToString());

                if (labelBody.Contains("{NS:XY_STName}"))
                    labelBody = labelBody.Replace("{NS:XY_STName}", dataRow["NT_NessName"].ToString());

                if (labelBody.Contains("{NS:XY_TURL}"))
                {
                    if (dataRow["DomainName"].ToString() != "")
                    {
                        allDomainName = webInfo.GetSubDomain(dataRow["DomainName"].ToString());
                    }
                    string channelId = dataRow["NT_ID"].ToString();
                    string subChannelFolder = dataRow["NT_TempletFolderAddress"].ToString().Trim();

                    if (!subChannelFolder.Equals("")) subChannelFolder = subChannelFolder + "/";

                    channelId = Core.Utils.RemoveStartComma(channelId);

                    channelId = channelId.Substring(0, channelId.IndexOf(','));

                    if (webInfo.IsBogusStatic)
                    {
                        if (webInfo.IsNewsDomain && dataRow["DomainName"].ToString() != "")
                        {
                            labelBody = labelBody.Replace("{NS:XY_TURL}", allDomainName + "channel-" + channelId + "." + webInfo.WebSuffix);
                        }
                        else
                        {
                            labelBody = labelBody.Replace("{NS:XY_TURL}", webInfo.WebDomain + "news/" + subChannelFolder + "channel-" + channelId + "." + webInfo.WebSuffix);
                        }
                    }
                    else
                    {
                        if (webInfo.IsNewsDomain && dataRow["DomainName"].ToString() != "")
                        {
                            labelBody = labelBody.Replace("{NS:XY_TURL}", allDomainName + "channel." + webInfo.WebSuffix + "?nt_id=" + channelId);
                        }
                        else
                        {
                            labelBody = labelBody.Replace("{NS:XY_TURL}", webInfo.WebDomain + "news/" + subChannelFolder + "channel." + webInfo.WebSuffix + "?nt_id=" + channelId);
                        }
                    }
                }
                if (labelBody.Contains("{NS:XY_CurtTitle}"))
                    labelBody = labelBody.Replace("{NS:XY_CurtTitle}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(dataRow["NS_TwoName"].ToString()));
                if (labelBody.Contains("{NS:XY_NaviContentAll}"))
                    labelBody = labelBody.Replace("{NS:XY_NaviContentAll}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(dataRow["NS_NewsLess"].ToString()));
                if (labelBody.Contains("{NS:XY_NaviContent}"))
                    labelBody = labelBody.Replace("{NS:XY_NaviContent}", XYECOM.Core.Utils.IsLength(queryParam.NewsLeadinFontNumber, XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.Utils.RemoveHTML(dataRow["NS_NewsLess"].ToString()))));
                if (labelBody.Contains("{NS:XY_Content}"))
                    labelBody = labelBody.Replace("{NS:XY_Content}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(dataRow["NS_NewsNote"].ToString()));
                if (labelBody.Contains("{NS:XY_Author}"))
                    labelBody = labelBody.Replace("{NS:XY_Author}", dataRow["NS_NewsAuthor"].ToString());
                if (labelBody.Contains("{NS:XY_Source}"))
                    labelBody = labelBody.Replace("{NS:XY_Source}", dataRow["NS_NewsOrigin"].ToString());
                if (labelBody.Contains("{NS:XY_KeyWord}"))
                    labelBody = labelBody.Replace("{NS:XY_KeyWord}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(dataRow["NS_KeyWord"].ToString()));
                if (labelBody.Contains("{NS:XY_Date}"))
                {
                    if (queryParam.DateFormat != "")
                        labelBody = labelBody.Replace("{NS:XY_Date}", FormatDateTime(dataRow["NS_AddTime"].ToString(), queryParam.DateFormat));
                    else
                        labelBody = labelBody.Replace("{NS:XY_Date}", dataRow["NS_AddTime"].ToString());
                }
                if (labelBody.Contains("{NS:XY_Link}"))
                {
                    if (dataRow["DomainName"].ToString() != "")
                    {
                        allDomainName = webInfo.GetSubDomain(dataRow["DomainName"].ToString());
                    }
                    if (IsHaveColumn(dataRow, "NS_LinkAddress"))
                    {
                        if (dataRow["NS_LinkAddress"].ToString() != "")
                            labelBody = labelBody.Replace("{NS:XY_Link}", dataRow["NS_LinkAddress"].ToString());
                        else
                        {
                            string subChannelFolder = dataRow["NT_TempletFolderAddress"].ToString().Trim();
                            if (!subChannelFolder.Equals("")) subChannelFolder = subChannelFolder + "/";

                            if (webInfo.IsBogusStatic)
                                if (webInfo.IsNewsDomain && dataRow["DomainName"].ToString() != "")
                                {
                                    labelBody = labelBody.Replace("{NS:XY_Link}", allDomainName + "content-" + dataRow["NS_ID"].ToString() + "." + webInfo.WebSuffix);
                                }
                                else
                                {
                                    labelBody = labelBody.Replace("{NS:XY_Link}", webInfo.WebDomain + "news/" + subChannelFolder + "content-" + dataRow["NS_ID"].ToString() + "." + webInfo.WebSuffix);
                                }
                            else
                            {
                                if (webInfo.IsNewsDomain && dataRow["DomainName"].ToString() != "")
                                {
                                    labelBody = labelBody.Replace("{NS:XY_Link}", allDomainName + "content." + webInfo.WebSuffix + "?ns_id=" + dataRow["NS_ID"].ToString());
                                }
                                else
                                {
                                    labelBody = labelBody.Replace("{NS:XY_Link}", webInfo.WebDomain + "news/" + subChannelFolder + "content." + webInfo.WebSuffix + "?ns_id=" + dataRow["NS_ID"].ToString());
                                }
                            }
                        }
                    }
                }
                if (labelBody.Contains("{NS:XY_URL}"))
                {
                    string subChannelFolder = dataRow["NT_TempletFolderAddress"].ToString().Trim();
                    if (!subChannelFolder.Equals("")) subChannelFolder = subChannelFolder + "/";
                    if (dataRow["DomainName"].ToString() != "")
                    {
                        allDomainName = webInfo.GetSubDomain(dataRow["DomainName"].ToString());
                    }

                    if (dataRow["NS_Type"].ToString() == "3")
                    {
                        if (dataRow["NS_LinkAddress"].ToString() != "")
                            labelBody = labelBody.Replace("{NS:XY_URL}", dataRow["NS_LinkAddress"].ToString());
                        else
                        {
                            if (webInfo.IsBogusStatic)
                                if (webInfo.IsNewsDomain && dataRow["DomainName"].ToString() != "")
                                {
                                    labelBody = labelBody.Replace("{NS:XY_URL}", allDomainName + "content-" + dataRow["NS_ID"].ToString() + "." + webInfo.WebSuffix);
                                }
                                else
                                {
                                    labelBody = labelBody.Replace("{NS:XY_URL}", webInfo.WebDomain + "news/" + subChannelFolder + "content-" + dataRow["NS_ID"].ToString() + "." + webInfo.WebSuffix);
                                }
                            else
                            {
                                if (webInfo.IsNewsDomain && dataRow["DomainName"].ToString() != "")
                                {
                                    labelBody = labelBody.Replace("{NS:XY_URL}", allDomainName + "content." + webInfo.WebSuffix + "?ns_id=" + dataRow["NS_ID"].ToString());
                                }
                                else
                                {
                                    labelBody = labelBody.Replace("{NS:XY_URL}", webInfo.WebDomain + "news/" + subChannelFolder + "content." + webInfo.WebSuffix + "?ns_id=" + dataRow["NS_ID"].ToString());
                                }
                            }

                        }
                    }
                    else
                    {
                        if (dataRow["NS_HTMLPage"].ToString() != "")
                            labelBody = labelBody.Replace("{NS:XY_URL}", webInfo.WebDomain + dataRow["NS_HTMLPage"].ToString());
                        else
                        {
                            if (webInfo.IsBogusStatic)
                                if (webInfo.IsNewsDomain && dataRow["DomainName"].ToString() != "")
                                {
                                    labelBody = labelBody.Replace("{NS:XY_URL}", allDomainName + "content-" + dataRow["NS_ID"].ToString() + "." + webInfo.WebSuffix);
                                }
                                else
                                {
                                    labelBody = labelBody.Replace("{NS:XY_URL}", webInfo.WebDomain + "news/" + subChannelFolder + "content-" + dataRow["NS_ID"].ToString() + "." + webInfo.WebSuffix);
                                }
                            else
                            {
                                if (webInfo.IsNewsDomain && dataRow["DomainName"].ToString() != "")
                                {
                                    labelBody = labelBody.Replace("{NS:XY_URL}", allDomainName + "content." + webInfo.WebSuffix + "?ns_id=" + dataRow["NS_ID"].ToString());
                                }
                                else
                                {
                                    labelBody = labelBody.Replace("{NS:XY_URL}", webInfo.WebDomain + "news/" + subChannelFolder + "content." + webInfo.WebSuffix + "?ns_id=" + dataRow["NS_ID"].ToString());
                                }
                            }
                        }
                    }
                }

                if (labelBody.Contains("{NS:XY_Click}"))
                    labelBody = labelBody.Replace("{NS:XY_Click}", dataRow["NS_Count"].ToString());

                //资讯图片地址(为兼容之前字段保留)
                if (labelBody.Contains("{NS:XY_SmallPicPath}"))
                {
                    if (IsHaveColumn(dataRow, "IsHasImage"))
                    {
                        if (dataRow["IsHasImage"].ToString() != "0")
                        {
                            long infoId = Core.MyConvert.GetInt64(dataRow["NS_ID"].ToString());

                            string imgUrl = Business.Attachment.GetInfoDefaultImgHref(XYECOM.Model.AttachmentItem.News, infoId);

                            labelBody = labelBody.Replace("{NS:XY_SmallPicPath}", imgUrl);
                        }
                        else
                        {
                            if (!dataRow["NS_PicUrl"].ToString().Equals(""))
                            {
                                labelBody = labelBody.Replace("{NS:XY_PicPath}", dataRow["NS_PicUrl"].ToString());
                            }
                            else
                            {
                                labelBody = labelBody.Replace("{NS:XY_SmallPicPath}", SYS_NOIMAGE_PATH);
                            }
                        }
                    }
                }
                //资讯图片地址
                if (labelBody.Contains("{NS:XY_PicPath}"))
                {
                    if (IsHaveColumn(dataRow, "IsHasImage"))
                    {
                        if (dataRow["IsHasImage"].ToString() != "0")
                        {
                            long infoId = Core.MyConvert.GetInt64(dataRow["NS_ID"].ToString());

                            string imgUrl = Business.Attachment.GetInfoDefaultImgHref(XYECOM.Model.AttachmentItem.News, infoId);

                            labelBody = labelBody.Replace("{NS:XY_PicPath}", imgUrl);
                        }
                        else
                        {
                            if (!dataRow["NS_PicUrl"].ToString().Equals(""))
                            {
                                labelBody = labelBody.Replace("{NS:XY_PicPath}", dataRow["NS_PicUrl"].ToString());
                            }
                            else
                            {
                                labelBody = labelBody.Replace("{NS:XY_PicPath}", SYS_NOIMAGE_PATH);
                            }
                        }
                    }
                }

                if (labelBody.Contains("{NS:XY_Attachment}"))
                {
                    if (IsHaveColumn(dataRow, "NS_ID"))
                    {
                        string attachment = "";
                        long infoId = Core.MyConvert.GetInt64(dataRow["NS_ID"].ToString());

                        XYECOM.Business.Attachment attBll = new XYECOM.Business.Attachment();

                        DataTable dt = attBll.GetDataTable(infoId, XYECOM.Model.AttachmentItem.News, XYECOM.Model.UploadFileType.File);

                        string divfmt = "<div class=\"attachment\"><a href=\"{0}\">附件{1}</a></div>";

                        int aIndex = 1;
                        foreach (DataRow row in dt.Rows)
                        {
                            XYECOM.Model.ServerInfo info = new XYECOM.Business.Server().GetItem(Core.MyConvert.GetInt32(row["S_ID"].ToString()));
                            attachment += string.Format(divfmt, info.S_URL + row["At_Path"], aIndex++);
                        }
                        labelBody = labelBody.Replace("{NS:XY_Attachment}", attachment);
                    }
                }               

                //地区标识
                if (labelBody.Contains("{NS:XY_AreaFlag}"))
                {
                    string areaName = "";
                    if (IsHaveColumn(dataRow, "AreaIds"))
                    {
                        //=========================================================================/
                        int aId = XYECOM.Core.MyConvert.GetInt32(dataRow["AreaIds"].ToString().Split(',')[1]);

                        if (aId > 0)
                        {
                            XYECOM.Model.AreaInfo aInfo = new XYECOM.Business.Area().GetItem(aId);
                            if (null != aInfo) areaName = aInfo.Name;
                        }
                        //=========================================================================/
                    }
                    labelBody = labelBody.Replace("{NS:XY_AreaFlag}", areaName);
                }
            }
            #endregion

            #region 广告
            if (labelFlagName.Equals("advertisinglist"))
            {
                if (labelBody.Contains("{AD:XY_AdInfo}"))
                {
                    int adType = XYECOM.Core.MyConvert.GetInt16(dataRow["AD_Type"].ToString());
                    string codeBody = "";
                    string openMode = "";
                    string href = webInfo.WebDomain + "common/AdsClick.aspx?ad=" + dataRow["AD_ID"];

                    if (dataRow["AD_OpenType"].ToString().ToLower().Equals("true")) openMode = " target =\"_blank\" ";

                    if (adType == (short)XYECOM.Model.AdType.Text)
                        codeBody = "<a href=\"" + href + "\" " + openMode + "><span style=\"font-size:" + dataRow["AD_Size"].ToString() + "; color:" + dataRow["AD_Color"].ToString() + "; ont-family:'" + dataRow["AD_Font"].ToString() + "';\" >" + dataRow["AD_NoteText"].ToString() + "</span></a>";

                    if (adType == (short)Model.AdType.Image)
                    {
                        string imagePath = dataRow["AD_PicURL"].ToString();

                        if (dataRow["AD_PicURL"].ToString().ToLower().Equals("image"))
                            imagePath = dataRow["S_URL"].ToString() + dataRow["AT_Path"].ToString();

                        codeBody = "<a href=\"" + href + "\" " + openMode + "><img style=\"width:" + dataRow["AD_Width"].ToString() + "px;height:" + dataRow["AD_High"].ToString() + "px;border:0;\" alt=\"" + dataRow["AD_Letter"].ToString() + "\" src=\"" + imagePath + "\" /></a>";
                    }

                    if (adType == (short)Model.AdType.Flash)
                    {
                        codeBody = "<script type=\"text/javascript\" src=\"" + webInfo.WebDomain + "ad/" + dataRow["AD_JSname"].ToString() + "\" ></script>";
                    }

                    if (adType == (short)Model.AdType.Code)
                    {
                        codeBody = dataRow["AD_CodeContent"].ToString();
                    }

                    labelBody = labelBody.Replace("{AD:XY_AdInfo}", codeBody);
                }

                if (labelBody.Contains("{AD:XY_Description}"))
                {
                    labelBody = labelBody.Replace("{AD:XY_Description}", dataRow["AD_Alt"].ToString());
                }
            }
            #endregion

            #region 专题
            else if (labelFlagName.Equals("topiclist") || labelFlagName.Equals("topicpagelist"))
            {
                if (labelBody.Contains("{TP:XY_ID}"))
                    labelBody = labelBody.Replace("{TP:XY_ID}", dataRow["ID"].ToString());
                if (labelBody.Contains("{TP:XY_CName}"))
                    labelBody = labelBody.Replace("{TP:XY_CName}", queryParam.TitleFontNumbers > 0 ? XYECOM.Core.Utils.IsLength(queryParam.TitleFontNumbers, dataRow["CName"].ToString()) : dataRow["CName"].ToString());
                if (labelBody.Contains("{TP:XY_EName}"))
                    labelBody = labelBody.Replace("{TP:XY_EName}", queryParam.TitleFontNumbers > 0 ? XYECOM.Core.Utils.IsLength(queryParam.TitleFontNumbers, dataRow["EName"].ToString()) : dataRow["EName"].ToString());
                if (labelBody.Contains("{TP:XY_TPCID}"))
                    labelBody = labelBody.Replace("{TP:XY_TPCID}", dataRow["TCID"].ToString());
                if (labelBody.Contains("{TP:XY_TPCName}"))
                    labelBody = labelBody.Replace("{TP:XY_TPCName}", dataRow["TCName"].ToString());

                if (labelBody.Contains("{TP:XY_URL}"))
                {
                    string url = "";

                    if (webInfo.IsTopicDomain)
                    {
                        string ename = dataRow["EName"].ToString().Trim();
                        bool isDomain = XYECOM.Core.MyConvert.GetBoolean(dataRow["IsDomain"].ToString());

                        if (isDomain && !ename.Equals(""))
                        {
                            url = webInfo.GetSubDomain(ename) + "index." + webInfo.WebSuffix;
                        }
                    }

                    if (url.Equals(""))
                    {
                        url = webInfo.WebDomain + dataRow["URL"].ToString().Substring(1).Replace(".aspx", "." + webInfo.WebSuffix);
                    }

                    labelBody = labelBody.Replace("{TP:XY_URL}", url);
                }

                if (labelBody.Contains("{TP:XY_AddTime}"))
                    labelBody = labelBody.Replace("{TP:XY_AddTime}", dataRow["AddTime"].ToString());
                if (labelBody.Contains("{TP:XY_HTMLPage}"))
                    labelBody = labelBody.Replace("{TP:XY_HTMLPage}", dataRow["HTMLPage"].ToString());
            }
            #endregion

            #region 热门关键字
            if (labelFlagName.Equals("hotkeyword"))
            {
                if (labelBody.Contains("{hk:xy_keyword}"))
                {
                    labelBody = labelBody.Replace("{hk:xy_keyword}", dataRow["sk_name"].ToString());
                }

                if (labelBody.Contains("{hk:xy_clicknum}"))
                {
                    labelBody = labelBody.Replace("{hk:xy_clicknum}", dataRow["sk_count"].ToString());
                }

                if (labelBody.Contains("{hk:xy_url}"))
                {
                    labelBody = labelBody.Replace("{hk:xy_url}", GetHotKeywordUrl(dataRow["sk_sort"].ToString(), dataRow["sk_name"].ToString(), queryParam.ToPage));
                }
            }
            #endregion

            #region 企业新闻
            if (labelFlagName.Equals("usernews"))
            {
                if (labelBody.Contains("{un:xy_title}"))
                {
                    if (IsHaveColumn(dataRow, "n_title"))
                    {
                        if (queryParam.TitleFontNumbers != 0)
                            labelBody = labelBody.Replace("{un:xy_title}", XYECOM.Core.Utils.IsLength(queryParam.TitleFontNumbers, XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), dataRow["n_Title"].ToString())));
                        else
                            labelBody = labelBody.Replace("{un:xy_title}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(XYECOM.Core.MyConvert.GetInt32(dataRow["UG_ID"].ToString()), dataRow["n_title"].ToString()));
                    }
                }

                if (labelBody.Contains("{un:xy_content}"))
                    labelBody = labelBody.Replace("{un:xy_content}", dataRow["n_content"].ToString());

                if (labelBody.Contains("{un:xy_addtime}"))
                {
                    if (queryParam.DateFormat != "")
                        labelBody = labelBody.Replace("{un:xy_addtime}", FormatDateTime(dataRow["N_AddTime"].ToString(), queryParam.DateFormat));
                    else
                        labelBody = labelBody.Replace("{un:xy_addtime}", dataRow["N_AddTime"].ToString());
                }

                if (labelBody.Contains("{un:xy_url}"))
                {
                    if (webInfo.IsBogusStatic)
                        labelBody = labelBody.Replace("{un:xy_url}", webInfo.WebDomain + "shop/" + dataRow["u_name"].ToString() + "/newsinfo-" + dataRow["N_ID"].ToString() + "." + webInfo.WebSuffix);
                    else
                        labelBody = labelBody.Replace("{un:xy_url}", webInfo.WebDomain + "shop/newsinfo." + webInfo.WebSuffix + "?u_name=" + dataRow["u_name"].ToString() + "&n_id=" + dataRow["N_ID"].ToString());
                }
            }
            #endregion

            #region 用户新闻
            if (labelFlagName.Equals("usernewslist"))
            {
                //资讯标题
                if (labelBody.Contains("{UNS:XY_TitleAll}"))
                    labelBody = labelBody.Replace("{UNS:XY_TitleAll}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(dataRow["N_title"].ToString()));
                //资讯栏目
                if (labelBody.Contains("{UNS:XY_TName}"))
                    labelBody = labelBody.Replace("{UNS:XY_TName}", dataRow["Name"].ToString());

                //资讯副标题
                if (labelBody.Contains("{UNS:XY_CurtTitle}"))
                    labelBody = labelBody.Replace("{NS:XY_CurtTitle}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(dataRow["TowName"].ToString()));

                //资讯导读
                if (labelBody.Contains("{UNS:XY_NaviContentAll}"))
                    labelBody = labelBody.Replace("{NS:XY_NaviContentAll}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(dataRow["Less"].ToString()));

                //资讯内容
                if (labelBody.Contains("{UNS:XY_Content}"))
                    labelBody = labelBody.Replace("{UNS:XY_Content}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(dataRow["n_content"].ToString()));

                //资讯作者
                if (labelBody.Contains("{UNS:XY_Author}"))
                    labelBody = labelBody.Replace("{UNS:XY_Author}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(dataRow["Author"].ToString()));

                //资讯来源
                if (labelBody.Contains("{UNS:XY_Source}"))
                    labelBody = labelBody.Replace("{NS:XY_Source}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(dataRow["Origin'"].ToString()));

                //资讯关键字
                if (labelBody.Contains("{UNS:XY_KeyWord}"))
                    labelBody = labelBody.Replace("{UNS:XY_KeyWord}", XYECOM.Business.FiltrateKeyWord.LeachKeyWord(dataRow["KeyWord"].ToString()));

                //资讯添加时间
                if (labelBody.Contains("{UNS:XY_AddTime}"))
                {
                    if (queryParam.DateFormat != "")
                        labelBody = labelBody.Replace("{UNS:XY_AddTime}", FormatDateTime(dataRow["N_AddTime"].ToString(), queryParam.DateFormat));
                    else
                        labelBody = labelBody.Replace("{UNS:XY_AddTime}", dataRow["N_AddTime"].ToString());
                }

                //资讯关键字
                if (labelBody.Contains("{UNS:XY_Click}"))
                    labelBody = labelBody.Replace("{UNS:XY_Click}", dataRow["Count"].ToString());

                //资讯链接地址
                if (labelBody.Contains("{UNS:XY_URL}"))
                {
                    if (webInfo.IsBogusStatic)
                        labelBody = labelBody.Replace("{UNS:XY_URL}", webInfo.WebDomain + "shop/" + dataRow["U_Name"].ToString() + "/newsinfo-" + dataRow["N_ID"].ToString() + "." + webInfo.WebSuffix);
                    else
                        labelBody = labelBody.Replace("{UNS:XY_URL}", webInfo.WebDomain + "shop/newsinfo." + webInfo.WebSuffix + "?u_name=" + dataRow["U_Name"].ToString() + "&n_id=" + dataRow["N_ID"].ToString());
                }
            }
            #endregion

            #region 百科
            if (labelFlagName.Equals("baikelist") || labelFlagName.Equals("baikepagelist"))
            {
                if (labelBody.Contains("{BK:XY_LemmaName}"))
                    labelBody = labelBody.Replace("{BK:XY_LemmaName}", dataRow["LemmaName"].ToString());

                if (labelBody.Contains("{BK:XY_Reference}"))
                    labelBody = labelBody.Replace("{BK:XY_Reference}", dataRow["Reference"].ToString());

                if (labelBody.Contains("{BK:XY_LemmaCategory}"))
                {
                    string cateName = "未知";

                    string ids = Core.Utils.RemoveComma(dataRow["LemmaCategory"].ToString());

                    string[] aryId = ids.Split(',');

                    int cId = Core.MyConvert.GetInt32(aryId[0]);

                    if (cId > 0)
                    {
                        XYECOM.Model.LemmaCategoryInfo lcInfo = new Business.LemmaCategory().GetItem(cId);

                        if (lcInfo != null) cateName = lcInfo.CategoryName;
                    }

                    labelBody = labelBody.Replace("{BK:XY_LemmaCategory}", cateName);
                }

                if (labelBody.Contains("{BK:XY_ExtendRead}"))
                    labelBody = labelBody.Replace("{BK:XY_ExtendRead}", dataRow["ExtendRead"].ToString());

                if (labelBody.Contains("{BK:XY_Creator}"))
                {
                    //Model.GeneralUserInfo info = Business.CheckUser.GetUserInfo(XYECOM.Core.MyConvert.GetInt64(dataRow["Creator"].ToString()));
                    labelBody = labelBody.Replace("{BK:XY_Creator}", dataRow["Creator"].ToString());
                }

                if (labelBody.Contains("{BK:XY_CreateTime}"))
                {
                    if (queryParam.DateFormat != "")
                        labelBody = labelBody.Replace("{BK:XY_CreateTime}", FormatDateTime(dataRow["CreateTime"].ToString(), queryParam.DateFormat));
                    else
                        labelBody = labelBody.Replace("{BK:XY_CreateTime}", dataRow["CreateTime"].ToString());
                }

                if (labelBody.Contains("{BK:XY_EditTimes}"))
                    labelBody = labelBody.Replace("{BK:XY_EditTimes}", dataRow["EditTimes"].ToString());

                if (labelBody.Contains("{BK:XY_BrowseTimes}"))
                    labelBody = labelBody.Replace("{BK:XY_BrowseTimes}", dataRow["BrowseTimes"].ToString());

                if (labelBody.Contains("{BK:XY_Synonyms}"))
                    labelBody = labelBody.Replace("{BK:XY_Synonyms}", dataRow["Synonyms"].ToString());

                if (labelBody.Contains("{BK:XY_EnName}"))
                    labelBody = labelBody.Replace("{BK:XY_EnName}", dataRow["EnName"].ToString());

                if (labelBody.Contains("{BK:XY_Content}"))
                {
                    if (queryParam.NewsLeadinFontNumber > 0)
                    {
                        labelBody = labelBody.Replace("{BK:XY_Content}", XYECOM.Core.Utils.IsLength(queryParam.NewsLeadinFontNumber, XYECOM.Business.FiltrateKeyWord.LeachKeyWord(dataRow["Content"].ToString())));
                    }
                    else
                    {
                        labelBody = labelBody.Replace("{BK:XY_Content}", dataRow["Content"].ToString());
                    }
                }

                if (labelBody.Contains("{BK:XY_LastModiyTime}"))
                {
                    if (queryParam.DateFormat != "")
                        labelBody = labelBody.Replace("{BK:XY_LastModiyTime}", FormatDateTime(dataRow["LastModiyTime"].ToString(), queryParam.DateFormat));
                    else
                        labelBody = labelBody.Replace("{BK:XY_LastModiyTime}", dataRow["LastModiyTime"].ToString());
                }

                if (labelBody.Contains("{BK:XY_Picture}"))
                {
                    long infoId = Core.MyConvert.GetInt64(dataRow["Picture"].ToString());

                    string imgUrl = Business.Attachment.GetInfoDefaultImgHref(XYECOM.Model.AttachmentItem.BaikeImg, infoId);

                    labelBody = labelBody.Replace("{BK:XY_Picture}", imgUrl);
                }

                if (labelBody.Contains("{BK:XY_url}"))
                {
                    if (webInfo.IsBogusStatic)
                        labelBody = labelBody.Replace("{BK:XY_url}", webInfo.WebDomain + "baike/view-" + dataRow["LemmaId"].ToString() + "." + webInfo.WebSuffix);
                    else
                        labelBody = labelBody.Replace("{BK:XY_url}", webInfo.WebDomain + "baike/view." + webInfo.WebSuffix + "?lid=" + dataRow["LemmaId"].ToString());
                }
            }

            #endregion

            #region 网上调查
            if (labelFlagName.Equals("votelist"))
            {
                if (labelFlagName.Equals("votelist"))
                {
                    if (labelBody.Contains("{vote:xy_title}"))
                    {
                        if (IsHaveColumn(dataRow, "title"))
                        {
                            labelBody = labelBody.Replace("{vote:xy_title}", dataRow["title"].ToString());
                        }
                    }

                    if (labelBody.Contains("{vote:xy_desc}"))
                    {
                        if (IsHaveColumn(dataRow, "desc"))
                        {
                            labelBody = labelBody.Replace("{vote:xy_desc}", dataRow["desc"].ToString());
                        }
                    }

                    if (labelBody.Contains("{vote:xy_url}"))
                    {
                        if (IsHaveColumn(dataRow, "voteId"))
                        {
                            labelBody = labelBody.Replace("{vote:xy_url}", webInfo.WebDomain + "vote." + webInfo.WebSuffix + "?voteid=" + dataRow["voteId"].ToString());
                        }
                    }
                }
            }
            #endregion

            #region 团购
            if (labelFlagName.Equals("teambuylist") || labelFlagName.Equals("teambuypagelist"))
            {
                if (labelBody.Contains("{TB:Url}") || labelBody.Contains("{TB:Image}") || labelBody.Contains("{TB:Id}"))
                {
                    string infoId = dataRow["Id"].ToString();

                    if (labelBody.Contains("{TB:Url}"))
                    {
                        string htmlpage = dataRow["HtmlPage"].ToString();
                        if (!string.IsNullOrEmpty(htmlpage))
                        {
                            labelBody = labelBody.Replace("{TB:Url}", webInfo.WebDomain + "/" + htmlpage);
                        }
                        else
                        {
                            if (dataRow["IsPlatForm"].ToString() == "True")
                            {
                                if (webInfo.IsBogusStatic)
                                {
                                    labelBody = labelBody.Replace("{TB:Url}", string.Format("{0}teambuy/details-{1}.{2}", webInfo.WebDomain, infoId, webInfo.WebSuffix));
                                }
                                else
                                {
                                    labelBody = labelBody.Replace("{TB:Url}", string.Format("{0}teambuy/detail.{2}?tbid={1}", webInfo.WebDomain, infoId, webInfo.WebSuffix));
                                }
                            }
                            else
                            {
                                int userid = XYECOM.Core.MyConvert.GetInt32(dataRow["userid"].ToString());
                                Model.GeneralUserInfo f = Business.CheckUser.GetUserInfo(userid);
                                if (f != null)
                                {
                                    labelBody = labelBody.Replace("{TB:Url}", string.Format("{0}tbdetail-{1}.{2}", f.domain, infoId, webInfo.WebSuffix));
                                }
                            }
                        }
                    }

                    if (labelBody.Contains("{TB:Image}"))
                    {
                        labelBody = labelBody.Replace("{TB:Image}", XYECOM.Business.Attachment.GetInfoDefaultImgHref(Model.AttachmentItem.TeamBuy, XYECOM.Core.MyConvert.GetInt32(infoId)));
                    }

                    if (labelBody.Contains("{TB:Id}"))
                    {
                        labelBody = labelBody.Replace("{TB:Id}", infoId);
                    }
                }

                if (labelBody.Contains("{TB:Address}"))
                {
                    labelBody = labelBody.Replace("{TB:Address}", dataRow["Address"].ToString());
                }
                if (labelBody.Contains("{TB:CompanyName}"))
                {
                    labelBody = labelBody.Replace("{TB:CompanyName}", dataRow["CompanyName"].ToString());
                }
                if (labelBody.Contains("{TB:Telephone}"))
                {
                    labelBody = labelBody.Replace("{TB:Telephone}", dataRow["Telephone"].ToString());
                }
                //if (strLabelBody.Contains("{TB:IsRecommend}"))
                //    columns.Append(",IsRecommend");
                //if (strLabelBody.Contains("{TB:IsUserRecommend}"))
                //    columns.Append(",IsUserRecommend");
                //if (strLabelBody.Contains("{TB:IsPlat}"))
                //    columns.Append(",IsPlatform");
                if (labelBody.Contains("{TB:LoginName}"))
                {
                    labelBody = labelBody.Replace("{TB:LoginName}", dataRow["LoginName"].ToString());
                }

                if (labelBody.Contains("{TB:UserId}"))
                {
                    labelBody = labelBody.Replace("{TB:UserId}", dataRow["UserId"].ToString());
                }


                if (labelBody.Contains("{TB:StartDate}"))
                {
                    string startdate = dataRow["StartDate"].ToString();
                    DateTime sdate = XYECOM.Core.MyConvert.GetDateTime(startdate);
                    labelBody = labelBody.Replace("{TB:StartDate}", sdate.ToString("yyyy-MM-dd hh:mm:ss"));
                }

                if (labelBody.Contains("{TB:EndDate}"))
                {
                    string enddate = dataRow["EndDate"].ToString();
                    DateTime edate = XYECOM.Core.MyConvert.GetDateTime(enddate);
                    labelBody = labelBody.Replace("{TB:EndDate}", edate.ToString("yyyy-MM-dd hh:mm:ss"));
                }

                if (labelBody.Contains("{TB:PubLishDate}"))
                {
                    string publishDate = dataRow["PubLishDate"].ToString();
                    DateTime pdate = XYECOM.Core.MyConvert.GetDateTime(publishDate);
                    labelBody = labelBody.Replace("{TB:PubLishDate}", pdate.ToString("yyyy-MM-dd hh:mm:ss"));
                }

                if (labelBody.Contains("{TB:SucPeopleNum}"))
                {
                    labelBody = labelBody.Replace("{TB:SucPeopleNum}", dataRow["SucPeopleNum"].ToString());
                }

                if (labelBody.Contains("{TB:KeyWord}"))
                {
                    labelBody = labelBody.Replace("{TB:KeyWord}", dataRow["KeyWord"].ToString());
                }
                if (labelBody.Contains("{TB:ProductId}"))
                {
                    labelBody = labelBody.Replace("{TB:ProductId}", dataRow["ProductId"].ToString());
                }
                if (labelBody.Contains("{TB:AllTitle}"))
                {
                    labelBody = labelBody.Replace("{TB:AllTitle}", dataRow["Title"].ToString());
                }
                if (labelBody.Contains("{TB:Title}"))
                {
                    labelBody = labelBody.Replace("{TB:Title}", XYECOM.Core.Utils.IsLength(queryParam.TitleFontNumbers, XYECOM.Core.Utils.RemoveHTML(dataRow["Title"].ToString())));
                }
                if (labelBody.Contains("{TB:Description}"))
                {
                    labelBody = labelBody.Replace("{TB:Description}", XYECOM.Core.Utils.IsLength(queryParam.ProductSummaryFontNumbers, XYECOM.Core.Utils.RemoveHTML(dataRow["Description"].ToString())));
                }
                if (labelBody.Contains("{TB:LimitCountOfBuy}"))
                {
                    labelBody = labelBody.Replace("{TB:LimitCountOfBuy}", dataRow["LimitCountOfBuy"].ToString());
                }
                if (labelBody.Contains("{TB:SubScription}"))
                {
                    labelBody = labelBody.Replace("{TB:SubScription}", XYECOM.Core.MyConvert.GetDecimal(dataRow["SubScription"].ToString()).ToString("F"));
                }

                if (labelBody.Contains("{TB:MarketPrice}") || labelBody.Contains("{TB:Discount}")
                || labelBody.Contains("{TB:Saved}") || labelBody.Contains("{TB:CurrentPrice}")
                || labelBody.Contains("{TB:Joins}"))
                {
                    //MarketPrice,CurrentJoin
                    //当前参与人数
                    string strJoins = dataRow["CurrentJoin"].ToString();
                    int curJoins = XYECOM.Core.MyConvert.GetInt32(strJoins);
                    //市场价
                    string strMarketPrice = dataRow["MarketPrice"].ToString();
                    decimal marketPrice = XYECOM.Core.MyConvert.GetDecimal(strMarketPrice);
                    //团购编号
                    string strId = dataRow["Id"].ToString();
                    int infoId = XYECOM.Core.MyConvert.GetInt32(strId);
                    //成团人数
                    string strSucPeopleNum = dataRow["SucPeopleNum"].ToString();
                    int sucPeopleNum = XYECOM.Core.MyConvert.GetInt32(strSucPeopleNum);
                    //当前价格默认值
                    string strCurrentPrice = dataRow["CurrentPrice"].ToString();
                    decimal currentPrice = XYECOM.Core.MyConvert.GetDecimal(strCurrentPrice);

                    if (labelBody.Contains("{TB:Joins}"))
                    {
                        labelBody = labelBody.Replace("{TB:Joins}", strJoins);
                    }
                    if (labelBody.Contains("{TB:MarketPrice}"))
                    {
                        labelBody = labelBody.Replace("{TB:MarketPrice}", marketPrice.ToString("f2"));
                    }
                    if (curJoins > sucPeopleNum)
                    {
                        currentPrice = 0;
                    }

                    if (labelBody.Contains("{TB:CurrentPrice}"))
                    {
                        labelBody = labelBody.Replace("{TB:CurrentPrice}", currentPrice.ToString("f2"));
                    }
                    if (labelBody.Contains("{TB:Saved}"))
                    {
                        labelBody = labelBody.Replace("{TB:Saved}", (marketPrice - currentPrice).ToString("f2"));
                    }
                    if (labelBody.Contains("{TB:Discount}"))
                    {
                        if (marketPrice > 0)
                        {
                            labelBody = labelBody.Replace("{TB:Discount}", (currentPrice * 10 / marketPrice).ToString("F2"));
                        }
                        else
                        {
                            labelBody = labelBody.Replace("{TB:Discount}", "不划算。。");
                        }
                    }
                }
            }
            #endregion
            return labelBody;
        }
        #endregion

        /// <summary>
        /// 获取热门关键词连接
        /// </summary>
        /// <param name="moduleName">模块名称</param>
        /// <param name="keyword">关键词</param>
        /// <param name="toPage">目的页面</param>
        /// <returns></returns>
        private static string GetHotKeywordUrl(string moduleName, string keyword, string toPage)
        {
            string url = "";

            XYECOM.Configuration.WebInfo webInfo = XYECOM.Configuration.WebInfo.Instance;

            string pageSuffix = webInfo.WebSuffix;

            string sellLinkUrl = "/search/seller_search." + pageSuffix + "?flag={0}&keyword={1}";
            string sellBogueStaticLinkUrl = "/search/seller_search-{0}--{1}-------." + pageSuffix + "";

            string buyLinkUrl = "/search/buyer_search." + pageSuffix + "?flag={0}&keyword={1}";
            string buyBogueStaticLinkUrl = "/search/buyer_search-{0}--{1}-------." + pageSuffix + "";

            string jobLinkUrl = "/job/list." + pageSuffix + "?keyword={0}'";
            string bogusStaticJobLinkUrl = "/job/list-----{0}---." + pageSuffix + "";

            string newsLinkUrl = "/search/news_search." + pageSuffix + "?keyword={0}";
            string bogusStaticNewsLinkUrl = "/search/news_search---{0}-----." + pageSuffix + "";

            string srcUrl = "";

            XYECOM.Configuration.InfoType infoType = XYECOM.Configuration.InfoType.Sell;

            if (!toPage.Equals("") && toPage.Equals("求购页"))
                infoType = XYECOM.Configuration.InfoType.Buy;

            if (moduleName.Equals("news") || moduleName.Equals("job"))
            {
                if (webInfo.IsBogusStatic)
                    srcUrl = moduleName.Equals("news") ? bogusStaticNewsLinkUrl : bogusStaticJobLinkUrl;
                else
                    srcUrl = moduleName.Equals("news") ? newsLinkUrl : jobLinkUrl;

                url = String.Format(srcUrl, keyword);
            }
            else if (moduleName.Equals("brand") || moduleName.Equals("company"))
            {
                if (webInfo.IsBogusStatic)
                    srcUrl = sellBogueStaticLinkUrl;
                else
                    srcUrl = sellLinkUrl;

                url = String.Format(srcUrl, moduleName, keyword);
            }
            else
            {
                if (webInfo.IsBogusStatic)
                    srcUrl = infoType == XYECOM.Configuration.InfoType.Sell ? sellBogueStaticLinkUrl : buyBogueStaticLinkUrl;
                else
                    srcUrl = infoType == XYECOM.Configuration.InfoType.Sell ? sellLinkUrl : buyLinkUrl;

                url = String.Format(srcUrl, moduleName, keyword);
            }

            return url;
        }

        /// <summary>
        /// 行中是否包含指定的列
        /// </summary>
        /// <param name="dr"></param>
        /// <param name="strColumuName"></param>
        /// <returns></returns>
        private static bool IsHaveColumn(DataRow dr, string strColumuName)
        {
            for (int i = 0; i < dr.Table.Columns.Count; i++)
            {
                if (dr.Table.Columns[i].ColumnName.ToLower().Equals(strColumuName.ToLower()))
                    return true;
            }
            return false;
        }

        /// <summary>
        /// 根据指定的格式转化日期
        /// </summary>
        /// <param name="dateTime">日期</param>
        /// <param name="format">格式</param>
        /// <returns></returns>
        private static string FormatDateTime(string dateTime, string format)
        {
            string date = "";
            //自定
            try
            {
                date = XYECOM.Core.MyConvert.GetDateTime(dateTime).ToString(format);
            }
            catch
            {
                date = XYECOM.Core.MyConvert.GetDateTime(dateTime).ToString("yyyy-MM-dd");
            }

            return date;
        }

        /// <summary>
        /// 返回缩略图地址
        /// </summary>
        /// <param name="labelName">缩略图字段标签名称</param>
        /// <param name="dataRow">数据行</param>
        /// <param name="imageIndex">图片索引(1,2,3)</param>
        /// <returns></returns>
        private static string GetThumbnailiImagePath(string infoId, Model.AttachmentItem attItem, int imageIndex)
        {
            string path = SYS_NOIMAGE_PATH;

            long _InfoId = Core.MyConvert.GetInt64(infoId);

            Model.AttachmentInfo attInfo = Business.Attachment.GetTop1Info(attItem, _InfoId);

            if (attInfo == null) return path;

            if (attInfo.SmallImg != null)
            {
                return attInfo.SmallImg[imageIndex - 1];
            }

            if (attInfo.At_Path.Equals("")) return path;

            return attInfo.Server.S_URL + attInfo.At_Path;
        }

        /// <summary>
        /// 返回企业缩略图地址
        /// </summary>
        /// <param name="dataRow"></param>
        /// <param name="imageIndex"></param>
        /// <returns></returns>
        private static string GetUserThumbnailiImagePath(DataRow dataRow, int imageIndex)
        {
            string path = SYS_NOIMAGE_PATH;

            if (!IsHaveColumn(dataRow, "U_ID")) return path;

            long userId = Core.MyConvert.GetInt64(dataRow["U_ID"].ToString());

            Model.AttachmentInfo info = Business.Attachment.GetTop1Info(XYECOM.Model.AttachmentItem.Logo, userId);

            if (info == null) return path;

            if (info.SmallImg != null)
            {
                return info.SmallImg[imageIndex - 1];
            }

            if (info.At_Path.Equals("")) return path;

            return info.Server.S_URL + info.At_Path;
        }
    }
}
