<?php
  session_start();
		if (  !isset($_SESSION['id']) )
		{
		  header("Location: loginborsa.php"); 
				exit;
		}
?>
<?php
	echo  "<body style='background-color:#8080ff'>
				<div style='text-align: center; font-size:40px; margin:20%; color:white; font-family:monospace;'>
					Benvenuto in<br/><br/>Borsa delle idee
				<div>
			</body>";
?>