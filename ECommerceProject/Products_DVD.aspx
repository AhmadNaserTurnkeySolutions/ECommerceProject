<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Products_DVD.aspx.cs" Inherits="ECommerceProject.Products_DVD" %>
<%@ Register src="itemUC.ascx" tagname="itemUC" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .tbl1
        {
            border:1px solid #000;padding:6px;
            }
          
			.mydiv
			{
	font-family: Verdana, Geneva, sans-serif;
	background:#fff;
	position:fixed;
	bottom:0;
	left:0;
	width:100%;
	overflow:scroll;
	text-align:center;
	border:5px solid black;
	height:150px;
				}
				.imagenav
				{
			width:100px;
			height:100px;

				    }
				
        .style4
        {
            width: 49px;
        }
				
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="tblGridTable" class="tbl1" runat="server">

    </table>
<div class="mydiv" id="div1" onclick="MM_effectBlind('div1', 1000, '100%', '850%', true);">
<asp:Image ID="Image1" class="imagenav" runat="server" ImageUrl="~/images/cart.jpg" />
    <table class="style1" id="tblGridTable2" runat="server">

                <tr>
                    <td class="style7">
                        Id</td>
                    <td class="style6">
                        Name</td>
                    <td class="style8">
                        Price</td>
                    <td class="style9">
                        Quantity</td>
                    <td class="style10">
                        Picture</td>
                    <td class="style11">
                        Type ID</td>
                    <td class="style11">
                        Tax value</td>
                    <td class="style6">
                        After Tax</td>
                    <td class="style4">
                        Total</td>
                    <td class="style12">
                        &nbsp;</td>
                </tr>
  
    </table>
    <table class="style1" id="Table1" runat="server">

               
  
    </table>
</div>
</asp:Content>
