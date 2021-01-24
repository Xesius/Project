<%@ Page Title="" Language="C#" MasterPageFile="~/pageMaster.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="ASPnetProject.Shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            overflow-x: hidden!important;
        }
        .swiper-container {
            width: 100%;
        }   
        .swiper-slide {
            
            background-repeat: no-repeat;
            background-position: center;
            min-height: 70vh;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
        }
    </style>
    <link rel="stylesheet" href="node_modules/swiper/swiper-bundle.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header class="flex justify-between items-center border-2 border-black">
        <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide" style="background-image: url(images/yeezys.jpg); background-size: auto;"></div>
                    <div class="swiper-slide" style="background-image: url(images/2.jpg); background-size: auto;"></div>
                    <div class="swiper-slide" style="background-image: url(images/3.jpg); background-size: auto;"></div> 
                    <div class="swiper-slide" style="background-image: url(images/4.jpg); background-size: auto;"></div>
                    <div class="swiper-slide" style="background-image: url(images/5.jpg); background-size: auto;"></div>
                    <div class="swiper-slide" style="background-image: url(images/6.jpg); background-size: auto;"></div>
                    <div class="swiper-slide" style="background-image: url(images/7.jpg); background-size: auto;"></div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <button type="button" class="button-prev text-4xl absolute fas fa-arrow-left z-10 hvr-backward" style="left: 0.8%;"></button>
            <button type="button" class="button-next text-4xl absolute fas fa-arrow-right z-10 hvr-forward" style="right: 0.8%;"></button>
    </header>
    <img class="mx-auto w-1/6 border-b-2 my-2" src="images/logo2.png"/>
    <div class="flex justify-center relative mx-auto flex-wrap my-6">
            <div class="rounded-2xl bg-white shadow-2xl w-1/4 mr-4 overflow-hidden">
                <img src="images/2.jpg" class="border-b-2 border-gray-400"/>
                <h1 class="text-2xl font-abeezee font-bold text-center mt-2 mb-1">Air Jordan 1 Low x Dior</h1>
            </div>
            <div class="rounded-2xl bg-white shadow-2xl w-1/4 mr-4 overflow-hidden">
                <img src="images/3.jpg" class="border-b-2 border-gray-400"/>
                <h1 class="text-2xl font-abeezee font-bold text-center mt-2 mb-1">Nike x Fear of God</h1>
            </div>
            <div class="rounded-2xl bg-white shadow-2xl w-1/4 overflow-hidden">
                <img src="images/4.jpg" class="border-b-2 border-gray-400"/>
                <h1 class="text-2xl font-abeezee font-bold text-center mt-2 mb-1">Nike Air Force 1 Sketch</h1>
            </div>
        </div>
    <div class="flex justify-center relative mx-auto flex-wrap mb-6">
            <div class="rounded-2xl bg-white shadow-2xl w-1/4 mr-4 overflow-hidden">
                <img src="images/5.jpg" class="border-b-2 border-gray-400"/>
                <h1 class="text-2xl font-abeezee font-bold text-center mt-2 mb-1">Nike Air VaporMax x Off-White</h1>
            </div>
            <div class="rounded-2xl bg-white shadow-2xl w-1/4 mr-4 overflow-hidden">
                <img src="images/6.jpg" class="border-b-2 border-gray-400"/>
                <h1 class="text-2xl font-abeezee font-bold text-center mt-2 mb-1">Tyler The Creator x Converse One Star Golf Le Fleur</h1>
            </div>
            <div class="rounded-2xl bg-white shadow-2xl w-1/4 overflow-hidden">
                <img src="images/7.jpg" class="border-b-2 border-gray-400"/>
                <h1 class="text-2xl font-abeezee font-bold text-center mt-2 mb-1">Air Jordan 1 x Travis Scott</h1>
            </div>
        </div>
    <script>
        /*function goRight() {
            let currentImage = document.querySelector('.slide.translate-x-0');
            let nextImage = currentImage.nextElementSibling;
            if (nextImage != null) {
                currentImage.classList.remove('translate-x-0');
                currentImage.classList.add('-translate-x-full');
                nextImage.classList.remove('translate-x-full');
                nextImage.classList.add('translate-x-0');
            }
        }
        function goLeft() {
            let currentImage = document.querySelector('.slide.translate-x-0');
            let backImage = currentImage.previousElementSibling;
            if (backImage != null) {
                currentImage.classList.remove('translate-x-0');
                currentImage.classList.add('translate-x-full');
                backImage.classList.remove('-translate-x-full');
                backImage.classList.add('translate-x-0');
            }

        }*/
    </script>
    <script src="node_modules/swiper/swiper-bundle.js"></script>
    <script>
        var swiper = new Swiper('.swiper-container', {
            autoHeight: true,
            loop: true,
            pagination: {
                el: '.swiper-pagination',
                dynamicBullets: true,
            },
            navigation: {
                nextEl: '.button-next',
                prevEl: '.button-prev',
            },
            autoplay: {
                delay: 3200,
            },
        });
    </script>
</asp:Content>
