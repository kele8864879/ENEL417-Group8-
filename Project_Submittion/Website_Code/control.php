<?php
session_start();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Control Panel</title>

</head>
<body>
 <form id="control" method="post" enctype="multipart/form-data">
<p> Humidity </p>
<table>
    <th>
        <input type="button" onclick="sub()" value="-">
    </th>
    <th>
        <input type="text" value="0" class="xpf" name="humid" id="txt">
    </th>
    <th>
        <input type="button" onclick="add()" value="+">
    </th>

</table>
<p> Temperature</p>
<table>
    <th>
        <input type="button" onclick="sub1()" value="-">
    </th>
    <th>
        <input type="text" value="0" class="xpf1" name="temp" id="txt1">
    </th>
    <th>
        <input type="button" onclick="add1()" value="+">
    </th>

</table>
<p> The light luminate</p>
<table>
    <th>
        <input type="button" onclick="sub11()" value="-">
    </th>
    <th>
        <input type="text" value="0%" class="xpf11" name="light" id="txt11">
    </th>
    <th>
        <input type="button" onclick="add11()" value="+">
    </th>

</table>
<p> Open/close Water Pump </p>
<table>
    <th>
        <input type="button" value="open">
    </th>
    <th>

    </th>
    <th>
        <input type="button" value="close">
    </th>

    <th>
        <input type="button" value="open">
    </th>
    <th>

    </th>
    <th>
        <input type="button" value="close">
    </th>

</table></br> </br>

        <input type="submit" name="save" value="save" action = "control.php"/>


</form>

<script>

    var a = document.getElementsByClassName("xpf")[0];
    console.log('-----',a);
    var b = document.getElementsByName("humid")[0];
    console.log('-----',b);
    var c = document.getElementById("txt");
    console.log('-----',c);
    var d = document.getElementById("txt1");
    console.log('-----',d);
    var e = document.getElementById("txt2");
    console.log('-----',e);
    var f = document.getElementsByName("temp")[0];
    console.log('-----',f);
    var g = document.getElementsByName("light")[0];
    console.log('-----',g);


    function toPoint(percent){
        var str=percent.replace("%","");
        str = str;
        return str;
    }

    function toPercent(point){
        var str=Number(point).toFixed(1);
        str+="%";
        return str;
    }

    function add(){
        var txt = document.getElementsByClassName("xpf")[0];
        var a = txt.value;
        a = Math.round(10 * (Number(a) + 0.1)) / 10;
        txt.value = a;
    }

    function sub(){
        var txt = document.getElementsByClassName("xpf")[0];
        var a = txt.value;

        a = Math.round(10 * (Number(a) - 0.1)) / 10;
        txt.value = a;


    }
    function add1(){
        var txt = document.getElementsByClassName("xpf1")[0];
        var a = txt.value;
        a = Math.round(10 * (Number(a) + 0.1)) / 10;
        txt.value = a;
    }

    function sub1(){
        var txt = document.getElementsByClassName("xpf1")[0];
        var a = txt.value;

        a = Math.round(10 * (Number(a) - 0.1)) / 10;
        txt.value = a;
    }
    function add11(){
        var txt = document.getElementsByClassName("xpf11")[0];
        var a = toPoint(txt.value);
        a = Math.round(10 * (Number(a) + 0.1)) / 10;
        txt.value = toPercent(a);
    }

    function sub11(){
        var txt = document.getElementsByClassName("xpf11")[0];
        var a = toPoint(txt.value);
        if(a > 0)
        {
            a = Math.round(10 * (Number(a) - 0.1)) / 10;
            txt.value = toPercent(a);
        }
        else
        {
            txt.value = toPercent(0)
        }

    }

</script>

<?php
	$validate = true;
	$error = "";
	$humidity = "";
	$tempurature = "";
	$light="";




	if (isset($_POST["save"]) && $_POST["save"])
	{
		$humidity = trim($_POST["humid"]);
		$tempurature = trim($_POST["temp"]);
		$light=trim($_POST["light"]);
        $userid = $_SESSION["client_id"];
        $dateFormat = date("Y-m-d H:i:s", time());
		$db = new mysqli("us-cdbr-east-03.cleardb.com", "b29dc5126ae6f1", "4c9e78bd", "heroku_12a17aeebc01725");
		if ($db->connect_error)
		{
			die ("Connection failed: " . $db->connect_error);
		}
        if($validate == true)
        {



		    $q2 = "INSERT INTO control_panel (client_id, temperature, light, humidity, Date_Time, heater, fans, pump) VALUES ('$userid', '$tempurature', '$light', '$humidity', '$dateFormat', '0', '0', '0')";
		    $r2 = $db->query($q2);

            echo "    ";
	        echo $userid;
	        echo "    ";
		    echo $humidity;
		    echo "    ";
		    echo $tempurature;
		    echo "    ";
		    echo $light;
		    if ($r2 === true)
		    {
			    print("Successful");
                header("Location: index.php");
                $db->close();
			    exit();
		    }
		    else
		    {
			    print ("unsuccessful insert the data");
		    }
        }
		else
		{
		      print("failed<br>");
              $db->close();
		}
    }

	?>

</body>
</html>
