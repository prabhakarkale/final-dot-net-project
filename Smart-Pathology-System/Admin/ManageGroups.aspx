<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageGroups.aspx.cs" Inherits="Admin_ManageGroups" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/Global.css" rel="stylesheet" type="text/css" />
    <link href="../GlobalStyle.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Panel ID="Panel1" runat="server" class="panelbox" style="width:0px auto;">
    
        <h1 class="heading-text" align="center">Test Group</h1>
        
    <asp:TextBox ID="txtgroupname" class="inputbox" runat="server" 
            placeholder="Group Name" onkeydown="txtgroupname_TextChanged"></asp:TextBox>
        <br />
        <asp:Label ID="lblmessage" runat="server" ForeColor="Red" Text="."></asp:Label>
        <br />
    <br />
    <br />
    <asp:Button ID="btnsignin" runat="server" Text="Add" class="btn btn-success" 
            onclick="btnsignin_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnreset" runat="server" Text="Reset" class="btn btn-danger"/>
    </asp:Panel>

    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="group_id" DataSourceID="SqlDataSource1" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:BoundField DataField="group_id" HeaderText="group_id" 
                SortExpression="group_id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="group_name" HeaderText="group_name" 
                SortExpression="group_name" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [group_id], [group_name] FROM [group_master]">
    </asp:SqlDataSource>
    </asp:Content>