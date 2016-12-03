<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Bibliotek</title>
  <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
  <link rel="stylesheet" href="common.css">
</head>
<body>
<?php
//include 'objects.php';
include 'connect.php';
if (!isset($_POST['submit']))
  {
    $_POST['name'] = '';
    $_POST['password'] = '';
  }
else
{
  $passwordToCheck = $_POST['password'];
  $name = $_POST['name'];
//    if(!checkPassword($link, $name, $passwordToCheck))
 //   {
//    echo "Такого пароля в базе нет!";
//    }
 //   else
//    {
//    echo "Такой пароль в базе есть!";
//    }

   $loginExists = ExistsLogin($link, $_POST['name']);
    if(!$loginExists)
    {
	$valid_name = 'error';
    	echo "<script>alert(\"Такого логина нет в базе!\");</script>";
    }
   else
    {
        $passwordToCheck = $_POST['password'];
    if(!checkPassword($link, $name, $passwordToCheck))
    {
      echo "<script>alert(\"Неверный пароль!\");</script>";
      $valid_password = 'error';
    }
    }
//  $valid_name = ''; $valid_email = '';   $nextPage = 'bibliotek.php';




//    $name = htmlentities($_POST['name']);
//    $password = htmlentities($_POST['password']);
//    $nameIncorrectMsg = '';
//    $passwordIncorrectMsg = '';
     if($valid_name !== 'error' && $valid_password !== 'error')
     {
              require('catego.php');
              exit;
     }
}



?>
<div class="wrapper">
  <header class="header">
  
  <h1 class="title__form">
       вход в библиотеку
  </h1>
   
    <form action="<?php echo htmlentities($_SERVER['PHP_SELF']) ?>"  method="post">
    
   <div class="title__name">
     Name
   </div> 
   
   <div class="input__box">  
              <input type="text" id="name" name="name" value="<?php echo $_POST['name']; ?>"
            class="<?php echo $valid_name; ?>">
	<?php echo $nameIncorrectMsg ; ?>
    </div>   
      
                                           
  <div class="title__name ">
     Password
   </div>  
     
    <div class="input__box">
          <input type="password" id="submit" name="password" value="<?php echo $_POST['password']; ?>"
            class="<?php echo $valid_password; ?>">
	<?php
	echo $passwordIncorrectMsg;
	?>
    </div>  
      
      
      
      
    <div class="input__sub"> 
      <input type="submit" id="send" name="submit" value="Отправить">
    </div>
    </form>
 
  </header>

   <a href="bibliotek.php" class="bibliotek__link">link to biblioteck page</a>

</div>
<script type="text/javascript">
  function send() {
    // body...
  }
</script>
</body>
</html>
