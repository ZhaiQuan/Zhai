using System;
using System.Collections.Generic;
using System.Text;
using System.Data;


namespace XYECOM.Business
{
    /// <summary>
    /// 用户等级业务类
    /// </summary>
    public class UserGrade
    {
        private static readonly XYECOM.SQLServer.UserGrade DAL = new XYECOM.SQLServer.UserGrade();

        #region 添加用户等级信息
        /// <summary>
        /// 添加用户等级信息
        /// </summary>
        /// <param name="eug">用户等级信息属性类对象</param>
        /// <returns>数字。大于等于零表示添加成功</returns>
        public int Insert(XYECOM.Model.UserGradeInfo eug, out int UG_ID)
        {
            return DAL.Insert(eug, out UG_ID);
        }
        #endregion

        #region 修改用户等级信息
        /// <summary>
        /// 修改用户等级信息
        /// </summary>
        /// <param name="eug">用户等级信息属性类对象</param>
        /// <returns>数字。大于等于零表示修改成功</returns>
        public int Update(XYECOM.Model.UserGradeInfo eug)
        {
            return DAL.Update(eug);
        }
        #endregion

        #region 删除用户等级信息
        /// <summary>
        /// 删除用户等级信息
        /// </summary>
        /// <param name="UG_ID">用户等级编号</param>
        /// <returns>数字。大于等于零表示删除成功</returns>
        public int Delete(short UG_ID)
        {
            return DAL.Delete(UG_ID);
        }
        #endregion

        #region 获取用户等级信息 
        /// <summary>
        /// 获取用户等级信息
        /// </summary>
        /// <returns>用户等级信息</returns>
        public DataTable GetDataTable()
        {
            return DAL.GetDataTable();
        }
        #endregion

        #region 读取用户等级信息
        /// <summary>
        /// 获取用户等级信息
        /// </summary>
        /// <param name="userGradeId">用户等级编号Id</param>
        /// <returns>实体对象</returns>
        public XYECOM.Model.UserGradeInfo GetItem(int userGradeId)
        {
            if (userGradeId <= 0) return null;

            return DAL.GetItem(userGradeId);
        }
        #endregion 
       
        /// <summary>
        /// 获取所有用户等级的编号和等级名称
        /// </summary>
        /// <returns>用户等级信息集合</returns>
        public List<XYECOM.Model.UserGradeInfo> GetItems()
        {
            return DAL.GetItems();
        }

        /// <summary>
        /// 等级下是否有用户信息
        /// </summary>
        /// <param name="userGradeId">用户等级编号Id</param>
        /// <returns>是否有用户信息</returns>
        public bool HasSubUser(string userGradeId)
        {
            return DAL.GetUserNumByGrade(userGradeId) > 0;
        }

        /// <summary>
        /// 专用方法，用于设置标签使用范围
        /// </summary>
        /// <param name="gradeIds"></param>
        /// <returns></returns>
        public List<Model.UserGradeInfo> GetItems(string gradeIds)
        {
            return DAL.GetItems(gradeIds);
        }
    }
}
