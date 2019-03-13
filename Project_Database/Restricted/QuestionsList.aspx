<%@ Page Title="Questions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QuestionsList.aspx.cs" Inherits="Project_Database.QuestionsList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<!-- Everything goes here -->
    <h2><%: Title %></h2>

    <section class="comntainer">
        <section class="row">
            <!-- LIST VIEW column -->
            <section class="col-md-12">
                <h3>List View</h3>
                <asp:ListView ID="LVQuestions" runat="server" OnItemCommand="LVQuestions_ItemCommand">
                    <LayoutTemplate>
                        <table runat="server" if="tblQuestions" class="table table-hover">
                            <tr runat="server" >
                                <th>Title</th>
                                <th>Creator</th>
                                <th>Date</th>
                                <th>Rating</th>
                            </tr>
                            <tr runat="server" id="itemPlaceholder"></tr>
                        </table>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <tr runat="server">
                            <td><asp:Label ID="lblTitle" runat="server" Text='<%#Eval("[Title]")%>'/></td>
                            <td><asp:Label ID="lblCreator" runat="server" Text='<%#Eval("[Creator]")%>'/></td>
                            <td><asp:Label ID="Date" runat="server" Text='<%#Eval("[Date]")%>'></asp:Label></td>
                            <td><asp:Label ID="lblRating" runat="server" Text='<%#Eval("[Rating]")%>'/></td>
                            <td><asp:LinkButton ID="btnView" runat="server" Text="View" CommandName="View" CommandArgument='<%#Eval("ID") %>' /></td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </section>
            <!-- SEARCH column -->
            <section class="col-md-4">
                <h3>Search</h3>
                <p><asp:TextBox ID="SearchTitle" runat="server" placeholder="Title"></asp:TextBox></p>
                <p><asp:TextBox ID="SearchCreator" runat="server" placeholder="Creator"></asp:TextBox></p>
                <p><asp:TextBox ID="SearchDate" runat="server" placeholder="Date"></asp:TextBox></p>
                <p><asp:Button ID="btnSearchWSite" runat="server" Text="Search" CssClass="btn btn-primary"/></p>
            </section>
        </section>
    </section>
</asp:Content>
