<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorEntry.aspx.cs" Inherits="MedicalCommunityAutomation.CenterOffice.DoctorEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor Entry</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/default.css" rel="stylesheet" />
    <link href="../assets/css/SiteSheet.css" rel="stylesheet" />

    
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
             <ul class="nav nav-pills nav-justified">
                           <li  role="presentation">
                               <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/HomePage.aspx">Home</asp:HyperLink>
                           </li>
                           <li role="presentation" >
                             <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/CenterOffice/StockReport.aspx">Stock Report</asp:HyperLink>
                             </li>
                           <li role="presentation" class="active">
                             <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/CenterOffice/DoctorEntry.aspx">Doctor Entry</asp:HyperLink>
                           </li>
                           <li role="presentation">
                              <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/CenterOffice/TreatmentGiven.aspx">Treatment Provide</asp:HyperLink>
                           </li>
                           <li role="presentation">
                              <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/CenterOffice/DiseaseWiseReport.aspx">Disease Wise Report</asp:HyperLink>
                           </li>
                            <li  role="presentation" >
                             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CenterOffice/LoginCenter.aspx">Logout</asp:HyperLink>
                           </li>
                         </ul>
            <h2 class="text-center">Doctor Entry</h2>
            <hr/>
            <div class="col-lg-offset-4">
                           <div class="form-group">
                               <asp:Label ID="Label5" runat="server" CssClass="custom_label">Name</asp:Label>
                               <asp:TextBox ID="nameTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                           </div> 
                           
                           <div class="form-group">
                               <asp:Label ID="Label1" runat="server" CssClass="custom_label">Degree</asp:Label>
                               <asp:TextBox ID="degreeTextBox" CssClass="form-control"  runat="server"></asp:TextBox>
                           </div> 
                           
                           <div class="form-group">
                               <asp:Label ID="Label2" runat="server" CssClass="custom_label">Specialization</asp:Label>
                               <asp:TextBox ID="specializationTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                           </div> 
                           
                           <div class="form-group">
                               <asp:Button ID="saveButton" CssClass="btn btn-primary custom_button_style" runat="server" Text="Save" OnClick="saveButton_Click" />
                           </div> 
                           <div class="form-group">
                               <asp:Label ID="msgLabel" runat="server" ></asp:Label>
                           </div> 
                           
                </div>
        </form>
    </div>
    
     <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/jquery-2.1.3.intellisense.js"></script>
    <script src="../Scripts/jquery-2.1.3.js"></script>
</body>
</html>

