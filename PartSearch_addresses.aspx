<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PartSearch_addresses.aspx.cs" Inherits="addresses" %>

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
        .t {
            height:25px;
            border-color:black;
            font-family:Georgia;
            font-size:20px;
            color:black;
            font-weight:200;
             border-radius:5px;
             //background-color:gray;
        }
        #Button1 {
            position:relative;
            top:3px;
            width:120px;
            background-color:#cc85e5;
            font-size:30px;
            border-radius:10px;
            height:40px;
            font-family:Georgia;
            font-style:italic;
            border-color:black;
            box-shadow:2px 2px 5px #000000;
           
        }
         #Button1:hover {
            background-color:#ff0000 ;
            border:#008000 solid 1px;
            box-shadow:2px 2px 5px #0000ff;
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
</head>
<body bgcolor="pink">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList1" class="t" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox1" runat="server" class="t"></asp:TextBox>
                    <asp:Button ID="Button1"  runat="server" OnClick="Button1_Click" Text="Search" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/MyMenu.aspx">MyMenu</asp:LinkButton>
        <br />
        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ADD_ID" DataSourceID="SqlDataSource1" >
            <Columns>
                <asp:BoundField DataField="ADD_ID" HeaderText="ADD_ID" ReadOnly="True" SortExpression="ADD_ID" />
                <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                <asp:BoundField DataField="STRT" HeaderText="STRT" SortExpression="STRT" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                <asp:BoundField DataField="MOBILE" HeaderText="MOBILE" SortExpression="MOBILE" />
                <asp:BoundField DataField="ADD1" HeaderText="ADD1" SortExpression="ADD1" />
                <asp:BoundField DataField="OTHER_DETAILS" HeaderText="OTHER_DETAILS" SortExpression="OTHER_DETAILS" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="select  *  from addresses"></asp:SqlDataSource>
    </form>
</body>
</html>
