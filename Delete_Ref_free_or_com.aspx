<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete_Ref_free_or_com.aspx.cs" Inherits="Ref_free_or_com" %>

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
            font-weight:200;
             border-radius:5px;
            
        }
        #bsave {
            width:110px;
            background-color:#46344e;
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
<body bgcolor="9d8d8f">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Free or Commercial code" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tfree_or_com_code" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr><!--
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Description" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tdesc" runat="server" class="t"></asp:TextBox>
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
    <div>
    
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/MyMenu.aspx">MyMenu</asp:LinkButton>
    
    </div>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="FREE_OR_COM_CODE" DataSourceID="SqlDataSource1" BackColor="#5A5560" ForeColor="White">
            <Columns>
                <asp:BoundField DataField="FREE_OR_COM_CODE" HeaderText="FREE OR COMMERCIAL CODE" ReadOnly="True" SortExpression="FREE_OR_COM_CODE" />
                <asp:BoundField DataField="DESCRIPTION" HeaderText="DESCRIPTION" SortExpression="DESCRIPTION" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString8 %>" ProviderName="<%$ ConnectionStrings:ConnectionString8.ProviderName %>" SelectCommand="select * from ref_free_or_com"></asp:SqlDataSource>
    </form>
</body>
</html>
