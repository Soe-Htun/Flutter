<?php
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "flutter_employees";
  $conn = new mysqli($servername, $username, $password, $dbname);
  if($conn->connect_error) {
    die("Connection failed: " .$conn->connect_error );
  }
  $sql = "SELECT * FROM employees";
  $result = $conn->query($sql);
  $response = array();
  if($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
      array_push($response,$row);
    }
  }
  $conn->close();
  header('Content-Type: application/json');
  echo json_encode($response);

?>