using System;
using System.Collections.Generic;
using System.Text;
using System.Data;


namespace XYECOM.Business
{
    /// <summary>
    /// �û��ȼ�ҵ����
    /// </summary>
    public class UserGrade
    {
        private static readonly XYECOM.SQLServer.UserGrade DAL = new XYECOM.SQLServer.UserGrade();

        #region ����û��ȼ���Ϣ
        /// <summary>
        /// ����û��ȼ���Ϣ
        /// </summary>
        /// <param name="eug">�û��ȼ���Ϣ���������</param>
        /// <returns>���֡����ڵ������ʾ��ӳɹ�</returns>
        public int Insert(XYECOM.Model.UserGradeInfo eug, out int UG_ID)
        {
            return DAL.Insert(eug, out UG_ID);
        }
        #endregion

        #region �޸��û��ȼ���Ϣ
        /// <summary>
        /// �޸��û��ȼ���Ϣ
        /// </summary>
        /// <param name="eug">�û��ȼ���Ϣ���������</param>
        /// <returns>���֡����ڵ������ʾ�޸ĳɹ�</returns>
        public int Update(XYECOM.Model.UserGradeInfo eug)
        {
            return DAL.Update(eug);
        }
        #endregion

        #region ɾ���û��ȼ���Ϣ
        /// <summary>
        /// ɾ���û��ȼ���Ϣ
        /// </summary>
        /// <param name="UG_ID">�û��ȼ����</param>
        /// <returns>���֡����ڵ������ʾɾ���ɹ�</returns>
        public int Delete(short UG_ID)
        {
            return DAL.Delete(UG_ID);
        }
        #endregion

        #region ��ȡ�û��ȼ���Ϣ 
        /// <summary>
        /// ��ȡ�û��ȼ���Ϣ
        /// </summary>
        /// <returns>�û��ȼ���Ϣ</returns>
        public DataTable GetDataTable()
        {
            return DAL.GetDataTable();
        }
        #endregion

        #region ��ȡ�û��ȼ���Ϣ
        /// <summary>
        /// ��ȡ�û��ȼ���Ϣ
        /// </summary>
        /// <param name="userGradeId">�û��ȼ����Id</param>
        /// <returns>ʵ�����</returns>
        public XYECOM.Model.UserGradeInfo GetItem(int userGradeId)
        {
            if (userGradeId <= 0) return null;

            return DAL.GetItem(userGradeId);
        }
        #endregion 
       
        /// <summary>
        /// ��ȡ�����û��ȼ��ı�ź͵ȼ�����
        /// </summary>
        /// <returns>�û��ȼ���Ϣ����</returns>
        public List<XYECOM.Model.UserGradeInfo> GetItems()
        {
            return DAL.GetItems();
        }

        /// <summary>
        /// �ȼ����Ƿ����û���Ϣ
        /// </summary>
        /// <param name="userGradeId">�û��ȼ����Id</param>
        /// <returns>�Ƿ����û���Ϣ</returns>
        public bool HasSubUser(string userGradeId)
        {
            return DAL.GetUserNumByGrade(userGradeId) > 0;
        }

        /// <summary>
        /// ר�÷������������ñ�ǩʹ�÷�Χ
        /// </summary>
        /// <param name="gradeIds"></param>
        /// <returns></returns>
        public List<Model.UserGradeInfo> GetItems(string gradeIds)
        {
            return DAL.GetItems(gradeIds);
        }
    }
}
