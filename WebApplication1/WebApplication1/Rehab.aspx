<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Rehab.aspx.cs" Inherits="WebApplication1.Rehab" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <center><br /><br />
            <h1>Search Nearest Rehad Centre</h1>
            <hr />
            Search: <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            <hr />
           
            <asp:GridView ID="Gridview1" runat="server" ShowHeaderEmpty="true" EmptyDataText=" No record Found">

            </asp:GridView>
            
        </center>
    
    </div>
</asp:Content>
