<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PartSearch_Contacts.aspx.cs" Inherits="Contacts" %>

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
            
        }
        #Button1 {position:relative;
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
<body bgcolor="659dbd">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" class="t">
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox1" runat="server" class="t"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CONT_ID" DataSourceID="SqlDataSource1" ForeColor="#660066">
            <Columns>
                <asp:BoundField DataField="CONT_ID" HeaderText="CONTACT ID" ReadOnly="True" SortExpression="CONT_ID" />
                <asp:BoundField DataField="ORG_ID" HeaderText="ORGANIZATION ID" SortExpression="ORG_ID" />
                <asp:BoundField DataField="ADD_ID" HeaderText="ADDRESS ID" SortExpression="ADD_ID" />
                <asp:BoundField DataField="CONT" HeaderText="CONTACT " SortExpression="CONT" />
                <asp:BoundField DataField="WEB_ADD" HeaderText="WEB ADDRESS" SortExpression="WEB_ADD" />
                <asp:BoundField DataField="OTHER_DETAILS" HeaderText="OTHER DETAILS" SortExpression="OTHER_DETAILS" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString9 %>" ProviderName="<%$ ConnectionStrings:ConnectionString9.ProviderName %>" SelectCommand="select * from contacts"></asp:SqlDataSource>
    </form>
</body>
</html>
