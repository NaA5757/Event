<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ref_booking_status.aspx.cs" Inherits="Ref_booking_status" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position:relative;
            left:225px;
            width: 100%;
        }
        .auto-style2
         {
            height: 26px;
         }

        #GridView1
         {border-style:solid;
          border-radius:10px;
          border-width:2px;
          width:100%;
        }
        .t {border-color:#e98074;
            font-family:Georgia;
            font-size:20px;
            color:black;
            font-weight:300;
             border-radius:5px;
            
        }
        #bsave {
            width:100px;
            background-color:#374785;
            font-size:30px;
            border-radius:10px;
            height:40px;
            font-family:Georgia;
            font-style:italic;
            border-color:black;
            box-shadow:2px 2px 5px #000000;
           
        }
         #bsave:hover {
            background-color:green;
            border:#008000 solid 1px;
            box-shadow:2px 2px 5px #190026;
            color:white;
            transform: scale(1, 1);
   }
          #LinkButton1:link {
  text-decoration: none;
  color:#0000ff;
}

 #LinkButton1:visited {
  text-decoration: none;
}

 #LinkButton1:hover {
  text-decoration: none;
  color:#ff0000;
}

 #LinkButton1:active {
  text-decoration: underline;
}
    </style>
</head >
<body bgcolor="#a8d0e6">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Booking Status Code"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbook_status_code" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Booking Status Description"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbook_status_desc" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="bsave" runat="server" Text="Save" OnClick="bsave_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
         <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/MyMenu.aspx">MyMenu</asp:LinkButton>
        <br />
    <p>
        `</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BOOK_STATUS_CODE" DataSourceID="SqlDataSource1" BackColor="#6B6E70">
            <Columns>
                <asp:BoundField DataField="BOOK_STATUS_CODE" HeaderText="BOOKING STATUS CODE" ReadOnly="True" SortExpression="BOOK_STATUS_CODE" />
                <asp:BoundField DataField="BOOK_STATUS_DESC" HeaderText="BOOKING STATUS DESCRIPTION" SortExpression="BOOK_STATUS_DESC" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString7 %>" ProviderName="<%$ ConnectionStrings:ConnectionString7.ProviderName %>" SelectCommand="select * from ref_booking_status"></asp:SqlDataSource>
    </form>
    </body>
</html>
