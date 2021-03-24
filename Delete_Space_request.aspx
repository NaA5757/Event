<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete_Space_request.aspx.cs" Inherits="Dpace_request" %>

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
            width:100px;
            background-color:#3500d3;
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
<body bgcolor="black">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Request ID" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="treq_id" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr><!--
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Booking Status Code" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbook_status_code" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Event ID" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tevent_id" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Room ID" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="troom_id" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Accupancy" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="toccupan_yn" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Commercial or Free" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tcommercial_free" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Starting date" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tfrom_dd" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Starting Month" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tfrom_mm" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Starting Year" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tfrom_yyyy" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Ending date" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tto_dd" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Ending Month" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tto_mm" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Ending Year" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tto_yyyy" runat="server" class="t"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Other Details" ForeColor="White"></asp:Label>
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
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/MyMenu.aspx">MyMenu</asp:LinkButton>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="REQ_ID" DataSourceID="SqlDataSource1" BackColor="#282828" ForeColor="White">
            <Columns>
                <asp:BoundField DataField="REQ_ID" HeaderText="REQUEST ID" ReadOnly="True" SortExpression="REQ_ID" />
                <asp:BoundField DataField="BOOK_STATUS_CODE" HeaderText="BOOKING STATUS CODE" SortExpression="BOOK_STATUS_CODE" />
                <asp:BoundField DataField="EVENT_ID" HeaderText="EVENT ID" SortExpression="EVENT_ID" />
                <asp:BoundField DataField="ROOM_ID" HeaderText="ROOM ID" SortExpression="ROOM_ID" />
                <asp:BoundField DataField="OCCUPAN_YN" HeaderText="OCCUPANCY YN" SortExpression="OCCUPAN_YN" />
                <asp:BoundField DataField="COMMERCIAL_FREE" HeaderText="COMMERCIAL FREE" SortExpression="COMMERCIAL_FREE" />
                <asp:BoundField DataField="FROM_DD" HeaderText="FROM DD" SortExpression="FROM_DD" />
                <asp:BoundField DataField="FROM_MM" HeaderText="FROM MM" SortExpression="FROM_MM" />
                <asp:BoundField DataField="FROM_YYYY" HeaderText="FROM YYYY" SortExpression="FROM_YYYY" />
                <asp:BoundField DataField="TO_DD" HeaderText="TO DD" SortExpression="TO_DD" />
                <asp:BoundField DataField="TO_MM" HeaderText="TO MM" SortExpression="TO_MM" />
                <asp:BoundField DataField="TO_YYYY" HeaderText="TO YYYY" SortExpression="TO_YYYY" />
                <asp:BoundField DataField="OTHER_DETAILS" HeaderText="OTHER DETAILS" SortExpression="OTHER_DETAILS" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString13 %>" ProviderName="<%$ ConnectionStrings:ConnectionString13.ProviderName %>" SelectCommand="select * from space_request"></asp:SqlDataSource>
    <div>
    
    </div>
    </form>
</body>
</html>
