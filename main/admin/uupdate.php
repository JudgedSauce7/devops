
<?php
require_once '../connection/dbconfig.php';


	if(isset($_POST['uupdate']))
	{

   $uid = $_POST['uid'];
		$muname = $_POST['muname'];
		$ue = $_POST['ue'];
		$jd =  $_POST['jd'];


		$stmt = $db_con->prepare("UPDATE users SET user_name=:mun,
			user_email=:ue, joining_date=:jd
    WHERE user_id=:uid");

    $stmt->bindParam(":mun", $muname);
		$stmt->bindParam(":ue", $ue);
 	  $stmt->bindParam(":jd", $jd);
		$stmt->bindParam(":uid", $uid);
?>




<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>User Update</title>
<link rel="stylesheet" href="../style/style.css" type="text/css"  />
</head>
<body>

<?php
	if($stmt->execute())
	{
		echo '<div id="main2">

									<h1><font color="green">Congratulation!</font></h1>

	               <p><b>User Successfully Updated.</b></p>


									<p><a href="user.php" ><button class="button" >Back</button</a>
	</p>
	        </div>';
	}
	else{
		echo "Query Problem";
	}
	}

	?>









</body>
</html>
