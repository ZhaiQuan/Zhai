using System;
using System.Collections.Generic;
using System.Text;


namespace XYECOM.Model
{
    /// <summary>
    /// �û��ȼ���Ϣʵ����
    /// </summary>
    public class UserGradeInfo
    {
        private int _UG_ID;
        private string _UG_Name;
        private decimal _UG_Month;
        private decimal _UG_Year;
        private string _UG_SmallIconName = "";
        private string _UG_BigIconName = "";
        private int _UG_Order = 0;

        /// <summary>
        /// �ȼ�Id
        /// </summary>
        public int GradeId
        {
            set { _UG_ID = value; }
            get { return _UG_ID; }
        }

        /// <summary>
        /// �ȼ�����
        /// </summary>
        public string GradeName
        {
            set { _UG_Name = value; }
            get { return _UG_Name; }
        }

        /// <summary>
        /// �ȼ������շѽ��
        /// </summary>
        public decimal MonthlyRent
        {
            set { _UG_Month = value; }
            get { return _UG_Month; }
        }

        /// <summary>
        /// �ȼ������շѽ��
        /// </summary>
        public decimal AnnualRent
        {
            set { _UG_Year = value; }
            get { return _UG_Year; }
        }

        /// <summary>
        /// Сͼ��
        /// </summary>
        public string SmallIconName
        {
            get { return _UG_SmallIconName; }
            set { _UG_SmallIconName = value; }
        }

        /// <summary>
        /// ��ͼ��
        /// </summary>
        public string BigIconName
        {
            get { return _UG_BigIconName; }
            set { _UG_BigIconName = value; }
        }

        /// <summary>
        /// ����Id
        /// </summary>
        public int OrderId
        {
            get { return _UG_Order; }
            set { _UG_Order = value; }
        }
    }
}
