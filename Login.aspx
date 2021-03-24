<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position:relative;
           top:150px;
          // border-style:solid;
           //border-radius:10px;
           left:425px;
            color:white;
            border-color:red;
            width:500px;
            height:250px;
        }
        .t1 {
            position:relative;
            left:30px;
        }
          .t {position:relative;
              left:40px;
              border-color:black;
            font-family:Georgia;
            font-size:20px;
            color:black;
            font-weight:200;
             border-radius:5px;
            
        }
        #blogin {
            position:relative;
            left:340px;
            width:100px;
            background-color:green;
            font-size:30px;
            border-radius:10px;
            height:40px;
            font-family:Georgia;
            font-style:italic;
            border-color:black;
            box-shadow:2px 2px 5px #000000;
            color:white;
            top: 0px;
        }
         #blogin:hover {
            background-color:green;
            border:#008000 solid 1px;
            box-shadow:2px 2px 5px #0000ff;
            color:white;
            transform: scale(1, 1);
   }

        body {
            margin: 0;
            background-image:url(login.jpg);
             background-repeat: no-repeat;
             background-size:cover;
              background-position: center;
           
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Login ID" class="t1"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tlogin" runat="server" class="t" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="margin-left: 80px">
                    <asp:Label ID="Label1" runat="server" Text="Login Password" class="t1"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tlogpwd" runat="server" class="t" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="margin-left: 80px">
                    <asp:Button ID="blogin" runat="server" OnClick="blogin_Click" Text="Login" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
    <script>

    </script>
</html>
