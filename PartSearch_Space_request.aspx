<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PartSearch_Space_request.aspx.cs" Inherits="Dpace_request" %>

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
        #Button1 {
            position:relative;
            top:3px;
            width:110px;
            background-color:#3500d3;
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
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/MyMenu.aspx">MyMenu</asp:LinkButton>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString13 %>" ProviderName="<%$ ConnectionStrings:ConnectionString13.ProviderName %>" SelectCommand="select * from space_request"></asp:SqlDataSource>
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
    </form>
</body>
</html>
