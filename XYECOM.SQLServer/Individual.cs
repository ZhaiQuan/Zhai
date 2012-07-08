using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace XYECOM.SQLServer
{
    /// <summary>
    /// ������Ϣ���ݴ�����
    /// </summary>
    public class Individual
    {
        /// <summary>
        /// ��Ӹ�����Ϣ
        /// </summary>
        /// <param name="ind">������Ϣʵ��</param>
        /// <returns>1�ɹ� 0 -2 ʧ��</returns>
        public int Insert(XYECOM.Model.IndividualInfo info)
        {
            SqlParameter[] Parame = new SqlParameter[]
            {
                new SqlParameter("@U_ID",info.U_ID),
                new SqlParameter("@UI_Name",info.UI_Name),
                new SqlParameter("@UI_Sex",info.UI_Sex),
                new SqlParameter("@UI_Code",info.UI_Code),
                new SqlParameter("@AreaID",info.AreaID),
                new SqlParameter("@UI_Address",info.UI_Address),
                new SqlParameter("@Telephone",info.Telephone),
                new SqlParameter("@UI_Postcode",info.UI_Postcode),
                new SqlParameter("@UI_Mobil",info.UI_Mobil),
                new SqlParameter("@UI_Flag",info.UI_Flag),
                new SqlParameter ("@U_Email",info.U_Email)
            };

            int row = XYECOM.Core.Data.SqlHelper.ExecuteNonQuery(CommandType.StoredProcedure,"XYP_InsertIndividual", Parame);

            return row;
        }
        /// <summary>
        /// �޸ĸ�����Ϣ
        /// </summary>
        /// <param name="ind">������Ϣʵ��</param>
        /// <returns>1�ɹ� 0 -1 -2 ʧ��</returns>

        public int Update(XYECOM.Model.IndividualInfo info)
        {
            SqlParameter[] Parame = new SqlParameter[] 
            {
                new SqlParameter("@U_ID",info.U_ID),
                new SqlParameter("@UI_Name",info.UI_Name),
                new SqlParameter("@UI_Sex",info.UI_Sex),
                new SqlParameter("@UI_Code",info.UI_Code),
                new SqlParameter("@AreaID",info.AreaID),
                new SqlParameter("@UI_Address",info.UI_Address),
                new SqlParameter("@Telephone",info.Telephone),
                new SqlParameter("@UI_Postcode",info.UI_Postcode),
                new SqlParameter("@UI_Mobil",info.UI_Mobil),
                new SqlParameter("@UI_Flag",info.UI_Flag),
                new SqlParameter ("@U_Email",info.U_Email)
            };

            int row = XYECOM.Core.Data.SqlHelper.ExecuteNonQuery(CommandType.StoredProcedure,"XYP_UpdateIndividual", Parame);

            return row;
        }
        /// <summary>
        /// ��ȡһ��������Ϣ
        /// </summary>
        /// <param name="U_ID">�û�ID</param>
        /// <returns>������Ϣʵ��</returns>

        public XYECOM.Model.IndividualInfo GetItem(long U_ID)
        {
            XYECOM.Model.IndividualInfo ind = null;

            SqlParameter[] Parame = new SqlParameter[]
            {
                new SqlParameter("@strWhere","where U_ID="+U_ID.ToString()),
                new SqlParameter("@strTableName","XYV_Individual"),
                new SqlParameter("@strOrder","")
            };

            using (SqlDataReader rdr = XYECOM.Core.Data.SqlHelper.ExecuteReader( CommandType.StoredProcedure, "XYP_SelectByWhere", Parame))
            {   
                if (rdr.Read())
                {
                    ind = new XYECOM.Model.IndividualInfo(Convert.ToInt64(rdr["U_ID"].ToString()), rdr["UI_Name"].ToString(), rdr["UI_Sex"].ToString().ToLower(), rdr["UI_Code"].ToString(), Convert.ToInt32(rdr["Area_ID"].ToString()), rdr["UI_Address"].ToString(), rdr["Telephone"].ToString(), rdr["UI_Postcode"].ToString(), rdr["UI_Mobil"].ToString(), Convert.ToInt32(rdr["UI_Flag"].ToString()), rdr["U_Email"].ToString(), Convert.ToInt32(rdr["AccountId"].ToString()));
                }
            }

            return ind;
        } 
    }
}
