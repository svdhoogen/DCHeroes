<?php
    $comment = ""; // Default empty comment for echo.
    $message = ""; // Default empty message for echo.

    // If a team or player don't get, redirect to same page but with gets preset to 1.
    if (!isset($_GET["team"]) || !isset($_GET["player"])) {
        header("Location: .?team=1&player=1"); // Redirect user to default page.
    }
    // If both have been set, check if it returns data, if it doens't, redirect them again.
    else {
        $team = $_GET["team"]; // Get teamId.
        $player = $_GET["player"]; // Get playerId.
        $sql = "SELECT playerId FROM hero WHERE teamId=$team AND playerId=$player"; // Prepare sql statement.
        $result = $conn->query($sql); // Run sql statement.

        // If current gets results in no content, redirect user to default page.
        if ($result->num_rows == 0) {
            header("Location: .?team=1&player=1"); // Redirect user to default page.
        }
    }

    // When user desires to comment, get the comment, check if it isn't empty and enter it into database.
    if(isset($_POST["submit"])) {
        $comment = strip_tags($_POST["comment"]); // Get posted value into local variable and sanitize it by removing html tags so that malicious acts are prevented.

        // If comment wasn't empty and a review was left, enter it into database.
        if ($comment != "" && isset($_POST["rating"])) {
            //$rating = $_POST["rating"]; // Get posted rating into local variable.
            //$datee = time(); // Get current date into date variable.

            // New sanitized sql command(doesn't work).
            $stmt = $conn->prepare("INSERT INTO rating (ratingId, playerId, rating, ratingDate, ratingReview) VALUES (null, ?, ?, ?, ?)"); // Prepare sql statement, with sql protection.
            $stmt->bind_Param('ssss', $player, $_POST["rating"], time(), $comment); // Bind the parameters to the command.
            $stmt->execute(); // Execute command.
            header("Location: .?team=$team&player=$player"); // Refresh same page to prevent same info being posted on reload.
        }
        // If check failed, set error message for user to be notified.
        else {
            $message = "Failed to comment! Your comment or rating was empty, please try again!"; // Set error message to be echoed on page.
        }
    }
?>