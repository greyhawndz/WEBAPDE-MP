<!doctype html>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="main.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<!--
	<script src = "js/jquery.js"></script>
	<script src = "http://momentjs.com/downloads/moment.min.js"></script>
	<script src = "combodate.js"></script>
	-->
    <script>

        function clearRegFieldU()
		{
			if(document.getElementById('userReg').value == "Username")
            {
				document.getElementById('userReg').value = '';
			}
		}
        
        function clearRegFieldA()
		{
			if(document.getElementById('age').value == "Age")
            {
				document.getElementById('age').value = '';
			}
		}

		function clearRegFieldP2()
		{
			if(document.getElementById('confP').value == "Password")
            {
				document.getElementById('confP').value = '';
			}
		}

		function clearRegFieldE()
		{
			if(document.getElementById('em').value == "Email")
                        {
				document.getElementById('em').value = '';
			}
		}
                
                function clearRegFieldP()
                {
                    if(document.getElementById('pReg').value == "Password")
                    {
                        document.getElementById('pReg').value = '';
                    }
                }
        
	</script>
    <style>
        .register
		{

			border-radius:10px;
                        position: relative;
                        left:450px;
                        width: 500px;
                        font-size:20px;
                        color:gray;
                        outline:none;
		}
                
                .submitButton
                {
                    border-radius:10px;
                    position: relative;
                    bottom: 70px;
                    left: 150px;
                    font-size:25px;
                    color:gray;
                    outline:none;
                }
                
                .regContent
                {
                    border-style: ridge;
                    
                    height: auto;
                    border-width: thick;
                    background-color: #a5f3ef;
                }
                .sexy{
                    position:relative;
                    bottom:3px;
                    height: 25px;
                    width: 60px;
                    border:2px solid #456879;
                    border-radius:10px;
                    outline: none;
                }
                
                .uReg
                {
                    border:2px solid #456879;
                    border-radius:10px;
                    height: 35px;
                    width: 430px;
                    color: gray;
                    font-size: 20px;
                    outline:none;
                }
                .monthdate
                {
                    position:relative;
                    bottom: 3px;
                    height: 25px;
                    width: 75px;
                    border:2px solid #456879;
                    border-radius:10px;
                    outline: none;
                }
                
                .daydate
                {
                    position:relative;
                    bottom: 3px;
                    height: 25px;
                    width: 45px;
                    border:2px solid #456879;
                    border-radius:10px;
                    outline: none;
                }
                
                .yeardate
                {
                    position:relative;
                    bottom: 3px;
                    height: 25px;
                    width: 60px;
                    border:2px solid #456879;
                    border-radius:10px;
                    outline: none;
                }
                .drop{
                    position:relative;
                    bottom: 30px;
                }
                h1{
                    position:relative;
                    left: 110px;
                }
                body
                {
                    background-color: #14cddb;
                }
                a:link, a:visited
                {
                    text-decoration: none;
                    color:gray;
                }
                
    </style>
</head>
<body>
<div class="regContent">
    <form class="register" role="menu" aria-labelledby="dropdownMenu1" action="RegisterServlet" method="POST">
        <h1 class="headerReg"><a href="index.jsp">REGISTER</a></h1>
        <input type ="text"  class="uReg" id="userReg" name="Username" value="Username" onclick="clearRegFieldU()"><br>
        <h3>Password:</h3>
        <input type="password"  class="uReg" id="pReg" name="Password" value="Password" onclick="clearRegFieldP()"><br>
        <h3>Confirm Password:</h3>
        <input type="password"  class="uReg" id="confP" name="ConfPass" value="Password" onclick="clearRegFieldP2()"><br><br>
        <input type="text"  class="uReg" id="age" name="Age" value="Age" onclick="clearRegFieldA()"><br><br>
	<input type="text"  class="uReg" id="em" name="Email" value="Email" onclick="clearRegFieldE()"><br><br>
        <h3 class="drop"><font color="gray">Sex: 
        <select name="sex" class="sexy">
            <option>Male</option>
            <option>Female</option>
        </select> 
                    </font></h3> 
                <h3 class="drop"><font color="gray">Birth Date: 
        <select class="monthdate" name="month">
            <option value = "January">January</option>
            <option value = "February">February</option>
            <option value = "March">March</option>
            <option value = "April">April</option>
            <option value = "May">May</option>
            <option value = "June">June</option>
            <option value = "July">July</option>
            <option value = "August">August</option>
            <option value = "September">September</option>
            <option value = "October">October</option>
            <option value = "November">November</option>
            <option value = "December">December</option>
        </select>
		<select name="day" class="daydate">
                    <option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>
		<option value="9">9</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12">12</option>
		<option value="13">13</option>
		<option value="14">14</option>
		<option value="15">15</option>
		<option value="16">16</option>
		<option value="17">17</option>
		<option value="18">18</option>
		<option value="19">19</option>
		<option value="20">20</option>
		<option value="21">21</option>
		<option value="22">22</option>
		<option value="23">23</option>
		<option value="24">24</option>
		<option value="25">25</option>
		<option value="26">26</option>
		<option value="27">27</option>
		<option value="28">28</option>
		<option value="29">29</option>
		<option value="30">30</option>
		<option value="31">31</option>
	</select>
	<select name="year" class="yeardate">
                <option value="1990">1990</option>
                <option value="1991">1991</option>
                <option value="1992">1992</option>
                <option value="1993">1993</option>
                <option value="1994">1994</option>
                <option value="1995">1995</option>
                <option value="1996">1996</option>
                <option value="1997">1997</option>
                <option value="1998">1998</option>
                <option value="1999">1999</option>
                <option value="2000">2000</option>
		<option value="2001">2001</option>
		<option value="2002">2002</option>
		<option value="2003">2003</option>
		<option value="2004">2004</option>
		<option value="2005">2005</option>
	</select>
                    
		<!--
		<input name = "date" id = "date" data-format = "DD-MM-YYYY" data-template = "D MMM YYYY">
		<script>
		$('date').combodate({
			firstItem: 'name',
			minYear: 1975,
			maxYear: 2015
		)};
		</script>
		-->
        
            
        </font></h3>
                <br><br>
        <input class="submitButton" type="submit"  name="buttonsubmit" value="Submit">
    </form>
</div>
</body>
</html>