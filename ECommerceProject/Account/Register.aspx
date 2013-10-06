<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs" Inherits="ECommerceProject.Account.Register" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }

* {
	margin: 0 0 0px 0;
	padding: 0;
    text-align: left;
}

        .style17
        {
            width: 110px;
        }
        .style9
        {
            width: 1594px;
        }
        .style4
        {
            width: 822px;
        }
        .style8
        {
            width: 15px;
        }
        .style19
        {
            width: 179px;
        }
        .style7
        {
            width: 618px;
        }
        .style6
        {
            width: 361px;
        }
        .style21
        {
            width: 135px;
        }
        .style11
        {
            width: 1769px;
        }
        .style13
        {
            width: 284px;
        }
        .style10
        {
            width: 707px;
        }
        .style18
        {
            width: 486px;
        }
        .style14
        {
            width: 420px;
        }
        .style2
        {
            text-align: justify;
        }
    
p 
{
	margin-bottom: 1.5em;
	padding: 10px;
}

        .style22
        {
            width: 164px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <table cellspacing="0" class="style1">
                    <tr>
                        <td bgcolor="#FF3399" class="style17">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td bgcolor="#FF3399" class="style9">
                            <asp:Label ID="Label13" runat="server" ForeColor="White" 
                                style="font-weight: 700; font-style: italic; font-size: medium;" 
                                Text="Customer Information"></asp:Label>
                        </td>
                        <td bgcolor="#FF3399" class="style4">
                            <asp:Label ID="Label27" runat="server" ForeColor="White" 
                                style="font-weight: 700; font-style: italic; font-size: medium;" 
                                Text="Step one"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table cellspacing="0" class="style1">
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style19">
                            <asp:Label ID="Label1" runat="server" CssClass="style15" Text="Name :"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="txtName" runat="server" CssClass="input"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator12" 
                                runat="server" ControlToValidate="txtName" 
                                ErrorMessage="RegularExpressionValidator" ForeColor="#5E0000" 
                                ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*Letters only  no numbers</asp:RegularExpressionValidator>
                        </td>
                        <td class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="style8">
                            &nbsp;</td>
                        <td bgcolor="White" class="style19">
                            <asp:Label ID="Label12" runat="server" CssClass="style15" Text="Phone :"></asp:Label>
                        </td>
                        <td bgcolor="White" class="style7">
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="input"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="txtPhone" ErrorMessage="RegularExpressionValidator" 
                                ForeColor="#5E0000" ValidationExpression="[0-9]*">*Numbers only no letters no spaces</asp:RegularExpressionValidator>
                        </td>
                        <td bgcolor="White" class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style19">
                            <asp:Label ID="Label15" runat="server" CssClass="style15" Text="Fax :"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="txtFax" runat="server" CssClass="input"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                ControlToValidate="txtFax" ErrorMessage="RegularExpressionValidator" 
                                ForeColor="#5E0000" ValidationExpression="[0-9]*">*Numbers only no letters no spaces</asp:RegularExpressionValidator>
                        </td>
                        <td class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="style8">
                            &nbsp;</td>
                        <td bgcolor="White" class="style19">
                            <asp:Label ID="Label16" runat="server" CssClass="style15" Text="Email :"></asp:Label>
                        </td>
                        <td bgcolor="White" class="style7">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="input"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                ControlToValidate="txtEmail" ErrorMessage="RegularExpressionValidator" 
                                ForeColor="#5E0000" 
                                ValidationExpression="[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]">*Illegal Email format</asp:RegularExpressionValidator>
                        </td>
                        <td bgcolor="White" class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="style8">
                            &nbsp;</td>
                        <td bgcolor="White" class="style19">
                            <asp:Label ID="Label18" runat="server" CssClass="style15" Text="Country :"></asp:Label>
                        </td>
                        <td bgcolor="White" class="style7">
                            <asp:TextBox ID="txtCountry" runat="server" CssClass="input"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                                ControlToValidate="txtCountry" ErrorMessage="RegularExpressionValidator" 
                                ForeColor="#5E0000" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*Letters only  no numbers</asp:RegularExpressionValidator>
                        </td>
                        <td bgcolor="White" class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style19">
                            <asp:Label ID="Label20" runat="server" CssClass="style15" Text="City :"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="txtCity" runat="server" CssClass="input"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                ControlToValidate="txtCity" ErrorMessage="RegularExpressionValidator" 
                                ForeColor="#5E0000" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*Letters only  no numbers</asp:RegularExpressionValidator>
                        </td>
                        <td class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="style8">
                            &nbsp;</td>
                        <td bgcolor="White" class="style19">
                            <asp:Label ID="Label22" runat="server" CssClass="style15" Text="Street :"></asp:Label>
                        </td>
                        <td bgcolor="White" class="style7">
                            <asp:TextBox ID="txtStreet" runat="server" CssClass="input"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                                ControlToValidate="txtStreet" ErrorMessage="RegularExpressionValidator" 
                                ForeColor="#5E0000" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*Letters only  no numbers</asp:RegularExpressionValidator>
                        </td>
                        <td bgcolor="White" class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style19">
                            <asp:Label ID="Label21" runat="server" CssClass="style15" Text="Address :"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="input"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
                                runat="server" ControlToValidate="txtAddress" 
                                ErrorMessage="RegularExpressionValidator" ForeColor="#5E0000" 
                                ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*Letters only  no numbers</asp:RegularExpressionValidator>
                        </td>
                        <td class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style19">
                            <br />
                        </td>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                    </tr>
                </table>
                <table cellspacing="0" class="style1">
                    <tr>
                        <td bgcolor="#FF3399" class="style21">
                            &nbsp;</td>
                        <td bgcolor="#FF3399" class="style11">
                            <asp:Label ID="Label2" runat="server" ForeColor="White" 
                                style="font-weight: 700; font-style: italic; font-size: medium;" 
                                Text="E-Account"></asp:Label>
                            <br />
                        </td>
                        <td bgcolor="#FF3399" class="style13">
                            <asp:Label ID="Label28" runat="server" ForeColor="White" 
                                style="font-weight: 700; font-style: italic; font-size: medium;" 
                                Text="Step two"></asp:Label>
                        </td>
                        <td bgcolor="#FF3399" class="style10">
                            &nbsp;</td>
                    </tr>
                </table>
                <table cellspacing="0" class="style1">
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style22">
                            <asp:Label ID="Label4" runat="server" CssClass="style15" Text="Name :"></asp:Label>
                        </td>
                        <td class="style18">
                            <asp:TextBox ID="txtUserName" runat="server" CssClass="input"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator24" 
                                runat="server" ControlToValidate="txtUserName" 
                                ErrorMessage="RegularExpressionValidator" ForeColor="#5E0000" 
                                style="direction: ltr" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*Letters only  no numbers</asp:RegularExpressionValidator>
                        </td>
                        <td class="style14">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="style8">
                            &nbsp;</td>
                        <td bgcolor="White" class="style22">
                            <asp:Label ID="Label23" runat="server" CssClass="style15" Text="Password :"></asp:Label>
                        </td>
                        <td bgcolor="White" class="style18">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="input"></asp:TextBox>

                        <td bgcolor="White" class="style14">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style22">
                            <br />
                        </td>
                        <td class="style18">
                        
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                Text="register" />
                        
                        </td>
                        <td class="style14">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style2" colspan="2">
                            <asp:Label ID="Label6" runat="server" 
                                style="font-family: 'Times New Roman', Times, serif; font-size: small"></asp:Label>
                        </td>
                        <td class="style14">
                            &nbsp;</td>
                    </tr>
                </table>
                <p>
                </p>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </asp:Content>
