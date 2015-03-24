<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<title>Log-in</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="main.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script>
        
        

		function clearField()
		{ 
			if(document.getElementById('unames').value == "Username"){
			document.getElementById('unames').value = '';
			}
			
		}

		function clearField2()
		{ 
			if(document.getElementById('pword').value == "Password"){
			document.getElementById('pword').value = '';
			}
			
		}

		function clearRegFieldP()
		{  
			if(document.getElementById('pReg').value == "Password"){
				document.getElementById('pReg').value = '';
			}
		}

		function clearRegFieldU()
		{
			if(document.getElementById('userReg').value == "Username"){
				document.getElementById('userReg').value = '';
			}
		}
        
        function clearRegFieldA()
		{
			if(document.getElementById('age').value == "Age"){
				document.getElementById('age').value = '';
			}
		}

		function clearRegFieldP2()
		{
			if(document.getElementById('confP').value == "Confirm Password"){
				document.getElementById('confP').value = '';
			}
		}

		function clearRegFieldE()
		{
			if(document.getElementById('em').value == "Email"){
				document.getElementById('em').value = '';
			}
		}
	</script>
	<style>
		.headerReg
		{
			text-align: center;
			font-size: 20px;
			color: gray;
		}
		.uReg
		{
			border:2px solid #456879;
			border-radius:10px;
			height: 25px;
			width: 230px;
			color: gray;
			font-size: 12px;
			outline:none;
		}

		.register
		{

			border-radius:10px;
			margin-left: 50%;
			border-bottom: 10%;
			font-size:14px;
			color:gray;
			outline:none;
		}
		</style>
                
                <%  
                    String errorMsg = "";
                    
                    
                        if(session.getAttribute("username") == null || session.getAttribute("password") == null){
                            errorMsg = "Invalid Username/Password!";
                        }
                        else{
                            errorMsg = "";
                        }
                        
                    
                    
                %>
</head>
<body>
	<h1 class="headertitle">WHAT SHOULD I DO?</h1>
	<h3 class="slogan">Smart.Innovative.Sexy</h3><br><br>
	<div class="content">
             <form action="LoginServlet" method="POST">
                 <h4><font color="red"><%= errorMsg%></h4>
		<input type="text" id="unames" class="uname" name="uName" value="Username" onclick="clearField()"><br><br>
		<input type="password" id="pword" class="uname" name="pWord" value="Password" onclick="clearField2()"><br><br>
		
                <button class="regbutt" type="button" onclick="javascript:window.location='Register.jsp';" >Register<span class="caret"></span> </button>
		
		
		<input type="Submit" class="loginbutt" name="buttonsubmit" value="Login"><br>
                </form>
		</div>
	</div>
</body>
</html>