<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PartSearch_Events.aspx.cs" Inherits="Events" %>

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
             background-color:#f6edfa;
        }
        #Button1 {
            position:relative;
            top:3px;
            width:110px;
            background-color:#b37dca;
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
            box-shadow:2px 2px 5px #008000;
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
<body   bgcolor="265077">
    <form id="form1" runat="server">
    <div>
    
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
    
    </div>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/MyMenu.aspx">MyMenu</asp:LinkButton>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EVENT_ID" DataSourceID="SqlDataSource1" BackColor="#1E4257" ForeColor="#FFFFCC">
            <Columns>
                <asp:BoundField DataField="EVENT_ID" HeaderText="EVENT ID" ReadOnly="True" SortExpression="EVENT_ID" />
                <asp:BoundField DataField="E_STATUS_CODE" HeaderText="EVENT STATUS CODE" SortExpression="E_STATUS_CODE" />
                <asp:BoundField DataField="E_TYPE_CODE" HeaderText="EVENT TYPE CODE" SortExpression="E_TYPE_CODE" />
                <asp:BoundField DataField="FREE_OR_COM_CODE" HeaderText="FREE OR COMMERCIAL CODE" SortExpression="FREE_OR_COM_CODE" />
                <asp:BoundField DataField="ORG_ID" HeaderText="ORGANIZATION ID" SortExpression="ORG_ID" />
                <asp:BoundField DataField="VANUE_ID" HeaderText="VANUE ID" SortExpression="VANUE_ID" />
                <asp:BoundField DataField="EVENT_NAME" HeaderText="EVENT NAME" SortExpression="EVENT_NAME" />
                <asp:BoundField DataField="EVENT_START_DATE" HeaderText="EVENT START DATE" SortExpression="EVENT_START_DATE" />
                <asp:BoundField DataField="EVENT_END_DATE" HeaderText="EVENT END DATE" SortExpression="EVENT_END_DATE" />
                <asp:BoundField DataField="NO_OF_PARTICIPANTS" HeaderText="NO OF PARTICIPANTS" SortExpression="NO_OF_PARTICIPANTS" />
                <asp:BoundField DataField="DERIVED_DAYS_DURATION" HeaderText="DERIVED DAYS DURATION" SortExpression="DERIVED_DAYS_DURATION" />
                <asp:BoundField DataField="DISCOUNT" HeaderText="DISCOUNT" SortExpression="DISCOUNT" />
                <asp:BoundField DataField="AMOUNT_PAID" HeaderText="AMOUNT PAID" SortExpression="AMOUNT_PAID" />
                <asp:BoundField DataField="POTENTIAL_COST" HeaderText="POTENTIAL COST" SortExpression="POTENTIAL_COST" />
                <asp:BoundField DataField="CALCULATED_COST" HeaderText="CALCULATED COST" SortExpression="CALCULATED_COST" />
                <asp:BoundField DataField="EDITED_COST" HeaderText="EDITED COST" SortExpression="EDITED_COST" />
                <asp:BoundField DataField="EXTRA_COST" HeaderText="EXTRA COST" SortExpression="EXTRA_COST" />
                <asp:BoundField DataField="COMMENTS" HeaderText="COMMENTS" SortExpression="COMMENTS" />
                <asp:BoundField DataField="OTHER_DETAILS" HeaderText="OTHER DETAILS" SortExpression="OTHER_DETAILS" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString12 %>" ProviderName="<%$ ConnectionStrings:ConnectionString12.ProviderName %>" SelectCommand="select * from events"></asp:SqlDataSource>
    </form>
</body>
</html>
