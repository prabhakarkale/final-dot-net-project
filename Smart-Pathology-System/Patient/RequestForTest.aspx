<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMaster.master" AutoEventWireup="true" CodeFile="RequestForTest.aspx.cs" Inherits="Patient_RequestForTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../GlobalStyle.css" rel="stylesheet" type="text/css" />
    <link href="../css/SingInUp.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 align="center" class="heading-text">Request For Test</h1>
<asp:Panel ID="pnlpatient" class="pnlsignupform" style="text-align:center;" runat="server">
    <table border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td align="right">Request By</td>
            <td><asp:DropDownList ID="ddlrequestby" runat="server" class="inputbox" 
        AutoPostBack="True" onselectedindexchanged="DropDownList2_SelectedIndexChanged" >
                <asp:ListItem>By Seft</asp:ListItem>
                <asp:ListItem>By Doctor</asp:ListItem>
    </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right">Doctor Reference Code</td>
            <td>
                <asp:TextBox ID="txtdoctorrefcode" runat="server" class="inputbox" 
                    Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">Filter By Group</td>
            <td>
            <asp:DropDownList ID="ddlfilterbygroup" runat="server" class="inputbox" 
                AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="group_name" 
                DataValueField="group_id" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList></td>
        </tr>
        <tr>
            <td>
            Select Tests 
                <br />
            <asp:ListBox ID="lbselecttests" runat="server" DataSourceID="SqlDataSource2" 
                DataTextField="test_name" DataValueField="test_id" Width="200px" 
                SelectionMode="Multiple">
            </asp:ListBox>
            <br /><br />
        <asp:Button ID="btnaddselectedtests" runat="server" Text="Add Selected Tests" 
        class="btn btn-success" onclick="Button3_Click"/>
            </td>
            <td>
            Selected Tests 
                <br />
                <asp:ListBox ID="lbselectedtests" runat="server" Width="200px" 
        SelectionMode="Multiple"></asp:ListBox>
                <br /><br />
   <asp:Button ID="lblclearselectedtests" runat="server" class="btn btn-danger" 
        onclick="Button4_Click" Text="Clear Selected Tests" />
    
            </td>
        </tr>
        <tr>
            <td colspan="2" align="left">
                <br />
                &nbsp;&nbsp; Address (if change)<br />
                <asp:TextBox ID="txtchangedaddress" runat="server" class="inputbox_big" 
                    placeholder="changed address"></asp:TextBox>
            </td>
        </tr>
        <tr>
            
            <td >
                <br />
                <asp:Button ID="btnaddrequest" runat="server" Text="Add Request" 
                    class="btn btn-success" onclick="btnaddrequest_Click"/></td>
            <td >
                <br />
                <asp:Button ID="btnreset" runat="server" Text="Reset" class="btn btn-danger"/></td>
        </tr>
    </table>
    <br />
   
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [group_id], [group_name] FROM [group_master]">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [test_id], [test_name] FROM [tests] WHERE ([group_id] = @group_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlfilterbygroup" Name="group_id" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
        
    </asp:Panel>
    
</asp:Content>

