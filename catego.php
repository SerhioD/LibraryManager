<?php 
session_start();
$a = $_POST['name'];
$_SESSION['name'] = $_POST['name']; 
?>
 <!DOCTYPE html>
<html>
<head>
	 <title> TestSeite</title>
	 <link rel="shortcut icon" href="img/Obama.jpg">
   <meta charset="utf-8">
   <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
   
   
	 <link rel="stylesheet" href="common.css">
</head>
<body>
  
<div class="wrapper">
  
   <a href="index.php"> <img src="http://elib.rshu.ru/static/img/logos/main-page-logo.png" alt="" class="logo__home">   
   </a>
    <div class="container">
      
       <h1 class="title__books">Выбор раздела </h1>
       <hr>
       
        <div class="category">
        
         <a href="roman.php" class="roman__site">
              <div class="romany__books">
              <h1>Романы</h1>  
            </div>
         </a>  
           
           <a href="cince.php" class="roman__site">  
            <div class="cince__book">
                 <h1>Фэнтези</h1>  
            </div>
        </a>  
            
         <a href="detecktiv.php" class="roman__site">    
            <div class="crimenal__book">
                  <h1>Детективы</h1>  
            </div>
        </a>      
            
        </div>
    </div>
</div>


<!--<script;
  src="http://code.jquery.com/jquery-3.1.1.js"
  integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA="
  crossorigin="anonymous"></script>

<script src="ja.js">  </script>-->
</body>
</html>
