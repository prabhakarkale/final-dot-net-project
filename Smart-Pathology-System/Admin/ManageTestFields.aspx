<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageTestFields.aspx.cs" Inherits="Admin_ManageTestFields" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../GlobalStyle.css" rel="stylesheet" type="text/css" />
    <link href="../css/SingInUp.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" class="panelbox" style="border:none;">
    
        <h1 class="heading-text" align="center">Test Fields</h1>

        Choose Test

    
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" class="pnlsignupform">
    
        &nbsp;&nbsp; Field 
        Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp; Value Unit 
        <br />
        <asp:TextBox ID="TextBox19" runat="server" class="inputbox_big" placeholder="Name"></asp:TextBox>
        &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" class="inputbox" 
            DataSourceID="SqlDataSource3" DataTextField="unit_name" 
            DataValueField="unit_id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [unit_id], [unit_name] FROM [units]">
        </asp:SqlDataSource>
        <br />
        
        &nbsp;&nbsp; Baby High &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Men High 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Women High<br />&nbsp;<asp:TextBox 
            ID="TextBox4" runat="server" class="inputbox" placeholder="Baby High Value"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" class="inputbox" placeholder="Men High Value"></asp:TextBox>
        &nbsp;<asp:TextBox ID="TextBox3" runat="server" class="inputbox" placeholder="Women High Value"></asp:TextBox><br />
        
        &nbsp;&nbsp; Baby low &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Men Low &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Women Low<br />&nbsp;<asp:TextBox 
            ID="TextBox1" runat="server" class="inputbox" placeholder="Baby Low Value"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" class="inputbox" placeholder="Men Low Value"></asp:TextBox>
        &nbsp;<asp:TextBox ID="TextBox6" runat="server" class="inputbox" placeholder="Women Low Value"></asp:TextBox><br />
        
        
       
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Add" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" class="btn btn-danger" Text="Reset" />
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" class="pnlsignupform">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="test_field_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="test_field_id" HeaderText="test_field_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="test_field_id" />
                <asp:BoundField DataField="test_field_name" HeaderText="test_field_name" 
                    SortExpression="test_field_name" />
                <asp:BoundField DataField="baby_high_val" HeaderText="baby_high_val" 
                    SortExpression="baby_high_val" />
                <asp:BoundField DataField="baby_low_val" HeaderText="baby_low_val" 
                    SortExpression="baby_low_val" />
                <asp:BoundField DataField="men_high_val" HeaderText="men_high_val" 
                    SortExpression="men_high_val" />
                <asp:BoundField DataField="men_low_val" HeaderText="men_low_val" 
                    SortExpression="men_low_val" />
                <asp:BoundField DataField="women_high_val" HeaderText="women_high_val" 
                    SortExpression="women_high_val" />
                <asp:BoundField DataField="women_low_val" HeaderText="women_low_val" 
                    SortExpression="women_low_val" />
                <asp:BoundField DataField="test_id" HeaderText="test_id" 
                    SortExpression="test_id" />
                <asp:BoundField DataField="field_unit_id" HeaderText="field_unit_id" 
                    SortExpression="field_unit_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [test_field]"></asp:SqlDataSource>
    </asp:Panel>
</asp:Content>

