<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
          <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
          <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="main.css">
    
    <script>
        
        function editInfo(){
            alert('went in');
            var aboutme = document.getElementById('aboutme').innerHTML;
            var age = document.getElementById('age').innerHTML;
            var sex = document.getElementById('sex').innerHTML;
            var email = document.getElementById('email').innerHTML;
            var save = "save";
            
            document.getElementById('aboutme').innerHTML = "<input type='text' value='" + aboutme + "' name='aboutmename'>";
            document.getElementById('age').innerHTML = "<input type='text' value='" + age + "' name='agename'>";
            document.getElementById('sex').innerHTML = "<input type='text' value='" + sex + "' name='sexname'>";
            document.getElementById('email').innerHTML = "<input type='text' value='" + email + "' name='emailname'>";
            
            var value = document.info.aboutmename.value;
            alert(value);
            
            //document.getElementById('editbtn').innerHTML = "<input type = 'button' value='save' onclick='saveInfo()'>";
        }
        
        
        function saveInfo(){
            //document.getElementById('aboutme').innerHTML = "<div value='aboutme' style='display: inline'>";
            document.getElementById('aboutme').innerHTML = document.info.aboutmename.value;
            document.getElementById('age').innerHTML = document.info.agename.value;
            document.getElementById('sex').innerHTML = document.info.sexname.value;
            document.getElementById('email').innerHTML = document.info.emailname.value;
        }
    </script>
</head>
    
    
<body>
    <div class="container" id = "containerID">
        <div class="col-md-12">
            <form name = "name">
            <h1> John Caingles</h1>
            </form>
            <hr class = "break">
            
            <div class="col-md-3">
                <img src="ProfilePic.jpg" alt="Profile Picture" style="width:234px;height:208px">
                <br>
                
                <hr class = "break">
                <form name = "info">
                About Me: 
                    <div id="aboutme">I am party people</div>
                    <hr class = "break">
                    Age: 
                    <div id="age" style="display: inline">18</div>
                    <br>
                
                    Sex: 
                    <div id="sex" style="display: inline">M</div>
                    <br>
                
                    Email: 
                    <div id="email" style="display: inline">blabla@gmail.com</div>
                </form>
                
                    <br><br>
                    
                <div class="btn-group" role="group" aria-label="...">
                <input type="button" class="btn btn-default" id="editbtn" value="Edit Info" onclick="editInfo()">
                <input type="button" class="btn btn-default" id="savebtn" value="Save" onclick="saveInfo()">
                    
                </div>
                
            </div>
            <div class="col-md-9">
                <div class="rect">
                    <img src="Images/dlsu.jpg">
                    <div class="smallrect">
                        Drank Water<br>
                        De La Salle University
                    </div>
                </div>
                <br>
                <div class="rect">
                <img src="Images/dlsu.jpg">
                <div class="smallrect">
                    Slept in Class<br>
                    De La Salle University
                </div>
                </div>
            </div>
        </div>
    </div>
    
</body>    
    
    
</html>