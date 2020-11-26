
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sign In</title>
<link rel="stylesheet" href="style/style1.css" type="text/css"  />
</head
<body>

<div id="main2">

    <div id="header"><img src="img/logo.png"></div>

    <div id="manu">
    <ul>
    <li><a style="background:#1f447f; color:#fff;" href="index.php">HOME</a></li>
    <li><a href="track.php">TRACK ORDER</a></li>
    <li><a href="contact.php">CONTACT</a></li>
    <li><a href="login/login.php">SING IN / SIGN UP</a></li>
    </ul>
    </div>


<div id="content">

  <?php
  require_once 'connection/dbconfig.php';

  //**********************************************
  $pid = $_GET['pid'];

  	$stmt = $db_con->prepare("SELECT * FROM product WHERE pid = $pid");
  	$stmt->execute();
  $row=$stmt->fetch(PDO::FETCH_ASSOC);


  $img = $row['img'];
  $name =  $row['name'];
  $des = $row['des'];
   $pr = $row['pr'];
  $cdate =  $row['cdate'];


  echo '
  <div class="item1">

  <span><img src="'.$img.'"></span>

  </div>
  ';

  echo '
<div class="item1">
<button class="button2"> Price '.$pr.'</button><br>
<h2>'.$name.'</h2>
<span><b>Description </b><br>'.$des.'<span><br><br>
<b><b>Publish Date </b>'.$cdate.'</b><br>
<button class="button2"> <a href="add-order.php?pid='.$pid.'" > Order Now</a> </button>

</div>';
  //**********************************************

  ?>

</div>

</div>


  </div>
    <div id="footer">
<center>
      <p>Home . Product . Contact Us . Services </p>

      <p><img src="img/facebook.png"> <img src="img/twitter.png">  <img src="img/u.png"></p>
</center>

    </div>

</div>

</body>
</html>
