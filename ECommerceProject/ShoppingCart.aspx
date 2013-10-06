<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="ECommerceProject.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        td{
        }
        .style6
        {
            width: 79px;
        }
        .style7
        {
        }
        .style8
        {
            width: 62px;
        }
        .style9
        {
            width: 64px;
        }
        .style10
        {
            width: 65px;
        }
        .style11
        {
            width: 57px;
        }
        .style12
        {
            width: 44px;
        }
        .style15
        {
            width: 44px;
            direction: ltr;
        }
        .style16
        {
            width: 79px;
            direction: ltr;
        }
        .style17
        {
            direction: ltr;
        }
        .style18
        {
            width: 65px;
            direction: ltr;
        }
        .style20
        {
            direction: ltr;
        }
        .style21
        {
            width: 43px;
            direction: ltr;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1" id="tblGridTable2" runat="server">

                <tr>
                    <td class="style21" bgcolor="#5EDFFF">
                        &nbsp;</td>
                    <td class="style16" bgcolor="#5EDFFF">
                        Total</td>
                    <td class="style20" bgcolor="#5EDFFF" colspan="2">
                        <asp:Label ID="Total" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="#006600"></asp:Label>
                    </td>
                    <td class="style18" bgcolor="#5EDFFF">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                            Text="Payment" />
                    </td>
                    <td class="style17" bgcolor="#5EDFFF" colspan="3">
                        <asp:Label ID="lblPay" runat="server"></asp:Label>
                    </td>
                    <td class="style16" bgcolor="#5EDFFF">
                        &nbsp;</td>
                    <td class="style15" bgcolor="#5EDFFF">
                        &nbsp;</td>
                </tr>
  
                <tr>
                    <td class="style7" colspan="10">
                        &nbsp;</td>
                </tr>
  
                <tr>
                    <td class="style7" bgcolor="#3399FF">
                        Id</td>
                    <td class="style6" bgcolor="#3399FF">
                        Name</td>
                    <td class="style8" bgcolor="#3399FF">
                        Price</td>
                    <td class="style9" bgcolor="#3399FF">
                        quantity</td>
                    <td class="style10" bgcolor="#3399FF">
                        picture</td>
                    <td class="style11" bgcolor="#3399FF">
                        type id</td>
                    <td class="style11" bgcolor="#3399FF">
                        tax</td>
                    <td class="style6" bgcolor="#3399FF">
                        after tax</td>
                    <td class="style6" bgcolor="#3399FF">
                        total</td>
                    <td class="style12" bgcolor="#3399FF">
                        delete</td>
                </tr>
  
    </table>
    <table class="style1" id="tblGridTable" runat="server">

               
  
    </table>
</asp:Content>
