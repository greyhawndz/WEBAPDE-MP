<!DOCTYPE html>
<html>
<head>
    <title>WHAT THE HECK SHOULD I DO?</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="main.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <script>
        var suggestions = ["Sleeping in Class?", "Punching Someone?", "ACTUALLY STUDYING????", "Skipping School?"];
        var suggestions2 = ["Eating in Agno?", "Eating in Tori Box?", "Eating in McDonalds?", "Eating in Jolibee?"];
        var suggestions3 = ["DRINKING IN BARN?", "Drinking in Agno?", "Drinking in StarBucks?", "Drinking FREE WATER in the Water Fountain?"];
        var i = 0;
            
        function stupidWrite()
        {
            document.getElementById('fake').innerHTML = suggestions[i];
            i++;
            if(i>3)
            {
                i =0;
            }
        }
        
        function stupidWrite2()
        {
            document.getElementById('fake2').innerHTML = suggestions2[i];
            i++;
            if(i>3)
            {
                i =0;
            }
        }
        
        function stupidWrite3()
        {
            document.getElementById('fake3').innerHTML = suggestions3[i];
            i++;
            if(i>3)
            {
                i =0;
            }
        }
        </script>
</head
<body>
    <div class="container megadiv">
    <div class="doing">
    <a name="doing"></a>
    <div class="header">
        <h1 class="headertitle">HAVE YOU TRIED:</h1><br>
        
        <h3 class="slogan" id="fake">Skipping School?</h3>
        <div class="welcomeuser">
            <ul>
                <li>Hello <a href="account.html">user1234</a></li>
                <li><a href="login.html">Sign Out</a></li>
            </ul>
        </div>
    </div>
    <div class = "googlemap">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.5987940231726!2d120.99394700000002!3d14.564921000000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c97f2ea0318b%3A0x8e8eae0957d17c38!2sDe+La+Salle+University!5e0!3m2!1sen!2sph!4v1425394714735" width="400" height="300" frameborder="0" style="border:0"></iframe>
    </div>
    <div class="buttons">
        <div class="topdiv">
        <div>
        <input type="button" class="btn btn-default butt" value="NO, THAT'S BORING" onclick="stupidWrite()">
        </div>
        <div>
            <input type="button" class="btn btn-default butt" value="I'M GONNA DO THIS">
        </div>
        </div>
        
        <div class="buttdiv">
            <div>
                <a class="btn btn-default butt" href="mainpage.html">MY LOCATION IS WRONG</a>
            </div>
            <div>
                <a class="btn btn-default butt" href="#hungry">I'M ACTUALLY HUNGRY</a>
            </div>
            <div>
                <a class="btn btn-default butt" href="#thirsty">I'M ACTUALLY THIRSTY</a>
            </div>
        </div>
    </div>
    </div>
    <div class="hungry">
        <a name="hungry"></a>
        <div class="header">
        <h1 class="headertitle">HAVE YOU TRIED:</h1><br>
        
        <h3 class="slogan" id="fake2">Eating in Jolibee?</h3>
        <div class="welcomeuser">
            <ul>
                <li>Hello <a href="account.html">user1234</a></li>
                <li><a href="login.html">Sign Out</a></li>
            </ul>
        </div>
    </div>
    <div class = "googlemap">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.5987940231726!2d120.99394700000002!3d14.564921000000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c97f2ea0318b%3A0x8e8eae0957d17c38!2sDe+La+Salle+University!5e0!3m2!1sen!2sph!4v1425394714735" width="400" height="300" frameborder="0" style="border:0"></iframe>
    </div>
    <div class="buttons">
        <div class="topdiv">
        <div>
        <input type="button" class="btn btn-default butt" value="NO, I DON'T LIKE THAT" onclick="stupidWrite2()">
        </div>
        <div>
            <input type="button" class="btn btn-default butt" value="THIS ONE SEEMS NICE">
        </div>
        </div>
        
        <div class="buttdiv">
            <div>
                <a class="btn btn-default butt" href="mainpage.html">MY LOCATION IS WRONG</a>
            </div>
            <div>
                <a class="btn btn-default butt" href="#doing">I WANT TO DO SOMETHING</a>
            </div>
            <div>
                <a class="btn btn-default butt" href="#thirsty">I'M ACTUALLY THIRSTY</a>
            </div>
        </div>
    </div>
    </div>
    <div class="thirsty">
        <a name="thirsty"></a>
        <div class="header">
        <h1 class="headertitle">HAVE YOU TRIED:</h1><br>
        
        <h3 class="slogan" id="fake3">Drinking FREE WATER in the Water Fountain?</h3>
        <div class="welcomeuser">
            <ul>
                <li>Hello <a href="account.html">user1234</a></li>
                <li><a href="login.html">Sign Out</a></li>
            </ul>
        </div>
    </div>
    <div class = "googlemap">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.5987940231726!2d120.99394700000002!3d14.564921000000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397c97f2ea0318b%3A0x8e8eae0957d17c38!2sDe+La+Salle+University!5e0!3m2!1sen!2sph!4v1425394714735" width="400" height="300" frameborder="0" style="border:0"></iframe>
    </div>
    <div class="buttons">
        <div class="topdiv">
        <div>
        <input type="button" class="btn btn-default butt" value="NO, I DON'T LIKE THAT" onclick="stupidWrite3()">
        </div>
        <div>
            <input type="button" class="btn btn-default butt" value="THIS ONE SEEMS NICE">
        </div>
        </div>
        
        <div class="buttdiv">
            <div>
                <a class="btn btn-default butt" href="mainpage.html">MY LOCATION IS WRONG</a>
            </div>
            <div>
                <a class="btn btn-default butt" href="#doing">I WANT TO DO SOMETHING</a>
            </div>
            <div>
                <a class="btn btn-default butt" href="#hungry">I'M ACTUALLY HUNGRY</a>
            </div>
        </div>
    </div>
    </div>
    </div>
</body>    
</html>