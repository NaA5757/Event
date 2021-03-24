<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete_Events.aspx.cs" Inherits="Events" %>

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
        #bsave {
            width:100px;
            background-color:#b37dca;
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
<body bgcolor="265077">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Event ID" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tevent_id" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <!--
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Event status code" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="te_status_code" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Event type code" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="te_type_code" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Free or commercial code" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tfree_or_com_code" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Organization ID" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="torg_id" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Vanue ID" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tvanue_id" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Event Name" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tevent_name" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Event start date" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tevent_start_date" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Event end date" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tevent_end_date" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Number of Participants" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tno_of_participants" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Derived days duration" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tderived_days_duration" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Discount" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tdiscount" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Amount paid" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tamount_paid" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Potential cost" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tpotential_cost" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="Caculated cost" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tcalculated_cost" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="Edited Cost" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tedited_cost" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="margin-left: 80px">
                    <asp:Label ID="Label17" runat="server" Text="Extra Cost" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textra_cost" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="Comments" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tcomments" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label19" runat="server" Text="Other Details" ForeColor="#FFFFCC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tother_details" runat="server" class="t"></asp:TextBox>
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
                <asp:BoundField DataField="POTENTIAL_COST" HeaderText="POTENTIAL_COST" SortExpression="POTENTIAL_COST" />
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
