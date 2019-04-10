<?php
    include "php/database.php"; // Include database file to establish connection.
    include "php/index-initial-logic.php"; // Include the initial logic that will be ran at startup of page.
?>

<!DOCTYPE html>
    <head>
        <meta charset="UTF-8"> <!-- Character set. -->

        <meta name="CSGO Pros"> <!-- Website description for search index. -->

        <link rel="stylesheet" type="text/css" href="css/style.css"> <!-- Links main stylesheet for formatting etc. -->

        <title>CSGO Pros</title> <!-- Tab hover name. -->

        <!-- Various favicons for different browsers. -->
        <link rel="shortcut icon" href="images/favicon/favicon.ico">
        <link rel="icon" sizes="16x16 32x32 64x64" href="images/favicon/favicon.ico">
        <link rel="icon" type="image/png" sizes="196x196" href="images/favicon/favicon-192.png">
        <link rel="icon" type="image/png" sizes="160x160" href="images/favicon/favicon-160.png">
        <link rel="icon" type="image/png" sizes="96x96" href="images/favicon/favicon-96.png">
        <link rel="icon" type="image/png" sizes="64x64" href="images/favicon/favicon-64.png">
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon/favicon-32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="images/favicon/favicon-16.png">
        <link rel="apple-touch-icon" href="images/favicon/favicon-57.png">
        <link rel="apple-touch-icon" sizes="114x114" href="images/favicon/favicon-114.png">
        <link rel="apple-touch-icon" sizes="72x72" href="images/favicon/favicon-72.png">
        <link rel="apple-touch-icon" sizes="144x144" href="images/favicon/favicon-144.png">
        <link rel="apple-touch-icon" sizes="60x60" href="images/favicon/favicon-60.png">
        <link rel="apple-touch-icon" sizes="120x120" href="images/favicon/favicon-120.png">
        <link rel="apple-touch-icon" sizes="76x76" href="images/favicon/favicon-76.png">
        <link rel="apple-touch-icon" sizes="152x152" href="images/favicon/favicon-152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="images/favicon/favicon-180.png">
        <meta name="msapplication-TileColor" content="#FFFFFF">
        <meta name="msapplication-TileImage" content="images/favicon/favicon-144.png">
        <meta name="msapplication-config" content="images/favicon/browserconfig.xml">
    </head>

    <body>
        <header class="main-header">
            <a href="http://localhost/DCHeroes/?team=1">
                <img src="images/csgo-logo.png" />
            </a>
        </header>

        <nav id="team-select">
            <h1>Select a team!</h1>
            <ul>
                <?php include "php/teams.php"; // Include php file that loads all teams in database as a list-item in left side nav. ?>
            </ul>
        </nav>

        <div id="individual-select">
            <?php include "php/team-players.php"; // Include php file that loads all players on currently selected team. ?>
        </div>

        <div id="individual-content">
            <?php include "php/player-content.php"; // Include php file that loads player specific content and error message if needed. ?>

            <form method="post">
                <div id="content-vote">
                    <h3>Leave a review and a comment!</h3>
                    <?php include "php/player-ratingAvg.php" ?>
                    <div class="rate">
                        <input type="radio" id="rating10" name="rating" value="10" /><label class="lblRating" for="rating10" title="5 stars"></label>
                        <input type="radio" id="rating9" name="rating" value="9" /><label class="lblRating half" for="rating9" title="4 1/2 stars"></label>
                        <input type="radio" id="rating8" name="rating" value="8" /><label class="lblRating" for="rating8" title="4 stars"></label>
                        <input type="radio" id="rating7" name="rating" value="7" /><label class="lblRating half" for="rating7" title="3 1/2 stars"></label>
                        <input type="radio" id="rating6" name="rating" value="6" /><label class="lblRating" for="rating6" title="3 stars"></label>
                        <input type="radio" id="rating5" name="rating" value="5" /><label class="lblRating half" for="rating5" title="2 1/2 stars"></label>
                        <input type="radio" id="rating4" name="rating" value="4" /><label class="lblRating" for="rating4" title="2 stars"></label>
                        <input type="radio" id="rating3" name="rating" value="3" /><label class="lblRating half" for="rating3" title="1 1/2 stars"></label>
                        <input type="radio" id="rating2" name="rating" value="2" /><label class="lblRating" for="rating2" title="1 star"></label>
                        <input type="radio" id="rating1" name="rating" value="1" /><label class="lblRating half" for="rating1" title="1/2 star"></label>
                        <input type="radio" id="rating0" name="rating" value="0" /><label class="lblRating" for="rating0" title="No star"></label>
                    </div>
                    <div class="clearDiv"></div>
                </div>
                <div class="clearDiv"></div>

                <div id="content-comment">
                    <h3>Post a comment!</h3>
                    <textarea rows="10" cols="60" maxlength="500" name="comment" id="content-commentInput" placeholder="Type your comment here!"><?php echo $comment; // Echo comment back if rating failed. ?></textarea>
                    <input type="submit" name="submit" value="Post comment" id="content-commentButton">
                </div>
            </form>
            <div class="clearDiv"></div>

            <h3>Reviews by others</h3>

            <?php include "php/player-comments.php"; // Include php file that loads the comments and ratings for current player selected. ?>
            <div class="clearDiv2"></div>
        </div>
    </body>
</html>