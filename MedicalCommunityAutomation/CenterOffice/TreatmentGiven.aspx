<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TreatmentGiven.aspx.cs" Inherits="MedicalCommunityAutomation.CenterOffice.TreatmentGiven" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="myApp">
<head runat="server">
    <title>Treatment Given</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/default.css" rel="stylesheet" />
    <link href="../assets/css/SiteSheet.css" rel="stylesheet" />
</head>
<body ng-controller="myController">
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
                           <li role="presentation"  class="active">
                              <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/CenterOffice/TreatmentGiven.aspx">Treatment Provide</asp:HyperLink>
                           </li>
                           <li role="presentation" >
                              <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/CenterOffice/DiseaseWiseReport.aspx">Disease Wise Report</asp:HyperLink>
                           </li>
                             <li  role="presentation" >
                             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CenterOffice/LoginCenter.aspx">Logout</asp:HyperLink>
                           </li>
                         </ul>
           <h2 class="text-center">Treatment Provided</h2>
           <hr/>
            <div class="col-lg-offset-4">
                
                                <div class="form-group">
                                    <label class="custom_label" runat="server">Voter Id</label>
                                    <asp:TextBox ID="voterIdTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:Button ID="showDetailsButton" CssClass="btn btn-primary custom_button" runat="server" Text="Show Details" OnClick="showDetailsButton_Click" />
                                </div>
                            
                           
                            <div class="form-group">
                                <label class="custom_label">Name</label>
                                 <asp:TextBox ID="nameTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            
                            <div class="form-group">
                                <label class="custom_label">Address</label>
                                <asp:TextBox ID="addressTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            
                            <div class="form-group">
                                <label class="custom_label">Age</label>
                                <asp:TextBox ID="ageTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                            
                            <div class="form-group">
                                <label class="custom_label">Service Given</label>
                                <asp:TextBox ID="serviceGivenTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="text-center">
                                <br/>
                                <p>
                                    <asp:HyperLink ID="HyperLink7" CssClass="custom_hyperlink" runat="server" NavigateUrl="~/HeadOffice/ShowStory.aspx">Show All History</asp:HyperLink>
                                </p>
                            </div>
                            

                            <div class="form-group">
                                <label class="custom_label">Observation</label>
                                <asp:TextBox ID="observationTextBox" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" CssClass="custom_label">Date</asp:Label>
                                <asp:Calendar ID="dateCalendar" runat="server" CssClass="panel-success" Font-Size="Medium" ForeColor="White"></asp:Calendar>
                            
                            </div>
                            <br/>
                            
                            
                            <div class="form-group">
                                 <asp:Label ID="Label4" runat="server" CssClass="custom_label">Doctor</asp:Label>
                                <asp:DropDownList ID="doctorDropDownList" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label5" runat="server" CssClass="custom_label">Disease</asp:Label>
                                <asp:DropDownList ng-model="disease" CssClass="form-control"  ID="diseaseDropDownList" runat="server"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label6" runat="server" CssClass="custom_label">Medicine</asp:Label>
                            <asp:DropDownList ng-model="medicine" CssClass="form-control"  ID="medicineDropDownList" runat="server"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label7" runat="server" CssClass="custom_label">Dose</asp:Label>
                                <asp:DropDownList ng-model="dose" CssClass="form-control"  ID="doseDropDownList" runat="server"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <input type="radio" ng-model="timeOfMeal" value="Before Meal" class="radio" />Before Meal
                                <input type="radio" ng-model="timeOfMeal" value="After Meal" class="radio" />After Meal
                            </div>
                            <div class="form-inline">
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" CssClass="custom_label">Quantity Given</asp:Label>
                                    <asp:TextBox ng-model="quantity" ID="quantitygivenTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label8" CssClass="custom_label" runat="server">Note</asp:Label>
                                    <asp:TextBox ng-model="note" ID="noteTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <button type="button" ng-click="AddTreatment(disease, medicine,dose,timeOfMeal, quantity,note)" class="btn btn-primary" style="padding: 10px 20px;">ADD</button>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <asp:Label ID="msgLabel" runat="server" ></asp:Label>
                            </div>
                     </div>       
                            
                              <div class="form-group">
                                        <table id="tbl" runat="server" class="table" style="color: aliceblue;">
                                            <thead>
                                                <tr>
                                                    <td>Disease</td>
                                                    <td>Medicine</td>
                                                    <td>Dose</td>
                                                    <td>Before/After Meal</td>
                                                    <td>Quantity Given</td>
                                                    <td>Note</td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr ng-repeat="aTreatment in treatments">
                                                    <td>{{aTreatment.Disease}}</td>
                                                    <td>{{aTreatment.Medicine}}</td>
                                                    <td>{{aTreatment.Dose}}</td>
                                                    <td>{{aTreatment.TimeOfMeal}}</td>
                                                    <td>{{aTreatment.Quantity}}</td>
                                                    <td>{{aTreatment.Note}}</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <p>
                                        <asp:Button ID="saveButton" runat="server" Text="Save" CssClass="btn btn-info btn-block custom_button_style" OnClick="saveButton_Click1"  />
                                    </p>
            
                          <input type="hidden" id="diseaseName" runat="server"/>
                            <input type="hidden" id="medicineName" runat="server"/>
                              <input type="hidden" id="doseName" runat="server"/>
                            <input type="hidden" id="timeOfMealName" runat="server"/>
                              <input type="hidden" id="quantityName" runat="server"/>
                            <input type="hidden" id="noteName" runat="server"/>
                   
       </form>
   </div>
        <script src="../Scripts/angular.js"></script>
    <script>
        var myApplication = angular.module("myApp", []);
        myApplication.controller("myController", function ($scope) {
            $scope.treatments = [];
            $scope.AddTreatment = function (disease, medicine, dose, timeOfMeal, quantity, note) {
                if (disease != String.empty && quantity != String.empty && medicine != String.empty && dose != String.empty && timeOfMeal != String.empty && note != String.empty) {
                    $scope.treatments.push({ Disease: disease, Medicine: medicine, Dose: dose, TimeOfMeal: timeOfMeal, Quantity: quantity, Note: note });

                    document.getElementById("diseaseName").value += disease + ",";
                    document.getElementById("medicineName").value += medicine + ",";
                    document.getElementById("doseName").value += dose + ",";
                    document.getElementById("timeOfMealName").value += timeOfMeal + ",";
                    document.getElementById("quantityName").value += quantity + ",";
                    document.getElementById("noteName").value += note + ",";
                }
            };
        });
    </script>
      <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/jquery-2.1.3.intellisense.js"></script>
    <script src="../Scripts/jquery-2.1.3.js"></script>
</body>
</html>
