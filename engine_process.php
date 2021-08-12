<?php include 'config.php'; ?>
<?php session_start(); ?>
<?php

	//Check to see if score is set_error_handler
	if(!isset($_SESSION['score'])){
		$_SESSION['score'] = 0;
	}
	
	if($_POST){
		$question['id'] = $_POST['number'];
		$selected_choice = $_POST['choice'];
		$next = $question['id']+1;
		
		/*
		*	Get total questions
		*/
		$query = "SELECT * FROM `questengine`ORDER BY RAND() LIMIT 5";
		//Get result
		$results = $mysqli->query($query) or die($mysqli->error.__LINE__);
		$total = $results->num_rows;
		
		
		/*
		*	Get correct choice
		*/
		
		$query = "SELECT * FROM `choicesengine` WHERE question_number = '".$question['id']."' AND `is_correct` = '1'";
					
		//Get result
		$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
		
		//Get row
		$row = $result->fetch_assoc();
		
		//Set correct choice
		$correct_choice = $row['id'];
		
		//Compare
		if($correct_choice == $selected_choice){
			//Answer is correct
			$_SESSION['score']++;
		}

		//Check if last question
		if($question['id'] == $total){
			header("Location: final.php");
			exit();
		} else {
			header("Location: questionengine.php?n=".$next);
		}
	}
