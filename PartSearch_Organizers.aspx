<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PartSearch_Organizers.aspx.cs" Inherits="Organizers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         .auto-style1 {
            position:relative;
            left:232px;
            width: 99%;
            top: 0px;
            margin-left: 0px;
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
             height:25px;
        }
        #Button1 {
            position:relative;
            top:3px;
            width:150px;
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
             width:150px;
            background-color:#ff0000 ;
            border:#008000 solid 1px;
            box-shadow:2px 2px 5px #0000ff;
            color:white;
            transform: scale(1, 1);
   }
   #LinkButton2:link
    {
  text-decoration: none;
  color:#0000ff;
}

 #LinkButton2:visited {
  text-decoration: none;
}

 #LinkButton2:hover {
  text-decoration: none;
  color:#ff0000;
}

 #LinkButton2:active {
  text-decoration: underline;
}  
       
        </style>
</head>
<body bgcolor="2d283e">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList1" class="t" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox1" runat="server" class="t"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>

            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" PostBackUrl="~/MyMenu.aspx">MyMenu</asp:LinkButton>

        </div>
        <br />'
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ORG_ID" DataSourceID="SqlDataSource1"  BackColor="#564F6F" ForeColor="White">
            <Columns>
                <asp:BoundField DataField="ORG_ID" HeaderText="ORGANIZATION ID" ReadOnly="True" SortExpression="ORG_ID" />
                <asp:BoundField DataField="ORG_NAME" HeaderText="ORGANIZATION NAME" SortExpression="ORG_NAME" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                <asp:BoundField DataField="OTHER_DETAILS" HeaderText="OTHER DETAILS" SortExpression="OTHER_DETAILS" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString21 %>" ProviderName="<%$ ConnectionStrings:ConnectionString21.ProviderName %>" SelectCommand="select * from organizers"></asp:SqlDataSource>
    </form>
</body>
</html>
