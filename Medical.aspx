<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Medical.aspx.cs" Inherits="Medical" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="STYLE.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {}
        .auto-style3 {
            text-align: left;
            height: 36px;
            width: 332px;
        }
        #form1 {
            text-align: center;
        }
        .auto-style4 {
            text-align: justify;
        }
        .auto-style5 {
            text-align: left;
        }
    </style>
    <h1 class="auto-style1">
        Medical Claim [EIL]</h1>
    <h2 class="auto-style3">
        Patient Details
    </h2>
    <h4>
        <asp:Label ID="Label10" runat="server" Text="*please Enter the details correctly" style="font-style: italic; text-align: center"></asp:Label>
    </h4>
</head>
<body style="text-align: justify">
    <form id="form1" runat="server">
        <div class="auto-style4">
    <div class="auto-style5">
    
        <asp:Label ID="Label1" runat="server" Text="Name of policy holder"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>&nbsp;</b><asp:Label ID="Label2" runat="server" Text="ID No." CssClass="auto-style2"></asp:Label>
        <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
        <br />
    
    </div>
            <div class="auto-style4">
        <br />
        <asp:Label ID="Label3" runat="server" Text="Patient Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label5" runat="server" Text="Hospital Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Patient Age"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Prev Medical Cond <strong>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Yes" />
&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox2" runat="server" Text="No" />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Relationship with patient" style="font-weight: 700"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label13" runat="server" Text="Injections (if any)"></asp:Label>
                <strong>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                <asp:RadioButton ID="RadioButton3" runat="server" Text="Yes" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton4" runat="server" Text="No" />
        <br />
            </div>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
            <asp:ListItem>self</asp:ListItem>
            <asp:ListItem>spouse</asp:ListItem>
            <asp:ListItem>parents</asp:ListItem>
            <asp:ListItem>children</asp:ListItem>
        </asp:RadioButtonList>
            <div class="auto-style5">
        <strong>
        <br />
        </strong>Admit Date&nbsp;<strong>&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Discharge Date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Billing Amount"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" TextMode="Number"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Invoice No."></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <br />
                <br />
                Insurance Amount(if any)&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server" Text="Medicine Prescribed"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Yes" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" Text="No" />
                <br />
                <br />
                <asp:Label ID="Label12" runat="server" Text="Tests Prescribed"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>LFT</asp:ListItem>
                <asp:ListItem>KFT</asp:ListItem>
                <asp:ListItem>CBC</asp:ListItem>
                <asp:ListItem>Cholestrol</asp:ListItem>
                <asp:ListItem>Thyroid</asp:ListItem>
            </asp:CheckBoxList>
            <div class="auto-style4">
                <br />
                Diagnosis Conclusion<strong>:&nbsp;&nbsp;&nbsp; </strong>
                <asp:TextBox ID="TextBox11" runat="server" Width="679px"></asp:TextBox>
                <br />
                <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" ForeColor="#0000CC" Height="24px" style="text-align: center; font-weight: 700; margin-left: 266px;" Text="Submit" Width="283px" />
    &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
            </div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_NO" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="POLICY_HOLD_NAME" HeaderText="POLICY_HOLD_NAME" SortExpression="POLICY_HOLD_NAME" />
                <asp:BoundField DataField="ID_NO" HeaderText="ID_NO" ReadOnly="True" SortExpression="ID_NO" />
                <asp:BoundField DataField="PATIENT_NAME" HeaderText="PATIENT_NAME" SortExpression="PATIENT_NAME" />
                <asp:BoundField DataField="P_AGE" HeaderText="P_AGE" SortExpression="P_AGE" />
                <asp:BoundField DataField="HOSPITAL_NAME" HeaderText="HOSPITAL_NAME" SortExpression="HOSPITAL_NAME" />
                <asp:BoundField DataField="ADMIT_DATE" HeaderText="ADMIT_DATE" SortExpression="ADMIT_DATE" />
                <asp:BoundField DataField="DISCHARGE_DATE" HeaderText="DISCHARGE_DATE" SortExpression="DISCHARGE_DATE" />
                <asp:BoundField DataField="INVOICE_NUMBER" HeaderText="INVOICE_NUMBER" SortExpression="INVOICE_NUMBER" />
                <asp:BoundField DataField="BILL" HeaderText="BILL" SortExpression="BILL" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;MED02&quot;"></asp:SqlDataSource>
    </form>
</body>
</html>
