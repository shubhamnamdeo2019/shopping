
<?php 
session_start();
	include "dbc.php";
?>
<!DOCTYPE html>
<html>
<title>Creat a new account</title>
<meta name="viewport" content="width=device-width" />
<link rel="stylesheet" href="css/signup.css"/>
</head>
<body>
<div id="member_login"><br>
          <center><h2>Welcome as a Admin</h2></center>
		  <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post" enctype="multipart/form-data">
            
             <input type="text" name="id" placeholder="Enter Mobile ID" required pattern="^[0-9]+" title="ONLY NUMBERS ARE ALLOWED IN MOBILE NUMBER" required/>
             <input type="text" name="price" placeholder="Enter Mobile Price" required pattern="^[0-9]+" title="ONLY NUMBERS ARE ALLOWED IN MOBILE NUMBER" required/><br><br><br><br>

             <input type="text" name="rating" placeholder="Enter Mobile Rating" required pattern="^[0-9]+" title="ONLY NUMBERS ARE ALLOWED IN MOBILE NUMBER" required/>

             <input type="text" name="model" placeholder="Enter Mobile Model" required pattern="^[A-Za-z0-9]+" title="ONLY TEXT ARE NUMBER ALLOWED " required/><br><br><br><br>

             <input type="text" name="year" placeholder="Enter Mobile year" required pattern="^[0-9]+" title="ONLY NUMBERS ARE ALLOWED IN MOBILE NUMBER" required/>


			 <input type="file" name="fileToUpload" id="fileToUpload" value="profile"/><br><br><br><br>

             	  <textarea name="description" placeholder="Enter Mobile Description Here" required pattern="^[A-Za-z0-9]+" title="ONLY TEXT AND NUMBERS ARE ALLOWED IN ADDRESS" required></textarea><br>

            
            <center><input type="submit" name="create" value="Submit"></center><br><br>
          </form>
            <?php 
function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
 include "dbc.php";
	     if(isset($_POST['create'])){
			 $id = test_input($_POST['id']);
			 $price=test_input($_POST['price']);
			 $rating=$_POST['rating'];
			 $year=test_input($_POST['year']);
			 $model=test_input($_POST['model']);
			 $file=$_POST['fileToUpload'];
			 $descr=test_input($_POST['description']);
		   $sql= "INSERT INTO `admin`( `id`, `price`,`rating`,`year`,`model`, `file`, `description`,) VALUES ('$id','$price','$rating','$year','$model','$file','$descr')";
			   $runn= mysqli_query($con,$sql);
			 if($runn == TRUE){
			 ?>
		     <script>alert("message sent successfully");</script>
		     <?php
		 }else{
			 ?>
		     <script>alert("message sent failed");</script>
		     <?php
		 }
  }?>

</div>
</body>
</html>
