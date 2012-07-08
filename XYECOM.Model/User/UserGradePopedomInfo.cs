using System;
using System.Collections.Generic;
using System.Text;


namespace XYECOM.Model
{
    /// <summary>
    /// �ȼ�Ȩ����Ϣʵ����
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
        /// �Ƿ�������û���������Լ��ķ���
        /// </summary>
        public bool IsCompanyProType
        {
            get { return _IsCompanyProType; }
            set { _IsCompanyProType = value; }
        }
        //private bool _IsViewJoinContact;

        
        /// <summary>
        /// �û��ȼ�Ȩ�ޱ��
        /// </summary>
        public int UGP_ID
        {
            set { _UGP_ID = value; }
            get { return _UGP_ID; }
        }

        /// <summary>
        /// �û��ȼ����
        /// </summary>
        public int UG_ID
        {
            set { _UG_ID = value; }
            get { return _UG_ID; }
        }
        
        /// <summary>
        /// �Ƿ�����
        /// </summary>
        public bool UGP_IsShop
        {
            set { _UGP_IsShop = value; }
            get { return _UGP_IsShop; }
        }

        /// <summary>
        /// �ܷ�鿴����
        /// </summary>
        public bool UGP_IsMessage
        {
            set { _UGP_IsMessage = value; }
            get { return _UGP_IsMessage; }
        }

        /// <summary>
        /// ������Ϣˢ��ʱ����
        /// </summary>
        public System .Int32  UGP_RefurbishTime
        {
            set { _UGP_RefurbishTime = value; }
            get { return _UGP_RefurbishTime; }
        }

        /// <summary>
        /// һ��������ˢ�µ���Ϣ����
        /// </summary>
        public int UGP_RefubishNum
        {
            set { _UGP_RefubishNum = value; }
            get { return _UGP_RefubishNum; }
        }

        /// <summary>
        /// һ����һ����Ϣ�������ˢ�µĴ���
        /// </summary>
        public int UGP_RefubishTimes
        {
            set { _UGP_RefubishTimes = value; }
            get { return _UGP_RefubishTimes; }
        }

        /// <summary>
        /// ����ָ��
        /// </summary>
        public int UGP_Faith
        {
            get { return _UGP_Faith; }
            set { _UGP_Faith=value ; }
        }

        /// <summary>
        /// �Ƿ�֧������֧��
        /// </summary>
        public bool UGP_IsPayMent
        {
            get { return _UGP_IsPayMent; }
            set { _UGP_IsPayMent = value; }
        }

        /// <summary>
        /// �Ƿ���˹ؼ���
        /// </summary>
        public bool UGP_IsLeachKeyWord
        {
            get { return _UGP_IsLeachKeyWord; }
            set { _UGP_IsLeachKeyWord = value; }
        }

        /// <summary>
        /// ��Ӧ�Ƿ���Բ鿴��ϵ��ʽ
        /// </summary>
        public bool UGP_IsSupplyLinkMathod
        {
            get { return _UGP_IsSupplyLinkMathod; }
            set { _UGP_IsSupplyLinkMathod = value; }
        }

        /// <summary>
        /// ����Ϣ�Ƿ���Բ鿴��ϵ��ʽ
        /// </summary>
        public bool UGP_IsBuyLinkMathod
        {
            get { return _UGP_IsBuyLinkMathod; }
            set { _UGP_IsBuyLinkMathod = value; }
        }

        /// <summary>
        /// �ṩ�ӹ��Ƿ���Բ鿴��ϵ��ʽ
        /// </summary>
        public bool UGP_IsSupplyMachiningLinkMathod
        {
            get { return _UGP_IsSupplyMachiningLinkMathod; }
            set { _UGP_IsSupplyMachiningLinkMathod = value; }
        }

        /// <summary>
        /// Ѱ��ӹ��Ƿ���Բ鿴��ϵ��ʽ
        /// </summary>
        public bool UGP_IsBuyMachiningLinkMathod
        {
            get { return _UGP_IsBuyMachiningLinkMathod; }
            set { _UGP_IsBuyMachiningLinkMathod = value; }
        }

        /// <summary>
        /// �����Ƿ���Բ鿴��ϵ��ʽ
        /// </summary>
        public bool UGP_IsBuinessLinkMathod
        {
            get { return _UGP_IsBuinessLinkMathod; }
            set { _UGP_IsBuinessLinkMathod = value; }
        }

        /// <summary>
        /// �����Ƿ���Բ鿴��ϵ��ʽ
        /// </summary>
        public bool UGP_IsSurrogateLinkMathod
        {
            get { return _UGP_IsSurrogateLinkMathod; }
            set { _UGP_IsSurrogateLinkMathod = value; }
        }

        /// <summary>
        /// �ṩ�����Ƿ���Բ鿴��ϵ��ʽ
        /// </summary>
        public bool UGP_IsSupplyServerLinkMathod
        {
            get { return _UGP_IsSupplyServerLinkMathod; }
            set { _UGP_IsSupplyServerLinkMathod = value; }
        }

        /// <summary>
        /// Ѱ������Ƿ���Բ鿴��ϵ��ʽ
        /// </summary>
        public bool UGP_IsBuyServerLinkMathod
        {
            get { return _UGP_IsBuyServerLinkMathod; }
            set { _UGP_IsBuyServerLinkMathod = value; }

        }

        /// <summary>
        /// չ���Ƿ���Բ鿴��ϵ��ʽ
        /// </summary>
        public bool UGP_IsExhibtionLinkMathod
        {
            get { return _UGP_IsExhibtionLinkMathod; }
            set { _UGP_IsExhibtionLinkMathod = value; }
        }

        /// <summary>
        /// Ʒ���Ƿ���Բ鿴��ϵ��ʽ
        /// </summary>
        public bool UGP_IsBrandLinkMathod
        {
            get { return _UGP_IsBrandLinkMathod; }
            set { _UGP_IsBrandLinkMathod = value; }
        }

        /// <summary>
        /// �˲��Ƿ���Բ鿴��ϵ��ʽ
        /// </summary>
        public bool UGP_IsJobLinkMathod
        {
            get { return _UGP_IsJobLinkMathod; }
            set { _UGP_IsJobLinkMathod = value; }
        }

        /// <summary>
        /// ��ҵ�Ƿ���Բ鿴��ϵ��ʽ
        /// </summary>
        public bool UGP_IsCompanyLinkMathod
        {
            get { return _UGP_IsCompanyLinkMathod; }
            set { _UGP_IsCompanyLinkMathod = value; }
        }

        /// <summary>
        /// ��Ӧ��Ϣ��ϵ��ʽ�Ƿ���Ա������û��鿴
        /// </summary>
        public bool SeeBySellOffer
        {
            get { return _SeeBySellOffer; }
            set { _SeeBySellOffer = value; }
        }

        /// <summary>
        /// ����Ϣ��ϵ��ʽ�Ƿ���Ա������û��鿴
        /// </summary>
        public bool SeeByBuyOffer
        {
            get { return _SeeByBuyOffer; }
            set { _SeeByBuyOffer = value; }
        }

        /// <summary>
        /// �ṩ�ӹ���Ϣ��ϵ��ʽ�Ƿ���Ա������û��鿴
        /// </summary>
        public bool SeeBySellMachining
        {
            get { return _SeeBySellMachining; }
            set { _SeeBySellMachining = value; }
        }

        /// <summary>
        /// Ѱ��ӹ���Ϣ��ϵ��ʽ�Ƿ���Ա������û��鿴
        /// </summary>
        public bool SeeByBuyMachining
        {
            get { return _SeeByBuyMachining; }
            set { _SeeByBuyMachining = value; }
        }

        /// <summary>
        /// ������Ϣ��ϵ��ʽ�Ƿ���Ա������û��鿴
        /// </summary>
        public bool SeeBySellBusiness
        {
            get { return _SeeBySellBusiness; }
            set { _SeeBySellBusiness = value; }
        }

        /// <summary>
        /// ������Ϣ��ϵ��ʽ�Ƿ���Ա������û��鿴
        /// </summary>
        public bool SeeByBuyBusiness
        {
            get { return _SeeByBuyBusiness; }
            set { _SeeByBuyBusiness = value; }
        }

        /// <summary>
        /// �ṩ������Ϣ��ϵ��ʽ�Ƿ���Ա������û��鿴
        /// </summary>
        public bool SeeBySellService
        {
            get { return _SeeBySellService; }
            set { _SeeBySellService = value; }
        }

        /// <summary>
        /// Ѱ�������Ϣ��ϵ��ʽ�Ƿ���Ա������û��鿴
        /// </summary>
        public bool SeeByBuyService
        {
            get { return _SeeByBuyService; }
            set { _SeeByBuyService = value; }
        }

        /// <summary>
        /// չ����Ϣ��ϵ��ʽ�Ƿ���Ա������û��鿴
        /// </summary>
        public bool SeeByExhibtion
        {
            get { return _SeeByExhibtion; }
            set { _SeeByExhibtion = value; }
        }

        /// <summary>
        /// Ʒ����Ϣ��ϵ��ʽ�Ƿ���Ա������û��鿴
        /// </summary>
        public bool SeeByBrand
        {
            get { return _SeeByBrand; }
            set { _SeeByBrand = value; }
        }

        /// <summary>
        /// ��Ƹ��Ϣ��ϵ��ʽ�Ƿ���Ա������û��鿴
        /// </summary>
        public bool SeeByJob
        {
            get { return _SeeByJob; }
            set { _SeeByJob = value; }
        }

        /// <summary>
        /// ��������ϵ��ʽ�Ƿ���Ա������û��鿴
        /// </summary>
        public bool SeeByCompany
        {
            get { return _SeeByCompany; }
            set { _SeeByCompany = value; }
        }

        /// <summary>
        /// �����û��ȼ�Ȩ��Ȩ�޵�������ǰ����
        /// </summary>
        public int AdviseDays
        {
            get { return _AdviseDays; }
            set { _AdviseDays = value; }
        }

        /// <summary>
        /// �û����ں����������ļ���(Ϊ���򲻽�)
        /// </summary>
        public int DebaseUserGrade
        {
            get { return _DebaseUserGrade; }
            set { _DebaseUserGrade = value; }
        }

        /// <summary>
        /// �û��Ƿ��������IM��̸
        /// </summary>
        public bool IsIMOnlineTalk
        {
            get { return _IsIMOnlineTalk; }
            set { _IsIMOnlineTalk = value; }
        }

        /// <summary>
        /// �Ƿ���Բ鿴�շ�����
        /// </summary>
        public bool IsShowChargeNews
        {
            get { return _IsShowChargeNews; }
            set { _IsShowChargeNews = value; }
        }


        /// <summary>
        /// �û��ϴ�ͼƬ����
        /// </summary>
        public int UploadPicNum
        {
            get { return _UploadPicNum; }
            set { _UploadPicNum = value; }
        }
        /// <summary>
        /// �û��ɲ�����ϵ��ʽ����
        /// </summary>
        public int SeeContactsNum
        {
            get { return _SeeContactsNum; }
            set { _SeeContactsNum = value; }
        }
        /// <summary>
        /// �û����Է�����Ϣ����
        /// </summary>
        public String MessageNum
        {
            get { return _MessageNum; }
            set { _MessageNum = value; }
        }

        /// <summary>
        /// ���Ʒ�����Ϣ�����ļ������
        /// </summary>
        public int LimitDate
        {
            get { return _LimitDate; }
            set { _LimitDate = value; }
        }

        ///// <summary>
        ///// �Ƿ���Բ鿴���߼�����Ϣ�е���ϵ��ʽ
        ///// </summary>
        //public bool IsViewJoinContact
        //{
        //    get { return _IsViewJoinContact; }
        //    set { _IsViewJoinContact = value; }
        //}


        /// <summary>
        /// �Ƿ���Կ�����������
        /// </summary>
        public bool IsSubdomain
        {
            get { return _IsSubdomain; }
            set { _IsSubdomain = value; }
        }

        /// <summary>
        /// �Ƿ���԰󶨶�������
        /// </summary>
        public bool IsBindingTopdomain
        {
            get { return _IsBindingTopdomain; }
            set { _IsBindingTopdomain = value; }
        }

        private string ticheng;

        /// <summary>
        /// ������ɰٷֱ�
        /// </summary>
        public string Ticheng
        {
            get { return ticheng; }
            set { ticheng = value; }
        }

        private string operationMargin;

        /// <summary>
        /// �����С�֤��İٷֱ�
        /// </summary>
        public string OperationMargin
        {
            get { return operationMargin; }
            set { operationMargin = value; }
        }

        private string contractPercent;

        /// <summary>
        /// ����ƽ̨���ɺ�ͬ��֤��İٷֱ�
        /// </summary>
        public string ContractPercent
        {
            get { return contractPercent; }
            set { contractPercent = value; }
        }
    }
}
