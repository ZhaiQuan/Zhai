using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using XYECOM.SQLServer;
using XYECOM.Core.Data;
using XYECOM.Core;

namespace XYECOM.SQLServer
{
    /// <summary>
    /// 会员等级权限数据处理类
    /// </summary>
    public class UserGradePopedom:DataCache
    {
        /// <summary>
        /// 插入记录
        /// </summary>
        /// <param name="info">数据对象</param>
        /// <returns>影响行数</returns>
        public int Insert(XYECOM.Model.UserGradePopedomInfo info)
        {
            SqlParameter[] parm = new SqlParameter[]
            {
                new SqlParameter("@UG_ID",info.UG_ID)
            };

            int result= SqlHelper.ExecuteNonQuery(CommandType.StoredProcedure, "XYP_InsertUserGradePopedom", parm);

            UpdateCache();

            return result;
        }

        /// <summary>
        /// 更新记录
        /// </summary>
        /// <param name="info">数据对象</param>
        /// <returns>影响行数</returns>
        public int Update(XYECOM.Model.UserGradePopedomInfo info)
        {
            SqlParameter[] parm = new SqlParameter[]
            {
                new SqlParameter ("@UGP_ID",info.UGP_ID ),
                new SqlParameter ("@UG_ID",info.UG_ID ),
                new SqlParameter ("@UGP_IsShop",info.UGP_IsShop ),
                new SqlParameter ("@UGP_IsMessage",info.UGP_IsMessage ),
                new SqlParameter ("@UGP_RefurbishTime",info.UGP_RefurbishTime ),
                new SqlParameter ("@UGP_RefubishNum",info.UGP_RefubishNum ),
                new SqlParameter ("@UGP_RefubishTimes",info.UGP_RefubishTimes ),
                new SqlParameter ("@UGP_Faith",info.UGP_Faith ),
                new SqlParameter ("@UGP_IsPayMent",info.UGP_IsPayMent ),
                new SqlParameter ("@UGP_IsLeachKeyWord",info.UGP_IsLeachKeyWord ),
                new SqlParameter ("@UGP_IsSupplyLinkMathod",info.UGP_IsSupplyLinkMathod ),
                new SqlParameter ("@UGP_IsBuyLinkMathod",info.UGP_IsBuyLinkMathod ),
                new SqlParameter ("@UGP_IsSupplyMachiningLinkMathod",info.UGP_IsSupplyMachiningLinkMathod ),
                new SqlParameter ("@UGP_IsBuyMachiningLinkMathod",info.UGP_IsBuyMachiningLinkMathod ),
                new SqlParameter ("@UGP_IsBuinessLinkMathod",info.UGP_IsBuinessLinkMathod ),
                new SqlParameter ("@UGP_IsSurrogateLinkMathod",info.UGP_IsSurrogateLinkMathod ),
                new SqlParameter ("@UGP_IsSupplyServerLinkMathod",info.UGP_IsSupplyServerLinkMathod ),
                new SqlParameter ("@UGP_IsBuyServerLinkMathod",info.UGP_IsBuyServerLinkMathod ),
                new SqlParameter ("@UGP_IsExhibtionLinkMathod",info.UGP_IsExhibtionLinkMathod ),
                new SqlParameter ("@UGP_IsBrandLinkMathod",info.UGP_IsBrandLinkMathod ),
                new SqlParameter ("@UGP_IsJobLinkMathod",info.UGP_IsJobLinkMathod ),
                new SqlParameter ("@UGP_IsCompanyLinkMathod",info.UGP_IsCompanyLinkMathod ),
                new SqlParameter ("@SeeBySellOffer",info.SeeBySellOffer ),
                new SqlParameter ("@SeeByBuyOffer",info.SeeByBuyOffer ),
                new SqlParameter ("@SeeBySellMachining",info.SeeBySellMachining ),
                new SqlParameter ("@SeeByBuyMachining",info.SeeByBuyMachining ),
                new SqlParameter ("@SeeBySellBusiness",info.SeeBySellBusiness ),
                new SqlParameter ("@SeeByBuyBusiness",info.SeeByBuyBusiness ),
                new SqlParameter ("@SeeBySellService",info.SeeBySellService ),
                new SqlParameter ("@SeeByBuyService",info.SeeByBuyService ),
                new SqlParameter ("@SeeByExhibtion",info.SeeByExhibtion ),
                new SqlParameter ("@SeeByBrand",info.SeeByBrand ),
                new SqlParameter ("@SeeByJob",info.SeeByJob ),
                new SqlParameter ("@SeeByCompany",info.SeeByCompany ),
                new SqlParameter ("@AdviseDays",info.AdviseDays),
                new SqlParameter("@DebaseUserGrade",info.DebaseUserGrade),
                new SqlParameter("@IsQQOnLineTalk",info.IsIMOnlineTalk),
                new SqlParameter("@IsShowChargeNews",info.IsShowChargeNews),
                new SqlParameter("@UploadPicNum",info.UploadPicNum),
                new SqlParameter("@SeeContactsNum",info.SeeContactsNum),
                new SqlParameter("@MessageNum",info.MessageNum),
                new SqlParameter("@LimitDate",info.LimitDate),
                new SqlParameter("@iscompanyprotype ",info.IsCompanyProType),
                new SqlParameter("@IsSubdomain",info.IsSubdomain),
                new SqlParameter("@IsBindingTopdomain",info.IsBindingTopdomain),
                new SqlParameter("@Ticheng",info.Ticheng),
                new SqlParameter("@operationMargin",info.OperationMargin),
                new SqlParameter("@ContractPercent",info.ContractPercent)
            };

            int result = SqlHelper.ExecuteNonQuery(CommandType.StoredProcedure, "XYP_UpdateUserGradePopedom", parm);

            UpdateCache();

            return result;
        }

        /// <summary>
        /// 删除记录
        /// </summary>
        /// <param name="UGP_ID">记录Id</param>
        /// <returns>影响行数</returns>
        public int Delete(int UGP_ID)
        {
            SqlParameter[] parm = new SqlParameter[]
            {
                new SqlParameter ("@strwhere"," where UGP_ID="+UGP_ID .ToString ()),
                new SqlParameter ("@strTableName","b_UserGradePopedom")
            };

            int result= XYECOM.Core.Data.SqlHelper.DeleteByWhere("usp_DeleteByWhere", parm);

            UpdateCache();

            return result;
        }

        /// <summary>
        /// 获取数据
        /// </summary>
        /// <param name="userGradeId">等级Id</param>
        /// <returns>数据对象</returns>
        public Model.UserGradePopedomInfo GetItem(int userGradeId)
        {
            Model.UserGradePopedomInfo info = null;

            Object obj = GetCache();

            if (obj == null) return info;

            DataTable table = (DataTable)obj;

            DataRow[] rows = table.Select("UG_ID =" + userGradeId);

            if (rows != null && rows.Length > 0)
            {
                info = new XYECOM.Model.UserGradePopedomInfo();

                info.UGP_ID = XYECOM.Core.MyConvert.GetInt32(rows[0]["UGP_ID"].ToString());

                info.UG_ID = userGradeId;

                if (rows[0]["UGP_IsLeachKeyWord"].ToString().ToLower() == "true") info.UGP_IsLeachKeyWord = true;

                if (rows[0]["UGP_IsPayMent"].ToString().ToLower() == "true") info.UGP_IsPayMent = true;

                if (rows[0]["UGP_IsShop"].ToString().ToLower() == "true") info.UGP_IsShop = true;

                if (rows[0]["UGP_IsMessage"].ToString().ToLower() == "true") info.UGP_IsMessage = true;

                if (rows[0]["UGP_RefurbishTime"].ToString() != "") info.UGP_RefurbishTime = Convert.ToInt32(rows[0]["UGP_RefurbishTime"].ToString());

                if (rows[0]["UGP_RefubishNum"].ToString() != "") info.UGP_RefubishNum = Convert.ToInt32(rows[0]["UGP_RefubishNum"].ToString());

                if (rows[0]["UGP_RefubishTimes"].ToString() != "") info.UGP_RefubishTimes = Convert.ToInt32(rows[0]["UGP_RefubishTimes"].ToString());

                info.UGP_Faith = XYECOM.Core.MyConvert.GetInt32(rows[0]["UGP_Faith"].ToString());

                if (rows[0]["UGP_IsSupplyLinkMathod"].ToString().ToLower() == "true") info.UGP_IsSupplyLinkMathod = true;

                if (rows[0]["UGP_IsBuyLinkMathod"].ToString().ToLower() == "true") info.UGP_IsBuyLinkMathod = true;

                if (rows[0]["UGP_IsSupplyMachiningLinkMathod"].ToString().ToLower() == "true") info.UGP_IsSupplyMachiningLinkMathod = true;

                if (rows[0]["UGP_IsBuyMachiningLinkMathod"].ToString().ToLower() == "true") info.UGP_IsBuyMachiningLinkMathod = true;

                if (rows[0]["UGP_IsBuinessLinkMathod"].ToString().ToLower() == "true") info.UGP_IsBuinessLinkMathod = true;

                if (rows[0]["UGP_IsSurrogateLinkMathod"].ToString().ToLower() == "true") info.UGP_IsSurrogateLinkMathod = true;

                if (rows[0]["UGP_IsSupplyServerLinkMathod"].ToString().ToLower() == "true") info.UGP_IsSupplyServerLinkMathod = true;

                if (rows[0]["UGP_IsBuyServerLinkMathod"].ToString().ToLower() == "true") info.UGP_IsBuyServerLinkMathod = true;

                if (rows[0]["UGP_IsExhibtionLinkMathod"].ToString().ToLower() == "true") info.UGP_IsExhibtionLinkMathod = true;

                if (rows[0]["UGP_IsBrandLinkMathod"].ToString().ToLower() == "true") info.UGP_IsBrandLinkMathod = true;

                if (rows[0]["UGP_IsJobLinkMathod"].ToString().ToLower() == "true") info.UGP_IsJobLinkMathod = true;

                if (rows[0]["UGP_IsCompanyLinkMathod"].ToString().ToLower() == "true") info.UGP_IsCompanyLinkMathod = true;

                if (rows[0]["SeeBySellOffer"].ToString().ToLower() == "true") info.SeeBySellOffer = true;

                if (rows[0]["SeeByBuyOffer"].ToString().ToLower() == "true") info.SeeByBuyOffer = true;

                if (rows[0]["SeeBySellMachining"].ToString().ToLower() == "true") info.SeeBySellMachining = true;

                if (rows[0]["SeeByBuyMachining"].ToString().ToLower() == "true") info.SeeByBuyMachining = true;

                if (rows[0]["SeeBySellBusiness"].ToString().ToLower() == "true") info.SeeBySellBusiness = true;

                if (rows[0]["SeeByBuyBusiness"].ToString().ToLower() == "true") info.SeeByBuyBusiness = true;

                if (rows[0]["SeeBySellService"].ToString().ToLower() == "true") info.SeeBySellService = true;

                if (rows[0]["SeeByBuyService"].ToString().ToLower() == "true") info.SeeByBuyService = true;

                if (rows[0]["SeeByExhibtion"].ToString().ToLower() == "true") info.SeeByExhibtion = true;

                if (rows[0]["SeeByBrand"].ToString().ToLower() == "true") info.SeeByBrand = true;

                if (rows[0]["SeeByJob"].ToString().ToLower() == "true") info.SeeByJob = true;

                if (rows[0]["SeeByCompany"].ToString().ToLower() == "true") info.SeeByCompany = true;

                info.AdviseDays = XYECOM.Core.MyConvert.GetInt32(rows[0]["AdviseDays"].ToString());

                info.DebaseUserGrade = XYECOM.Core.MyConvert.GetInt32(rows[0]["DebaseUserGrade"].ToString());

                if (rows[0]["IsQQOnLineTalk"].ToString().ToLower() == "true") info.IsIMOnlineTalk = true;

                if (rows[0]["IsShowChargeNews"].ToString().ToLower() == "true") info.IsShowChargeNews = true;

                info.UploadPicNum = XYECOM.Core.MyConvert.GetInt32(rows[0]["UploadPicNum"].ToString());

                info.SeeContactsNum = XYECOM.Core.MyConvert.GetInt32(rows[0]["SeeContactsNum"].ToString());

                info.MessageNum = rows[0]["MessageNum"].ToString();

                info.LimitDate = XYECOM.Core.MyConvert.GetInt32(rows[0]["LimitDate"].ToString());

                if (rows[0]["iscompanyprotype"].ToString().ToLower() == "true") info.IsCompanyProType = true;

                if (rows[0]["IsSubdomain"].ToString().ToLower() == "true") info.IsSubdomain = true;

                if (rows[0]["IsBindingTopdomain"].ToString().ToLower() == "true") info.IsBindingTopdomain = true;
                //info.IsViewJoinContact = Core.MyConvert.GetBoolean(reader["IsViewJoinContact"].ToString());
                info.OperationMargin = rows[0]["operationMargin"].ToString();
                info.Ticheng = rows[0]["Ticheng"].ToString();
                info.ContractPercent = rows[0]["ContractPercent"].ToString();
            }

            return info;
        }


        //public DataTable GetDataTable()
        //{
        //   SqlParameter[] parm = new SqlParameter[]
        //    {
        //        new SqlParameter ("@strWhere",""),
        //        new SqlParameter ("@strTableName","b_UserGradePopedom"),
        //        new SqlParameter ("@strOrder","")
        //    };

        //    return XYECOM.Core.Data.SqlHelper.ExecuteTable(CommandType.StoredProcedure,"XYP_SelectByWhere", parm);
        //}

        public override string SQL_Get_All
        {
            get { return "select * from b_UserGradePopedom"; }
        }
    }
}
