<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMaster.master" AutoEventWireup="true" CodeFile="GiveFeedback.aspx.cs" Inherits="Patient_GiveFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="../GlobalStyle.css" rel="stylesheet" type="text/css" />
    <link href="../css/SingInUp.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Panel ID="Panel1" runat="server" class="panelbox" style="width:0px auto;">
    
        <h1 class="heading-text" align="center">Give Feedback</h1>

   
    <asp:TextBox ID="txtusername" class="inputbox" runat="server" placeholder="Feedback"></asp:TextBox><br />
    <asp:TextBox ID="txtpassword" class="inputbox" runat="server" placeholder="Desc"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnsignin" runat="server" Text="Save" class="btn btn-success" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnreset" runat="server" Text="Reset" class="btn btn-danger"/>
    </asp:Panel>
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>

