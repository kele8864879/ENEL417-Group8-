
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="small.css" />
    <link rel="stylesheet" type="text/css"  href="large.css" />
    <link rel="stylesheet" type="text/css"  href="scratch.css" />
    <script type="text/javascript" src="Sign_Up.js"> </script>
    <title> Sign Up </title>
</head>
<body>
<nav class="table_sign_up">
    <form id="index2" method="post" onsubmit ="SignUpForm(event)" enctype="multipart/form-data">
        <table>
            <tr><td></td><td><label id="email_msg" class="err_msg"></label></td></tr>
            <tr><td>Email: </td><td> <input type="text" name="email" size="30" /></td> </tr>

            <tr><td></td><td><label id="uname_msg" class="err_msg"></label></td></tr>
            <tr><td>Username: </td><td> <input type="text" name="uname" size="30" /></td></tr>

            <tr><td></td><td><label id="pswd_msg" class="err_msg"></label></td></tr>
            <tr><td>Password: </td><td> <input type="password" name="password" size="30"/></td></tr>


            <tr><td></td><td><label id="pswdr_msg" class="err_msg"></label></td></tr>
            <tr><td>Confirm Password: </td><td> <input type="password" name="pwdr" size="30" /></td></tr>
            <tr><td>Photo: </td><td> <input type="file"  name="fileToUpload"  id="fileToUpload"></td></tr>
        </table>
        <p>
            <input type="submit" name="SignUp" value="SignUp" action = "index2.php"/>
            <input type="reset" name="Reset" value="Reset" />
        </p>
        <p>

        </p>


    </form>
    <div id="display_info"></div>
    <script type = "text/javascript"  src = "SignUp-r.js" ></script>
</nav>
</body>
<footer class="s_u_footer">
    <a href="index.html"> Main Page </a>
</footer>



<?php
$validate = true;
$error = "";
$reg_Email = "/^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/";
$reg_Pswd = "/^(\S*)?\d+(\S*)?$/";
$email = "";
$password = "";
//$date = date("Y-m-d H:i:s", time());
$message = "";

if (isset($_POST["SignUp"]) && $_POST["SignUp"])
{
    $email = trim($_POST["email"]);
    $username = trim($_POST["uname"]);
    $password = trim($_POST["password"]);
    $confirm_password = trim($_POST["pwdr"]);
    //$date = trim($_POST["date"]);

    $db = new mysqli("us-cdbr-east-03.cleardb.com", "b29dc5126ae6f1", "4c9e78bd", "heroku_12a17aeebc01725");


    if ($db->connect_error)
    {
        die ("Connection failed: " . $db->connect_error);
    }

    $q1 = "SELECT * FROM client WHERE email = '$email'";
    $r1 = $db->query($q1);

    // if the email address is already taken.
    if($r1->num_rows > 0)
    {
        $validate = false;
        print ("The email is used <br>");

    }
    else
   {
        $emailMatch = preg_match($reg_Email, $email);
        if($email == null || $email == "" || $emailMatch == false)
        {
            $validate = false;
            print("<br> Email is not right ");
        }
        $pswdLen = strlen($password);
        $pswdMatch = preg_match($reg_Pswd, $password);
        if($password == null || $password == "" || $pswdLen != 8 || $pswdMatch == false)
        {
            $validate = false;
            print("<br>Password is not right");
        }

        if($confirm_password == null || $confirm_password == "" || $confirm_password != $password)
        {
            $validate = false;
            print("<br>Confirm password not right   ");
        }
    }

    if($validate)
    {
    	$target_dir = "uploads/";
    	$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
    	$uploadOk = 1;
    	$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    	// Check if image file is a actual image or fake image
    	if(isset($_POST["submit"])) {
    		$check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    		if($check !== false) {
    			echo "File is an image - " . $check["mime"] . ".";
    			$uploadOk = 1;
    		} else {
    			echo "File is not an image.";
    			$uploadOk = 0;
    		}
    	}
    	// Check if file already exists
    	/*
    	if (file_exists($target_file)) {
    		echo "Sorry, file already exists.";
    		$uploadOk = 0;
    	}
    	*/
    	// Check file size
    	if ($_FILES["fileToUpload"]["size"] > 500000) {
    		echo "Sorry, your file is too large.";
    		$uploadOk = 0;
    	}
    	// Allow certain file formats
    	if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
    			&& $imageFileType != "gif" ) {
    		echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
    		$uploadOk = 0;
    	}
    	// Check if $uploadOk is set to 0 by an error
    	if ($uploadOk == 0) {
    		echo "Sorry, your file was not uploaded.";
    		// if everything is ok, try to upload file
    	} else {
    		if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
    			echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
    		} else {
    			echo "Sorry, there was an error uploading your file.";
    		}
    	}
    }

    if($validate == true && $uploadOk == 1 || $validate == true && file_exists($target_file))
    {

    	$dateFormat = date("Y-m-d H:i:s", time());
    	echo $email;
    	echo $username;
    	echo $password;
    	echo $target_file;
    	echo $dateFormat;

    	$q2 = "INSERT INTO client (email, username, password, avatar, login_time, logged_in, logout_time) VALUES ('$email', '$username', '$password','$target_file', '$dateFormat', '1', '')";

    	$r2 = $db->query($q2);
        echo "qwerty";
    	if ($r2 === true)
    	{
    		echo "Successful sign up";
            header("Location: login.php");
    		$db->close();
    		exit();
    	}

    }
    else
    {
    	print("Signup failed<br>");
    	$error = "Something are not available. Signup failed.";
    	$db->close();
    }
}
?>




</html>
