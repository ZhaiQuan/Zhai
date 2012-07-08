using System;
using System.Collections.Generic;
using System.Text;


namespace XYECOM.Model
{
    /// <summary>
    /// 等级权限信息实体类
    /// </summary>
    public class UserGradePopedomInfo
    {
        private int _UGP_ID;
        private int _UG_ID;
        private bool _UGP_IsShop;
        private bool _UGP_IsMessage;
        private int  _UGP_RefurbishTime;
        private int _UGP_RefubishNum;
        private int _UGP_RefubishTimes;
        private int _UGP_Faith; 
        private bool _UGP_IsPayMent;
        private bool _UGP_IsLeachKeyWord;
        private bool _UGP_IsSupplyLinkMathod;
        private bool _UGP_IsBuyLinkMathod;
        private bool _UGP_IsSupplyMachiningLinkMathod;
        private bool _UGP_IsBuyMachiningLinkMathod;
        private bool _UGP_IsBuinessLinkMathod;
        private bool _UGP_IsSurrogateLinkMathod;
        private bool _UGP_IsSupplyServerLinkMathod;
        private bool _UGP_IsBuyServerLinkMathod;
        private bool _UGP_IsExhibtionLinkMathod;
        private bool _UGP_IsBrandLinkMathod;
        private bool _UGP_IsJobLinkMathod;
        private bool _UGP_IsCompanyLinkMathod;
        private bool _SeeBySellOffer;
        private bool _SeeByBuyOffer;
        private bool _SeeBySellMachining;
        private bool _SeeByBuyMachining;
        private bool _SeeBySellBusiness;
        private bool _SeeByBuyBusiness;
        private bool _SeeBySellService;
        private bool _SeeByBuyService;
        private bool _SeeByExhibtion;
        private bool _SeeByBrand;
        private bool _SeeByJob;
        private bool _SeeByCompany;
        private int _AdviseDays;
        private int _DebaseUserGrade;
        private bool _IsIMOnlineTalk;
        private bool _IsShowChargeNews;
        private int _UploadPicNum;
        private int _SeeContactsNum;
        private String _MessageNum;
        private int _LimitDate;
        private bool _IsCompanyProType;
        private bool _IsSubdomain;
        private bool _IsBindingTopdomain;

        

        /// <summary>
        /// 是否可以在用户中心添加自己的分类
        /// </summary>
        public bool IsCompanyProType
        {
            get { return _IsCompanyProType; }
            set { _IsCompanyProType = value; }
        }
        //private bool _IsViewJoinContact;

        
        /// <summary>
        /// 用户等级权限编号
        /// </summary>
        public int UGP_ID
        {
            set { _UGP_ID = value; }
            get { return _UGP_ID; }
        }

        /// <summary>
        /// 用户等级编号
        /// </summary>
        public int UG_ID
        {
            set { _UG_ID = value; }
            get { return _UG_ID; }
        }
        
        /// <summary>
        /// 是否开网店
        /// </summary>
        public bool UGP_IsShop
        {
            set { _UGP_IsShop = value; }
            get { return _UGP_IsShop; }
        }

        /// <summary>
        /// 能否查看留言
        /// </summary>
        public bool UGP_IsMessage
        {
            set { _UGP_IsMessage = value; }
            get { return _UGP_IsMessage; }
        }

        /// <summary>
        /// 单条信息刷新时间间隔
        /// </summary>
        public System .Int32  UGP_RefurbishTime
        {
            set { _UGP_RefurbishTime = value; }
            get { return _UGP_RefurbishTime; }
        }

        /// <summary>
        /// 一天内允许刷新的信息条数
        /// </summary>
        public int UGP_RefubishNum
        {
            set { _UGP_RefubishNum = value; }
            get { return _UGP_RefubishNum; }
        }

        /// <summary>
        /// 一天内一条信息最多允许刷新的次数
        /// </summary>
        public int UGP_RefubishTimes
        {
            set { _UGP_RefubishTimes = value; }
            get { return _UGP_RefubishTimes; }
        }

        /// <summary>
        /// 诚信指数
        /// </summary>
        public int UGP_Faith
        {
            get { return _UGP_Faith; }
            set { _UGP_Faith=value ; }
        }

        /// <summary>
        /// 是否支持现在支付
        /// </summary>
        public bool UGP_IsPayMent
        {
            get { return _UGP_IsPayMent; }
            set { _UGP_IsPayMent = value; }
        }

        /// <summary>
        /// 是否过滤关键字
        /// </summary>
        public bool UGP_IsLeachKeyWord
        {
            get { return _UGP_IsLeachKeyWord; }
            set { _UGP_IsLeachKeyWord = value; }
        }

        /// <summary>
        /// 供应是否可以查看联系方式
        /// </summary>
        public bool UGP_IsSupplyLinkMathod
        {
            get { return _UGP_IsSupplyLinkMathod; }
            set { _UGP_IsSupplyLinkMathod = value; }
        }

        /// <summary>
        /// 求购信息是否可以查看联系方式
        /// </summary>
        public bool UGP_IsBuyLinkMathod
        {
            get { return _UGP_IsBuyLinkMathod; }
            set { _UGP_IsBuyLinkMathod = value; }
        }

        /// <summary>
        /// 提供加工是否可以查看联系方式
        /// </summary>
        public bool UGP_IsSupplyMachiningLinkMathod
        {
            get { return _UGP_IsSupplyMachiningLinkMathod; }
            set { _UGP_IsSupplyMachiningLinkMathod = value; }
        }

        /// <summary>
        /// 寻求加工是否可以查看联系方式
        /// </summary>
        public bool UGP_IsBuyMachiningLinkMathod
        {
            get { return _UGP_IsBuyMachiningLinkMathod; }
            set { _UGP_IsBuyMachiningLinkMathod = value; }
        }

        /// <summary>
        /// 招商是否可以查看联系方式
        /// </summary>
        public bool UGP_IsBuinessLinkMathod
        {
            get { return _UGP_IsBuinessLinkMathod; }
            set { _UGP_IsBuinessLinkMathod = value; }
        }

        /// <summary>
        /// 代理是否可以查看联系方式
        /// </summary>
        public bool UGP_IsSurrogateLinkMathod
        {
            get { return _UGP_IsSurrogateLinkMathod; }
            set { _UGP_IsSurrogateLinkMathod = value; }
        }

        /// <summary>
        /// 提供服务是否可以查看联系方式
        /// </summary>
        public bool UGP_IsSupplyServerLinkMathod
        {
            get { return _UGP_IsSupplyServerLinkMathod; }
            set { _UGP_IsSupplyServerLinkMathod = value; }
        }

        /// <summary>
        /// 寻求服务是否可以查看联系方式
        /// </summary>
        public bool UGP_IsBuyServerLinkMathod
        {
            get { return _UGP_IsBuyServerLinkMathod; }
            set { _UGP_IsBuyServerLinkMathod = value; }

        }

        /// <summary>
        /// 展会是否可以查看联系方式
        /// </summary>
        public bool UGP_IsExhibtionLinkMathod
        {
            get { return _UGP_IsExhibtionLinkMathod; }
            set { _UGP_IsExhibtionLinkMathod = value; }
        }

        /// <summary>
        /// 品牌是否可以查看联系方式
        /// </summary>
        public bool UGP_IsBrandLinkMathod
        {
            get { return _UGP_IsBrandLinkMathod; }
            set { _UGP_IsBrandLinkMathod = value; }
        }

        /// <summary>
        /// 人才是否可以查看联系方式
        /// </summary>
        public bool UGP_IsJobLinkMathod
        {
            get { return _UGP_IsJobLinkMathod; }
            set { _UGP_IsJobLinkMathod = value; }
        }

        /// <summary>
        /// 企业是否可以查看联系方式
        /// </summary>
        public bool UGP_IsCompanyLinkMathod
        {
            get { return _UGP_IsCompanyLinkMathod; }
            set { _UGP_IsCompanyLinkMathod = value; }
        }

        /// <summary>
        /// 供应信息联系方式是否可以被所有用户查看
        /// </summary>
        public bool SeeBySellOffer
        {
            get { return _SeeBySellOffer; }
            set { _SeeBySellOffer = value; }
        }

        /// <summary>
        /// 求购信息联系方式是否可以被所有用户查看
        /// </summary>
        public bool SeeByBuyOffer
        {
            get { return _SeeByBuyOffer; }
            set { _SeeByBuyOffer = value; }
        }

        /// <summary>
        /// 提供加工信息联系方式是否可以被所有用户查看
        /// </summary>
        public bool SeeBySellMachining
        {
            get { return _SeeBySellMachining; }
            set { _SeeBySellMachining = value; }
        }

        /// <summary>
        /// 寻求加工信息联系方式是否可以被所有用户查看
        /// </summary>
        public bool SeeByBuyMachining
        {
            get { return _SeeByBuyMachining; }
            set { _SeeByBuyMachining = value; }
        }

        /// <summary>
        /// 招商信息联系方式是否可以被所有用户查看
        /// </summary>
        public bool SeeBySellBusiness
        {
            get { return _SeeBySellBusiness; }
            set { _SeeBySellBusiness = value; }
        }

        /// <summary>
        /// 代理信息联系方式是否可以被所有用户查看
        /// </summary>
        public bool SeeByBuyBusiness
        {
            get { return _SeeByBuyBusiness; }
            set { _SeeByBuyBusiness = value; }
        }

        /// <summary>
        /// 提供服务信息联系方式是否可以被所有用户查看
        /// </summary>
        public bool SeeBySellService
        {
            get { return _SeeBySellService; }
            set { _SeeBySellService = value; }
        }

        /// <summary>
        /// 寻求服务信息联系方式是否可以被所有用户查看
        /// </summary>
        public bool SeeByBuyService
        {
            get { return _SeeByBuyService; }
            set { _SeeByBuyService = value; }
        }

        /// <summary>
        /// 展会信息联系方式是否可以被所有用户查看
        /// </summary>
        public bool SeeByExhibtion
        {
            get { return _SeeByExhibtion; }
            set { _SeeByExhibtion = value; }
        }

        /// <summary>
        /// 品牌信息联系方式是否可以被所有用户查看
        /// </summary>
        public bool SeeByBrand
        {
            get { return _SeeByBrand; }
            set { _SeeByBrand = value; }
        }

        /// <summary>
        /// 招聘信息联系方式是否可以被所有用户查看
        /// </summary>
        public bool SeeByJob
        {
            get { return _SeeByJob; }
            set { _SeeByJob = value; }
        }

        /// <summary>
        /// 网店中联系方式是否可以被所有用户查看
        /// </summary>
        public bool SeeByCompany
        {
            get { return _SeeByCompany; }
            set { _SeeByCompany = value; }
        }

        /// <summary>
        /// 距离用户等级权限权限到期提醒前几日
        /// </summary>
        public int AdviseDays
        {
            get { return _AdviseDays; }
            set { _AdviseDays = value; }
        }

        /// <summary>
        /// 用户到期后所降低至的级别(为空则不降)
        /// </summary>
        public int DebaseUserGrade
        {
            get { return _DebaseUserGrade; }
            set { _DebaseUserGrade = value; }
        }

        /// <summary>
        /// 用户是否可以在线IM交谈
        /// </summary>
        public bool IsIMOnlineTalk
        {
            get { return _IsIMOnlineTalk; }
            set { _IsIMOnlineTalk = value; }
        }

        /// <summary>
        /// 是否可以查看收费新闻
        /// </summary>
        public bool IsShowChargeNews
        {
            get { return _IsShowChargeNews; }
            set { _IsShowChargeNews = value; }
        }


        /// <summary>
        /// 用户上传图片张数
        /// </summary>
        public int UploadPicNum
        {
            get { return _UploadPicNum; }
            set { _UploadPicNum = value; }
        }
        /// <summary>
        /// 用户可产看联系方式条数
        /// </summary>
        public int SeeContactsNum
        {
            get { return _SeeContactsNum; }
            set { _SeeContactsNum = value; }
        }
        /// <summary>
        /// 用户可以发布信息条数
        /// </summary>
        public String MessageNum
        {
            get { return _MessageNum; }
            set { _MessageNum = value; }
        }

        /// <summary>
        /// 控制发布信息条数的间隔天数
        /// </summary>
        public int LimitDate
        {
            get { return _LimitDate; }
            set { _LimitDate = value; }
        }

        ///// <summary>
        ///// 是否可以查看在线加盟信息中的联系方式
        ///// </summary>
        //public bool IsViewJoinContact
        //{
        //    get { return _IsViewJoinContact; }
        //    set { _IsViewJoinContact = value; }
        //}


        /// <summary>
        /// 是否可以开启二级域名
        /// </summary>
        public bool IsSubdomain
        {
            get { return _IsSubdomain; }
            set { _IsSubdomain = value; }
        }

        /// <summary>
        /// 是否可以绑定顶级域名
        /// </summary>
        public bool IsBindingTopdomain
        {
            get { return _IsBindingTopdomain; }
            set { _IsBindingTopdomain = value; }
        }

        private string ticheng;

        /// <summary>
        /// 按件提成百分比
        /// </summary>
        public string Ticheng
        {
            get { return ticheng; }
            set { ticheng = value; }
        }

        private string operationMargin;

        /// <summary>
        /// 需缴纳小额保证金的百分比
        /// </summary>
        public string OperationMargin
        {
            get { return operationMargin; }
            set { operationMargin = value; }
        }

        private string contractPercent;

        /// <summary>
        /// 需向平台缴纳合同保证金的百分比
        /// </summary>
        public string ContractPercent
        {
            get { return contractPercent; }
            set { contractPercent = value; }
        }
    }
}
