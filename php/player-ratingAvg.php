<?php
    echo "<h6>", $message, "</h6>"; // Contains error message in case it is necessary.
    $rating = $conn->query("SELECT AVG(rating) as rating FROM rating WHERE playerId=$player")->fetch_assoc(); // Get the average rating of current player.
    $rating = $rating["rating"] / 2; // get the rating and divide it by 2.
    $rating = number_format((float)$rating, 2, '.', ''); // Round it to 2 decimals.
    echo "<h5 id=\"h5-Rating\">Average rating: ", $rating, "</h5>"; // Echo the rating.
    echo "<img id=\"img-rating\" src=\"images/star.png\">"; // Echo a nice star image.
?>