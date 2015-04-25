<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockReport.aspx.cs" Inherits="MedicalCommunityAutomation.CenterOffice.StockReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stock Report</title>
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
                          <li role="presentation"  class="active">
                             <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/CenterOffice/StockReport.aspx">Stock Report</asp:HyperLink>
                             </li>
                           <li role="presentation">
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
            <h2 class="text-center">Stock Report</h2>
            <hr/>
             <asp:GridView ID="showGridView" CssClass="table" runat="server" AutoGenerateColumns="False" AllowPaging="True">
                                <Columns>
                                    <asp:TemplateField HeaderText="Medicine Name">
                                        <ItemTemplate>
                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Text='<%# Eval("MedicineName") %>'></asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderStyle BackColor="#408080" CssClass="text-center" ForeColor="White" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Quantity">
                                        <ItemTemplate>
                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Text='<%# Eval("Quantity") %>'></asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderStyle BackColor="#408080" CssClass="text-center" ForeColor="White" />
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
        </form>
    </div>
    
     <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/jquery-2.1.3.intellisense.js"></script>
    <script src="../Scripts/jquery-2.1.3.js"></script>
</body>
</html>

