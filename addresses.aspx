<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addresses.aspx.cs" Inherits="addresses" %>

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
        .t {border-color:black;
            font-family:Georgia;
            font-size:20px;
            color:black;
            font-weight:200;
             border-radius:5px;
             //background-color:gray;
        }
        #bsave {
            width:100px;
            background-color:#cc85e5;
            font-size:30px;
            border-radius:10px;
            height:40px;
            font-family:Georgia;
            font-style:italic;
            border-color:black;
            box-shadow:2px 2px 5px #000000;
           
        }
         #bsave:hover {
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
                    <asp:Label ID="Label4" runat="server" Text="Address ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tadd_id" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="City"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tcity" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Street"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tstrt" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="temail" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Mobile"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tmobile" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tadd1" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Other Details"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tother_details" runat="server" class="t"></asp:TextBox>
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
         <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/MyMenu.aspx">MyMenu</asp:LinkButton>
         <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ADD_ID" DataSourceID="SqlDataSource1" >
            <Columns>
                <asp:BoundField DataField="ADD_ID" HeaderText="ADDRESS ID" ReadOnly="True" SortExpression="ADD_ID" />
                <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                <asp:BoundField DataField="STRT" HeaderText="STREET" SortExpression="STRT" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                <asp:BoundField DataField="MOBILE" HeaderText="MOBILE" SortExpression="MOBILE" />
                <asp:BoundField DataField="ADD1" HeaderText="ADDRESS" SortExpression="ADD1" />
                <asp:BoundField DataField="OTHER_DETAILS" HeaderText="OTHER OETAILS" SortExpression="OTHER_DETAILS" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="select * from addresses"></asp:SqlDataSource>
    </form>
</body>
</html>
