﻿<%@ Page Title="" Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="sign.aspx.cs" Inherits="ASPnetProject.sign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function continue1() {
            var check = checkForms();
            console.log(check)
            return false;
        }
        function checkForms() {
            var usernameForm = document.getElementById("username").value;
            var box = document.getElementById("nameCheck");
            if (usernameForm.length <= 2) {
                box.classList.remove('hidden');
                box.classList.add('block');
                return false;
            }
            else {
                box.classList.remove('block');
                box.classList.add('hidden');
                return true;
            }
        }
        function checkMail() {
            var mailForm = document.getElementById("mail").value;
            var box1 = document.getElementById("mailCheck");
            console.log(mailForm);
            console.log(mailForm.indexOf("@"));
            console.log(mailForm.lastIndexOf("@"));
            if (mailForm.length <= 2) {
                box1.innerHTML = 'Your mail should be longer then 2 charcters.';
                box1.classList.remove('hidden');
                box1.classList.add('block');
                return false;
            }
            else if (mailForm.indexOf("@") != mailForm.lastIndexOf("@") || mailForm.indexOf("@") == -1) {
                box1.innerHTML = 'Mail adress need to contian only one "@"';
                box1.classList.remove('hidden');
                box1.classList.add('block');
                return false;
            }
            else {
                box1.classList.remove('block');
                box1.classList.add('hidden');
                return true;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="flex flex-row justify-start h-screen">
        <div class="h-screen bg-gradient-to-br from-teal-400 to-blue-500 w-2/3 flex flex-col items-center text-center">
            <a href="Login.aspx" class="text-4xl ml-20 mt-10 h-8 font-bold font-overpass tracking-wider">Already have an account? click here</a>
            <img src="svg/wfh_8.svg" class="w-5/6" />
        </div>
        <form class="w-1/3" onsubmit="return checkForms()">
            
            <div>
                
                <h1 class="text-4xl font-bold font-overpass ml-10 mt-10 tracking-wider">Sign Up</h1>
                <div class="m-10">
                    <div>
                        <label class="text-gray-600 font-overpass text-2xl">Email</label>
                        <input name="mail" id="mail" type="email" onchange="checkMail()" class="bg-gray-400 rounded-lg w-full font-overpass text-2xl h-10 border border-black text-center outline-none focus:bg-gray-500" autocomplete="off" autofocus="autofocus" placeholder="Enter your email here" />
                        <div id="mailCheck" class="w-full rounded-b-2xl bg-gray-500 text-center transition-transform hidden -mt-1">Your mail should be longer then 2 charcters.</div>
                    </div>
                    <div class="mt-4">
                        <label class="text-gray-600 font-overpass text-2xl">Username</label>
                        <input name="username" id="username" type="text" onchange="checkForms()" class="bg-gray-400 rounded-lg w-full font-overpass text-2xl h-10 border border-black text-center outline-none focus:bg-gray-500" autocomplete="off" autofocus="autofocus" placeholder="Enter your username here" />
                        <div id="nameCheck" class="w-full rounded-b-2xl bg-gray-500 text-center transition-transform hidden -mt-1">Your name should be longer then 2 charcters.</div>
                        
                    </div>
                    <div class="mt-4">
                        <label class="text-gray-600 font-overpass text-2xl">Password</label>
                        <input name="password" id="password" type="password" class="bg-gray-400 rounded-lg w-full font-overpass text-2xl h-10 border border-black text-center outline-none focus:bg-gray-500" placeholder="Enter your password here" />
                    </div>
                    <div class="flex justify-center mt-6">
                        <input type="radio" id="gender" name="gender" value="male" />
                        <label for="gender" class="mr-3 text-xl">Male</label>
                        <input type="radio" id="gender2" name="gender" value="female" />
                        <label for="gender" class="text-xl">Female</label>
                    </div>
                    <div class="mt-8 w-full flex justify-center">
                        <input type="submit" name="sumbit" class="bg-gray-400 py-2 px-4 rounded transition-colors ease-out duration-150 hover:bg-gray-500" value="Login"></input>
                    </div>
                </div>
            </div>

        </form>
        
    </div>
    <% = table %>
</asp:Content>

