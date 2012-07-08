using System;
using System.Collections.Generic;
using System.Text;

namespace XYECOM.Business
{
    /// <summary>
    /// 个人信息业务类
    /// </summary>
    public class Individual
    {
        public static readonly XYECOM.SQLServer.Individual DAL = new XYECOM.SQLServer.Individual();
        /// <summary>
        /// 添加个人信息
        /// </summary>
        /// <param name="idv">个人信息实体</param>
        /// <returns>1成功 0 -2 失败</returns>
        public int Insert(XYECOM.Model.IndividualInfo idv)
        {
            return DAL.Insert(idv);
 
        }
        /// <summary>
        /// 修改个人信息
        /// </summary>
        /// <param name="idv">个人信息实体</param>
        /// <returns>1成功 0 -1 -2 失败</returns>

        public int Update(XYECOM.Model.IndividualInfo idv)
        {
            return DAL.Update(idv);
 
        }
        /// <summary>
        /// 获取一条个人信息
        /// </summary>
        /// <param name="U_ID">用户ID</param>
        /// <returns>个人信息实体</returns>
        public XYECOM.Model.IndividualInfo GetItem(long userId)
        {
            if (userId <= 0) return null;

            return DAL.GetItem(userId);
        }
    }
}
