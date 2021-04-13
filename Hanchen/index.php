<?php
    session_start();
?>

<?php

$page = $_SERVER['PHP_SELF'];
$sec = "0.5";
header("Refresh: $sec; url=$page");

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


    <section class="section_one" onload = "ajax_post()">
        <p> Temperature </p>
                         <script>
                             setInterval(ajax_post, 5000);
                             function ajax_post() {
                                 var  xmlhttp = new XMLHttpRequest();
                                 xmlhttp.onreadystatechange = function() {
                                     if (this.readyState == 4 && this.status == 200) {
                                         var to_show;
                                         var results = JSON.parse(this.responseText)

                                         if (results.length > 0)
                                         {
                                              for (var i = 0; i < results.length; i++)
                                              {
                                                  var json_result = results[i];
                                                    to_show = json_result[0];
                                              }
                                         }

                                         document.getElementById("display_records_T").innerHTML = to_show;
                                     }

                                 }
                                 xmlhttp.open("POST", "display.php", true);
                                 xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                                 xmlhttp.send();

                             }
                         </script>	    
        <p style="font-size: 100px" id = "display_records_T"> °C </p>

    </section>

    <section class="section_two">
        <p> RH </p>
	               <script>
                             setInterval(ajax_post, 5000);
                             function ajax_post() {
                                 var  xmlhttp = new XMLHttpRequest();
                                 xmlhttp.onreadystatechange = function() {
                                     if (this.readyState == 4 && this.status == 200) {
                                         var to_show;
                                         var results = JSON.parse(this.responseText)

                                         if (results.length > 0)
                                         {
                                              for (var i = 0; i < results.length; i++)
                                              {
                                                  var json_result = results[i];
                                                    to_show = json_result[2];
                                              }
                                         }

                                         document.getElementById("display_records_RH").innerHTML = to_show;
                                     }

                                 }
                                 xmlhttp.open("POST", "display.php", true);
                                 xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                                 xmlhttp.send();

                             }
                         </script>
        <p style="font-size: 100px" id = "display_records_RH"> % </p>

    </section>

    <section class="section_one">
        <p> Light </p>
	    	<script>
                             setInterval(ajax_post, 5000);
                             function ajax_post() {
                                 var  xmlhttp = new XMLHttpRequest();
                                 xmlhttp.onreadystatechange = function() {
                                     if (this.readyState == 4 && this.status == 200) {
                                         var to_show;
                                         var results = JSON.parse(this.responseText)

                                         if (results.length > 0)
                                         {
                                              for (var i = 0; i < results.length; i++)
                                              {
                                                  var json_result = results[i];
                                                    to_show = json_result[1];
                                              }
                                         }

                                         document.getElementById("display_records_L").innerHTML = to_show;
                                     }

                                 }
                                 xmlhttp.open("POST", "display.php", true);
                                 xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                                 xmlhttp.send();

                             }
	    </script>
        <p style="font-size: 100px" id = "display_records_L"> LM</p>
    </section>

    <section class="section_two">
        <p> Set Value </p>

        <p style="font-size: 265%"> Temperature: °C </p>
        <p style="font-size: 265%"> RH: % </p>
        <p style="font-size: 265%"> Light: LM </p>
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
