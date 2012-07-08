<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectUserGroup.aspx.cs"
    Inherits="XYECOM.Web.xymanage.LabelManage.SelectUserGroup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>专题类别管理</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
    <link href="/common/css/xylib.css" type="text/css" rel="stylesheet" />
    <script language="javascript" type="text/javascript" src="/common/js/base.js"></script>
    <script type="text/javascript">
        function SelectedAndClose() {
            var objid = $("seltopictypelist").getElementsByTagName("input");
            var objname = $("seltopictypelist").getElementsByTagName("label");
            var objparentid = parent.$("hidGroupIds");
            var objparentname = parent.$("spanGroupNames");

            var ids = "";
            var names = "";
            for (var i = 0; i < objid.length; i++) {
                if (objid[i].checked) {
                    ids += "" == ids ? "" : ",";
                    ids += objid[i].value;
                    names += " &nbsp; " + objname[i].innerHTML;
                }
            }
            objparentid.value = ids;
            objparentname.innerHTML = names;
            parent.CloseSelect();
        }
        window.onload = function () {
            var objparentid = parent.$F("hidGroupIds");
            var ids = objparentid.split(",");
            if (ids != null && ids.length > 0) {
                for (var i = 0; i < ids.length; i++) {
                    var ck = $("cbsel_" + ids[i]);
                    if (ck != null) {
                        ck.checked = "checked";
                    }
                }
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="seltopictype_list" id="seltopictypelist">
        <asp:Repeater ID="rptList" runat="server">
            <ItemTemplate>
                <li>
                    <input type="checkbox" id="<%# string.Format("cbsel_{0}",Eval("GradeId")) %>" value='<%# Eval("GradeId") %>' />
                    <label for="<%# string.Format("cbsel_{0}",Eval("GradeId")) %>">
                        <%# Eval("GradeName")%>
                    </label>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div>
        <input id="btnOk" type="button" class="button" runat="server" value="确定" onclick="SelectedAndClose()" />
        <input id="BtnEsc" type="button" class="button" value="取消" onclick="parent.CloseSelect()" />
    </div>
    </form>
</body>
</html>
