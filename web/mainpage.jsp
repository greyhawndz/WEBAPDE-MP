<!doctype html>
<html>
<head>
        <script src='https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js'></script>
	<title>WHAT THE HECK SHOULD I DO?</title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="main.css">
        <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500">
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true&libraries=places&sensor=false"></script>
	<script>
            

		
        function stupidCheck()
        {
                    window.open("suggestion.jsp", "_self"); 
        }
        
      $(function () {
                var input = document.getElementById('autocomplete');
                var options = {                    
                    types: ["geocode","establishment"]
                };

                autocomplete = new google.maps.places.Autocomplete(input, options);
            });
       
	</script>
           
        <style>
            .outform{
                position: relative;
                top: 12px;
                left: 75px;
            } 
        </style>
</head>
<body onload="initialize()">
	<div class="container">
		<h1 class="headertitle">WHAT SHOULD I DO?</h1>
		<h3 class="slogan">Smart.Innovative.Sexy</h3>
        <div class="otherwelcomeuser">
            <form class="outform" action="LogoutServlet" method="post">
                <a href="account.jsp" class="btn btn-default" name="account">Profile</a>
                <input type="submit" class="btn btn-default" value="Logout">
            </form>
            
        </div>
	</div>
	<br>
	<br>
	<div class="content">
		<form class="submit">
			<input type="text" id="autocomplete" class="locationinput" size="50" name="location" placeholder="Enter Valid Location" ><br><br>
			<input type="button" class="buttoninput" name="buttonsubmit" value="Find me something to do!" onclick="stupidCheck()"><br>
		</form>
	</div>	
</body>
</html>