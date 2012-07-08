using System;
using System.Collections.Generic;
using System.Text;


namespace XYECOM.Model
{
    /// <summary>
    /// 用户等级信息实体类
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
        /// 等级Id
        /// </summary>
        public int GradeId
        {
            set { _UG_ID = value; }
            get { return _UG_ID; }
        }

        /// <summary>
        /// 等级名称
        /// </summary>
        public string GradeName
        {
            set { _UG_Name = value; }
            get { return _UG_Name; }
        }

        /// <summary>
        /// 等级按月收费金额
        /// </summary>
        public decimal MonthlyRent
        {
            set { _UG_Month = value; }
            get { return _UG_Month; }
        }

        /// <summary>
        /// 等级按年收费金额
        /// </summary>
        public decimal AnnualRent
        {
            set { _UG_Year = value; }
            get { return _UG_Year; }
        }

        /// <summary>
        /// 小图标
        /// </summary>
        public string SmallIconName
        {
            get { return _UG_SmallIconName; }
            set { _UG_SmallIconName = value; }
        }

        /// <summary>
        /// 大图标
        /// </summary>
        public string BigIconName
        {
            get { return _UG_BigIconName; }
            set { _UG_BigIconName = value; }
        }

        /// <summary>
        /// 排序Id
        /// </summary>
        public int OrderId
        {
            get { return _UG_Order; }
            set { _UG_Order = value; }
        }
    }
}
