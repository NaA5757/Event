<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyMenu.aspx.cs" Inherits="MyMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  
    <style>
  
     #Menu1 {
            position:relative;
            top:10px;
            width:100%;
            height:30px;
        }
       body {
          background-image: url('backgrnd.jpg');
           background-repeat: no-repeat;
           background-position: center;
           background-size:cover;
           height:470px;

        
           
        }
       
        </style>  
</head>
<body   >
    <form id="form1" runat="server">
    <div>
    
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" ForeColor="White" >
            <DynamicHoverStyle ForeColor="Red" />
            <DynamicItemTemplate>
                <%# Eval("Text") %>
            </DynamicItemTemplate>
            <Items>
                <asp:MenuItem Text="Events" Value="Events">
                    <asp:MenuItem NavigateUrl="~/Events.aspx" Text="Save" Value="Save" target="_blank"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Update_Events.aspx" Text="Update" Value="Update" target="_blank"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Delete_Events.aspx" Text="Delete" Value="Delete" target="_blank"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/PartSearch_Events.aspx" Text="Search" Value="Search" target="_blank"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportEvents.aspx" Text="Report" Value="Report" target="_blank"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Organizers" Value="Organizers">
                    <asp:MenuItem NavigateUrl="~/Organizers.aspx" Text="Save" Value="New Item"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Update_Organizers.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Delete_Organizers.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/PartSearch_Organizers.aspx" Text="Search" Value="Search"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportOrganizers.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Contacts" Value="Contacts">
                    <asp:MenuItem NavigateUrl="~/Contacts.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Update_Contacts.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Delete_Contacts.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/PartSearch_Contacts.aspx" Text="Search" Value="Search"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportContacts.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Addresses" Value="Addresses">
                    <asp:MenuItem NavigateUrl="~/addresses.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Update_addresses.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Delete_addresses.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/PartSearch_addresses.aspx" Text="Search" Value="Search"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportAddresses.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Ref event status" Value="Ref_event_status">
                    <asp:MenuItem NavigateUrl="~/Ref_event_status.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Update_Ref_event_status.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Delete_Ref_event_status.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/PartSearch_Ref_event_status.aspx" Text="Search" Value="Search"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportRef_event_status.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Ref event types" Value="Ref_event_types">
                    <asp:MenuItem NavigateUrl="~/Ref_event_types.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Update_Ref_event_types.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Delete_Ref_event_types.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/PartSearch_Ref_event_types.aspx" Text="Search" Value="Search"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportRef_event_types.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Ref booking status" Value="Ref_booking_status">
                    <asp:MenuItem NavigateUrl="~/Ref_booking_status.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Update_Ref_booking_status.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Delete_Ref_booking_status.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/PartSearch_Ref_booking_status.aspx" Text="Search" Value="Search"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportRef_booking_status.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Vanues" Value="Vanues">
                    <asp:MenuItem NavigateUrl="~/Vanues.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Update_Vanues.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Delete_Vanues.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/PartSearch_Vanues.aspx" Text="Search" Value="Search"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportVanues.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Rooms" Value="Rooms">
                    <asp:MenuItem NavigateUrl="~/Rooms.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Update_Rooms.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Delete_Rooms.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/PartSearch_Rooms.aspx" Text="Search" Value="Search"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportRoom.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Space request" Value="Space_request">
                    <asp:MenuItem NavigateUrl="~/Space_request.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Update_Space_request.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Delete_Space_request.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/PartSearch_Space_request.aspx" Text="Search" Value="Search"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportSpace_request.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Ref free or commercial" Value="Ref_free_or-com">
                    <asp:MenuItem NavigateUrl="~/Ref_free_or_com.aspx" Text="Save" Value="Save"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Update_Ref_free_or_com.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Delete_Ref_free_or_com.aspx" Text="Delete" Value="Delete"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/PartSearch_Ref_free_or_com.aspx" Text="Search" Value="Search"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportRef_free_or_com.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle ForeColor="Lime" />
        </asp:Menu>
    
    </div>
    </form>
</body>
</html>
