using System;
using System.Collections.Generic;
using System.Text;

namespace XYECOM.Business
{
    /// <summary>
    /// ������Ϣҵ����
    /// </summary>
    public class Individual
    {
        public static readonly XYECOM.SQLServer.Individual DAL = new XYECOM.SQLServer.Individual();
        /// <summary>
        /// ��Ӹ�����Ϣ
        /// </summary>
        /// <param name="idv">������Ϣʵ��</param>
        /// <returns>1�ɹ� 0 -2 ʧ��</returns>
        public int Insert(XYECOM.Model.IndividualInfo idv)
        {
            return DAL.Insert(idv);
 
        }
        /// <summary>
        /// �޸ĸ�����Ϣ
        /// </summary>
        /// <param name="idv">������Ϣʵ��</param>
        /// <returns>1�ɹ� 0 -1 -2 ʧ��</returns>

        public int Update(XYECOM.Model.IndividualInfo idv)
        {
            return DAL.Update(idv);
 
        }
        /// <summary>
        /// ��ȡһ��������Ϣ
        /// </summary>
        /// <param name="U_ID">�û�ID</param>
        /// <returns>������Ϣʵ��</returns>
        public XYECOM.Model.IndividualInfo GetItem(long userId)
        {
            if (userId <= 0) return null;

            return DAL.GetItem(userId);
        }
    }
}
