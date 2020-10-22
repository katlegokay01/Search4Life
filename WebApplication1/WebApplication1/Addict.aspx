<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Addict.aspx.cs" Inherits="WebApplication1.Addict" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <h2>RECOVERY IS ABOUT <cl>PROGRESSION</cl><br /> NOT <cl>PERFECTION</cl></h2>
    <div class="row">
        <div class="col-md-8">
            
                <div class="form-horizontal">
                    <h4><cl>12 Steps to Recovery.</cl></h4>
                    <hr />
                    
                    <div class="form-group">
                         <div class="col-md-10">
                       
                           <p>1. Admitting that one is experiencing an addiction problem<br /> 
                               2. Trusting that a higher power can help<br />
                                3. Deciding to turn control over to the higher power<br />
                                4. Taking a personal inventory<br />
                                5. Admitted to God, to myself and to other human being of the wrongs I have done<br />
                                6. Being ready for God to correct any shortcomings in terms of my character<br />
                                7. Humbly asking God to remove my flaws<br />
                                8. Making a list of all persons I have hurt and be willing to apologies to them<br />
                                9. Apologizing directly to such people wherever possible, except when do so would harm
                                them or othersc<br />
                                10 Being consistent with the personal inventory and admitting to the wrongs I have done<br />
                                11 Sought enlightenment and connection with the higher power via prayer and meditation<br />
                                12. Carrying the message of the 12 Steps to others like me and practice these steps daily<br />
                           </p>
                        </div>
                    </div>
                    </div>
            </div>
                   

        <div class="col-md-4">
              <h4><cl>Job Opportunities.</cl></h4>
                    <hr />
                    
                    <div class="form-group">
                         <div class="col-md-10">
                       
                           <p>Below are the links for job opportunties<br /> 
                               <asp:HyperLink ID="gijima" runat="server" NavigateUrl="https://www.gijima.com/">Gijima</asp:HyperLink> <br />
                               <asp:HyperLink ID="yes4youth" runat="server" NavigateUrl="https://yes4youth.mobi/register">Yes4youth</asp:HyperLink> <br />
                               <asp:HyperLink ID="harambe" runat="server" NavigateUrl="https://www.harambee.mobi/Home/Index/EN">harambe</asp:HyperLink><br />
                               
                           </p>
                        </div>
                    </div>

             <div class="form-group">
                         <div class="col-md-10">
                       <h4><cl>Counsellers.</cl></h4>
                           <p>Below are the links for Counsellers<br /> 
                               <asp:HyperLink ID="SADAG" runat="server" NavigateUrl="https://www.sadag.org/">SADAG  </asp:HyperLink> <br />
                               <asp:HyperLink ID="Family_Life_Centre" runat="server" NavigateUrl="https://WWW.familylife.co.za">Yes4youth</asp:HyperLink> <br />
                               
                               
                           </p>
                        </div>
                    </div>
              
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                 <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Label runat="server" id="tell" CssClass="col-md-2 control-label"><cl>Tell:</cl> 0800121314</asp:Label>
            </div>
        </div>
            </div>
        </div>
            <section id="socialLoginForm">
                <uc:openauthproviders runat="server" id="OpenAuthLogin" />
            </section>
        </div>
    </div>
</asp:Content>

