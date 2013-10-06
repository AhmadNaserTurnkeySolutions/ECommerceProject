<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TaxUC.ascx.cs" Inherits="ECommerceProject.TaxUC" %>
<style type="text/css">
    td{width:96px;text-align:center;border:1px solid gray;overflow:auto;}
    .style1
    {
        width: 100%;
    }
    .style7
    {
        width: 43px;
    }
*{margin:0; padding:0;}
    .style6
    {
        width: 79px;
    }
    .style8
    {
        width: 62px;
    }
    .style9
    {
        width: 64px;
    }
    .style11
    {
        width: 57px;
    }
    .style12
    {
        width: 44px;
    }
     .mytd
     {
     font-size:larger;
      text-align:center;
     }
    .mytd:hover
    {
        text-align:center;
        background:#d6d6f4;
        font-size:larger;
        }
        .btn11
        {
            border:1px #d6d6f4 solid;
            padding:2px;
            width:50px;
            
            }
            .btn11:hover
            {
               border:1px blue solid; 
                }
    .style13
    {
        width: 84px;
    }
    .style14
    {
        width: 96px;
    }
</style>

<table class="style1">
    <tr>
        <td>
            <asp:Label ID="tax_id" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="tax_name" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="tax_price" runat="server"></asp:Label>
        </td>
        <td >
            <asp:TextBox class="mytd" ID="tax_quan" runat="server" value="1" Height="100px" 
                Width="86px"></asp:TextBox>
        </td>
        <td class="style14">
                    <a ID="imageLink" runat="server" href="images/001.jpg" rel="lightbox[roadtrip]" >   
                    <asp:Image class="imgpic" ID="tax_img" runat="server" Height="96px" Width="96px" 
                ImageUrl="~/images/001.jpg" /></a>
        </td>
        <td>
            <asp:Label ID="tax_type" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="tax_tax" runat="server"></asp:Label>
        </td>
        <td class="style14">
            <asp:Label ID="tax_aftertax" runat="server"></asp:Label>
        </td>
        <td class="style13">
            <asp:Label ID="tax_total" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Button class="btn11" ID="Button1" runat="server" Text="Delete" 
                onclick="Button1_Click" />
        </td>
    </tr>
</table>

