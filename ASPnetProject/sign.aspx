<%@ Page Title="" Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="sign.aspx.cs" Inherits="ASPnetProject.sign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function validString(str) {
            var quot = "\"";
            if (str.indexOf(quot) != -1) {
                return false;
            }
            var badstr = "<>[]{}?_+*&%$אבגדהוזחטיכלמנסעפצקרשת";
            var i = 0, p, ch;
            while (i < badstr.length) {
                ch = badstr.charAt(i);
                p = str.indexOf(ch);
                if (p != -1) {
                    return false;
                }
                i++;
            }
            return true;
        }
        function showpass() {
            var hidden = document.getElementById("showpassbutton").getAttribute("src");
            var passwordInput = document.getElementById("password").type;
            if (hidden == "svg/hide.svg") {
                hidden = "svg/show.svg";
                passwordInput = "password";
            }
            else {
                hidden = "svg/hide.svg";
                passwordInput = "text";
            }
            showpassbutton.src = hidden;
            document.getElementById("password").type = passwordInput;
        }

        function pass() {
            var result = true, mail = true, username = true, pass = true, gender = true;
            username = checkForms();
            mail = checkMail();
            pass = checkPass();
            gender = checkGender();
            if (mail == false || username == false || pass == false || gender == false) {
                result = false;
            }
            else {
                result = true;
            }
            return result;
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
            console.log(validString(mailForm));
            if (validString(mailForm) == false) {
                box1.innerHTML = 'Invalid chars';
                box1.classList.remove('hidden');
                box1.classList.add('block');
                return false;
            }
            if (mailForm.length <= 6) {
                box1.innerHTML = 'Your mail should be longer than 6 charcters.';
                box1.classList.remove('hidden');
                box1.classList.add('block');
                return false;
            }
            if (mailForm.indexOf("@") != mailForm.lastIndexOf("@")) {
                box1.innerHTML = 'Mail address need to contian only one "@"';
                box1.classList.remove('hidden');
                box1.classList.add('block');
                return false;
            }
            if (mailForm.indexOf("@") < 2 || mailForm.lastIndexOf("@") == mailForm.length - 1) {
                box1.innerHTML = 'The "@" should be after 2 letters and not the final letter.';
                box1.classList.remove('hidden');
                box1.classList.add('block');
                return false;
            }
            if (mailForm.indexOf(".") - mailForm.indexOf("@") < 2) {
                box1.innerHTML = 'Email need to include ".", at least one letter after the "@"';
                box1.classList.remove('hidden');
                box1.classList.add('block');
                return false;
            }
            if (mailForm.indexOf(".") == 0 || mailForm.lastIndexOf(".") == mailForm.length - 1) {
                box1.innerHTML = 'Email should not start with "." or end with "."';
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
        function checkPass() {
            var passForm = document.getElementById("password").value;
            var box2 = document.getElementById("passCheck");
            if (passForm.length <= 6) {
                box2.classList.add('block');
                box2.classList.remove('hidden');
                return false;
            }
            else {
                box2.classList.remove('block');
                box2.classList.add('hidden');
                return true;
            }

        }
        function checkGender() {
            if (document.getElementById('gender').checked || document.getElementById('gender2').checked) {
                document.getElementById("radioCheck").classList.remove('block');
                document.getElementById("radioCheck").classList.add('hidden');
                return true;
            }
            else {
                document.getElementById("radioCheck").classList.add('block');
                document.getElementById("radioCheck").classList.remove('hidden');
                return false;
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
        <form class="w-1/3 cool-back" onsubmit="return pass()">
            
            <div class="glass m-10 py-10 mt-32">
                
                <h1 class="text-4xl font-bold font-overpass ml-10 mt-10 tracking-wider">Sign Up</h1>
                <div class="m-10">
                    <div>
                        <label class="text-black font-overpass text-2xl">Email</label>
                        <input name="mail" id="mail" type="text" onchange="checkMail()" class="grey-glass w-full font-overpass text-2xl h-10 text-center outline-none" autocomplete="off" autocorrect="off" spellcheck="false" placeholder="Enter your email here" />
                        <div id="mailCheck" class="w-full rounded-b-2xl text-center transition-transform hidden red-glass-error">Your mail should be longer than 2 charcters.</div>
                    </div>
                    <div class="mt-4">
                        <label class="text-black font-overpass text-2xl">Username</label>
                        <input name="username" id="username" type="text" onchange="checkForms()" class="grey-glass w-full font-overpass text-2xl h-10 text-center outline-none" autocomplete="off" placeholder="Enter your username here" />
                        <div id="nameCheck" class="w-full rounded-b-2xl text-center transition-transform hidden red-glass-error">Your name should be longer than 2 charcters.</div>
                        
                    </div>
                    <div class="mt-4">
                        <label class="text-black font-overpass text-2xl">Password</label>
                        <div class="relative">
                            <input name="password" id="password" type="password" onchange="checkPass()" class="grey-glass w-full font-overpass text-2xl h-10 text-center outline-none" placeholder="Enter your password here" />
                            <img src="svg/show.svg" onclick="showpass()" id="showpassbutton" class="absolute top-0 mt-1 mr-1 right-0 h-8 flex items-center"/>
                            <div id="passCheck" class="w-full rounded-b-2xl text-center transition-transform hidden red-glass-error">Your password should be longer than 6 charcters.</div>
                        </div>
                    </div>
                    <div class="flex justify-center mt-6">
                        <input type="radio" id="gender" name="gender" value="male" />
                        <label for="gender" class="mr-3 text-xl">Male</label>
                        <input type="radio" id="gender2" name="gender" value="female" />
                        <label for="gender" class="text-xl">Female</label>
                        
                    </div>
                    <div id="radioCheck" class="w-full rounded-b-2xl text-center transition-transform hidden red-glass-error">Please choose a gender.</div>
                    <div class="mt-8 w-full flex justify-center">
                        <input type="submit" name="sumbit" class="grey-glass py-2 mt-4 -mb-5 px-4 transition-colors ease-out duration-150 hover:bg-gray-400" value="Login">
                    </div>
                </div>
            </div>

        </form>
        
    </div>
</asp:Content>

