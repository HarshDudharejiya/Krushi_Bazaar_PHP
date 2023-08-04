
<?php
$username = "";
$email    = "";
$phone_number = "";
$location = "";
$errors = array();
$db = mysqli_connect('localhost', 'root', '', 'data');
if (isset($_POST['login_user'])) {
  $username = mysqli_real_escape_string($db, $_POST['email']);
  $password = mysqli_real_escape_string($db, $_POST['password_1']);

  /*
  if (empty($username)) {
  	array_push($errors, "Username is required");
  }
  if (empty($password)) {
  	array_push($errors, "Password is required");
  }
  */
  if(isset($_POST['users']) == 'Student'){

  if (count($errors) == 0) {
  	
  	$query = "SELECT * FROM student WHERE email='$username' AND password='$password'";
  	$results = mysqli_query($db, $query);
    $rslt = mysqli_fetch_assoc($results);
  	if (mysqli_num_rows($results) == 1) {
  	  $_SESSION['username'] = $username;
      $_SESSION['user_id'] = $rslt['id'];
      $_SESSION['admin'] = $rslt['adminship'];
      $_SESSION['status'] = 1;
  	  $_SESSION['success'] = "You are now logged in";
  	  //header('location: index.php')
      exit('successfully logged in.');
  	}else {
  		//array_push($errors, "Wrong username/password combination");
      exit('Wrong username/password combination.');
    }
  }
 }
 if(isset($_POST['users']) == 'Farmer'){

  if (count($errors) == 0) {
  	$password = md5($password);
  	$query = "SELECT * FROM farmer WHERE username='$username' AND password='$password'";
  	$results = mysqli_query($db, $query);
    $rslt = mysqli_fetch_assoc($results);
  	if (mysqli_num_rows($results) == 1) {
  	  $_SESSION['username'] = $username;
      $_SESSION['user_id'] = $rslt['id'];
      $_SESSION['admin'] = $rslt['adminship'];
      $_SESSION['status'] = 1;
  	  $_SESSION['success'] = "You are now logged in";
  	  //header('location: index.php')
      exit('successfully logged in.');
  	}else {
  		//array_push($errors, "Wrong username/password combination");
      exit('Wrong username/password combination.');
    }
  }
 }
 if(isset($_POST['users']) == 'Businessmen'){

  if (count($errors) == 0) {
  	$password = md5($password);
  	$query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
  	$results = mysqli_query($db, $query);
    $rslt = mysqli_fetch_assoc($results);
  	if (mysqli_num_rows($results) == 1) {
  	  $_SESSION['username'] = $username;
      $_SESSION['user_id'] = $rslt['id'];
      $_SESSION['admin'] = $rslt['adminship'];
      $_SESSION['status'] = 1;
  	  $_SESSION['success'] = "You are now logged in";
  	  //header('location: index.php')
      exit('successfully logged in.');
  	}else {
  		//array_push($errors, "Wrong username/password combination");
      exit('Wrong username/password combination.');
    }
  }
 }
}
?>