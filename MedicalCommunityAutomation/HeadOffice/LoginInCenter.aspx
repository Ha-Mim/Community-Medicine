<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginInCenter.aspx.cs" Inherits="MedicalCommunityAutomation.HeadOffice.LoginInCenter" %>

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
                               <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/HomePage.aspx">Home</asp:HyperLink>
                           </li>
                           <li  role="presentation"  class="active">
                             <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/HeadOffice/LoginInCenter.aspx">Code and Password</asp:HyperLink>
                           </li>
                           <li role="presentation" >
                             <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/CenterOffice/LoginCenter.aspx">Login</asp:HyperLink>
                             </li>
                          
                         </ul>
            <h2 class="text-center">Medicine Setup</h2>
            <div class="col-lg-offset-4">
            <div class="form-group">
                               <asp:Label ID="Label5" runat="server" CssClass="custom_label">Code</asp:Label>
                               <asp:TextBox ID="codeTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                           </div> 
                           
                           <div class="form-group">
                               <asp:Label ID="Label1" runat="server" CssClass="custom_label">Password</asp:Label>
                               <asp:TextBox ID="passwordTextBox" CssClass="form-control" runat="server" ></asp:TextBox>
                           </div>
                           </div>
        </div>

    </form>
     <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/jquery-2.1.3.intellisense.js"></script>
    <script src="../Scripts/jquery-2.1.3.js"></script>
</body>
</html>
