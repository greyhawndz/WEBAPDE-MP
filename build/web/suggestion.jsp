<!DOCTYPE html>
<html>
<head>
    <title>WHAT THE HECK SHOULD I DO?</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="main.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
     
     <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?libraries=places&sensor=false"></script>
    
	
	<script>
var map;
var iterator = 0;
var total;
var currMarker = [];
var placeType = ["restaurant", "bar", "cafe"];
var autocomplete;

function disable()
{
    
    document.getElementById("placeID").disabled = true;
}

            $(document).ready(function() {
                            disable();
                        });
function enable(){
    document.getElementById("placeID").disabled = false;
 }
function initialize() {
  var pyrmont = new google.maps.LatLng(14.5661786, 120.99339080000004);

  map = new google.maps.Map(document.getElementById('map-canvas'), {
    center: pyrmont,
    zoom: 15
  });
  
 

  
  
}

$(function () {
                var input = document.getElementById('pac-input');
                var options = {                    
                    types: ["geocode","establishment"]
                };
                 
                
                autocomplete = new google.maps.places.Autocomplete(input, options);
               
                
                
            });
function funky(){
    if(document.getElementById("changetype-establishment").checked){
                    placeType = ["restaurant"];
                    
                }
                else if(document.getElementById("changetype-address").checked){
                    placeType = ["aquarium", "amusement_park", "zoo", "casino", "clothing_store", "store", "shopping_mall", "spa", "gym"];
                    
                }
}

function search(){
    enable();
    var infowindow;
    var place = autocomplete.getPlace();
                var request = {
                    location: place.geometry.location,
                    radius: 500,
                    types: placeType
                };
                map.setCenter(place.geometry.location);
    infowindow = new google.maps.InfoWindow();
                var service = new google.maps.places.PlacesService(map);
                service.nearbySearch(request, callback);
}
function callback(results, status) {
  if (status == google.maps.places.PlacesServiceStatus.OK) {
      total = results.length;
       
      createMarker(results[iterator]);
      iterator++;
      if(iterator >= total){
          iterator = 0;
      }
    
  }
}


function createMarker(place) {
  var placeLoc = place.geometry.location;
  
  var marker = new google.maps.Marker({
    map: map,
    position: place.geometry.location
  });
  map.setCenter(marker.getPosition());
  currMarker.push(marker);
  if(currMarker.length >=2){
     
      currMarker[0].setMap(null);
      currMarker[0] = currMarker[1];
      currMarker.pop();
  }

  google.maps.event.addListener(marker, 'click', function() {
    infowindow.setContent(place.name);
    infowindow.open(map, this);
  });
  document.getElementById("sug").innerHTML = "<h2 id=\"sug\">"+place.name+"</h2>";
  document.getElementById("placeNameID").value = place.name;
}

google.maps.event.addDomListener(window, 'load', initialize);



    </script>
	
<style>
#map-canvas{
         position: relative;
         left: 200px;
         
          height:250px;
          width: 880px;
          margin: 0px;
        padding: 0px
      }
      
      .controls{
          width: 300px;
          position: relative;
          top: 280px;
          left: 500px;
      }
      .searchbutt{
          position: relative;
          bottom: -15px;
          left:15px;
      }
      #sug{
         text-align: center;
         color: gray;
         text-transform: uppercase;
      }
      .submitPlace{
          position: relative;
          bottom: 150px;
          left: 116px;
      }
      
      
	  </style>
	  
	  </head>
          
          
          <body>
	  
	  <div class="header">
        <h1 class="headertitle">TRY VISITING:</h1><br>
        <h2 id="sug">NOTHING</h2>
        <div class="otherwelcomeuser">
            <form class="outform" action="LogoutServlet" method="post">
                <a href="account.jsp" class="btn btn-default" name="account">Profile</a>
                <input type="submit" class="btn btn-default" value="Logout">
            </form>
            
        </div>
            <input id="pac-input" name="address" class="controls" type="text"
        placeholder="Enter a location">
    <div id="type-selector" class="controls">
      
      <input type="radio" name="type" id="changetype-establishment" checked="checked" onclick="funky()">
      Food

      <input type="radio" name="type" id="changetype-address" onclick="funky()">
      Recreation

      <input type="button" class="btn btn-default searchbutt" onclick="search()" value="Search!">
      <form class="submitPlace" action="PlaceServlet" method="post">
          <input type="hidden" id="placeNameID" name="placeName">
          <input type="submit" id="placeID" class="btn btn-default" value="I visited this!">
      </form>
    </div>
        </div>		

    
        
    <div id="map-canvas"></div>
	
          </body>
</html>
