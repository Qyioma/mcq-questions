<?php include 'config.php'; ?>
<?php session_start(); ?>

<?php
#--------------------------------------------------------------------------------------------------
# set senarai medan
//$medan = 'id,question_number,instructions,text';
$medan = 'id,question_number,instructions,text,image';
#--------------------------------------------------------------------------------------------------
	# Get total questions
	$query = "SELECT $medan FROM `questengine` ";
	//Get result
	$results = $mysqli->query($query) or die($mysqli->error.__LINE__);
	$total = $results->num_rows;
	//echo '<pre>total::'; print_r($total); echo '</pre>';
#--------------------------------------------------------------------------------------------------
	//Get Question
	$query = "SELECT $medan FROM questengine ORDER BY RAND() LIMIT 1";
	//Get result
	$result = $mysqli->query($query) or die($mysqli->error. LINE_);
	//$question = $result->fetch_assoc();
	// Using iterators
	foreach ($result as $row)
	{
		$allQuestion[] = $row;
	}
	$row = null;
	//echo '<pre>allQuestion::'; print_r($allQuestion); echo '</pre>';
#--------------------------------------------------------------------------------------------------
foreach($allQuestion as $ask):
	//echo '<pre>question[id]::'; print_r($ask['id']); echo '</pre>';
	# Get Choices
	$query = "SELECT * FROM `choicesengine`"
	. " WHERE question_number = " . $ask['id'];
	//echo '<pre>$query::'; print_r($query); echo '</pre>';
	//Get results
	$choices = $mysqli->query($query) or die($mysqli->error.__LINE__);
	foreach ($choices as $row)
	{
		$allChoices[$ask['id']][] = $row;
	}
	$row = null;
endforeach;
//echo '<pre>choices::'; print_r($allChoices); echo '</pre><hr>';
#--------------------------------------------------------------------------------------------------
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
<?php foreach($allQuestion as $question): ?>
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
		<img align="center" src="data:image/jpg;charset=utf8;base64,<?php
		echo base64_encode($question['image']);?>"/>
		<?php } ?>
		</center>
		<br>
		<?php echo $question['text']; ?>
		</ul>

		<form method="post" action="engine_process.php">
		<!-- Code for Choices -->
			<ul class="choices" >
			<?php foreach($allChoices[$question['id']] as $row): ?>
			<li><input  name="choice" type="radio" value="<?php echo $row['id']; ?>" /><?php
			echo $row['text']; ?></li>
			<?php endforeach; ?>
			</ul>
			<!-- Code for Submit Button -->
			<input style="margin-left: 75%;" type="submit" value="Next" />
			<input type="hidden" name="number" value="<?php echo $question['id']; ?>"  />
		</form>
	</div>
<?php endforeach; ?>
</main>
<script src="timer.js"></script>
		
</body>
</html>
<?php
//*/
