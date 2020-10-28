<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Rehab.aspx.cs" Inherits="WebApplication1.Rehab" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    body {

  background-image: url(/Images/background.jpg);
}</style>
    <div>
        <center><br />
            <h1><b>Search Nearest Rehab Centre</b></h1>
            <hr />
            Search: <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            <hr />
           
            <asp:GridView ID="Gridview1" runat="server" ShowHeaderEmpty="true" EmptyDataText=" No record Found">

            </asp:GridView>
            
        </center>
    
    </div>
</asp:Content>
