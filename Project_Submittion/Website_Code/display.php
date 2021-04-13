<?php
    session_start();
?>

<?php
//$letter = trim($_POST['q']);
$userid = $_SESSION["client_id"];
$array=array();
$db = new mysqli("us-cdbr-east-03.cleardb.com", "b29dc5126ae6f1", "4c9e78bd", "heroku_12a17aeebc01725");
if ($db->connect_error)
    {
        die ("Connection failed: " . $db->connect_error);
    }

$q1 = "SELECT temperature, light, humidity from control_panel where client_id = $userid ORDER BY control_id DESC LIMIT 1";
$r=$db->query($q1);

while( $row =$r->fetch_array())
{
$array[]=$row;
}
$myJSON= json_encode($array);
echo $myJSON;
mysqli_close($db);
?>