<%@ Page Title="" Language="C#" MasterPageFile="~/pageMaster.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="ASPnetProject.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Users: </h1>
    <h2><%= sqlSelect %></h2>
    <table class='border border-black table-fixed border-collapse'>
        <%= st %>
    </table>
    <h3><%= msg %></h3>
</asp:Content>
