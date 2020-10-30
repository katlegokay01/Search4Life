<%@ Page Language="C#" MasterPageFile="~/Login.master" AutoEventWireup="true" CodeBehind="Addict.aspx.cs" Inherits="WebApplication1.Addict" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
 <style>
body {

  background-image: url(/Images/background.jpg);
}</style>
      
    <h2><center><b>RECOVERY IS ABOUT <font color="#7aba7b";>PROGRESSION</font><br /> NOT <font color="#7aba7b";>PERFECTION</font><font color="#fff">.</font></b></center></h2>
    <div class="row">
        <div class="col-md-8">
            
                <div class="form-horizontal">
                    <h4><cl><b>12 Steps to Recovery.</b></cl></h4>
                    <hr />
                    
                    <div class="form-group">
                         <div class="col-md-10">
                       
                           <p><font color="#7aba7b";><b>1.</b></font> Admitting that one is experiencing an addiction problem<br /> 
                              <font color="#7aba7b";><b>2.</b></font> Trusting that a higher power can help<br />
                                <font color="#7aba7b";><b>3.</b></font> Deciding to turn control over to the higher power<br />
                                <font color="#7aba7b";><b>4.</b></font> Taking a personal inventory<br />
                                <font color="#7aba7b";><b>5.</b></font> Admitted to God, to myself and to other human being of the wrongs I have done<br />
                                <font color="#7aba7b";><b>6.</b></font> Being ready for God to correct any shortcomings in terms of my character<br />
                                <font color="#7aba7b";><b>7.</b></font> Humbly asking God to remove my flaws<br />
                                <font color="#7aba7b";><b>8.</b></font> Making a list of all persons I have hurt and be willing to apologies to them<br />
                                <font color="#7aba7b";><b>9.</b></font> Apologizing directly to such people wherever possible, except when do so would harm
                                them or othersc<br />
                                <font color="#7aba7b";><b>10.</b></font> Being consistent with the personal inventory and admitting to the wrongs I have done<br />
                                <font color="#7aba7b";><b>11.</b></font> Sought enlightenment and connection with the higher power via prayer and meditation<br />
                                <font color="#7aba7b";><b>12.</b></font> Carrying the message of the 12 Steps to others like me and practice these steps daily<br /><br />
                              
                           </p>
                        </div>
                    </div>
                    </div>
            </div>
                   

        <div class="col-md-4">
              <h4><cl><b>Job Opportunities.</b></cl></h4>
                    <hr />
                    
                    <div class="form-group">
                         <div class="col-md-10">
                       
                           <p>Below are the links for job opportunties<br /> 
                               <asp:HyperLink ID="gijima" runat="server" NavigateUrl="https://www.gijima.com/"><font color="#7aba7b";>Gijima</font></asp:HyperLink> <br />
                               <asp:HyperLink ID="yes4youth" runat="server" NavigateUrl="https://yes4youth.mobi/register"><font color="#7aba7b";>Yes4youth</font></asp:HyperLink> <br />
                               <asp:HyperLink ID="harambe" runat="server" NavigateUrl="https://www.harambee.mobi/Home/Index/EN"><font color="#7aba7b";>Harambee</font></asp:HyperLink><br />
                               
                           </p>
                        </div>
                    </div>

             <div class="form-group">
                         <div class="col-md-10">
                            
                       <hr /><h4><cl><b>Counsellers.</b></cl></h4> 
                           <p>
                               <a href="/images/Registered Counsellors.PDF" download> <font color="#fff";>Registered Counsellors</font><sup> pdf</sup></a><br />
                               <hr />
                                <p> 
        
          <cl><span class="glyphicon glyphicon-earphone"></span></cl><a href="080 012 1314"><font color="#fff";> 080 012 1314</font>
        </a>
      </p>
                  <font color="#fff";>Addicts: </font><a id="https://chat.whatsapp.com/JVRp5Yubkx88kZXEKxgXmx" href="https://chat.whatsapp.com/JVRp5Yubkx88kZXEKxgXmx"> 
               <font color="#7aba7b";> Group Chat</font></a>
                           </p>
                        </div>
                    </div>
              
            <section id="socialLoginForm">
                <uc:openauthproviders runat="server" id="OpenAuthLogin" />
            </section>
        </div>
    </div>
</asp:Content>

