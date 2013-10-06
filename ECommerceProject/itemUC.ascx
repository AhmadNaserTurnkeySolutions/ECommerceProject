<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="itemUC.ascx.cs" Inherits="ECommerceProject.itemUC" %>


<style type="text/css">
    
   td{width:96px;text-align:center;border:1px solid gray;overflow:hidden;}
    .style1
    {
        width: 100%;
        margin-right: 0px;
    }
    .style3
    {
        width: 161px;
       
    }
    #item
    {
        width:174px;
        background-color:White;
        border:1px solid black;
        }
    .style4
    {
        width: 230px;
        
    }
    .item_name
    {
        font-weight:bold;
         margin:0 0 30px 0px;
         border:dashed 1px gray;
         width:100%;
         display:block;
        }
   .item_add
    {
        background-color:Black;
        color:White;
        display:inline;
        padding:2px;
        border:1px solid gray;
        }
        .item_add:hover
        {
           background-color:Gray;
        color:White; 
            }
            
            .graytext
            {
                color:Gray;
                font-family:Cambria;
                font-size:large;
                text-align:center;
          
                }
                .imgpic
                {
                    width:170px;
                    height:170px;
                    padding:0;
                    margin:0;
                    }
      
              
    .style5
    {
        height: 46px;
    }
      
              
</style>
<div id="item">
<table class="style1" width="172px">
    <tr>
        <td colspan="2">
         <a ID="imageLink" runat="server" href="images/001.jpg" rel="lightbox[roadtrip]" >   <asp:Image class="imgpic" ID="item_pic" runat="server" Height="170px" Width="170px" 
                ImageUrl="~/images/001.jpg" /></a>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="style5">
            <asp:Label class="item_name" ID="item_id" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label class="item_name" ID="item_name" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label class="graytext" ID="item_price" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="item_description" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Button ID="item_add" runat="server" onclick="Button1_Click" 
                Text="Add to cart" />
        </td>
        <td class="style3">
            <asp:Button ID="item_cancel" runat="server" onclick="item_cancel_Click" 
                Text="Cancel" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <div id="statusbar" runat="server"></div></td>
    </tr>
</table>

</div>