<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IncomeTax.aspx.cs" Inherits="IncomeTax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="STYLE.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style10 {
            width: 834px;
            height: 133px;
        }
        .auto-style16 {
            width: 207px;
            text-align: center;
            font-weight: bold;
        }
        .auto-style17 {
            width: 207px;
            height: 26px;
        }
        .auto-style18 {
            width: 208px;
            height: 26px;
        }
        .auto-style29 {
            width: 207px;
            height: 27px;
        }
        .auto-style30 {
            width: 208px;
            height: 27px;
        }
        .auto-style31 {
            width: 207px;
            height: 26px;
            text-align: center;
        }
        .auto-style32 {
            width: 207px;
            height: 27px;
            text-align: center;
        }
        .auto-style33 {
            height: 26px;
            text-align: center;
            font-weight: bold;
        }
        .auto-style34 {
            text-align: left;
        }
    </style>
    <h1 class="auto-style1">
        Income Tax Return [EIL]
    </h1>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar">
        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl="RK.aspx">Home</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="#">Claim Type</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Medical.aspx">Medical</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="Telephone.aspx">Telephone</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="Conveyance.aspx">Conveyance</asp:HyperLink>
        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="IncomeTax.aspx">Income Tax</asp:HyperLink>
        <asp:HyperLink ID="lnkPension" runat="server" NavigateUrl="#Pension" Text="Pension" />

    
    </div>
    <div>
    
        <div class="auto-style34">
    
            <br />
    
            <br />
    
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
    
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Employee ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tax Claimed (last month)<strong>:</strong><asp:RadioButton ID="RadioButton1" runat="server" Text="Yes" />
&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" Text="No" />
        <br />
        <br />
        Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Invoice Generated (last month)&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tax Claimed (amount)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        <br />
        PAN ID&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Adhaar No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox8" runat="server" TextMode="Number"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date<strong>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox9" runat="server" TextMode="Date"></asp:TextBox>
        <br />
            <br />
            <br />
        </strong>
        Address (current address) and PIN/ZIP Code<strong>&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Width="595px"></asp:TextBox>
            <br />
            <br />
        </strong>
        </div>
        <h2>Income Tax Details</h2>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Gross Total Income "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox10" runat="server" TextMode="Number"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Deductions (per tax slab)&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Income&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        </p>
        <p>
            Net Tax Payable&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Interest Payable &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
         <table border="1" class="auto-style10">
                <tr>
                    <td class="auto-style16" rowspan="5">Taxes Paid</td>
                    <td class="auto-style33">Type Of Tax Paid</td>
                    <td class="auto-style33">Amount Paid</td>
                    <td class="auto-style16">Total</td>
                </tr>
                <tr>
                    <td class="auto-style31">Advance Tax</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style32">TCS</td>
                    <td class="auto-style30"></td>
                    <td class="auto-style29"></td>
                </tr>
                <tr>
                    <td class="auto-style32">TDS</td>
                    <td class="auto-style30"></td>
                    <td class="auto-style29"></td>
                </tr>
                <tr>
                    <td class="auto-style31">Self Assessment Tax</td>
                    <td class="auto-style18"></td>
                    <td class="auto-style17"></td>
                </tr>
            </table>
    
    </div>
        <p>
            &nbsp;</p>
        <asp:Button ID="Button1" runat="server" style="margin-left: 314px" Text="Submit" Width="232px" />
        <br />
        <br />
    </form>
</body>
</html>
