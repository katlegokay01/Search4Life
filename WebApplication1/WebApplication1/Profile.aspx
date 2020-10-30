<%@ Page Language="C#" MasterPageFile="~/Login.master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebApplication1.Profile" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
        <style>
    body {

  background-image: url(/Images/background.jpg);
}</style>
    <h2><%: Title %></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <asp:HiddenField ID="hfUserID" runat="server" />
    <div class="row">
        <div class="col-md-8">
    <div class="form-horizontal">
        <h4>Create a Profile.</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="FirstName" CssClass="col-md-2 control-label">First Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="FirstName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName"
                    CssClass="text-danger" ErrorMessage="First Name field is required." />
            </div>
        </div> 
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtSurname" CssClass="col-md-2 control-label">Surname</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtSurname" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSurname"
                    CssClass="text-danger" ErrorMessage="Surname field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtDob" CssClass="col-md-2 control-label">Date OF Birth</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtDob" TextMode="Date" CssClass="form-control"  />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDob"
                    CssClass="text-danger" ErrorMessage="date of birth field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtAge" CssClass="col-md-2 control-label">Age</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtAge" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAge"
                    CssClass="text-danger" ErrorMessage="Age field is required." />
            </div>
        </div>



        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="DDGender" CssClass="col-md-2 control-label">Gender</asp:Label>
            <div class="col-md-10">
               
                 <asp:DropDownList ID="DDGender" runat="server"  CssClass="form-control">
                     <asp:ListItem>Select</asp:ListItem>
                     <asp:ListItem>Male</asp:ListItem>
                     <asp:ListItem>Female</asp:ListItem>
                     <asp:ListItem>Other</asp:ListItem>
                 </asp:DropDownList>

            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="DDenthicity" CssClass="col-md-2 control-label">Ethnicity</asp:Label>
            <div class="col-md-10">
               
                 <asp:DropDownList ID="DDenthicity" runat="server"  CssClass="form-control" >
                     <asp:ListItem>Select</asp:ListItem>
                     <asp:ListItem>African</asp:ListItem>
                     <asp:ListItem>Colored</asp:ListItem>
                     <asp:ListItem>White</asp:ListItem>
                     <asp:ListItem>Asian</asp:ListItem>
                     <asp:ListItem>Other</asp:ListItem>
                 </asp:DropDownList>

            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtaddress" CssClass="col-md-2 control-label">Address</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtaddress" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtaddress"
                    CssClass="text-danger" ErrorMessage="Address field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="DDprovince" CssClass="col-md-2 control-label">Province</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="DDprovince" runat="server" CssClass="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Gauteng</asp:ListItem>
                    <asp:ListItem>Limpopo</asp:ListItem>
                    <asp:ListItem>kwa zulu Natal</asp:ListItem>
                    <asp:ListItem>Northern Cape</asp:ListItem>
                    <asp:ListItem>Western Cape</asp:ListItem>
                    <asp:ListItem>Eastern Cape</asp:ListItem>
                    <asp:ListItem>Mpumalanga</asp:ListItem>
                    <asp:ListItem>North West</asp:ListItem>
                    <asp:ListItem>Free State</asp:ListItem>
                    </asp:DropDownList>
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtcontact" CssClass="col-md-2 control-label">ContactNo</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtcontact" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtcontact"
                    CssClass="text-danger" ErrorMessage="Contact field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtemergencyno" CssClass="col-md-2 control-label">Emergency Number</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtemergencyno" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtemergencyno"
                    CssClass="text-danger" ErrorMessage="Emergency Number field is required." />
            </div>
        </div>
       

        </div>
            </div>

        <div class="col-md-4">
         <h1>Type Of User</h1>
        

        <div class="form-group">

            <div class="form-check">
            <asp:CheckBox ID="Chkaddict" runat="server" value="Addict" CssClass="form-check-input" OnCheckedChanged="Chkaddict_clicked" AutoPostBack="true" Text="Addict" />
            <br />
         
            <asp:TextBox runat="server" ID="txtdrugsADay" CssClass="form-control" placeholder="Consumption of Drug a Day" />
                

            <asp:TextBox runat="server" ID="txttypeofdrug" CssClass="form-control" placeholder="Type of Drug Used" />
                 <asp:TextBox runat="server" ID="txtnmbrofdays" CssClass="form-control" placeholder="How long have you been using?"  />
                </div>
                </div>
             

        

            <div class="form-group">
            <div class="form-check">
            <asp:CheckBox ID="Chkvictim" runat="server" value="victim" CssClass="form-check-input" OnCheckedChanged="Chkvictim_clicked" AutoPostBack="true" text="Victim" />
             <br />
           
             
          
            <asp:TextBox runat="server" ID="txtrelation" CssClass="form-control" placeholder="Relation to victim (Parent?)"  />
                

            <asp:TextBox runat="server" ID="Txtbehavior" CssClass="form-control" placeholder="How does the user Behave?" />
              </div>   
        </div>
           
                
             


     <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                 <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateProfile_Click" Text="Create" CssClass="btn btn-default" Width="125px" />
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                <asp:Label ID="lblMessage0" runat="server" ForeColor="Lime"></asp:Label>
            </div>
        </div>
            </div>
        </div>
    </div>
        
</asp:Content>
