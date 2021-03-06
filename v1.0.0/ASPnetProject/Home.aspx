﻿<%@ Page Title="" Language="C#" MasterPageFile="~/pageMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ASPnetProject.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header class="flex h-screen bg-cover items-center justify-center" style="background: url('https://media.discordapp.net/attachments/777140417216512032/777205033154117642/shoe_over_building.jpg?width=1248&height=702') center center no-repeat; background-attachment: fixed; background-size: cover">
        <div class="bg-opacity-50 h-full w-screen bg-black">
            <div class="custom-shape-divider-top-1607268144">
                <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
                    <path d="M0,0V46.29c47.79,22.2,103.59,32.17,158,28,70.36-5.37,136.33-33.31,206.8-37.5C438.64,32.43,512.34,53.67,583,72.05c69.27,18,138.3,24.88,209.4,13.08,36.15-6,69.85-17.84,104.45-29.34C989.49,25,1113-14.29,1200,52.47V0Z" opacity=".25" class="shape-fill"></path>
                    <path d="M0,0V15.81C13,36.92,27.64,56.86,47.69,72.05,99.41,111.27,165,111,224.58,91.58c31.15-10.15,60.09-26.07,89.67-39.8,40.92-19,84.73-46,130.83-49.67,36.26-2.85,70.9,9.42,98.6,31.56,31.77,25.39,62.32,62,103.63,73,40.44,10.79,81.35-6.69,119.13-24.28s75.16-39,116.92-43.05c59.73-5.85,113.28,22.88,168.9,38.84,30.2,8.66,59,6.17,87.09-7.5,22.43-10.89,48-26.93,60.65-49.24V0Z" opacity=".5" class="shape-fill"></path>
                    <path d="M0,0V5.63C149.93,59,314.09,71.32,475.83,42.57c43-7.64,84.23-20.12,127.61-26.46,59-8.63,112.48,12.24,165.56,35.4C827.93,77.22,886,95.24,951.2,90c86.53-7,172.46-45.71,248.8-84.81V0Z" class="shape-fill"></path>
                </svg>
            </div>
        </div>
        <div class="rounded-3xl p-5 border-2 border-teal-300 shadow-lg overflow-hidden bg-gradient-to-br from-green-300 to-teal-400 absolute">

            <div class="flex justify-between">
                        <h1 class="text-4xl font-bold font-abeezee">We are StockZ</h1>
                        <img src="images/bowl_cut.jpg" class="rounded-full w-16 -mt-1 mr-16 border-2 border-white"/>
            </div>

            <div>
                <p class="text-2xl">Best place to buy and resell shoes. 100% trust.</p>
            </div>
        </div>
    </header>
    <div class="h-full bg-white mx-auto">
        <div class="text-4xl font-abeezee mx-auto p-2 shadow max-w-md rounded-2xl mt-10">
            Our Top Selling Sneakers
        </div>
        <div class="flex mx-auto container mt-10">
            <div class="p-6 border shadow rounded-2xl max-w-md my-1 mx-4">
                <a href="Shop.aspx">                
                    <img src="images/air_jordan_grey.jpg" />
                    <div class="border-t-2">
                        <h1 class="font-bold text-3xl font-abeezee">Air Jordan 1 Grey</h1>
                        <p class="text-2xl">180$</p>
                    </div>
                </a>
            </div>
            <div class="p-6 border shadow rounded-2xl max-w-md my-1 mx-4">
                <a href="Shop.aspx">                
                    <img src="images/air_jordan_grey.jpg" />
                    <div class="border-t-2">
                        <h1 class="font-bold text-3xl font-abeezee">Air Jordan 1 Grey</h1>
                        <p class="text-2xl">if yes then yes</p>
                    </div>
                </a>
            </div>
            <div class="p-6 border shadow rounded-2xl max-w-md my-1 mx-4">
                <a href="Shop.aspx">                
                    <img src="images/air_jordan_grey.jpg" />
                    <div class="border-t-2">
                        <h1 class="font-bold text-3xl font-abeezee">Air Jordan 1 Grey</h1>
                        <p class="text-2xl">if yes then yes</p>
                    </div>
                </a>
            </div>
        </div>
        <div class="flex mx-auto container mt-10">
            <div class="p-6 border shadow rounded-2xl max-w-md my-1 mx-4">
                <a href="Shop.aspx">                
                    <img src="images/air_jordan_grey.jpg" />
                    <div class="border-t-2">
                        <h1 class="font-bold text-3xl font-abeezee">Air Jordan 1 Grey</h1>
                        <p class="text-2xl">if yes then yes</p>
                    </div>
                </a>
            </div>
            <div class="p-6 border shadow rounded-2xl max-w-md my-1 mx-4">
                <a href="Shop.aspx">                
                    <img src="images/air_jordan_grey.jpg" />
                    <div class="border-t-2">
                        <h1 class="font-bold text-3xl font-abeezee">Air Jordan 1 Grey</h1>
                        <p class="text-2xl">if yes then yes</p>
                    </div>
                </a>
            </div>
            <div class="p-6 border shadow rounded-2xl max-w-md my-1 mx-4">
                <a href="Shop.aspx">                
                    <img src="images/air_jordan_grey.jpg" />
                    <div class="border-t-2">
                        <h1 class="font-bold text-3xl font-abeezee">Air Jordan 1 Grey</h1>
                        <p class="text-2xl">if yes then yes</p>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <header class="flex h-full items-center justify-center" style="background: url('images/bg1.jpg') no-repeat center center; background-attachment: fixed; background-size: 87%">
            <div class="rounded-3xl flex flex-wrap items-start p-5 border-2 border-gray-600 shadow-lg bg-gray-400 bg-opacity-75 w-2/3">
                <div class="max-w-sm">                
                    <img src="images/grey_tran.png" class="object-contain" />
                </div>
                <div class="flex flex-col"> 
                    
                    <h1 class="text-3xl font-bold">Hey! You can contact us anytime!</h1>
                    <p class="text-xl">Email Us: yorgan12@example.com</p>
                </div>
            </div>
    </header>
</asp:Content>
