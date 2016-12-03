<?php
global $link;
$link = mysqli_connect('mysql.hostinger.ru','u529939229_kata','dimasergdima','u529939229_myfb');

global $romans, $bookRecords;

if (!$link) {
    echo "Ошибка: Невозможно установить соединение с MySQL." . PHP_EOL;
    echo "Код ошибки errno: " . mysqli_connect_errno() . PHP_EOL;
    echo "Текст ошибки error: " . mysqli_connect_error() . PHP_EOL;
    exit;
}
    $sql = "SELECT* FROM `Book`";
    $romans = mysqli_query($link,$sql);
    //var_dump($romans);
    $bookRecords = $romans->num_rows;

    //var_dump($result);

function ExistsLogin($link,$name)
{
  $sql = "SELECT * FROM `User` Where Login='".$name."'";
  $result = mysqli_query($link,$sql);
  echo "<pre>";
 // if($result->num_rows>0)
//	echo "есть такой логин в базе";
//  else 
//	echo "такого логина в базе нет";
  echo "</pre>";
  return $result->num_rows>0;
}

function checkPassword($link, $name, $password)
{
	//echo "Проверка пароля для логина" .$name." и пароля" .$password."   ";
	$sql = "SELECT * FROM `User` Where Login='".$name."'";
	$result = mysqli_query($link,$sql);
	$result->data_seek(0);
        $row = $result->fetch_assoc();
	//var_dump($row); 
	//echo "это сожержимое записи c логином Admin";
  	//echo "<pre>";
  	if($row["Password"] == $password)
	{
		//echo "Результат проверки: пароль верен !";
		return true;	
	}
	//echo "Результат проверки: пароль не верен !";
  	return false;
}

function getRomanBook($link, $num)
{
  //global $romans;
     $romans->data_seek($num);
    $row = $romans->fetch_assoc();
    return $row;
}

function getRomansNumber()
{

  //var_dump($books);
  return $romans['num_rows'];
}

function getPassword($link,$name,$password)
{
  if(empty($name) || ExistsLogin($name)){
         global $nameIncorrectMsg;
         $nameIncorrectMsg = 'Логин неверный!';
         global $valid_name;
         $valid_name = 'error';
     }

}

?>
