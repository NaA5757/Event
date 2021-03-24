<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PartSearch_Rooms.aspx.cs" Inherits="PartSearch_Rooms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
         {
            border-style:solid;
          border-radius:10px;
          border-width:2px;
          width:100%;
        }
        .t {border-color:black;
            font-family:Georgia;
            font-size:20px;
            color:black;
            font-weight:200;
             border-radius:5px;
            
        }
        #Button1 {
            position:relative;
            top:3px;
            width:100px;
            background-color:#802BB1;
            font-size:30px;
            border-radius:10px;
            height:40px;
            font-family:Georgia;
            font-style:italic;
            border-color:black;
            box-shadow:2px 2px 5px #000000;
           
        }
         #Button1:hover {
            background-color:green;
            border:#008000 solid 1px;
            box-shadow:2px 2px 5px #0000ff;
            color:white;
            transform: scale(1, 1);
   }
        .auto-style3 {
            width: 100%;
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
</head>
<body bgcolor="4d6d9a">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>
    
        <asp:DropDownList ID="DropDownList1" class="t" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server" class="t"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
    
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/MyMenu.aspx">MyMenu</asp:LinkButton>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ROOM_ID" DataSourceID="SqlDataSource1" BackColor="#8080FF">
            <Columns>
                <asp:BoundField DataField="ROOM_ID" HeaderText="ROOM ID" ReadOnly="True" SortExpression="ROOM_ID" />
                <asp:BoundField DataField="ROOM_NAME" HeaderText="ROOM NAME" SortExpression="ROOM_NAME" />
                <asp:BoundField DataField="ROOM_CAPABILITY" HeaderText="ROOM CAPABILITY" SortExpression="ROOM_CAPABILITY" />
                <asp:BoundField DataField="RATE_FOR_DAY" HeaderText="RATE FOR DAY" SortExpression="RATE_FOR_DAY" />
                <asp:BoundField DataField="OTHER_DETAILS" HeaderText="OTHER DETAILS" SortExpression="OTHER_DETAILS" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString19 %>" ProviderName="<%$ ConnectionStrings:ConnectionString19.ProviderName %>" SelectCommand="select * from rooms"></asp:SqlDataSource>
    </form>
</body>
</html>
