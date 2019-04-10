<?php
    $sql = "SELECT ratingReview, rating, ratingDate, ratingId FROM rating WHERE playerId=\"$player\""; // Sql command to select data.
    $result = $conn->query($sql); // Contains data from database.

    // If there were no comments loaded, print little message.
    if ($result->num_rows == 0) {
        echo "<h5>Looks like there are no comments yet, be the first to leave one!</h5>";
    }
    // While the database is returning results, echo a div containing comment elements.
    while($row = $result->fetch_assoc()) {
        $comment = trim(preg_replace('/\s+/', ' ', $row["ratingReview"])); // Removes enters from string and replaces it with whitespace.
        echo "<div class=\"content-comments\">";
        echo  "<h4>Anon ", date('m/d/Y H:i:s', $row["ratingDate"]), " ID:", $row["ratingId"], " Rating: ", $row["rating"] / 2, "</h4>";
        echo "<img src=\"images/star.png\">";
        echo "<div class=\"clearDiv\"></div>";
        echo  "<p>", $comment, "</p>";
        echo "</div>";
    }
?>