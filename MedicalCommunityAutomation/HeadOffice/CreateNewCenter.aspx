<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateNewCenter.aspx.cs" Inherits="MedicalCommunityAutomation.HeadOffice.CreateNewCenter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    
<link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="../assets/css/SiteSheet.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <form  id="form1" runat="server">
            <ul class="nav nav-pills nav-justified">
                           <li  role="presentation">
                               <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/HomePage.aspx">Home</asp:HyperLink>
                           </li>
                           <li  role="presentation"  >
                             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HeadOffice/MedicineSetupUI.aspx">Medicine Setup</asp:HyperLink>
                           </li>
                           <li role="presentation" >
                             <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/HeadOffice/DiseaseSetupUI.aspx">Disease Setup</asp:HyperLink>
                             </li>
                           <li role="presentation">
                             <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/HeadOffice/SendMedicine.aspx">Send Medicine</asp:HyperLink>
                           </li>
                           <li role="presentation" class="active">
                              <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/HeadOffice/CreateNewCenter.aspx">Create New Center</asp:HyperLink>
                           </li>
                           <li role="presentation">
                              <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/HeadOffice/ShowStory.aspx">Show History</asp:HyperLink>
                           </li>
                         </ul>
            
            <h2 class="text-center">Create New Center</h2>
            <hr/>
            <div class="col-lg-offset-4">
                     <div class="form-group">
                             <asp:Label ID="Label2" CssClass="custom_label" runat="server">Name</asp:Label>
                             <asp:TextBox ID="nameTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                         </div>
                         <div class="form-group">
                             <asp:Label ID="Label3" CssClass="custom_label"  runat="server">District</asp:Label>
                            <asp:DropDownList ID="districtDropDownList" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="districtDropDownList_SelectedIndexChanged">
                            </asp:DropDownList>
                         </div>
                         <div class="form-group">
                             <asp:Label ID="Label4" CssClass="custom_label"  runat="server">Thana</asp:Label>
                            <asp:DropDownList ID="thanaDropDownList" CssClass="form-control" runat="server" AutoPostBack="True" >
                            </asp:DropDownList>
                         </div>
                         <div class="form-group">
                             <asp:Label ID="msgLabel" runat="server"></asp:Label>
                         </div>
                         <div class="form-group">
                             <asp:Button CssClass="btn btn-primary"  ID="saveButton" runat="server" OnClick="saveButton_Click" Text="Save" />
                         </div>
        </div>                  
                        </form>

        </div>

    
    <script src="../Scripts/jquery-1.9.1.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/jquery-1.9.1.intellisense.js"></script>

</body>
</html>