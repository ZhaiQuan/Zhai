using System;
using System.Collections.Generic;
using System.Text;

namespace XYECOM.Model
{
    /// <summary>
    /// ������Ϣʵ����
    /// </summary>
    public class IndividualInfo
    {
        public IndividualInfo()
        { }
        /// <summary>
        /// ʵ���� ������Ϣ
        /// </summary>
        /// <param name="u_id">�û�id</param>
        /// <param name="name">��ʵ����</param>
        /// <param name="sex">�Ա�</param>
        /// <param name="code">���֤��</param>
        /// <param name="address">��ϵ��ַ</param>
        /// <param name="phone">��ϵ�绰</param>
        /// <param name="postcode">��������</param>
        /// <param name="mobil">�ֻ�</param>
        /// <param name="flag">�û���ʾ</param>
        public IndividualInfo(long userId, string name, string sex, string code, int areaId, string address, string phone, string postcode, string mobil, int flag, string u_email,int accountId)
        {
            this._u_id = userId;
            this._ui_name = name;
            if (sex == "true")
            {
                this._ui_sex = true;
            }else
            {
                this._ui_sex = false;            }
            
            this._ui_code = code;
            this._ui_address = address;
            this._ui_postcode = postcode;
            this._telephone = phone;
            this._ui_postcode = postcode;
            this._ui_mobil = mobil;
            this._ui_flag = flag;
            this._AreaId = areaId;
            this._u_email = u_email;
            this._u_accountid = accountId;
        }

		private long _u_id;
		private string _ui_name;
		private bool _ui_sex;
		private string _ui_code;
		private string _ui_address;
		private string _telephone;
		private string _ui_postcode;
		private string _ui_mobil;
		private int  _ui_flag;
        private int _AreaId;
        private string _u_email;
        private int _u_accountid;
		/// <summary>
		/// �û����
		/// </summary>
		public long U_ID
		{
		   set{ _u_id=value;}
		   get{return _u_id;}
		}
		/// <summary>
		/// ��ʵ����
		/// </summary>
		public string UI_Name
		{
		   set{ _ui_name=value;}
		   get{return _ui_name;}
		}
		/// <summary>
		/// �Ա�
		/// </summary>
		public bool UI_Sex
		{
		   set{ _ui_sex=value;}
		   get{return _ui_sex;}
		}
		/// <summary>
		/// ���֤��
		/// </summary>
		public string UI_Code
		{
		   set{ _ui_code=value;}
		   get{return _ui_code;}
		}
        /// <summary>
        /// ���ڳ���
        /// </summary>
        public int AreaID
        {
            set { _AreaId = value; }
            get { return _AreaId; }
        }
		/// <summary>
		///������ϵ��ַ 
		/// </summary>
		public string UI_Address
		{
		   set{ _ui_address=value;}
		   get{return _ui_address;}
		}
		/// <summary>
		///��ϵ�绰 
		/// </summary>
		public string Telephone
		{
		   set{ _telephone=value;}
		   get{return _telephone;}
		}
		/// <summary>
		///�������� 
		/// </summary>
		public string UI_Postcode
		{
		   set{ _ui_postcode=value;}
		   get{return _ui_postcode;}
		}
		/// <summary>
		/// �ֻ����� 
		/// </summary>
		public string UI_Mobil
		{
		   set{ _ui_mobil=value;}
		   get{return _ui_mobil;}
		}
		/// <summary>
        /// �û���ʶ
		/// </summary>
		public int UI_Flag
		{
		   set{ _ui_flag=value;}
		   get{return _ui_flag;}
		}

        /// <summary>
        /// ע������
        /// </summary>
        public string U_Email
        {
            get {return _u_email; }
            set { _u_email = value; }
        }

        /// <summary>
        /// �˻�Id
        /// </summary>
        public int AccountId
        {
            get { return _u_accountid; }
            set { _u_accountid = value; }
        }
    }
}
