<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete_Organizers.aspx.cs" Inherits="Organizers" %>

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
          border-width:2px;
          width:100%;
          border-color:black;
          border-radius:10px;
        }
        .t {border-color:black;
            font-family:Georgia;
            font-size:20px;
            color:black;
            font-weight:200;
             border-radius:5px;
             background-color:gray;
        }
        #bsave {
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
<body bgcolor="2d283e">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Organization ID" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="torg_id" runat="server" class="t"></asp:TextBox>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
           <!-- <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Organization Name" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="torg_name" runat="server" class="t"></asp:TextBox>
                </td>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Email" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="temail" runat="server" class="t" ></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Other Details" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tother_details" runat="server" class="t"></asp:TextBox>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>-->
            <tr>
                <td>
                    <asp:Button ID="bsave" runat="server" OnClick="bsave_Click" Text="Delete" />
                </td>
                <td>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/MyMenu.aspx">MyMenu</asp:LinkButton>
        <br />
        <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ORG_ID" DataSourceID="SqlDataSource1" Height="124px"  BackColor="#564F6F" ForeColor="White">
                        <Columns>
                            <asp:BoundField DataField="ORG_ID" HeaderText="ORGANIZATION ID" ReadOnly="True" SortExpression="ORG_ID" />
                            <asp:BoundField DataField="ORG_NAME" HeaderText="ORGANIZATION NAME" SortExpression="ORG_NAME" />
                            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                            <asp:BoundField DataField="OTHER_DETAILS" HeaderText="OTHER DETAILS" SortExpression="OTHER_DETAILS" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select * from organizers"></asp:SqlDataSource>
    </form>
</body>
</html>
