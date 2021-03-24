<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete_Ref_event_types.aspx.cs" Inherits="Ref_event_type" %>

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
            font-weight:200;
             border-radius:5px;
            
        }
        #bsave {
            width:110px;
            background-color:#2e9cca;
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
</head>
<body bgcolor="464866">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Event Type code"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="te_type_code" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr><!--
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Event Type Description"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="te_type_desc" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                -->
                <td>
                    <asp:Button ID="bsave" runat="server" Text="Delete" OnClick="bsave_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/MyMenu.aspx">MyMenu</asp:LinkButton>
        <br />
        <br />
        <br />

        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="E_TYPE_CODE" BackColor="#AAABB8">
            <Columns>
                <asp:BoundField DataField="E_TYPE_CODE" HeaderText="EVENT TYPE CODE" ReadOnly="True" SortExpression="E_TYPE_CODE" />
                <asp:BoundField DataField="E_TYPE_DESC" HeaderText="EVENT TYPE DESCRIPTION" SortExpression="E_TYPE_DESC" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" ProviderName="<%$ ConnectionStrings:ConnectionString11.ProviderName %>" SelectCommand="select * from ref_event_types"></asp:SqlDataSource>
    </form>
</body>
</html>
