<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete_Vanues.aspx.cs" Inherits="Vanues" %>

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
<body bgcolor="bab2b5">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Vanue Id"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="tvanue_id" runat="server" class="t"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <!--
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Vanue name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tvanue_name" runat="server"   class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Other Details"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tother_details" runat="server"   class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
                     -->
            <tr>
                <td>
                    <asp:Button ID="bsave" runat="server" Text="Delete" OnClick="bsave_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
          
        </table>
    
    </div>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/MyMenu.aspx">MyMenu</asp:LinkButton>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="VANUE_ID" DataSourceID="SqlDataSource1"  BackColor="#CC99FF">
            <Columns>
                <asp:BoundField DataField="VANUE_ID" HeaderText="VANUE ID" ReadOnly="True" SortExpression="VANUE_ID" />
                <asp:BoundField DataField="VANUE_NAME" HeaderText="VANUE NAME" SortExpression="VANUE_NAME" />
                <asp:BoundField DataField="OTHER_DETAILS" HeaderText="OTHER DETAILS" SortExpression="OTHER_DETAILS" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" SelectCommand="select * from  vanues"></asp:SqlDataSource>
    </form>
</body>
</html>
