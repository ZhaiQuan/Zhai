using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

namespace XYECOM.Business
{   
    /// <summary>
    /// 用户等级权限表
    /// </summary>
    public class UserGradePopedom
    {          
        private static readonly XYECOM.SQLServer.UserGradePopedom DAL = new XYECOM.SQLServer.UserGradePopedom();

        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="info">实体对象</param>
        /// <returns>影响行数</returns>
        public int Insert(XYECOM.Model.UserGradePopedomInfo info)
        {
            if (null == info) return 0;

            return DAL.Insert(info);
        }

        /// <summary>
        /// 更新
        /// </summary>
        /// <param name="info">实体对象</param>
        /// <returns>影响行数</returns>
        public int Update(XYECOM.Model.UserGradePopedomInfo info)
        {
            if (null == info) return 0;

            return DAL.Update(info);
        }

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="UGP_ID">编号Id</param>
        /// <returns>影响行数</returns>
        public int Delete(int UGP_ID)
        {
            if (UGP_ID <= 0) return 0;

            return DAL.Delete(UGP_ID);
        }

        /// <summary>
        /// 获取用户等级权限信息
        /// </summary>
        /// <param name="userGradeId">用户等级编号</param>
        /// <returns>实体对象</returns>
        public Model.UserGradePopedomInfo GetItem(int userGradeId)
        {
            if (userGradeId <= 0) return null;

            return DAL.GetItem(userGradeId);
        }

        /// <summary>
        /// 用户是否可以在线IM交谈
        /// </summary>
        /// <param name="userGradeId">用户等级ID</param>
        /// <returns>是否可以在线交谈</returns>
        public static bool IsIMOnLine(int userGradeId)
        {
            if (userGradeId <= 0) return false;

            Model.UserGradePopedomInfo info = DAL.GetItem(userGradeId);

            if (info != null && info.IsIMOnlineTalk)
                return true;

            return false;
        }

        /// <summary>
        /// 用户是否可以开设网点
        /// </summary>
        /// <param name="userGradeId">用户等级ID</param>
        /// <returns>是否可以开设网点</returns>
        public static bool IsShop(int userGradeId)
        {
            if (userGradeId <= 0) return false;

            Model.UserGradePopedomInfo info = DAL.GetItem(userGradeId);

            if (info != null && info.UGP_IsShop)
                return true;

            return false;
        }


        /// <summary>
        /// 是否可以开启二级域名
        /// </summary>
        /// <param name="userGradeId">用户等级ID</param>
        /// <returns>是否可以开启二级域名</returns>
        public static bool IsSubdomain(int userGradeId)
        {
            if (userGradeId <= 0) return false;

            Model.UserGradePopedomInfo info = DAL.GetItem(userGradeId);

            if (info != null && info.IsSubdomain)
                return true;

            return false;
        }


        /// <summary>
        /// 是否可以绑定顶级域名
        /// </summary>
        /// <param name="userGradeId">用户等级ID</param>
        /// <returns>是否可以绑定顶级域名</returns>
        public static bool IsBindingTopdomain(int userGradeId)
        {
            if (userGradeId <= 0) return false;

            Model.UserGradePopedomInfo info = DAL.GetItem(userGradeId);

            if (info != null && info.IsBindingTopdomain)
                return true;

            return false;
        }



        /// <summary>
        /// 用户是否查看收费新闻
        /// </summary>
        /// <param name="userGradeId">用户等级ID</param>
        /// <returns>是否查看收费新闻</returns>
        public static bool IsShowChargeNews(int userGradeId)
        {
            if (userGradeId <= 0) return false;

            Model.UserGradePopedomInfo info = DAL.GetItem(userGradeId);

            if (info != null && info.IsShowChargeNews)
                return true;

            return false;
        }

        /// <summary>
        /// 用户上传图片的张数
        /// </summary>
        /// <param name="userGradeId">用户等级ID</param>
        /// <returns>影响行数</returns>
        public static int UploadPicNum(int userGradeId)
        {
            Model.UserGradePopedomInfo info = DAL.GetItem(userGradeId);

            if (info != null && !info.UploadPicNum.Equals(0))
                return info.UploadPicNum;
            else
                return 0;
        }

        /// <summary>
        /// 用户可查看联系方式条数
        /// </summary>
        /// <param name="userGradeId">用户等级ID</param>
        /// <returns>用户可查看联系方式的条数</returns>
        public static int SeeContactsNum(int userGradeId)
        {
            Model.UserGradePopedomInfo info = DAL.GetItem(userGradeId);
            if (info != null && !info.SeeContactsNum.Equals(0))
                return info.SeeContactsNum;
            else
                return 0;
        }

        /// <summary>
        /// 获取指定用户组在指定模块允许发布的信息条数
        /// </summary>
        /// <param name="gradeId">用户组Id</param>
        /// <param name="moduleName">模块名称</param>
        /// <returns>指定用户在制定模块允许发布的信息条数</returns>
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
        /// 判断是否还可以发布信息
        /// </summary>
        /// <param name="userId">用户编号id</param>
        /// <param name="moduleName">模板名称</param>
        /// <returns>可以发布信息的条数</returns>
        public static int GetAlreadyPostInfoNumberForModule(long userId, string moduleName)
        {
            XYECOM.Configuration.ModuleInfo module = XYECOM.Configuration.Module.Instance.GetItem(moduleName);

            Business.UserInfo userBLL = new UserInfo();

            Model.UserInfo userInfo = userBLL.GetItem(userId);

            if (userInfo == null) return 0;

            //数据库方面
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

        #region 是否可以进行添加操作
        /// <summary>
        /// 是否可以进行信息添加操作
        /// </summary>
        /// <param name="modulename">模块名称</param>
        /// <returns>是否可以进行信息添加操作</returns>
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

        #region 是否可以查看在线加盟中的联系方式

        /// <summary>
        /// 是否可以查看在线加盟中的联系方式
        /// </summary>
        /// <param name="userGradeId">用户等级Id</param>
        /// <returns>是否可以查看在线加盟中的联系方式</returns>
        public static bool IsViewJoinContact(int userGradeId)
        {
            if (userGradeId <= 0) return false;

            Model.UserGradePopedomInfo info = DAL.GetItem(userGradeId);

            //if (info != null && info.IsViewJoinContact)
                //return true;

            return false;
        }

        #endregion

        #region 是否可以查看联系方式

        /// <summary>
        /// 是否可以查看联系方式
        /// </summary>
        /// <param name="infoUserId">信息发布者Id</param>
        /// <param name="loginUserId">当前登录用户Id</param>
        /// <param name="item">联系方式控制项（即具体页面）</param>
        /// <returns>是否可以查看联系方式</returns>
        public static Model.ContactsControlRetrunValue IsViewContact(long infoUserId, long loginUserId, XYECOM.Model.ContactsControlItem item)
        {
            if (infoUserId <= 0) return XYECOM.Model.ContactsControlRetrunValue.CanNotSee;

            if (item == XYECOM.Model.ContactsControlItem.Null) return XYECOM.Model.ContactsControlRetrunValue.CanNotSee;

            if (infoUserId == loginUserId) return XYECOM.Model.ContactsControlRetrunValue.CanSee;

            XYECOM.Business.UserReg userRegBLL = new XYECOM.Business.UserReg();

            XYECOM.Configuration.WebInfo webInfo = XYECOM.Configuration.WebInfo.Instance;

            //当前信息发布者的注册信息
            XYECOM.Model.UserRegInfo infoUserRegInfo = userRegBLL.GetItem(infoUserId);
            //当前登录用户的注册信息
            XYECOM.Model.UserRegInfo curLoginUserRegInfo = null;

            Model.ContactsControlRetrunValue returnValue = XYECOM.Model.ContactsControlRetrunValue.Null;

            bool isLogin = false;

            if (loginUserId > 0)
            {
                //当前登录用户的注册信息
                curLoginUserRegInfo = userRegBLL.GetItem(loginUserId);

                if (curLoginUserRegInfo != null) isLogin = true;
            }

            if (!isLogin)
            {
                if (webInfo.IsGuestLookLinkInfo)
                    returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;//可以查看
                else
                    returnValue = XYECOM.Model.ContactsControlRetrunValue.CanNotSee;//不可以查看
            }

            //当前信息发布者不为空且当前登录用户为企业会员时
            if (infoUserRegInfo != null)
            {
                //所有人都能查看
                switch (item)
                {
                    case XYECOM.Model.ContactsControlItem.SellOffer:
                        //供应
                        if (infoUserRegInfo.GradePopedomInfo.SeeBySellOffer) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    case XYECOM.Model.ContactsControlItem.BuyOffer:
                        //求购
                        if (infoUserRegInfo.GradePopedomInfo.SeeByBuyOffer) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    case XYECOM.Model.ContactsControlItem.SellMachining:
                        //提供加工
                        if (infoUserRegInfo.GradePopedomInfo.SeeBySellMachining) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    case XYECOM.Model.ContactsControlItem.BuyMaching:
                        //寻求加工
                        if (infoUserRegInfo.GradePopedomInfo.SeeByBuyMachining) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    case XYECOM.Model.ContactsControlItem.SellInvestment:
                        //招商
                        if (infoUserRegInfo.GradePopedomInfo.SeeBySellBusiness) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    case XYECOM.Model.ContactsControlItem.BuyInvestment:
                        //代理
                        if (infoUserRegInfo.GradePopedomInfo.SeeByBuyBusiness) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    case XYECOM.Model.ContactsControlItem.SellService:
                        //提供服务
                        if (infoUserRegInfo.GradePopedomInfo.SeeBySellService) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    case XYECOM.Model.ContactsControlItem.BuyService:
                        // 寻求服务
                        if (infoUserRegInfo.GradePopedomInfo.SeeByBuyService) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    case XYECOM.Model.ContactsControlItem.Brand:
                        // 品牌
                        if (infoUserRegInfo.GradePopedomInfo.SeeByBrand) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    case XYECOM.Model.ContactsControlItem.Company:
                        // 企业
                        if (infoUserRegInfo.GradePopedomInfo.SeeByCompany) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                        break;
                    default:
                        returnValue = XYECOM.Model.ContactsControlRetrunValue.CanNotSee;
                        break;
                }
            }

            //如果当前用户已登录且为个人会员时不允许产看联系方式
            if (curLoginUserRegInfo != null && !curLoginUserRegInfo.Type) returnValue = XYECOM.Model.ContactsControlRetrunValue.PopedomTooLow;

            //当前用户已登录其为企业会员，并且之前判断结果为不能查看联系方式时继续判断
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
                            //供应
                            if(curLoginUserRegInfo.GradePopedomInfo.UGP_IsSupplyLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.BuyOffer:
                            //求购
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsBuyLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.SellMachining:
                            //提供加工
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsSupplyMachiningLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.BuyMaching:
                            //寻求加工
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsBuyMachiningLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.SellInvestment:
                            //招商
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsBuinessLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.BuyInvestment:
                            //代理
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsSurrogateLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.SellService:
                            //提供服务
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsSupplyServerLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.BuyService:
                            // 寻求服务
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsBuyServerLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.Brand:
                            // 品牌
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsBrandLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.Job:
                            // 人才
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsJobLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                        case XYECOM.Model.ContactsControlItem.Company:
                            // 企业
                            if (curLoginUserRegInfo.GradePopedomInfo.UGP_IsCompanyLinkMathod) returnValue = XYECOM.Model.ContactsControlRetrunValue.CanSee;
                            break;
                    }
                }
            }

            //判断可以查看几条企业资料
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
        /// 是否可以查看联系方式
        /// </summary>
        /// <param name="infoUserId">信息发布者Id</param>
        /// <param name="loginUserId">当前登录用户Id</param>
        /// <param name="pageFlag">页面标识</param>
        /// <returns>是否可以查看联系方式</returns>
        public static Model.ContactsControlRetrunValue IsViewContact(long infoUserId, long loginUserId, string pageFlag)
        {
            return IsViewContact(infoUserId, loginUserId,GetContactsControlItem(pageFlag));
        }

        /// <summary>
        /// 根据页面标识返回具体控制项
        /// </summary>
        /// <param name="pageFlag">页面标识</param>
        /// <returns></returns>
        private static Model.ContactsControlItem GetContactsControlItem(string pageFlag)
        {
            switch (pageFlag)
            {
                case "selloffer":
                    //供应
                    return XYECOM.Model.ContactsControlItem.SellOffer;
                case "buyoffer":
                    //求购
                    return XYECOM.Model.ContactsControlItem.BuyOffer;
                case "sellmachining":
                    //提供加工
                    return XYECOM.Model.ContactsControlItem.SellMachining;
                case "buymachining":
                    //寻求加工
                    return XYECOM.Model.ContactsControlItem.BuyMaching;
                case "sellinvestment":
                    //招商
                    return XYECOM.Model.ContactsControlItem.SellInvestment;
                case "buyinvestment":
                    //代理
                    return XYECOM.Model.ContactsControlItem.BuyInvestment;
                case "sellservice":
                    //提供服务
                    return XYECOM.Model.ContactsControlItem.SellService;
                case "buyservice":
                    // 寻求服务
                    return XYECOM.Model.ContactsControlItem.BuyService;
                case "brand":
                    // 品牌
                    return XYECOM.Model.ContactsControlItem.Brand;
                case "job":
                    // 人才
                    return XYECOM.Model.ContactsControlItem.Job;
                case "company":
                    // 企业
                    return XYECOM.Model.ContactsControlItem.Company;
            }
            return XYECOM.Model.ContactsControlItem.Null;
        }

        #endregion

        /// <summary>
        /// 是否过滤关键字
        /// </summary>
        /// <param name="userGradeId">用户等级Id</param>
        /// <returns>是否过滤关键字</returns>
        public static bool IsLeachKeyword(int userGradeId)
        {
            if (userGradeId <= 0) return true;

            Model.UserGradePopedomInfo info = DAL.GetItem(userGradeId);

            if (info != null)return info.UGP_IsLeachKeyWord;

            return true;
        }
    }
}
