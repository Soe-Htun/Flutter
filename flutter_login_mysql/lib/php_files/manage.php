<?php
  $conn = mysqli_connect("localhost" , "root", "" , "flutter_login");

  $email  = $_POST['email'];
  $pass = $_POST['pass'];
  if(empty($email) || empty($pass)){
    //echoData('Fill all fields');
  }
  else{
    checkUserExist();
  }

  function checkUserExist(){
    global $conn;
    global $email;

    $userQuery = "SELECT * FROM sign_in_table WHERE email='$email'";
    $sendingQuery = mysqli_query($conn,$userQuery);
    $checkQuery = mysqli_num_rows($sendingQuery);

    if($checkQuery == 1){
      // if user is already registered
     tryLogin();
    }
    // else{
    //   if(empty($))
    // }
  }

  function tryLogin(){
    global $conn;
    global $email;
    global $pass;

    $sql = "SELECT * FROM sign_in_table WHERE email = '$email'";

    $result = $conn->query($sql);
    if($result->num_rows > 0){
      while($rows[] = $result->fetch_assoc()){
        //$tem = $row
      }
    }
  }


?>