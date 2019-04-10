<?php
    $sql = "SELECT playerName, playerImage, playerDescription, playerStatistics FROM hero WHERE playerId=$player"; // Sql command for data.
    $result = $conn->query($sql); // Contains data from database

    // While database is returning results, print a player info/ stats containing needed elements.
    if (!$result->num_rows == 0) {
        while($row = $result->fetch_assoc()) {
            echo "<h1>", $row["playerName"], "</h1>";
            echo "<h3>Description</h3>";
            echo "<p class=\"content-description\">", $row["playerDescription"], "</p>";
            echo "<h3>Statistics</h3>";
            echo "<p class=\"content-statisticDesc\">Total kills:<br /> Headshot %:<br /> Total deaths:<br /> K/D Ratio:<br /> Damage / Round:<br /> Maps played:</p>";
            echo "<p class=\"content-statistics\">", $row["playerStatistics"], "</p>";
            echo "<img src=\"", $row["playerImage"], "\" class=\"content-player-image\">";
        }
    }
    // If there were no results, notify user(shouldn't occur).
    else {
        echo "<h3> Looks like the player you tried to load doesn't exist!</h3>";
    }
?>