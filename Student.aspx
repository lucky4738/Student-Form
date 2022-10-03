<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="Music_Store.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    
    <h1>STUDENT FORM</h1>

    <table style="width: 60%;" border="1">
        <tr>
            <td>Student Name:</td>
            <td> <asp:TextBox ID="txtName" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Enter  Name" ForeColor="Red"></asp:RequiredFieldValidator>
                <br /></td>
           
        </tr>
        <tr>
            <td>Roll No:</td>
            <td><asp:TextBox ID="txtRollNo" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRollNo" ErrorMessage="Enter Roll No" ForeColor="Red"></asp:RequiredFieldValidator>
                <br /></td>
            
        </tr>
        <tr>
            <td style="height: 26px">DOB:</td>
            <td style="height: 26px"><asp:TextBox ID="txtDOB" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDOB" ErrorMessage="Enter DOB" ForeColor="Red"></asp:RequiredFieldValidator>
                <br /> </td>
            
        </tr>
         <tr>
                <td>Class:</td>
                <td><asp:TextBox ID="txtClass" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtClass" ErrorMessage="Enter Class" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br /></td>
                
            </tr>
            <tr>
                <td>Section:</td>
                <td> <asp:TextBox ID="txtSection" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSection" ErrorMessage="Enter Section" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br /></td>
               
            </tr>
            <tr>
                <td>Class Teacher:</td>
                <td><asp:TextBox ID="txtClassTeacher" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtClassTeacher" ErrorMessage="Enter Class Teacher Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br /></td>
               
            </tr>
        <tr>
                <td>Address:</td>
                <td><asp:TextBox ID="txtAddress" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAddress" ErrorMessage="Enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br /></td>
                
            </tr>
            <tr>
                <td>Mobile No:</td>
                <td><asp:TextBox ID="txtMobileNo" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMobileNo" ErrorMessage="Enter Mobile No" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br /></td>
               
            </tr>
            <tr>
                <td>Email:</td>
                <td><asp:TextBox ID="txtEmail" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br /></td>
               
            </tr>
        <tr>
                <td>Date of Admission:</td>
                <td> <asp:TextBox ID="txtDateOfAdmission" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtDateOfAdmission" ErrorMessage="Enter Date of Admission" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br /></td>
                
            </tr>
            <tr>
                <td>Adhaar No:
                </td>
                <td> <asp:TextBox ID="txtAdhaar" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtAdhaar" ErrorMessage="Enter Adhaar No" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br /></td>
             </tr>
        
            <tr>
               
                <td colspan="2"><asp:Button ID="btnSubmit" runat="server" Text="Submit Data" OnClick="btnSubmit_Click" /></td>
                    
                    </tr>
        
                 <tr>
               
                <td colspan="2"><asp:Button ID="btnShow" runat="server" Text="Show Data" OnClick="btnShow_Click" /></td>
                    
    </tr>
   </table>
    <br />
    <br />
    <asp:DataGrid ID="dgrd" runat="server">
        <Columns>
        </Columns>
    </asp:DataGrid>
    </asp:Content>
