<%@ Page Title="" Language="C#" MasterPageFile="~/pageMaster.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="ASPnetProject.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cool-back flex items-center justify-center h-screen">
        <div class="glass w-1/2 flex items-center justify-center flex-col -mt-10" style="backdrop-filter: blur(12px)!important;">
            <h1 class="text-4xl border-b border-black my-5">Users: </h1>
            <h2><%= sqlSelect %></h2>
            <table class='border border-black table-auto border-collapse text-xl'>
                <%= st %>
            </table>
            <h3 class="text-3xl my-5"><%= msg %></h3>
        </div>
    </div>
</asp:Content>
