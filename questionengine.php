<?php include 'config.php'; ?>
<?php session_start(); ?>

<?php
	
	/*
	*	Get total questions
	*/
	$query = "SELECT * FROM `questengine` ";
	//Get result
	$results = $mysqli->query($query) or die($mysqli->error.__LINE__);
	$total = $results->num_rows;
		
	//Get Question
	$query = "SELECT * FROM questengine ORDER BY RAND() LIMIT 5";
	//Get result
	$result = $mysqli->query($query) or die($mysqli->error. LINE_);
	$question = $result->fetch_assoc();
	echo '<pre>'; print_r($question); echo '</pre>';
	
	/*
	*	Get Choices
	*/
	$query = "SELECT * FROM `choicesengine`
				WHERE question_number = ".$question['id'];
	//Get results
	$choices = $mysqli->query($query) or die($mysqli->error.__LINE__);
?>
	
<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8" />
	<title>Meridian English Test</title>
	<!-- Javascript -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Custom CSS -->
	<link href="exam.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<main>

	
			<!-- Code for preview Number of Question -->
			
			<div class="current"><br>Question <?php echo $question['question_number']; ?> of  <?php echo $total; ?></div>

			<!-- Timer -->
			<center><p id="demo"></p></center>
			
			<!-- Code for Questions -->
			<div class="container">
			
				<ul class="question">
					<?php echo $question['instructions']; ?><br>

					<center>
					<?php if (!empty($question['image'])) { ?>
					<img align="center" src="data:image/jpg;charset=utf8;base64,<?php echo base64_encode($question['image']);?>"/> 
					<?php } ?>
					</center>

					<br>
					<?php echo $question['text']; ?>
				</ul>

			<form method="post" action="engine_process.php">
			
			<!-- Code for Choices -->
			
				<ul class="choices" >
					<?php while($row = $choices->fetch_assoc()): ?>
						<li><input  name="choice" type="radio" value="<?php echo $row['id']; ?>" /><?php echo $row['text']; ?></li>
					<?php endwhile; ?>
				</ul>
			</div>
			
			<!-- Code for Submit Button -->
			<input style="margin-left: 75%;" type="submit" value="Next" />
			<input type="hidden" name="number" value="<?php echo $question['id']; ?>"  />
			
			</form>			
	</main>
		<script src="timer.js"></script>
		

</body>
