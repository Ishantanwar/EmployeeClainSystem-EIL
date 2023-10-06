<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RK.aspx.cs" Inherits="RK" %>


<!DOCTYPE html>
<script runat="server">

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="STYLE.css" rel="stylesheet" />

    <!-- Add CSS styles for the navigation bar here -->
    <style>
        .navbar {
            background-color: #333;
            overflow: hidden;
            height: 46px;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        #form1 {
            height: 313px;
        }
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>

    <h1 class="auto-style1">
        Engineers India Ltd.(EIL)
    </h1>
    <h2>Employee Claim System</h2>

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
            <table class="auto-style1">
                <!-- Your existing form content goes here -->
            </table>
        </div>

    <table class="auto-style1">
        <!-- Additional page content goes here -->
                  
    </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Emp Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <p style="margin-left: 80px">
            <asp:Label ID="Label2" runat="server" Text="Emp ID"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"  TextMode="Number"></asp:TextBox>
        </p>
        <p style="margin-left: 80px">
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"  TextMode="Email"></asp:TextBox>
        </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Pwd"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"  TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Confirm pwd"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="message" runat="server" Text="Submit" OnClick="Button1_Click" Font-Bold="True" />
        

       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ViewStateMode="Enabled"></asp:SqlDataSource>
        <%--trail--%>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="E_NAME" HeaderText="E_NAME" SortExpression="E_NAME" />
                <asp:BoundField DataField="E_ID" HeaderText="E_ID" SortExpression="E_ID" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            </Columns>
        </asp:GridView>

        
    </form>

    </body>
</html>

