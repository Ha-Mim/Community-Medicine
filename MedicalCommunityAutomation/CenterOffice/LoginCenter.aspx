<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginCenter.aspx.cs" Inherits="MedicalCommunityAutomation.CenterOffice.LoginCenter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="../Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../assets/css/SiteSheet.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <ul class="nav nav-pills nav-justified">
                           <li  role="presentation">
                               <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/HomePage.aspx">Home</asp:HyperLink>
                           </li>
                           <li  role="presentation"  class="active">
                             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CenterOffice/LoginCenter.aspx">Center Login</asp:HyperLink>
                           </li>
                           <li role="presentation" >
                             <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/HeadOffice/ShowStory.aspx">Show Story</asp:HyperLink>
                             </li>
                           
                         </ul>
            <h2 class="text-center">Center Login</h2>
            <hr/>
            <div class="col-lg-offset-4">
             <div class="form-group">
                               <asp:Label ID="Label5" runat="server" CssClass="custom_label">Center Code</asp:Label>
                               <asp:TextBox ID="centerCodeTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                           </div> 
                           
                           <div class="form-group">
                               <asp:Label ID="Label1" runat="server" CssClass="custom_label">Password</asp:Label>
                               <asp:TextBox ID="passwordTextbox"  type="password" CssClass="form-control" runat="server" ></asp:TextBox>
                           </div>
                           
                           <div class="form-group">
                           <asp:Button CssClass="btn btn-primary"  ID="loginButton" runat="server" OnClick="loginButton_Click" Text="Login" />
                           </div>
            
                           <div class="alert-info">
                                <asp:Label ID="msg" runat="server"></asp:Label>
                            </div>
                </div>
        </form>
    </div>
     <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/jquery-2.1.3.intellisense.js"></script>
    <script src="../Scripts/jquery-2.1.3.js"></script>
</body>
    
</html>
