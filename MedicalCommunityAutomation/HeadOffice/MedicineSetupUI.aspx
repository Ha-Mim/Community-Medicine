<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MedicineSetupUI.aspx.cs" Inherits="MedicalCommunityAutomation.HeadOffice.MedicineSetupUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../assets/css/SiteSheet.css" rel="stylesheet" />
   </head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <ul class="nav nav-pills nav-justified">
                           <li  role="presentation">
                               <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/HomePage.aspx">Home</asp:HyperLink>
                           </li>
                           <li  role="presentation"  class="active">
                             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HeadOffice/MedicineSetupUI.aspx">Medicine Setup</asp:HyperLink>
                           </li>
                           <li role="presentation" >
                             <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/HeadOffice/DiseaseSetupUI.aspx">Disease Setup</asp:HyperLink>
                             </li>
                           <li role="presentation">
                             <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/HeadOffice/SendMedicine.aspx">Send Medicine</asp:HyperLink>
                           </li>
                           <li role="presentation">
                              <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/HeadOffice/CreateNewCenter.aspx">Create New Center</asp:HyperLink>
                           </li>
                           <li role="presentation">
                              <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/HeadOffice/ShowStory.aspx">Show History</asp:HyperLink>
                           </li>
                         </ul>
            <h2 class="text-center">Medicine Setup</h2>
            <hr/>
            <div class="col-lg-offset-4">
                           <div class="form-group">
                               <asp:Label ID="Label5" runat="server" CssClass="custom_label">Generic Name</asp:Label>
                               <asp:TextBox ID="nameTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                           </div> 
                           
                           <div class="form-group">
                               <asp:Label ID="Label1" runat="server" CssClass="custom_label">Mg/ML</asp:Label>
                               <asp:TextBox ID="quantityTextBox" CssClass="form-control" runat="server" ></asp:TextBox>
                           </div>
                           
                           <div class="form-group">
                           <asp:Button CssClass="btn btn-primary"  ID="saveButton" runat="server" OnClick="saveButton_Click" Text="Save" />
                           </div>
            
                           <div class="alert-info">
                                <asp:Label ID="msg" runat="server"></asp:Label>
                            </div>
           </div>
        </div>
    </form>
     <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/jquery-2.1.3.intellisense.js"></script>
    <script src="../Scripts/jquery-2.1.3.js"></script>
</body>
</html>
