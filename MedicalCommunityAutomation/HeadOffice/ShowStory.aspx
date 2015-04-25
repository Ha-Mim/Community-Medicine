<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowStory.aspx.cs" Inherits="MedicalCommunityAutomation.HeadOffice.ShowStory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show History</title>
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
                           <li  role="presentation" >
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
                           <li role="presentation" class="active">
                              <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/HeadOffice/ShowStory.aspx">Show History</asp:HyperLink>
                           </li>
                         </ul>
        <h2 class="text-center">Show Report</h2>
        <hr/>
            <div class="col-lg-offset-4">
                        <div class="form-group">
                              <label class="custom_label">Voter ID</label>
                              <asp:TextBox ID="voterIdTextBox" CssClass="form-control" runat="server"></asp:TextBox><br/>
                               <asp:Button ID="showDBuetailsButton" CssClass="btn btn-primary custom_button"  runat="server" Text="SHOW" OnClick="showDBuetailsButton_Click" />
                           </div>
                       
                           <div class="form-group">
                               <label class="custom_label">Address</label>
                               <asp:TextBox ID="addressTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                           </div>
                           <div class="form-group">
                               <label class="custom_label">Name</label>
                               <asp:TextBox ID="nameTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                           </div>
                           <div class="form-group">
                               <asp:Button ID="showButton" CssClass="btn btn-primary custom_button" runat="server" OnClick="showButton_Click" Text="SHOW" /><br/>
                           </div>
        <asp:GridView ID="showHistoryGridView" runat="server" AutoGenerateColumns="False" CssClass="panel-body" Font-Size="Medium">
                            <Columns>
                
                                <asp:BoundField DataField="Name" HeaderText="Name" >
                                
                                </asp:BoundField>
                                <asp:BoundField DataField="Center" HeaderText="Center" >
                                
                                </asp:BoundField>
                                <asp:BoundField DataField="Destrict" HeaderText="Destrict" >
                                
                                </asp:BoundField>
                                <asp:BoundField DataField="Thana" HeaderText="Thana" >
                                
                                </asp:BoundField>
                                <asp:BoundField DataField="Diseases" HeaderText="Diseases" >
                                
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
        <div class="form-group">
                           <label class="custom_label">Export or print In PDF</label>
                           <asp:Button ID="printButton" runat="server" CssClass="btn btn-primary custom_button" Text="PRINT" OnClick="printButton_Click" />
                       </div>
                </div>
            </form>
    </div>
   
    <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/jquery-2.1.3.intellisense.js"></script>
    <script src="../Scripts/jquery-2.1.3.js"></script>
</body>
</html>

