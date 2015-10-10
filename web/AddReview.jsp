<%-- 
    Document   : AddReview
    Created on : Mar 26, 2015, 3:15:36 AM
    Author     : John
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
          <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    </head>
    
    <body>
        <br><br><br>
        <div class="container" id = "containerID">
        <form class="form-horizontal" action="account.jsp">
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Title</label>
                <div class="col-sm-10">
                  <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                </div>
              </div>
                        
              <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Rating</label>
                <select class="form-control">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                  </select>
              </div>
                        
              <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label">Content</label>
                <div class="col-sm-offset-2 col-sm-10">
                  <textarea class="form-control" rows="3"></textarea>
                </div>
              </div>
                        
              <div class="form-group">

                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-default" >Submit</button>
                </div>

              </div>
                        
            </form>
        </div>
    </body>
</html>
