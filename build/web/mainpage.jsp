<!doctype html>
<html>
<head>
	<title>WHERE THE HECK SHOULD I DO?</title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="main.css">
	<script>

		function clearField()
		{
			if(document.getElementById('locationinput').value == "Enter Valid Location"){
			document.getElementById('locationinput').value = '';
			}
		}
        
        function stupidCheck()
        {
            var x = document.getElementById('locationinput').value;
            
            if(x == "De La Salle University")
               {
                    window.location = "suggestion.html";
               }
            else
            {
                alert('Service not available');
            }
        }
	</script>
</head>
<body>
	<div class="container">
		<h1 class="headertitle">WHAT SHOULD I DO?</h1>
		<h3 class="slogan">Smart.Innovative.Sexy</h3>
        <div class="otherwelcomeuser">
            <ul>
                <li>Hello <a href="account.html">user1234</a></li>
                <li><a href="login.html">Sign Out</a></li>
            </ul>
        </div>
	</div>
	<br>
	<br>
	<div class="content">
		<form class="submit">
			<input type="text" id="locationinput" name="location" value="Enter Valid Location" onclick="clearField()"><br><br>
			<input type="button" class="buttoninput" name="buttonsubmit" value="Find me something to do!" onclick= "stupidCheck()"><br>
		</form>
	</div>	
</body>
</html>