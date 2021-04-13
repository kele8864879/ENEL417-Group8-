<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="small.css" />
<link rel="stylesheet" type="text/css"  href="large.css" />
<link rel="stylesheet" type="text/css"  href="scratch.css" />
<head id="top">
    <title>Greenhouse</title>
</head>
<body>
    <header>
        <table>
            <tr>
                <td>
                    <img src="images.jpg" alt="Photo" height="100%" width="100%"/></td>
                <td></td>
            </tr>
        </table>
    </header>
    <nav>
        <lo>
            <a href=""> Main Page </a>
        </lo>
        <lo>
            <a href="SignUp.html"> Set up</a>
        </lo>
        <lo>
            <a href="control.php"> control </a>
        </lo>
        <lo>
            					<form action="login.php" method="post">
            						<input type="submit" name ="Log_out" value="Log_out"/>
            					</form>
        </lo>
    </nav>
    	<?php
        $userid = $_SESSION["client_id"];
    	$dateFormat = date("Y-m-d H:i:s", time());
    	$db = new mysqli("us-cdbr-east-03.cleardb.com", "b29dc5126ae6f1", "4c9e78bd", "heroku_12a17aeebc01725");
    	if ($db->connect_error)
    	{
    		die ("Connection failed: " . $db->connect_error);
    	}
    	$q1 = "SELECT temperature, light, humidity from control_panel where client_id = '$userid' ORDER BY Date_Time DESC LIMIT 1";
    	$r1 = $db->query($q1);
        $user_id_row = $r1->fetch_assoc();
        $temperature = $user_id_row["temperature"];
        $humidy = $user_id_row["humidity"];
        $light = $user_id_row["light"];



    	$db->close();
    	?>

    <section class="section_one">
        <p> Temperature </p>
        <p style="font-size: 100px"> <?php echo $temperature; ?>°C </p>

    </section>

    <section class="section_two">
        <p> Humidity </p>
        <p style="font-size: 100px"> <?php echo $humidy; ?>%</p>

    </section>

    <section class="section_one">
        <p> Light </p>
        <p style="font-size: 100px"> <?php echo $light; ?> </p>
    </section>

    <section class="section_two">
        <p> Temperature </p>
        <p style="font-size: 100px"> 23°C</p>
    </section>

    	<footer>
    		<p>Have a good day!</p>
    	</footer>
</body>

	<?php
	if (isset($_POST["Log_out"]) && $_POST["Log_out"])
	{
		$userid ="";
		$userid = $_SESSION["cliend_id"];
		$db = new mysqli("us-cdbr-east-03.cleardb.com", "b29dc5126ae6f1", "4c9e78bd", "heroku_12a17aeebc01725");
		if ($db->connect_error)
		{
			die ("Connection failed: " . $db->connect_error);
		}
		$q2 = "UPDATE client SET logged_in='0' where cliend_id = '$userid'";
		$r2 = $db->query($q2);

		if ($r2 === true)
		{
			print("Successful log out");
			header("Location: Logout.php");
			$db->close();
			exit();
		}
		else{
			print ("unsuccessful log out");
		}
	}

	?>
