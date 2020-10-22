<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebApplication1.Profile" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <div class="row">
        <div class="col-md-8">
    <div class="form-horizontal">
        <h4>Create a Profile.</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="firstName" CssClass="col-md-2 control-label">First Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="FirstName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName"
                    CssClass="text-danger" ErrorMessage="First Name field is required." />
            </div>
        </div> 
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Surname" CssClass="col-md-2 control-label">Surname</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Surname" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Surname"
                    CssClass="text-danger" ErrorMessage="Surname field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Dob" CssClass="col-md-2 control-label">Date OF Birth</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Dob" TextMode="Date" CssClass="form-control" Width="146px" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Dob"
                    CssClass="text-danger" ErrorMessage="date of birth field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Age" CssClass="col-md-2 control-label">Age</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Age" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Age"
                    CssClass="text-danger" ErrorMessage="Age field is required." />
            </div>
        </div>



        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Gender" CssClass="col-md-2 control-label">Gender</asp:Label>
            <div class="col-md-10">
               
                 <asp:DropDownList ID="Gender" runat="server"  CssClass="form-control" Width="146px">
                     <asp:ListItem>Select</asp:ListItem>
                     <asp:ListItem>Male</asp:ListItem>
                     <asp:ListItem>Female</asp:ListItem>
                     <asp:ListItem>Other</asp:ListItem>
                 </asp:DropDownList>

            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="enthicity" CssClass="col-md-2 control-label">Enthicity</asp:Label>
            <div class="col-md-10">
               
                 <asp:DropDownList ID="enthicity" runat="server"  CssClass="form-control" Width="146px">
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
            <asp:Label runat="server" AssociatedControlID="address" CssClass="col-md-2 control-label">Address</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="address" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="address"
                    CssClass="text-danger" ErrorMessage="Address field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="province" CssClass="col-md-2 control-label">Province</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="province" runat="server" CssClass="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="146px">
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
            <asp:Label runat="server" AssociatedControlID="contact" CssClass="col-md-2 control-label">ContactNo</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="contact" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="contact"
                    CssClass="text-danger" ErrorMessage="Contact field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="emergencyno" CssClass="col-md-2 control-label">Emergency Number</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="emergencyno" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="emergencyno"
                    CssClass="text-danger" ErrorMessage="Emergency Number field is required." />
            </div>
        </div>
       

        </div>
            </div>

        <div class="col-md-4">
         <h1>Type Of User</h1>
        </div>

        <div class="form-group">

            <div class="form-check">
            <asp:CheckBox ID="Chkaddict" runat="server" value="Addict" CssClass="form-check-input" OnCheckedChanged="Chkaddict_clicked" AutoPostBack="true" />
              <asp:Label For="Chkaddict" runat="server" AssociatedControlID="Chkaddict" CssClass="col-md-2 control-label">Addict</asp:Label>
            
                <asp:TextBox runat="server" ID="txtnmbrofdays" CssClass="form-control" placeholder="Number of days been clean?"  />
              

            <asp:TextBox runat="server" ID="txtdrugsADay" CssClass="form-control" placeholder="Consumption of Drug a Day" />
                

            <asp:TextBox runat="server" ID="txttypeofdrug" CssClass="form-control" placeholder="Type of Drug Used" />
                
                </div>
             </div>

        <div class="form-group">

            <div class="form-check">
            <asp:CheckBox ID="Chkvictim" runat="server" value="victim" CssClass="form-check-input" OnCheckedChanged="Chkvictim_clicked" AutoPostBack="true"  />
              <asp:Label For="chkvictim" runat="server" AssociatedControlID="Chkvictim" CssClass="col-md-2 control-label">Victim</asp:Label>
            
                <asp:TextBox runat="server" ID="txtrelation" CssClass="form-control" placeholder="Relation to victim (Parent?)"  />
                

            <asp:TextBox runat="server" ID="Txtbehavior" CssClass="form-control" placeholder="How does the user Behave?" />
                

            
                </div>
             </div>



        
      
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                 <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateProfile_Click" Text="Create" CssClass="btn btn-default" Width="125px" />
            </div>
        </div>
            </div>
        </div>
    </div>
        
</asp:Content>
