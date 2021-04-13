<?php
session_start();
?>


	<?php
	$validate = true;
	$email_error = "";
	$password_error = "";
	$email_v = "/^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/";
	$password_v = "/^[!-~]{8,}$/";

	$email = "";
	$password = "";
	if (isset($_POST["Login"]) && $_POST["Login"])
	{
		$email = trim($_POST["email"]);
		$password = trim($_POST["password"]);

		$db = new mysqli("us-cdbr-east-03.cleardb.com", "b29dc5126ae6f1", "4c9e78bd", "heroku_12a17aeebc01725");
		if ($db->connect_error)
		{
			die ("Connection failed: " . $db->connect_error);
		}

		$emailMatch = preg_match($email_v, $email);
		if($email == null || $email == "" || $emailMatch == false)
		{
			$validate = false;
			$email_error ="email format is not right!";
		}

		$password_Match = preg_match($password_v, $password);
		if($password == null || $password == "" || $password_Match == false)
		{
			$validate = false;
			$password_error ="password format is not right!";
		}
		if($validate == true)
		{
			$q6 = "SELECT client_id FROM client WHERE email = '$email'";
			$r6 = $db->query($q6);
			if($r6->num_rows == 0)
			{
				$email_error ="Can not find this eamil";
			}
			$q1 = "SELECT client_id FROM client WHERE email = '$email' AND password='$password'";
			$r1 = $db->query($q1);
//			echo $r1->num_rows;
			if($r1->num_rows > 0)
			{
				$row = $r1->fetch_assoc();
				$userid = $row["client_id"];
				//echo $userid;
				$dateFormat = date("Y-m-d H:i:s", time());
				$q2 = "UPDATE client SET logged_in = '1'  AND login_time = '$dateFormat' WHERE client_id = '$userid'";
				$r2 = $db->query($q2);
				$_SESSION["client_id"] = $userid;

				echo $dateFormat;
				echo "    ";
				echo $userid;
				header("Location: index.php");
			}
			else{
				$error = "Password is not match!";
			}
		}
		$db->close();
	}
	?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="small.css" />
    <link rel="stylesheet" type="text/css"  href="large.css" />
    <link rel="stylesheet" type="text/css"  href="scratch.css" />
    <script type="text/javascript" src="Login.js"> </script>
    <title> Login </title>
</head>
<body>
<nav class="table_sign_up">
    <form id="Login" method="post" onsubmit ="Login(event)" enctype="multipart/form-data">
        <table>
            <tr><td></td><td><label id="email_msg" class="err_msg"></label></td></tr>
            <tr><td>Email: </td><td> <input type="text" name="email" size="30" /></td> </tr>


            <tr><td></td><td><label id="pswd_msg" class="err_msg"></label></td></tr>
            <tr><td>Password: </td><td> <input type="password" name="password" size="30"/></td></tr>

        </table>
        <p>
            <input type="submit" name="Login" value="Login" action = "index.php"/>
            <input type="reset" name="Reset" value="Reset" />
            <button type="button" class="active" onclick="location.href='index2.php'">Sign Up</button>
        </p>
        <p>

        </p>


    </form>
    <div id="display_info"></div>
    <script type = "text/javascript"  src = "Login-r.js" ></script>
</nav>
</body>
<footer>

</footer>
</html>

