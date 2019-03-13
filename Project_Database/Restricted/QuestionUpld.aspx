<%@ Page Title="Uploader" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QuestionUpld.aspx.cs" Inherits="Project_Database.QuestionUpld" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%: Title %>.</h2>

    <section class="container">

        <asp:FormView 
            ID="FvQuestUpld" 
            runat="server" 
            AllowPaging="false" 
            DataKeyNames="QuestionID" 
            OnItemCommand="FvQuestUpld_ItemCommand" 
            OnModeChanging="FvQuestUpld_ModeChanging" 
            OnItemInserting="FvQuestUpld_ItemInserting" 
            OnItemUpdating="FvQuestUpld_ItemUpdating" 
            OnDataBound="FvQuestUpld_DataBound">

            <ItemTemplate>
                <section class="row">
                    <section class="col-xs-8">
                        <h3>Form View (Read-Only)</h3>
                    </section>
                    <section class="col-xs-4 text-right">
                        <h3>
                            <asp:LinkButton id="btnInsertView" CommandName="New" runat="server" CssClass="glyphicon glyphhicon-plus btn"/>
                            <asp:LinkButton id="btnEditView" CommandName="Edit" runat="server" CssClass="glyphcon glyphcon-pencil btn" />
                            <asp:LinkButton id="btnListView" CommandName="ListView" runat="server" CssClass="glyphcon glyphcon-th-list btn" />
                        </h3> 
                    </section>
                </section>
            </ItemTemplate>
            
            <EditItemTemplate>
                <section class="col-xs-8">
                    <h3>Form View (Edit)</h3>
                    </section>
                    <section class="col-xs-4 text-right">
                        <h3>
                            <asp:LinkButton id="btnInsertView" CommandName="New" runat="server" CssClass="glyphicon glyphhicon-plus btn"/>
                            <asp:LinkButton id="btnEditView" CommandName="Edit" runat="server" CssClass="glyphcon glyphcon-pencil btn" />
                            <asp:LinkButton id="btnListView" CommandName="ListView" runat="server" CssClass="glyphcon glyphcon-th-list btn" />
                        </h3>
                    </section>
                </section>
            </EditItemTemplate>

            <InsertItemTemplate>
                <section class="col-xs-8">
                    <h3>Form View (Insert)</h3>
                    </section>
                    <section class="col-xs-4 text-right">
                        <h3>
                            <asp:LinkButton id="btnInsertView" CommandName="New" runat="server" CssClass="glyphicon glyphhicon-plus btn"/>
                            <asp:LinkButton id="btnEditView" CommandName="Edit" runat="server" CssClass="glyphcon glyphcon-pencil btn" />
                            <asp:LinkButton id="btnListView" CommandName="ListView" runat="server" CssClass="glyphcon glyphcon-th-list btn" />
                        </h3>
                    </section>
                </section>
            </InsertItemTemplate>

            <EmptyDataTemplate>
                <section class="row">
                    <section class="col-xs-12">
                        <h3>(No record found.)</h3>
                    </section>
                </section>
            </EmptyDataTemplate>

        </asp:FormView>

    </section>
    

</asp:Content>

