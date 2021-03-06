<!doctype html>
<html>

<head>
    <title>NAVMART</title>
    <style>
        html {
            scroll-behavior: smooth;
        }
        
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }
        
        .g {
            opacity: 1;
        }
        
        #topbar {
            position: fixed;
            background-color: blue;
            color: yellow;
            width: 1370px;
            height: 104px;
            border-radius: 10px;
        }
        
        .logo {
            padding: 20px;
            float: left;
            border-right: 2px orange dashed;
            opacity: 1;
        }
        
        .lw {
            padding: 30px;
            font-size: 40px;
            float: left;
            border-right: 2px orange dashed;
        }
        
        .covid {
            margin-top: 10px;
            padding: 30px;
            font-size: 20px;
            background-color: yellow;
            float: right;
            width: 150px;
            border: 2px red solid;
            color: red
        }
        
        a:hover {
            font-size: 200%;
        }
        
        .menu {
            font-size: 12px;
            font-weight: bold;
        }
        
        .n1 {
            float: left;
            padding-top: 35px;
            font-weight: bolder;
            font-size: 1.5;
            padding-left: 15px;
            color: chartreuse;
            text-decoration: none;
        }
        
        .n2 {
            float: left;
            font-size: 1.5;
            padding-top: 35px;
            color: chartreuse;
            padding-left: 15px;
            font-weight: bolder;
            text-decoration: none;
        }
        
        .n3 {
            font-weight: bolder;
            float: left;
            color: chartreuse;
            padding-left: 15px;
            padding-top: 35px;
            font-size: 1.5;
            text-decoration: none;
        }
        
        .n4 {
            font-weight: bolder;
            color: chartreuse;
            float: left;
            padding-left: 15px;
            padding-top: 35px;
            text-decoration: none;
            font-size: 1.5;
        }
        
        .n5 {
            font-size: 1.5;
            font-weight: bolder;
            color: chartreuse;
            float: left;
            padding-left: 15px;
            padding-top: 35px;
            text-decoration: none;
        }
        
        .n {
            list-style: none;
        }
        
        .intro {
            height: 100vh;
            background-image: url(./images/bg.jpg);
            background-size: cover;
            background-position: center;
        }
        
        .name {
            padding-top: 300px;
            padding-left: 800px;
            color: white;
            font-size: 300%;
            font-weight: bold;
            animation-name: co;
            animation-duration: 2s;
        }
        
        .motto {
            font-style: italic;
            color: yellow;
            padding-top: 30px;
            padding-left: 700px;
            font-weight: bold;
            animation-name: mo;
            animation-duration: 2s;
        }
        
        @keyframes co {
            0% {
                opacity: 0;
                transform: rotate(100deg);
            }
            50% {
                transform: rotate(50deg);
            }
            100% {
                opacity: 1;
            }
        }
        
        @keyframes mo {
            0% {
                opacity: 0;
                transform: translateX(100px);
            }
            50% {
                transform: translateX(-20px);
            }
            100% {
                opacity: 1;
                transform: translateX(0);
            }
        }
        
        .soon {
            padding: 20px;
            color: red;
            font-size: 300%;
            font-weight: bold;
            text-decoration: underline;
            background-color: lightgray;
            height: 50px;
        }
        
        .first {
            float: left;
            border: 2px black solid;
            margin: 7px;
            transition: transform 1s;
            opacity: 0.2;
        }
        
        .first:hover {
            transform: scale(1.1);
            opacity: 1;
        }
        
        .second {
            float: left;
            border: 2px black solid;
            transition: transform 1s;
            margin: 7px;
            opacity: 0.2;
        }
        
        .second:hover {
            transform: scale(1.1);
            opacity: 1;
        }
        
        .third {
            border: 2px black solid;
            margin: 7px;
            transition: transform 1s;
            opacity: 0.2;
            float: left;
        }
        
        .third:hover {
            transform: scale(1.1);
            opacity: 1;
        }
        
        .fourth {
            margin: 7px;
            border: 2px black solid;
            opacity: 0.2;
            transition: transform 1s;
            float: left;
        }
        
        .fourth:hover {
            transform: scale(1.1);
            opacity: 1;
        }
        
        .fifth {
            margin: 7px;
            border: 2px black solid;
            opacity: 0.2;
            transition: transform 1s;
            float: left;
        }
        
        .fifth:hover {
            transform: scale(1.1);
            opacity: 1;
        }
        
        .b {
            margin: 10px;
            border: 2px solid black;
            border-radius: 5px;
        }
        
        .b1 {
            margin: 10px;
            border: 2px solid black;
            border-radius: 100px;
        }
        
        .n7 {
            padding: 5px;
            text-align: center;
        }
        
        .last {
            padding: 10px;
            color: black;
            font-weight: bolder;
            font-style: italic;
            font-size: 200%;
        }
        
        .j {
            background-color: chartreuse;
            width: 1370px;
            height: 400px;
        }
        
        .word {
            padding: 10px;
            color: gold;
            background-color: darkblue;
            height: 70px;
            width: 1370px;
            font-size: 300%;
            text-align: center;
        }
        
        .form {
            margin: 5px;
            padding: 10px;
            color: red;
            font-weight: bold;
            text-align: center;
            border: 2px black solid;
            border-radius: 5px;
            background-color: rgb(243, 243, 132);
        }
        
        .eg {
            background-color: burlywood;
            width: 1370px;
            height: 70px;
            padding: 10px;
            color: purple;
            font-size: 300%;
            text-align: center;
        }
        
        .l2 {
            margin: 0;
            font-size: 200%;
            border: 2px blueviolet dashed;
        }
        
        .foot {
            background-color: black;
            height: 200px;
            width: 1370px;
            z-index: 1;
        }
        
        .foot1 {
            padding: 10px;
            margin-top: 20px;
            margin-left: 100px;
            border: 2px red solid;
            background-color: white;
            height: 150px;
            color: blue;
            font-size: 0.7;
            float: left;
            z-index: 2;
        }
        
        .foot2 {
            padding: 10px;
            z-index: 2;
            margin-top: 20px;
            margin-left: 700px;
            border: 2px red solid;
            background-color: white;
            color: blue;
            font-size: 0.7;
            float: left;
        }
        
        .logo2 {
            padding: 0 5 5 10;
            border: 2px blue solid;
        }
        
        .end {
            background-color: lightblue;
            margin-left: 600px;
            padding: 5px;
            color: red;
            font-weight: bold;
            border: 5px black inset;
        }
        
        .n8 {
            padding: 10px;
            font-size: 300%;
            font-weight: bold;
            color: lawngreen;
            background-color: rgb(114, 32, 2);
            height: 70px;
            width: 1370px;
            text-align: center;
            text-decoration: underline;
        }
        
        .buy {
            background-color: paleturquoise;
            height: 650px;
            width: 1370px;
            padding: 10px;
        }
        
        .n9 {
            padding: 10px;
            font-size: 300%;
            font-weight: bold;
            color: rgb(39, 1, 39);
            background-color: rgb(155, 253, 8);
            height: 70px;
            width: 1370px;
            text-align: center;
            text-decoration: underline;
        }
        
        .surp {
            background-color: darkred;
            color: yellow;
            height: 350px;
            width: 1370px;
            padding: 10px;
            opacity: 1;
        }
        
        .block {
            margin-top: 60px;
            margin-left: 600px;
            padding: 10px;
            background-color: khaki;
            height: 30px;
            width: 175px;
            text-align: center;
            border: 5px darkgoldenrod inset;
        }
        
        .prev {
            font-size: 2;
            color: darkslategray;
            font-size: bold;
            text-decoration: none;
        }
        
        .rev {
            margin: 10px 0 10 500;
            border: 2px solid black;
            border-radius: 5px;
            transition: transform 1s;
            opacity: 0.5;
        }
        
        .rev:hover {
            transform: scale(1.1);
            opacity: 1;
        }
    </style>
</head>

<body>

    <div id="topbar">
        <div class="logo ">
            <img src="images/logo.JPG" alt="logo" width=60px height=60px class="g" />
        </div>
        <div class="lw">
            NAVMART.com
        </div>
        <div class="covid">
            <a href="https://www.google.co.in/covid19/?utm_source=google&utm_medium=hpp&utm_campaign=cv" target=_blank>###COVID-19</a>
        </div>
        <div class="menu">
            <ul class="n">
                <li><a href="#back" class="n1">INTRO</a></li>
                <li><a href="#most" class="n4">MOST BOUGHT</a></li>
                <li><a href="#surprise" class="n3">SURPRISES</a></li>
                <li><a href="#comingsoon" class="n2">COMING SOON</a></li>
                <li><a href="#reveiw" class="n5">REVEIWS SECTION</a></li>


            </ul>
        </div>


    </div>
    <a name="back"></a>
    <div class="intro">
        <div class="name">
            NAVMART
        </div>
        <div class="motto">
            FULFILLING ALL DESIRES
        </div>
        <div class="block">
            <a href="#surprise" class="pre">SURPRISES</a>

        </div>


    </div>


    <a name="most"></a>
    <div class="n8">
        MOST BOUGHT ITEMS
    </div>
    <div class="buy">
        <div class="bu1">
            <div class="first">
                <img src="images/shoe.jpg" alt="shoe" width=200px height=200px class="b1" />
                <br />
                <hr />
                <div class="n7"><strong>SPORTS SHOES :</strong>COST:Rs 500<br />RATING=4/5
                </div>
            </div>
            <div class="second">
                <img src="images/bed.jpg" alt="bedsheet" width=200px height=200px class="b1" />
                <br />
                <hr />
                <div class="n7"><strong>BEDSHEETS :</strong>COST:Rs 250-500<br />RATING=4.5/5
                </div>
            </div>
            <div class="third">
                <img src="images/mod.jpg" alt="mobiles" width=200px height=200px class="b1" />
                <br />
                <hr />
                <div class="n7"><strong>MOBILES :</strong>ALL VARIETIES<br />RATING=5/5
                </div>
            </div>
            <div class="fourth">
                <img src="images/bcy.jpg" alt="cycle" width=200px height=200px class="b1" />
                <br />
                <hr />
                <div class="n7"><strong>CYCLES :</strong>COST:Rs 6000-8000<br />RATING=4/5
                </div>
            </div>
            <div class="fifth">
                <img src="images/table.jpg" alt="table" width=200px height=200px class="b1" />
                <br />
                <hr />
                <div class="n7"><strong>TABLES :</strong>COST:Rs 1000-1500<br />RATING=4/5
                </div>
            </div>
        </div>
        <br />
        <div class="bu2">
            <div class="first">
                <img src="images/chair.jpg" alt="chair" width=200px height=200px class="b1" />
                <br />
                <hr />
                <div class="n7"><strong>CHAIRS :</strong>COST:Rs 400-500<br />RATING=4.5/5
                </div>
            </div>
            <div class="second">
                <img src="images/out.jpg" alt="all out pack" width=200px height=200px class="b1" />
                <br />
                <hr />
                <div class="n7"><strong>ALL OUT KIT :</strong>COST:Rs 100<br />RATING=5/5
                </div>
            </div>
            <div class="third">
                <img src="images/dabur.jpg" alt="chyawanprash" width=200px height=200px class="b1" />
                <br />
                <hr />
                <div class="n7"><strong>CHYAWANPRASH :</strong>COST:Rs 100<br />RATING=5/5
                </div>
            </div>
            <div class="fourth">
                <img src="images/harpic.jpg" alt="harpic" width=200px height=200px class="b1" />
                <br />
                <hr />
                <div class="n7"><strong>HARPIC :</strong>COST:Rs 50-150<br />RATING=5/5
                </div>
            </div>
            <div class="fifth">
                <img src="images/frame.jpg" alt="photoframe" width=200px height=200px class="b1" />
                <br />
                <hr />
                <div class="n7"><strong>PHOTOFRAMES :</strong>COST:Rs 300<br />RATING=4.5/5
                </div>
            </div>
        </div>
    </div>

    <a name="surprise"></a>
    <div class="n9">
        SURPRISES SECTION
    </div>
    <div class="surp">
        <div class="first">
            <img src="images/buyback.jpg" alt="mobile offer" width=300px height=200px class="b" />
            <br />
            <hr />
            <div class="n7">Buyback and Exchange of Mobiles
            </div>
        </div>
        <div class="second">
            <img src="images/free.jpg" alt="buy 2 get one free" width=300px height=200px class="b" />
            <br />
            <hr />
            <div class="n7">Buy 2 Get 1 Free T-shirts<br />
                <strike>Original Cost: Rs 300 X 3</strike><br />New Cost: Rs 300 X 2
            </div>
        </div>
        <div class="third">
            <img src="images/cooler.jpg" alt="cooler" width=300px height=200px class="b" />
            <br />
            <hr />
            <div class="n7">COOLERS<br />
                <strike>Original Cost: Rs 4000</strike><br />Discount:40%<br />New Cost:Rs 2400
            </div>
        </div>
        <div class="fourth">
            <img src="images/fridge.jpg" alt="fridge" width=300px height=200px class="b" />
            <br />
            <hr />
            <div class="n7">FRIDGE<br />
                <strike>Original Cost: Rs 10000</strike><br />Discount:30%<br />New Cost:Rs 7000
            </div>
        </div>

    </div>
    <a name="comingsoon"></a>
    <div class="soon">

        COMING SOON...


    </div>
    <div class="j">
        <div class="first">
            <img src="images/sunglass.jpg" alt="sunglass" width=300px height=200px class="b" />
            <br />
            <hr />
            <div class="n7">OPTICON SUNGLASSES...
            </div>
        </div>
        <div class="second">
            <img src="images/acer.jpg" alt="laptop" width=300px height=200px class="b" />
            <br />
            <hr />
            <div class="n7">NEW ACER LAPTOP...
            </div>
        </div>
        <div class="third">
            <img src="images/bat.jpg" alt="bat" width=300px height=200px class="b" />
            <br />
            <hr />
            <div class="n7">MRF BAT...
            </div>
        </div>
        <div class="fourth">
            <img src="images/tshirt.jpg" alt="tshirt" width=300px height=200px class="b" />
            <br />
            <hr />
            <div class="n7">FREESIZE T-SHIRTS...
            </div>
        </div>
        <div class="last">
            PRICES TO BE DISCLOSED VERY SOON ALONG WITH DISCOUNTS AND BONUS CREDITS FOR EARLY BIRDS!!!
        </div>
    </div>


    <a name="reveiw"></a>
    <div class="reveiw">

        <div class="word">
            GIVE REVEIWS
        </div>

        <div class="form">
            <p>FIRST NAME</p>
            <input type="text" placeholder="type">
            <hr />

            <p>LAST NAME</p>
            <input type="text" placeholder="type">
            <hr />
            <p>EMAIL</p>
            <input type="text" placeholder="type">
            <hr />
            <p>RATINGS OUT OF 5</p>
            <input type="number" placeholder="type">
            <hr />
            <p>REVEIWS</p>
            <input type="textarea" width=200px height=400px>
            <hr />
            <input type="submit" value="SUBMIT">
        </div>

    </div>

    <div class="examples">
        <div class="eg">
            SOME CUSTOMERS' REVEIWS
        </div>
        <ul class="l2">
            <li>VERY GOOD STARTUP</li>
            <li>EXCELLENT ITEMS OF A WIDE RANGE</li>
            <li>REASONABLE PRICES</li>
            <img src="images/rev.jpg" class="rev" alt="reveiw" width=200px height=200px />
        </ul>

        <div class="foot">
            <div class="foot1">
                <ul>
                    <li>Terms and Conditions</li>
                    <li>Privacy Policy</li>
                    <li>Contact Us</li>
                </ul>
            </div>
            <div class="foot2">
                <ul>
                    <li>
                        Copyright Information
                    </li>
                </ul>
                <br /> NAVMART
                <img src="images/logo.JPG" alt="logo" class="logo2 g" width=60px height=60px />


            </div>


        </div>
        <hr />

        <a href="#back" class="end">BACK TO TOP</a>


</body>

</html>
