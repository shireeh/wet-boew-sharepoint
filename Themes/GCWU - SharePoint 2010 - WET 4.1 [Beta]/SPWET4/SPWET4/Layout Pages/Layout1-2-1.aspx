﻿<%@ Page language="C#"   Inherits="SPWET4.Layout_Pages.LeftNavigationBaseLayout,SPWET4, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e515e573c8cc4469" meta:progid="SharePoint.WebPartPage.Document" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=12.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WETCustomControls" Namespace="SPWET4.WebControls" Assembly="SPWET4, Version=1.0.0.0, Culture=neutral, PublicKeyToken=e515e573c8cc4469" %>

<%--
<WET4Changes>
    2014-11-26 The HTML tags in the "PlaceHolderLeftNavBar" and "PlaceHolderMain" sections were adjusted for WET4;
               CSS in PlaceHolderMain was converted to WET 4 
               PlaceHolderCLFCSS1 was deleted.  It will be managed in the Masterpage.
               PlaceHolderBodyLeftBorder was striped from it's empty DIV tag.
               - BARIBF
</WET4Changes>
--%>

<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:FieldValue id="PageTitle" FieldName="Title" runat="server"/>
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderPageTitleInTitleArea" runat="server">
	<SharePointWebControls:FieldValue id="PageTitleInTitleArea" FieldName="Title" runat="server"/>
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderBodyLeftBorder" runat="server">
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderLeftNavBar" runat="server">
	<nav id="wb-sec" class="col-md-3 col-md-pull-9 visible-md visible-lg" typeof="SiteNavigationElement" role="navigation">
        <h2>
		<asp:Literal Text="<%$Resources:WET4, PrimaryNavigationHeaderText%>" runat="server"/></h2>
        
        <WETCustomControls:WETLeftNavigation runat="server"/>
    </nav>
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
	<section>
            <WebPartPages:SPProxyWebPartManager runat="server" id="ProxyWebPartManager"></WebPartPages:SPProxyWebPartManager>
            
            <div class="row">
                <div class="col-md-12">
                    <WebPartPages:WebPartZone runat="server" ID="TopZone" Title="Top Zone"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
            	    <WebPartPages:WebPartZone runat="server" ID="MiddleSidebarZone" Title="Middle Left Zone"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
                </div>
            
                <div class="col-md-6">
            	    <WebPartPages:WebPartZone runat="server" ID="MiddleContentZone" Title="Middle Right Zone"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <WebPartPages:WebPartZone runat="server" ID="BottomZone" Title="Bottom Zone"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-12">
                    <PublishingWebControls:RichHtmlField FieldName="PublishingPageContent" HasInitialFocus="True" MinimumEditHeight="400px" runat="server"></PublishingWebControls:RichHtmlField>
	                <PublishingWebControls:editmodepanel runat="server" id="editmodepanel1">
			            <!-- Add field controls here to bind custom metadata viewable and editable in edit mode only.-->
			            <table width="100%" cellpadding="10" cellspacing="0" class="editModePanel">
				            <tr>
					            <td>
						            <SharePointWebControls:TextField runat="server" id="TitleField" FieldName="Title" DisplaySize="100" />
					            </td>
				            </tr>
				            <tr>
				                <td>
				                    <SharePointWebControls:NoteField FieldName="dc.description" DisplaySize="100" runat="server"></SharePointWebControls:NoteField>
				                </td>
			                </tr>
			                <tr>
				                <td>
				                    <SharePointWebControls:NoteField FieldName="meta_keywords" DisplaySize="100" runat="server"></SharePointWebControls:NoteField>
				                </td>
			                </tr>
			                <tr>
				                <td>
				                    <SharePointWebControls:NoteField FieldName="dc.subject" DisplaySize="100" runat="server"></SharePointWebControls:NoteField>
				                </td>
			                </tr>
                            <!-- BEGIN - Custom Metadata Fields Below here -->
				
                            <!-- END - Custom Metadata Fields Below here -->
			            </table>
		            </PublishingWebControls:editmodepanel>
                </div>
            </div>
    </section>
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server"> 
	<WETCustomControls:PageMetadata runat="server"></WETCustomControls:PageMetadata>
</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderLastModifiedDate" runat="server">
	<WETCustomControls:LastModifiedDate runat="server"></WETCustomControls:LastModifiedDate>
</asp:Content>
