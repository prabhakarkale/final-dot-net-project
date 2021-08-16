<%@ Page Title="" Language="C#" MasterPageFile="~/GlobalMaster.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="GlobalStyle.css" rel="stylesheet" type="text/css" />
    <link href="css/SingInUp.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" class="panelbox" style="width:0px auto;">
    
        <h1 class="heading-text" align="center">Sign In</h1>

    <asp:DropDownList ID="ddlusertype" class="inputbox" runat="server">
        <asp:ListItem Value="0">Select User</asp:ListItem>
        <asp:ListItem>Patient</asp:ListItem>
        <asp:ListItem>Doctor</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:TextBox ID="txtusername" class="inputbox" runat="server" placeholder="Email"></asp:TextBox><br />
    <asp:TextBox ID="txtpassword" class="inputbox" runat="server" placeholder="Password"></asp:TextBox>
    <br />
    <asp:Button ID="btnsignin" runat="server" Text="SignIn" class="btn btn-success" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnreset" runat="server" Text="Reset" class="btn btn-danger"/>
    </asp:Panel>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>


