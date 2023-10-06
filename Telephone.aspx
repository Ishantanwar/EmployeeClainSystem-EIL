<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Medical.aspx.cs" Inherits="Medical" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="STYLE.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: right;
            width: 928px;
        }
        .auto-style3 {
            text-align: left;
            height: 36px;
            width: 299px;
        }
        .auto-style7 {
            width: 270px;
            text-align: center;
            height: 50px;
        }
        .auto-style8 {
            width: 182px;
            text-align: center;
            height: 50px;
        }
        .auto-style9 {
            width: 237px;
            text-align: center;
            height: 50px;
        }
        .auto-style10 {
            width: 955px;
            height: 129px;
        }
        .auto-style11 {
            width: 214px;
            text-align: center;
            height: 50px;
        }
        .auto-style13 {
            width: 154px;
            text-align: center;
            height: 50px;
        }
        .auto-style33 {
            width: 182px;
            height: 50px;
        }
        .auto-style34 {
            width: 214px;
            height: 50px;
        }
        .auto-style35 {
            width: 237px;
            height: 50px;
        }
        .auto-style37 {
            width: 270px;
            height: 50px;
        }
        .auto-style38 {
            font-size: small;
        }
    </style>
    <h1 class="auto-style1">
        Telephone/Mobile Reimbursement[EIL]</h1>
    <h2 class="auto-style3">
        Telephone/Mobile Details
    </h2>
    <h4>
        <asp:Label ID="Label10" runat="server" Text="*please Enter the details correctly"></asp:Label>
    </h4>
</head>
    <body style="text-align: justify">
        <form id="form1" runat="server">
            <div style="height: 27px">
    
        <asp:Label ID="Label1" runat="server" Text="Telephone/Mobile No."></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registered Under<strong>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Self" />
&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Spouse" />
&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox3" runat="server" Text="Parents" />
&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox4" runat="server" Text="Children" />
            <br />
        </div>
        <div>

            <br />
            <asp:Label ID="Label11" runat="server" Text="Type of Connection"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Postpaid</asp:ListItem>
                <asp:ListItem>Prepaid</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            Bill Amount<strong>:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" style="color: #3333FF; font-weight: 700" Text="₹"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Billing Cycle<strong>:&nbsp;&nbsp; </strong>&nbsp;From&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To<strong>:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            </strong>
            <table border="1" class="auto-style10">
                <tr>
                    <td class="auto-style8">Month</td>
                    <td class="auto-style7" colspan="2">Billed Amount</td>
                    <td class="auto-style11">Total</td>
                    <td class="auto-style9">Claimed Amount (sanctioned)</td>
                </tr>
                <tr>
                    <td class="auto-style33"></td>
                    <td class="auto-style13">Mobile</td>
                    <td class="auto-style13">Landline</td>
                    <td class="auto-style34"></td>
                    <td class="auto-style35"></td>
                </tr>
                <tr>
                    <td class="auto-style33"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style34"></td>
                    <td class="auto-style35"></td>
                </tr>
                <tr>
                    <td class="auto-style33"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style34"></td>
                    <td class="auto-style35"></td>
                </tr>
            </table>

        </div>
            <br class="auto-style38" />
            <h3 style="text-align: left">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style38" Height="41px" style="color: #3333FF; margin-left: 286px; margin-top: 13px" Text="Save Details" Width="362px" />
            </h3>
    </form>
</body>
</html>
