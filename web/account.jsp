<%@page import="model.Photo"%>
<!DOCTYPE html>
<html>
<head>
          <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
          <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="main.css">
    <title>Profile</title>
    <style>
         .logoutform{
             color: gray;
             font-size: 16px;
             position: relative;
             height: 60px;
             width: 60px;
             left: 1165px;
             top: 20px;
         }
     </style>
    <script>
        
        function disable(){
            document.getElementById("uploadid").disabled = true;
            document.getElementById("savebtn").disabled = true;
        }
                    $(document).ready(function() {
                            disable();
                        });
                        function enable(){
                            
                            document.getElementById("uploadid").disabled = false;
                        }
                        
                        function enableSave(){
                            document.getElementById("savebtn").disabled = false;
                        }
                    
        function editInfo(){
            //alert('went in');
            var name = document.getElementById('userid').innerHTML;
            var aboutme = document.getElementById('aboutme').innerHTML;
            var age = document.getElementById('age').innerHTML;
            var sex = document.getElementById('sex').innerHTML;
            var email = document.getElementById('email').innerHTML;
            enableSave();
            
            document.getElementById('aboutme').innerHTML = "<input type='text' value='" + aboutme + "' name='aboutmename'>";
            document.getElementById('age').innerHTML = "<input type='text' value='" + age + "' name='agename'>";
            document.getElementById('sex').innerHTML = "<input type='text' value='" + sex + "' name='sexname'>";
            document.getElementById('email').innerHTML = "<input type='text' value='" + email + "' name='emailname'>";
            
            
            
            var value = document.info.aboutmename.value;
            //alert(value);
            
            //document.getElementById('editbtn').innerHTML = "<input type = 'button' value='save' onclick='saveInfo()'>";
        }
        
        
        function saveInfo(){
            //document.getElementById('aboutme').innerHTML = "<div value='aboutme' style='display: inline'>";
            document.getElementById('userid').innerHTML = document.name.username.value;
            document.getElementById('aboutme').innerHTML = document.info.aboutmename.value;
            document.getElementById('age').innerHTML = document.info.agename.value;
            document.getElementById('sex').innerHTML = document.info.sexname.value;
            document.getElementById('email').innerHTML = document.info.emailname.value;
        }
    </script>
    
    <%
        String username = (String) session.getAttribute("username");
        Photo pic = (Photo) session.getAttribute("image");
        String directory = pic.getDirectory();
        
     %>
     
     
</head>
    
    
<body>
    <form class="logoutform" action="LogoutServlet" method="post">
        <input type="submit" class="btn btn-default" value="Logout">
    </form>
    
    <div class="container" id = "containerID">
        <div class="col-md-12">
            <form name = "name">
            <h1 id="userid" ><%=
                    username
             %></h1>
            </form>
            <hr class = "break">
            
            <div class="col-md-3">
                <img src="Images/<%=directory%>" alt="Profile Picture" style="width:234px;height:208px">
                <br>
                <form action="UploadPictureServlet" method="POST" enctype="multipart/form-data">
                    <br>
                    
                    <input type="file" name="uploadImage" id="pictureid" class="btn btn-sm" onclick="enable()" accept="image/*"><br>
                    
                    <input type="submit" id="uploadid" class="btn btn-default" value="Upload New Picture"><br>
                    
                </form>
                
                <hr class = "break">
                <form name = "info" action="EditServlet" method="post">
                About Me: 
                    <div id="aboutme"><%
                            out.println(session.getAttribute("aboutme"));
                         %></div>
                    <hr class = "break">
                    Age: 
                    <div id="age" style="display: inline"><%
                            out.println(session.getAttribute("age"));
                         %></div>
                    <br>
                
                    Sex: 
                    <div id="sex" style="display: inline"><%
                            out.println(session.getAttribute("sex"));
                         %></div>
                    <br>
                
                    Email: 
                    <div id="email" style="display: inline"><%
                            out.println(session.getAttribute("email"));
                         %></div>
                
                
                    <br><br>
                    
                <div class="btn-group" role="group" aria-label="...">
                <input type="button" class="btn btn-default" id="editbtn" value="Edit Info" onclick="editInfo()">
                <input type="submit" class="btn btn-default" id="savebtn" value="Save">
                    
                </div>
                
                </form>    
                    
            </div>
            <div class="col-md-9">
                
                <form action="suggestion.jsp">
                    <button type="submit" class="btn btn-primary btn-lg btn-block">Find me something to do!</button>
</form>
                <br>
                <!--
                 <div class="rect">
                    <img src="Images/dlsu.jpg">
                    <div class="smallrect">
                        Drank Water<br>
                        De La Salle University
                    </div>
                </div>
                -->
                <br>
                <div>
                    <table class="table table-striped">
                        <tr>
                            <th>Places Visited</th>
                        </tr>
                        
                        <tr>
                            <td> 
                                <form action="AddReview.jsp">
                                    <button type="submit" class="btn btn-primary btn-lg btn-block">Add Review!</button>
                                </form>
                            </td>
                        </tr>
                    </table>
                </div>
                <!--
                <div class="rect">
                <img src="Images/dlsu.jpg">
                <div class="smallrect">
                    Slept in Class<br>
                    De La Salle University
                </div>
                </div>
                -->
            </div>
        </div>
    </div>
    
</body>    
    
    
</html>