<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="SalesStaffWebPage._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  &nbsp;<style type="text/css">
        .auto-style4 {
            width: 86px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
            width: 316px;
            margin-left: 622px;
        }
        .auto-style8 {
            width: 86px;
            height: 38px;
        }
        .auto-style16 {
            width: 1px;
            height: 29px;
        }
        .auto-style19 {
            height: 38px;
            text-align: center;
        }
        .auto-style20 {
            color: #FFFFFF;
            margin-left: 0px;
            background-color: #9EAA99;
        }
        .auto-style21 {
            width: 200px;
            color: #9EAA99;
            text-align: center;
            margin-left: 664px;
            background-color: #FFFFFF;
        }
        .auto-style22 {
            margin-left: 583px;
        }
        .auto-style25 {
            height: 38px;
            width: 1px;
        }
        .auto-style28 {
            width: 90px;
            height: 38px;
        }
        .auto-style29 {
            width: 90px;
            height: 29px;
        }
        .auto-style30 {
            width: 11px;
            height: 38px;
        }
        .auto-style31 {
            width: 11px;
            height: 29px;
        }
        .auto-style35 {
            color: #9EAA99;
        }
    </style></head><body><form id="form1" runat="server">
        <h1 class="auto-style21">Login Page</h1>
        <table class="auto-style6" align="center">
            <tr>
                <td class="auto-style8" dir="ltr">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:" CssClass="auto-style35"></asp:Label>
                </td>
                <td class="auto-style28">
                    <asp:TextBox ID="TxtboxEmail" runat="server" CssClass="auto-style35" ToolTip="Enter Email Here"></asp:TextBox>
                </td>
                <td class="auto-style25" dir="rtl">
                    <asp:RequiredFieldValidator ID="EmailRequiredVal" runat="server" ControlToValidate="TxtboxEmail" ErrorMessage="EMAIL CANNOT BE BLANK" ForeColor="Red" CssClass="auto-style35" Display="Dynamic">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style30">
                    <asp:RegularExpressionValidator ID="EmailExpressionValidator" runat="server" ControlToValidate="TxtboxEmail" CssClass="auto-style35" Display="None" ErrorMessage="Enter Valid Email" ValidationExpression="[a-zA-z0-9_\-\.]+[@][a-z]+[\.][a-z]{2,3}"> </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblZipCode" runat="server" Text="Zip-Code:" CssClass="auto-style35"></asp:Label>
                </td>
                <td class="auto-style29">
                    <asp:TextBox ID="TxtboxZipCode" runat="server" CssClass="auto-style35" ToolTip="Enter Zipcode Here"></asp:TextBox>
                </td>
                <td class="auto-style16" dir="rtl">
                    <asp:RequiredFieldValidator ID="ZipRequiredVal" runat="server" ControlToValidate="TxtboxZipCode" ErrorMessage="ZIPCODE CANNOT BE BLANK" ForeColor="Red" CssClass="auto-style35" Display="Dynamic">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style31">
                    <asp:RangeValidator ID="ZipRangeValidator" runat="server" ControlToValidate="TxtboxZipCode" CssClass="auto-style35" Display="None" ErrorMessage="ZIPCODE MUST BE BETWEEN 11111 AND 99999 " MaximumValue="99999" MinimumValue="10000"></asp:RangeValidator>
                </td>
            </tr>
        </table>
        <div class="auto-style19">
            <asp:Button ID="BtnLogin" runat="server" CssClass="auto-style20" Text="Login" ToolTip="Click To Login" Width="100px" />
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary" runat="server" CssClass="auto-style22" ForeColor="Red" Width="410px" />
            <br />
        </div>
    </form>
        </body>
</html>
