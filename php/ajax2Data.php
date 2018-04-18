<?php
// Connect to database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "angularlearning";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check Connection
if ($conn->connect_error) {
    die("Connection failed: ".$conn->connect_error);
}
switch ($_GET["ajaxid"]) {
  case 'states':
    $query = $conn->query("SELECT * FROM usa_states");

    $output = "";
    while ($result = $query->fetch_array(MYSQLI_ASSOC)) {
        if ($output != "") {
            $output .= ",";
        }
        $output .= '{"Name":"'.$result["Name"].'","Abbreviation":"'.$result["Abbreviation"].'"}';
    }
    $output = '{"states":['.$output.']}';
    echo($output);
    break;
  case 'addcontact':
    $data = file_get_contents("php://input");
    $contactinfo = json_decode($data,true);
    $sql = 'INSERT INTO contacts (name,phone,state,email) VALUES ("'.$contactinfo["name"].'","'.$contactinfo["phone"].'","'.$contactinfo["state"]["Abbreviation"].'","'.$contactinfo["email"].'")';
    if ($conn->query($sql) === TRUE) {
      echo "New contact created successfully";
    } else {
      echo "Error: " . $sql . "<br>" . $conn->error;
    }
    break;
  case 'contacts':
    $output = [];
    $query = $conn->query("SELECT * FROM contacts");
    while ($contact = $query->fetch_array(MYSQLI_ASSOC)) {
      array_push($output, $contact);
    }
    print_r(json_encode($output));
    break;
  case 'pswrdgen':
    $data = file_get_contents("php://input");
    $genOpt = json_decode($data,true);
    // sql statement ORDER BY RAND() because database table contains <1000 rows so overhead is not an issue
    $sql = "SELECT word FROM random_words ORDER BY RAND() LIMIT ".$genOpt["num"];
    $results = $conn->query($sql);
    $words = [];
    while ($word = $results->fetch_assoc()) {
      array_push($words, $word["word"]);
    }
    $pswrd = '';
    for ($i=0; $i < $genOpt["num"]-1; $i++) {
      $pswrd.= $words[$i].$genOpt["type"];
    }
    $pswrd.= $words[$genOpt["num"]-1];
    print_r($pswrd);
    break;
  default:
    # code...
    break;
}
  $conn->close();
