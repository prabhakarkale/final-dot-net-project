<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddNewUser.aspx.cs" Inherits="Admin_AddNewUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/AddNewUser.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div><h1 align="center" class="heading-text">Add New User</h1>
    </div>
    <div>
        <asp:Panel ID="Panel1" class="panelbox" runat="server">
            <asp:Label  class="inputbox" runat="server" Text="First Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label  runat="server" class="inputbox" Text="Last Name"></asp:Label>
            <br />
            <asp:TextBox ID="txtfname" class="inputbox" runat="server" placeholder="Name"></asp:TextBox>
            <asp:TextBox ID="txtlname" class="inputbox" runat="server" placeholder="Surename"></asp:TextBox>

            &nbsp;

            <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtemail" class="inputbox_big" runat="server" placeholder="abc@gmail.com"></asp:TextBox>
            &nbsp;
            <asp:Label ID="Label2" runat="server" Text="Phone"></asp:Label>
            <asp:TextBox ID="txtphone" class="inputbox_big" runat="server" placeholder="+91"></asp:TextBox>

            &nbsp;

            <asp:Label ID="Label3" runat="server" Text="Aadhaar Number"></asp:Label>
            <asp:TextBox ID="txtaadhaar" class="inputbox_big" runat="server" 
                placeholder="0000 0000 0000"></asp:TextBox>

            &nbsp;

            <asp:Label ID="Label4" runat="server" Text="Date Of Joining"></asp:Label><br />
            &nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
            <asp:TextBox ID="txtselecteddate" runat="server" placeholder="selected date"></asp:TextBox><br />
            &nbsp;
            <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Account Status"></asp:Label><br />
            <asp:TextBox ID="txtpassword" class="inputbox" runat="server" 
                placeholder="Password"></asp:TextBox>
            <asp:TextBox ID="txtaccstatus" class="inputbox" runat="server" 
                placeholder="account status"></asp:TextBox><br />
        
            <div class="btn-div">
                <asp:Button ID="btnsubmit" class="btn btn-success" runat="server" Text="Submit" 
                    onclick="btnsubmit_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" class="btn btn-danger" runat="server" Text="Reset" />
            </div>
       </asp:Panel>
    </div>
</asp:Content>

