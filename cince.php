<?php 
include 'connect.php';
global $romans;
session_start();
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Library</title>
  <link rel="stylesheet" href="common.css">
</head>
<body>
<div class="wrapper">

<a href="catego.php"> <img src="http://elib.rshu.ru/static/img/logos/main-page-logo.png" alt="" class="logo__home">   </a>

<section class="name__bibliotek">
  <div class="container">
  <h1 class="title__form">
       список фэнтези
  </h1>
   
<?php 
$i=0;
  //echo $bookRecords;
      while($i<$bookRecords)
      {      
        $romans->data_seek($i);
        $row = $romans->fetch_assoc();
        $book = $row;
        $i = $i+1;    
      
      if($book['Genre'] == 'Фэнтези')
      {
      echo '
<div class="roman clearfix">

  <h1 class="title__form">'.
    $book['Pledge'].' грн'.
  '</h1>
  <div class="ckeck">
    <input type="checkbox" id="ckackb">
  </div>
  <div class="pic">
    <img src="' .$book['Image']. '" alt="book" >
  </div>
  <div class="describe">
    
      <h2>Название:       '.$book['Name']. '</h2>'.
      '<h2>Автор:          '.$book['Author']. '</h2>'.
      '<h2>Год выпуска:    '.$book['ReleaseYear'].'</h2>'.
      
  '</div>'.
'</div>';
};
  };
  


 ?>


<div class="buy__book">
    <input type="button" value="Оформить" onclick="this.disabled=1; this.value='Оформлено. Книги можно забрать через 10 минут.'">
</div>

</section>
</div>
</body>
</html>