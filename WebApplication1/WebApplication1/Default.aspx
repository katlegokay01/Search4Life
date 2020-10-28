<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <section>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>

  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="Images/addict.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block display-4 ">    
        <p class="small"><logoTextCol>Connection</logoTextCol> is the opposite of <logoTextCol> Addiction</logoTextCol></p>
    </div>

        </div>
    <div class="carousel-item">
      <img src="Images/addict.jpg" class="d-block w-100" alt="...">
         <div class="carousel-caption d-none d-md-block display-4 ">
        
        <p class="small">“If you can quit for a day, you can quit for a lifetime.”
             – Benjamin Alire Sáenz</p>
    </div>
    </div>
      <!-----
         <div class="carousel-item">
      <img src="Images/addict.jpg" class="d-block w-100" alt="...">
         <div class="carousel-caption d-none d-md-block display-4 ">
        
        <p class="small">“Nothing is impossible; the word itself says, ‘I’m possible!’”
– Audrey Hepburn</p>
    </div>
    </div>
      -->

    <div class="carousel-item">
      <img src="Images/addict.jpg" class="d-block w-100" alt="...">
         <div class="carousel-caption d-none d-md-block display-4 ">      
        <p class="small">“Change must start from the individual. And the individual must want and feel ready to make such
change.”
– Efrat Cybulkiewicz</p>
    </div>
    </div>

  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
        </section>
</asp:Content>
