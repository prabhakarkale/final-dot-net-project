<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManagePermissions.aspx.cs" Inherits="Admin_ManagePermissions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../GlobalStyle.css" rel="stylesheet" type="text/css" />
    <link href="../css/SingInUp.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Panel ID="Panel1" runat="server" class="panelbox" style="width:0px auto;">
    
        <h1 class="heading-text" align="center">User Permissions</h1>
        
    <asp:TextBox ID="txtgroupname" class="inputbox" runat="server" 
            placeholder="Permission Name" ></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox1" class="inputbox" runat="server" 
            placeholder="Permission Description" ></asp:TextBox>
        <br />
        <asp:Label ID="lblmessage" runat="server" ForeColor="Red" Text="."></asp:Label>
        <br />
   
    <asp:Button ID="btnsignin" runat="server" Text="Add" class="btn btn-success" 
             />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnreset" runat="server" Text="Reset" class="btn btn-danger"/>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" class="pnlsignupform">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="permission_name" HeaderText="permission_name" 
                    SortExpression="permission_name" />
                <asp:BoundField DataField="permission_desc" HeaderText="permission_desc" 
                    SortExpression="permission_desc" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [permission_name], [permission_desc] FROM [permissions]">
        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>

