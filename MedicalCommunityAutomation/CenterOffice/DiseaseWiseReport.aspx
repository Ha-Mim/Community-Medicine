<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DiseaseWiseReport.aspx.cs" Inherits="MedicalCommunityAutomation.CenterOffice.DiseaseWiseReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Disease wise Report</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
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
                           <li role="presentation">
                             <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/CenterOffice/DoctorEntry.aspx">Doctor Entry</asp:HyperLink>
                           </li>
                           <li role="presentation">
                              <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/CenterOffice/TreatmentGiven.aspx">Treatment Provide</asp:HyperLink>
                           </li>
                           <li role="presentation" class="active">
                              <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/CenterOffice/DiseaseWiseReport.aspx">Disease Wise Report</asp:HyperLink>
                           </li>
                             <li  role="presentation"  >
                             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CenterOffice/LoginCenter.aspx">Logout</asp:HyperLink>
                           </li>
                         </ul>
        <h2 class="text-center">Disease Wise Report</h2>
        <hr/>
        <div class="col-lg-offset-4">
        <div class="form-inline">
                                <div class="form-group">
                                    <asp:Label ID="Label1" CssClass="custom_label" runat="server" Text="Disease"></asp:Label>
                                    <asp:DropDownList ID="diseaseDropDownList" CssClass="form-control" runat="server" AutoPostBack="True"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                   <asp:Button ID="showButton" CssClass="btn btn-primary custom_button" runat="server" Text="Show" OnClick="showButton_Click" />
                               </div>
                            </div>
                           
                           
                           <div class="form-group">
                               <asp:Label ID="Label2" CssClass="custom_label" runat="server">Date From</asp:Label>
                                <asp:Calendar ID="fromCalendar" runat="server" CssClass="panel-body" Font-Size="Medium" ForeColor="White"></asp:Calendar>
                           </div>
                           
                           <div class="form-group">
                               <asp:Label ID="Label3" CssClass="custom_label" runat="server">Date To</asp:Label>
                               <asp:Calendar ID="toCalendar" runat="server" CssClass="panel-body" Font-Size="Medium" ForeColor="White"></asp:Calendar>
                           </div>
                            <asp:GridView ID="reportGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:TemplateField HeaderText="District Name">
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("DistrictName") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Population">
                                          <ItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Population") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="% Over Population">
                                          <ItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Percentage") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
        </div>
    </form>
</div>    
   
    <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/jquery-2.1.3.intellisense.js"></script>
    <script src="../Scripts/jquery-2.1.3.js"></script>
    <script src="../Scripts/angular.js"></script>
</body>
</html>

