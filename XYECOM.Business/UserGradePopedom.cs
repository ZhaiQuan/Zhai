using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

namespace XYECOM.Business
{   
    /// <summary>
    /// �û��ȼ�Ȩ�ޱ�
    /// </summary>
    public class UserGradePopedom
    {          
        private static readonly XYECOM.SQLServer.UserGradePopedom DAL = new XYECOM.SQLServer.UserGradePopedom();

        /// <summary>
        /// ���
        /// </summary>
        /// <param name="info">ʵ�����</param>
        /// <returns>Ӱ������</returns>
        public int Insert(XYECOM.Model.UserGradePopedomInfo info)
        {
            if (null == info) return 0;

            return DAL.Insert(info);
        }

        /// <summary>
        /// ����
        /// </summary>
        /// <param name="info">ʵ�����</param>
        /// <returns>Ӱ������</returns>
        public int Update(XYECOM.Model.UserGradePopedomInfo info)
        {
            if (null == info) return 0;

            return DAL.Update(info);
        }

        /// <summary>
        /// ɾ��
        /// </summary>
        /// <param name="UGP_ID">���Id</param>
        /// <returns>Ӱ������</returns>
        public int Delete(int UGP_ID)
        {
            if (UGP_ID <= 0) return 0;

            return DAL.Delete(UGP_ID);
        }

        /// <summary>
        /// ��ȡ�û��ȼ�Ȩ����Ϣ
        /// </summary>
        /// <param name="userGradeId">�û��ȼ����</param>
        /// <returns>ʵ�����</returns>
        public Model.UserGradePopedomInfo GetItem(int userGradeId)
        {
            if (userGradeId <= 0) return null;

            return DAL.GetItem(userGradeId);
        }

        /// <summary>
        /// �û��Ƿ��������IM��̸
        /// </summary>
        /// <param name="userGradeId">�û��ȼ�ID</param>
        /// <returns>�Ƿ�������߽�̸</returns>
        public static bool IsIMOnLine(int userGradeId)
        {
            if (userGradeId <= 0) return false;

            Model.UserGradePopedomInfo info = DAL.GetItem(userGradeId);

            if (info != null && info.IsIMOnlineTalk)
                return true;

            return false;
        }

        /// <summary>
        /// �û��Ƿ���Կ�������
        /// </summary>
        /// <param name="userGradeId">�û��ȼ�ID</param>
        /// <returns>�Ƿ���Կ�������</returns>
        public static bool IsShop(int userGradeId)
        {
            if (userGradeId <= 0) return false;

            Model.UserGradePopedomInfo info = DAL.GetItem(userGradeId);

            if (info != null && info.UGP_IsShop)
                return true;

            return false;
        }


        /// <summary>
        /// �Ƿ���Կ�����������
        /// </summary>
        /// <param name="userGradeId">�û��ȼ�ID</param>
        /// <returns>�Ƿ���Կ�����������</returns>
        public static bool IsSubdomain(int userGradeId)
        {
            if (userGradeId <= 0) return false;

            Model.UserGradePopedomInfo info = DAL.GetItem(userGradeId);

            if (info != null && info.IsSubdomain)
                return true;

            return false;
        }


        /// <summary>
        /// �Ƿ���԰󶨶�������
        /// </summary>
        /// <param name="userGradeId">�û��ȼ�ID</param>
        /// <returns>�Ƿ���԰󶨶�������</returns>
        public static bool IsBindingTopdomain(int userGradeId)
        {
            if (userGradeId <= 0) return false;

            Model.UserGradePopedomInfo info = DAL.GetItem(userGradeId);

            if (info != null && info.IsBindingTopdomain)
                return true;

            return false;
        }



        /// <summary>
        /// �û��Ƿ�鿴�շ�����
        /// </summary>
        /// <param name="userGradeId">�û��ȼ�ID</param>
        /// <returns>�Ƿ�鿴�շ�����</returns>
        public static bool IsShowChargeNews(int userGradeId)
        {
            if (userGradeId <= 0) return false;

            Model.UserGradePopedomInfo info = DAL.GetItem(userGradeId);

            if (info != null && info.IsShowChargeNews)
                return true;

            return false;
        }

        /// <summary>
        /// �û��ϴ�ͼƬ������
        /// </summary>
        /// <param name="userGradeId">�û��ȼ�ID</param>
        /// <returns>Ӱ������</returns>
        public static int UploadPicNum(int userGradeId)
        {
            Model.UserGradePopedomInfo info = DAL.GetItem(userGradeId);

            if (info != null && !info.UploadPicNum.Equals(0))
                return info.UploadPicNum;
            else
                return 0;
        }

        /// <summary>
        /// �û��ɲ鿴��ϵ��ʽ����
        /// </summary>
        /// <param name="userGradeId">�û��ȼ�ID</param>
        /// <returns>�û��ɲ鿴��ϵ��ʽ������</returns>
        public static int SeeContactsNum(int userGradeId)
        {
            Model.UserGradePopedomInfo info = DAL.GetItem(userGradeId);
            if (info != null && !info.SeeContactsNum.Equals(0))
                return info.SeeContactsNum;
            else
                return 0;
        }

        /// <summary>
        /// ��ȡָ���û�����ָ��ģ������������Ϣ����
        /// </summary>
        /// <param name="gradeId">�û���Id</param>
        /// <param name="moduleName">ģ������</param>
        /// <returns>ָ���û����ƶ�ģ������������Ϣ����</returns>
        public static int GetAllowPostInfoNumberForModule(int gradeId, String moduleName)
        {
            Model.UserGradePopedomInfo ugpinfo = DAL.GetItem(gradeId);

            String[] oldstr = ugpinfo.MessageNum.Split(',');
            String[] nums = { };

            for (int num = 0; (num < oldstr.Length - 1); num++)
            {
                nums = oldstr[num].Split('-');
                if (nums[0].ToString().Equals(moduleName))
                {
                    return Core.MyConvert.GetInt32(nums[1].ToString());
                }
            }
            return 0;
        }
        /// <summary>
        /// �ж��Ƿ񻹿��Է�����Ϣ
        /// </summary>
        /// <param name="userId">�û����id</param>
        /// <param name="moduleName">ģ������</param>
        /// <returns>���Է�����Ϣ������</returns>
        public static int GetAlreadyPostInfoNumberForModule(long userId, string moduleName)
        {
            XYECOM.Configuration.ModuleInfo module = XYECOM.Configuration.Module.Instance.GetItem(moduleName);

            Business.UserInfo userBLL = new UserInfo();

            Model.UserInfo userInfo = userBLL.GetItem(userId);

            if (userInfo == null) return 0;

            //���ݿⷽ��
            String tablename = "";
            String useridfieldname = "";
            String datefieldname = "";
            String infoidfieldname = "";

            int limitDate = DAL.GetItem(userInfo.RegInfo.GradeId).LimitDate;

            string endTime = DateTime.Now.AddDays(1).ToShortDateString().ToString();
            string startTime = DateTime.Now.AddDays(-(limitDate)).ToShortDateString().ToString();

            if (module != null)
            {
                if (module.EName.Equals("offer") || module.PEName.Equals("offer"))
                {
                    tablename = "XYV_Supply";
                    useridfieldname = "U_ID";
                    datefieldname = "SD_PublishDate";
                    infoidfieldname = "SD_ID";
                }
                if (module.EName.Equals("venture") || module.PEName.Equals("venture"))
                {
                    tablename = "XYV_Demand";
                    useridfieldname = "U_ID";
                    datefieldname = "SD_PublishDate";
                    infoidfieldname = "SD_ID";
                }
                if (module.EName.Equals("investment") || module.PEName.Equals("investment"))
                {
                    tablename = "XYV_InviteBusinessmanInfo";
                    useridfieldname = "U_ID";
                    datefieldname = "IBI_PublishDate";
                    infoidfieldname = "IBI_ID";
                }
                if (module.EName.Equals("service") || module.PEName.Equals("service"))
                {
                    tablename = "XYV_ServiceInfo";
                    useridfieldname = "U_ID";
                    datefieldname = "S_AddTime";
                    infoidfieldname = "S_ID";
                }
            }

            return userBLL.InfoAddNum(tablename, useridfieldname, userId, datefieldname, startTime, endTime, infoidfieldname, moduleName);
        }

        #region �Ƿ���Խ�����Ӳ���
        /// <summary>
        /// �Ƿ���Խ�����Ϣ��Ӳ���
        /// </summary>
        /// <param name="modulename">ģ������</param>
        /// <returns>�Ƿ���Խ�����Ϣ��Ӳ���</returns>
        public static bool IsAllowPostInfo(string moduleName,long userid,int gradeId)
        {
            if (moduleName.Equals("") || userid <= 0) return false;

            int alreadyPostNumber = GetAlreadyPostInfoNumberForModule(userid, moduleName);

            int allowPostNumber = GetAllowPostInfoNumberForModule(gradeId, moduleName);

            if (allowPostNumber.Equals(0))
            {
                return true;
            }

            if (alreadyPostNumber < allowPostNumber)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        #endregion

        #region �Ƿ���Բ鿴���߼����е���ϵ��ʽ

        /// <summary>
        /// �Ƿ���Բ鿴���߼����е���ϵ��ʽ
        /// </summary>
        /// <param name="userGradeId">�û��ȼ�Id</param>
        /// <returns>�Ƿ���Բ鿴���߼����е���ϵ��ʽ</returns>
        public static bool IsViewJoinContact(int userGradeId)
        {
            if (userGradeId <= 0) return false;

            Model.UserGradePopedomInfo info = DAL.GetItem(userGradeId);

            //if (info != null && info.IsViewJoinContact)
                //return true;

            return false;
        }

        #endregion

        #region �Ƿ���Բ鿴��ϵ��ʽ

        /// <summary>
        /// �Ƿ���Բ鿴��ϵ��ʽ
        /// </summary>
        /// <param name="infoUserId">��Ϣ������Id</param>
        /// <param name="loginUserId">��ǰ��¼�û�Id</param>
        /// <param name="item">��ϵ��ʽ�����������ҳ�棩</param>
        /// <returns>�Ƿ���Բ鿴��ϵ��ʽ</returns>
        public static Model.ContactsControlRetrunValue IsViewContact(long infoUserId, long loginUserId, XYECOM.Model.ContactsControlItem item)
        {
            if (infoUserId <= 0) return XYECOM.Model.ContactsControlRetrunValue.CanNotSee;

            if (item == XYECOM.Model.ContactsControlItem.Null) return XYECOM.Model.ContactsControlRetrunValue.CanNotSee;

            if (infoUserId == loginUserId) return XYECOM.Model.ContactsControlRetrunValue.CanSee;

            XYECOM.Business.UserReg userRegBLL = new XYECOM.Business.UserReg();

            XYECOM.Configuration.WebInfo webInfo = XYECOM.Configuration.WebInfo.Instance;

            //��ǰ��Ϣ�����ߵ�ע����Ϣ
            XYECOM.Model.UserRegInfo infoUserRegInfo = userRegBLL.GetItem(infoUserId);
            //��ǰ��¼�û���ע����Ϣ
            XYECOM.Model.UserRegInfo curLoginUserRegInfo = null;

            Model.ContactsControlRetrunValue returnValue = XYECOM.Model.ContactsControlRetrunValue.Null;

            bool isLogin = false;

            if (loginUserId > 0)
            {
                //��ǰ��¼�û���ע����Ϣ
                curLoginUserRegInfo = userRegBLL.GetItem(loginUserId);

                if (curLoginUserRegInfo != null) isLogin = true;
            }

            if (!isLogin)
            {
                if (webInfo.IsGuestLookLinkInfo)
                    returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;//���Բ鿴
                else
                    returnValue = XYECOM.Model.ContactsControlRetrunValue.CanNotSee;//�����Բ鿴
            }

            //��ǰ��Ϣ�����߲�Ϊ���ҵ�ǰ��¼�û�Ϊ��ҵ��Աʱ
            if (infoUserRegInfo != null)
            {
                //�����˶��ܲ鿴
                switch (item)
                {
                    case XYECOM.Model.ContactsControlItem.SellOffer:
                        //��Ӧ
                        if (infoUserRegInfo.GradePopedomInfo.SeeBySellOffer) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    case XYECOM.Model.ContactsControlItem.BuyOffer:
                        //��
                        if (infoUserRegInfo.GradePopedomInfo.SeeByBuyOffer) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    case XYECOM.Model.ContactsControlItem.SellMachining:
                        //�ṩ�ӹ�
                        if (infoUserRegInfo.GradePopedomInfo.SeeBySellMachining) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    case XYECOM.Model.ContactsControlItem.BuyMaching:
                        //Ѱ��ӹ�
                        if (infoUserRegInfo.GradePopedomInfo.SeeByBuyMachining) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    case XYECOM.Model.ContactsControlItem.SellInvestment:
                        //����
                        if (infoUserRegInfo.GradePopedomInfo.SeeBySellBusiness) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    case XYECOM.Model.ContactsControlItem.BuyInvestment:
                        //����
                        if (infoUserRegInfo.GradePopedomInfo.SeeByBuyBusiness) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    case XYECOM.Model.ContactsControlItem.SellService:
                        //�ṩ����
                        if (infoUserRegInfo.GradePopedomInfo.SeeBySellService) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    case XYECOM.Model.ContactsControlItem.BuyService:
                        // Ѱ�����
                        if (infoUserRegInfo.GradePopedomInfo.SeeByBuyService) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    case XYECOM.Model.ContactsControlItem.Brand:
                        // Ʒ��
                        if (infoUserRegInfo.GradePopedomInfo.SeeByBrand) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    case XYECOM.Model.ContactsControlItem.Company:
                        // ��ҵ
                        if (infoUserRegInfo.GradePopedomInfo.SeeByCompany) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    default:
                        returnValue = XYECOM.Model.ContactsControlRetrunValue.CanNotSee;
                        break;
                }
            }

            //�����ǰ�û��ѵ�¼��Ϊ���˻�Աʱ�����������ϵ��ʽ
            if (curLoginUserRegInfo != null && !curLoginUserRegInfo.Type) returnValue = XYECOM.Model.ContactsControlRetrunValue.PopedomTooLow;

            //��ǰ�û��ѵ�¼��Ϊ��ҵ��Ա������֮ǰ�жϽ��Ϊ���ܲ鿴��ϵ��ʽʱ�����ж�
            if (isLogin && curLoginUserRegInfo.Type && returnValue != XYECOM.Model.ContactsControlRetrunValue.CanSee)
            {
                if (curLoginUserRegInfo != null)
                {
                    //loginuid = curLoginUserRegInfo.U_ID;
                    //if (id == 0) uid = curLoginUserRegInfo.U_ID;

                    returnValue = XYECOM.Model.ContactsControlRetrunValue.PopedomTooLow;

                    switch (item)
                    {
                        case XYECOM.Model.ContactsControlItem.SellOffer:
                            //��Ӧ
                            if(curLoginUserRegInfo.GradePopedomInfo.UGP_IsSupplyLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.BuyOffer:
                            //��
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsBuyLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.SellMachining:
                            //�ṩ�ӹ�
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsSupplyMachiningLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.BuyMaching:
                            //Ѱ��ӹ�
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsBuyMachiningLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.SellInvestment:
                            //����
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsBuinessLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.BuyInvestment:
                            //����
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsSurrogateLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.SellService:
                            //�ṩ����
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsSupplyServerLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.BuyService:
                            // Ѱ�����
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsBuyServerLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.Brand:
                            // Ʒ��
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsBrandLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.Job:
                            // �˲�
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsJobLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.Company:
                            // ��ҵ
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsCompanyLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                    }
                }
            }

            //�жϿ��Բ鿴������ҵ����
            if (isLogin
                && returnValue == XYECOM.Model.ContactsControlRetrunValue.CanSee
                && curLoginUserRegInfo.Type
                && !curLoginUserRegInfo.GradePopedomInfo.SeeContactsNum.Equals(0))
            {
                if (returnValue == XYECOM.Model.ContactsControlRetrunValue.CanSee)
                {
                    XYECOM.Business.UserData userdataBLL = new XYECOM.Business.UserData();
                    XYECOM.Model.UserData userdatainfo = new XYECOM.Model.UserData();
                    userdatainfo = userdataBLL.GetItem(loginUserId);
                    if (userdatainfo == null)
                    {
                        XYECOM.Model.UserData udinfo = new XYECOM.Model.UserData();
                        udinfo.Uid = loginUserId;
                        udinfo.Companyids = infoUserId + ",";
                        userdataBLL.Insert(udinfo);
                    }
                    else
                    {
                        String[] ids = userdatainfo.Companyids.Split(',');
                        String isHave = "";
                        for (int k = 0; k < (ids.Length - 1); k++)
                        {
                            if (ids[k].Equals(infoUserId.ToString()))
                            {
                                isHave = "1";
                                break;
                            }
                        }
                        if (!isHave.Equals("1"))
                        {
                            XYECOM.Business.UserInfo infoBLL = new XYECOM.Business.UserInfo();
                            XYECOM.Model.UserInfo uinfo = new XYECOM.Model.UserInfo();
                            uinfo = infoBLL.GetItem(Convert.ToInt64(loginUserId));
                            int num = XYECOM.Business.UserGradePopedom.SeeContactsNum(uinfo.RegInfo.GradeId);
                            if ((userdatainfo.Companyids.Split(',').Length) <= num)
                            {
                                userdatainfo.Uid = loginUserId;
                                userdatainfo.Companyids = userdatainfo.Companyids + infoUserId + ",";
                                userdataBLL.Insert(userdatainfo);
                            }
                            else
                            {
                                returnValue = XYECOM.Model.ContactsControlRetrunValue.PopedomTooLow;
                            }
                        }
                    }
                }
            }

            return returnValue;
        }

        /// <summary>
        /// �Ƿ���Բ鿴��ϵ��ʽ
        /// </summary>
        /// <param name="infoUserId">��Ϣ������Id</param>
        /// <param name="loginUserId">��ǰ��¼�û�Id</param>
        /// <param name="pageFlag">ҳ���ʶ</param>
        /// <returns>�Ƿ���Բ鿴��ϵ��ʽ</returns>
        public static Model.ContactsControlRetrunValue IsViewContact(long infoUserId, long loginUserId, string pageFlag)
        {
            return IsViewContact(infoUserId, loginUserId,GetContactsControlItem(pageFlag));
        }

        /// <summary>
        /// ����ҳ���ʶ���ؾ��������
        /// </summary>
        /// <param name="pageFlag">ҳ���ʶ</param>
        /// <returns></returns>
        private static Model.ContactsControlItem GetContactsControlItem(string pageFlag)
        {
            switch (pageFlag)
            {
                case "selloffer":
                    //��Ӧ
                    return XYECOM.Model.ContactsControlItem.SellOffer;
                case "buyoffer":
                    //��
                    return XYECOM.Model.ContactsControlItem.BuyOffer;
                case "sellmachining":
                    //�ṩ�ӹ�
                    return XYECOM.Model.ContactsControlItem.SellMachining;
                case "buymachining":
                    //Ѱ��ӹ�
                    return XYECOM.Model.ContactsControlItem.BuyMaching;
                case "sellinvestment":
                    //����
                    return XYECOM.Model.ContactsControlItem.SellInvestment;
                case "buyinvestment":
                    //����
                    return XYECOM.Model.ContactsControlItem.BuyInvestment;
                case "sellservice":
                    //�ṩ����
                    return XYECOM.Model.ContactsControlItem.SellService;
                case "buyservice":
                    // Ѱ�����
                    return XYECOM.Model.ContactsControlItem.BuyService;
                case "brand":
                    // Ʒ��
                    return XYECOM.Model.ContactsControlItem.Brand;
                case "job":
                    // �˲�
                    return XYECOM.Model.ContactsControlItem.Job;
                case "company":
                    // ��ҵ
                    return XYECOM.Model.ContactsControlItem.Company;
            }
            return XYECOM.Model.ContactsControlItem.Null;
        }

        #endregion

        /// <summary>
        /// �Ƿ���˹ؼ���
        /// </summary>
        /// <param name="userGradeId">�û��ȼ�Id</param>
        /// <returns>�Ƿ���˹ؼ���</returns>
        public static bool IsLeachKeyword(int userGradeId)
        {
            if (userGradeId <= 0) return true;

            Model.UserGradePopedomInfo info = DAL.GetItem(userGradeId);

            if (info != null)return info.UGP_IsLeachKeyWord;

            return true;
        }
    }
}
