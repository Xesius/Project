<%@ Page Title="" Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASPnetProject.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="flex flex-row justify-start h-screen">
        <div class="h-screen bg-gradient-to-br from-teal-400 to-blue-500 w-2/3 flex flex-col items-center text-center">
            <a href="sign.aspx" class="text-4xl ml-20 mt-10 h-8 font-bold font-overpass tracking-wider">Make an account.</a>
            <img src="svg/wfh_8.svg" class="w-5/6"/>
        </div>
        <div class="bg-white h-screen w-1/3">
            <div>
                <h1 class="text-4xl font-bold font-overpass ml-10 mt-10 tracking-wider">Login in</h1>
                <div class="m-10">
                    <div>
                        <label class="text-gray-600 font-overpass text-2xl">Email/Username</label>
                        <input type="email" class="bg-gray-400 rounded-lg w-full font-overpass text-2xl h-10 border border-black text-center outline-none focus:bg-gray-500" autocomplete="on" autofocus="autofocus" placeholder="Enter your email here"/>
                    </div>
                    <div class="mt-4">
                        <label class="text-gray-600 font-overpass text-2xl">Password</label>
                        <input type="password" class="bg-gray-400 rounded-lg w-full font-overpass text-2xl h-10 border border-black text-center outline-none focus:bg-gray-500" placeholder="Enter your password here"/>
                    </div>
                    <div class="mt-8 w-full flex justify-center">
                        <button type="submit" class="bg-gray-400 py-2 px-4 rounded transition-colors ease-out duration-150 hover:bg-gray-500">Login</button>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    
</asp:Content>
