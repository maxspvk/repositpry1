<?php
$login =  filter_var(trim($_POST['login']),
 FILTER_SANITIZE_STRING);
 $phonenumber = filter_var(trim($_POST['phonenumber']),
 FILTER_SANITIZE_STRING);
 $problem = filter_var(trim($_POST['problem']),
 FILTER_SANITIZE_STRING);

 if (mb_strlen($login) < 2 || mb_strlen($login) > 15 ) {
  echo "Недопустима кількість букв в імені";
  exit();
} else if (mb_strlen($phonenumber) != 10 || is_numeric($phonenumber) != $phonenumber  ) {
   echo "Неправильна кількість цифр або неправильний формат.";
   exit();
} else if (mb_strlen($problem) < 5 || mb_strlen($problem) > 200 ) {
      echo "Недопустимий опис проблеми.";
      exit();
}else {
	echo "Дякую за заявку. Очікуйте нашого дзвінка.";

}
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "test-db1";

$conn = new mysqli ($servername, $username, $password, $dbname);
$conn -> query("INSERT INTO `users` (`login`, `phonenumber`, `problem`)
VALUES ('$login', '$phonenumber', '$problem')");
$conn-> close();
//echo "Дякую за заявку," $login ". Очікуйте нашого дзвінка.";

 ?>
