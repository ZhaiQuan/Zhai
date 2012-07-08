using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using XYECOM.Core.Data;
using XYECOM.Core;

namespace XYECOM.SQLServer
{
    /// <summary>
    /// ��Ա�ȼ�������
    /// </summary>
    public class UserGrade : DataCache
    {
        #region ����û��ȼ���Ϣ
        /// <summary>
        /// ����û��ȼ���Ϣ
        /// </summary>
        /// <param name="eug">�û��ȼ���Ϣ���������</param>
        /// <returns>���֡����ڵ������ʾ��ӳɹ�</returns>
        public int Insert(XYECOM.Model.UserGradeInfo info, out int userGradeId)
        {
            SqlParameter[] parm = new SqlParameter[]
                {
                new SqlParameter ("@UG_ID",info .GradeId ),
                new SqlParameter ("@UG_Name",info.GradeName),
                new SqlParameter ("@UG_Month",info.MonthlyRent ),
                new SqlParameter ("@UG_Year",info.AnnualRent ),   
                new SqlParameter ("@UG_SmallIconName",info.SmallIconName ),  
                new SqlParameter ("@UG_BigIconName",info.BigIconName )
                  
            };

            parm[0].Direction = ParameterDirection.Output;
            int err = 0;

            err = SqlHelper.ExecuteNonQuery(CommandType.StoredProcedure, "XYP_InsertUserGrade", parm);

            UpdateCache();

            if (parm[0].Value != null && parm[0].Value.ToString() != "")
            {
                userGradeId = Convert.ToInt16(parm[0].Value);
            }
            else
            {
                userGradeId = -1;
            }

            return err;
        }
        #endregion

        #region �޸��û��ȼ���Ϣ
        /// <summary>
        /// �޸��û��ȼ���Ϣ
        /// </summary>
        /// <param name="info">�û��ȼ���Ϣ���������</param>
        /// <returns>���֡����ڵ������ʾ�޸ĳɹ�</returns>
        public int Update(XYECOM.Model.UserGradeInfo info)
        {
            SqlParameter[] parm = new SqlParameter[]{
                new SqlParameter("@UG_ID",info.GradeId),
                new SqlParameter("@UG_Name",info.GradeName),
                new  SqlParameter("@UG_Month",info.MonthlyRent ),
                new SqlParameter("@UG_Year",info.AnnualRent ),
                new SqlParameter("@UG_SmallIconName",info.SmallIconName ),  
                new SqlParameter("@UG_BigIconName",info.BigIconName ),
                new SqlParameter("@UG_Order",info.OrderId),
            };

            int result = SqlHelper.ExecuteNonQuery(CommandType.StoredProcedure, "XYP_UpdateUserGrade", parm);

            UpdateCache();

            return result;
        }
        #endregion

        #region ɾ���û��ȼ���Ϣ
        /// <summary>
        /// ɾ���û��ȼ���Ϣ
        /// </summary>
        /// <param name="userGradeId">�û��ȼ����</param>
        /// <returns>���֡����ڵ������ʾɾ���ɹ�</returns>
        public int Delete(short userGradeId)
        {
            SqlParameter[] param = new SqlParameter[] 
            { 
                new SqlParameter("@strwhere","where UG_ID="+userGradeId.ToString()),
                new SqlParameter("@strTableName","b_UserGrade")
            };

            int result = XYECOM.Core.Data.SqlHelper.DeleteByWhere("usp_DeleteByWhere", param);

            UpdateCache();

            return result;
        }
        #endregion

        #region ��ȡ�û��ȼ���Ϣ
        /// <summary>
        /// ��ȡ���еȼ�����
        /// </summary>
        /// <returns>���ݱ����</returns>
        public DataTable GetDataTable()
        {
            Object obj = GetCache();

            if (obj == null) return new DataTable();

            DataTable table = (DataTable)obj;

            return table;
        }
        #endregion

        #region ��ȡ�û��ȼ���Ϣ
        /// <summary>
        /// ��ȡ���ݶ���
        /// </summary>
        /// <param name="userGradeId">�ȼ�Id</param>
        /// <returns>���ݶ���</returns>
        public XYECOM.Model.UserGradeInfo GetItem(int userGradeId)
        {
            XYECOM.Model.UserGradeInfo info = null;

            Object obj = GetCache();

            if (obj == null) return info;

            DataTable table = (DataTable)obj;

            DataRow[] rows = table.Select("UG_ID =" + userGradeId);

            if (rows != null && rows.Length > 0)
            {
                info = new XYECOM.Model.UserGradeInfo();

                info.GradeId = userGradeId;
                info.MonthlyRent = Convert.ToDecimal(rows[0]["UG_Month"].ToString());
                info.GradeName = rows[0]["UG_Name"].ToString();
                info.AnnualRent = Convert.ToDecimal(rows[0]["UG_Year"].ToString());
                info.SmallIconName = rows[0]["UG_SmallIconName"].ToString();
                info.BigIconName = rows[0]["UG_BigIconName"].ToString();
                info.OrderId = Convert.ToInt32(rows[0]["UG_Order"].ToString());
            }

            return info;
        }
        #endregion

        #region ��ȡ�����û��ȼ��ı�ź͵ȼ�����
        /// <summary>
        /// ��ȡ�����û��ȼ�����
        /// </summary>
        /// <returns></returns>
        public List<XYECOM.Model.UserGradeInfo> GetItems()
        {
            List<Model.UserGradeInfo> Infos = new List<XYECOM.Model.UserGradeInfo>();

            Object obj = GetCache();

            if (obj == null) return Infos;

            DataTable table = (DataTable)obj;

            foreach (DataRow row in table.Rows)
            {
                Model.UserGradeInfo info = new XYECOM.Model.UserGradeInfo();

                info.GradeId = Convert.ToInt32(row["UG_ID"].ToString());
                info.MonthlyRent = Convert.ToDecimal(row["UG_Month"].ToString());
                info.GradeName = row["UG_Name"].ToString();
                info.AnnualRent = Convert.ToDecimal(row["UG_Year"].ToString());
                info.SmallIconName = row["UG_SmallIconName"].ToString();
                info.BigIconName = row["UG_BigIconName"].ToString();
                info.OrderId = Convert.ToInt32(row["UG_Order"].ToString());

                Infos.Add(info);
            }

            return Infos;
        }
        #endregion

        /// <summary>
        /// ��ȡ�ȼ��µ��û�����
        /// </summary>
        /// <param name="userGradeId">�ȼ�Id</param>
        /// <returns>�û�����</returns>
        public int GetUserNumByGrade(string userGradeId)
        {
            object obj = SqlHelper.ExecuteScalar("select count(U_ID) from u_User where UG_ID=" + userGradeId);
            if (null != obj)
                return Core.MyConvert.GetInt32(obj.ToString());
            else
                return 0;
        }

        /// <summary>
        /// 
        /// </summary>
        public override string SQL_Get_All
        {
            get { return "select * from b_UserGrade"; }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="gradeIds"></param>
        /// <returns></returns>
        public List<Model.UserGradeInfo> GetItems(string gradeIds)
        {
            List<Model.UserGradeInfo> infos = new List<XYECOM.Model.UserGradeInfo>();

            string sql = "select * from b_UserGrade";
            if (!string.IsNullOrEmpty(gradeIds))
            {
                string tmp = XYECOM.Core.Utils.RemoveComma(gradeIds);
                if (!string.IsNullOrEmpty(tmp))
                {
                    sql += " where UG_ID in (" + tmp + ")";

                    DataTable table = XYECOM.Core.Data.SqlHelper.ExecuteTable(sql);

                    foreach (DataRow row in table.Rows)
                    {
                        Model.UserGradeInfo info = new XYECOM.Model.UserGradeInfo();

                        info.GradeId = Convert.ToInt32(row["UG_ID"].ToString());
                        info.MonthlyRent = Convert.ToDecimal(row["UG_Month"].ToString());
                        info.GradeName = row["UG_Name"].ToString();
                        info.AnnualRent = Convert.ToDecimal(row["UG_Year"].ToString());
                        info.SmallIconName = row["UG_SmallIconName"].ToString();
                        info.BigIconName = row["UG_BigIconName"].ToString();
                        info.OrderId = Convert.ToInt32(row["UG_Order"].ToString());

                        infos.Add(info);
                    }
                }
            }

            return infos;
        }
    }
}
