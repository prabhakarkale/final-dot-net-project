<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMaster.master" AutoEventWireup="true" CodeFile="RequestForTest.aspx.cs" Inherits="Patient_RequestForTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../GlobalStyle.css" rel="stylesheet" type="text/css" />
    <link href="../css/SingInUp.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 align="center" class="heading-text">Request For Test</h1>
<asp:Panel ID="pnlpatient" class="pnlsignupform" style="text-align:center;" runat="server">
    Filter By Group
    <asp:DropDownList ID="DropDownList1" runat="server" class="inputbox" 
        AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="group_name" 
        DataValueField="group_id" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [group_id], [group_name] FROM [group_master]">
    </asp:SqlDataSource>
    <br />
    <br />

    Select Tests&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Selected 
    Tests
    <br />
    <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource2" 
        DataTextField="test_name" DataValueField="test_id" Width="200px" 
        SelectionMode="Multiple">
    </asp:ListBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ListBox ID="ListBox2" runat="server" Width="200px" 
        SelectionMode="Multiple"></asp:ListBox>
    <br />
        <br />
        <asp:Button ID="Button3" runat="server" Text="Add Selected Tests" 
        class="btn btn-success" onclick="Button3_Click"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" class="btn btn-danger" 
        onclick="Button4_Click" Text="Clear Selected Tests" />
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [test_id], [test_name] FROM [tests] WHERE ([group_id] = @group_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="group_id" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" class="btn btn-success" 
        Text="Register" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" class="btn btn-danger" Text="Reset" />
    </asp:Panel>
    
</asp:Content>

