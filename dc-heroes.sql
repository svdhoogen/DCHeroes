-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2019 at 12:49 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dc-heroes`
--

-- --------------------------------------------------------

--
-- Table structure for table `hero`
--

CREATE TABLE `hero` (
  `playerId` int(3) NOT NULL COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable',
  `playerName` varchar(50) NOT NULL COMMENT 'the name of the hero, just a string',
  `playerDescription` text NOT NULL COMMENT 'some information of the hero, just a string',
  `playerStatistics` text NOT NULL,
  `playerImage` varchar(50) NOT NULL COMMENT 'the image of the hero is strored as a string. The actual image is strored on the server. Use the string as the source of the HTML img-tag.',
  `teamId` int(3) NOT NULL COMMENT 'this is the teamId. Used as a referenc to the team table.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hero`
--

INSERT INTO `hero` (`playerId`, `playerName`, `playerDescription`, `playerStatistics`, `playerImage`, `teamId`) VALUES
(1, 'Andreas \'Xyp9x\' H&oslash;jsleth', 'By many considered one of, if not, the best support players in the world. Xyp9x has a tough position in-game, constantly supporting his teammates in every aspect of the game. Many believes he\'s actually a robot due to almost always making the right decision in the clutchest of situations. <br />Age: 23 years old <br />From: Aalborg, Denmark', '25318<br /> 41.5%<br /> 23036<br /> 1.10<br /> 77.3<br /> 1453', 'images/player_xyp9x.png', 1),
(2, 'Peter \'dupreeh\' Rasmussen', 'The best aim in the world? dupreeh is up there with the very best. A fearless player, ready to go down if it means the success of his team. The doyen of the team, but by no means old, dupreeh is already a legend. <br />Age: 25 years old <br />From: Copenhagen, Denmark', '26935<br /> 50.6%<br /> 23463<br /> 1.15<br /> 79.5<br /> 1396', 'images/player_dupreeh.png', 1),
(3, 'Lukas \'gla1ve\' Rossander', 'Captain. Leader. Thought of by many as the best in-game leader in the game right now, due to his incredible knowledge, intellect and strategies as well as his impressive individual play. gla1ve has brought Astralis to a new level, and the team still continues to rise. <br />Age: 23 years old <br />From: Copenhagen, Denmark', '19952<br /> 47.1%<br /> 19161<br /> 1.04<br /> 77.5<br /> 1118', 'images/player_gla1ve.png', 1),
(4, 'Nicolai \'device\' Reedtz', 'One of the best players in the world. dev1ce has been ranked in the top 5 of the best players in the world three years in a row. Smart, versatile and with more impact than most, dev1ce has been awarded MVP a total of 9 times in his career. <br />Age: 23 years old <br />From: Vejle, Denmark', '25927<br /> 35.3%<br /> 20679<br /> 1.25<br /> 80.9<br /> 1276', 'images/player_device.png', 1),
(5, 'Emil \'Magisk\' Reif', 'Relentless aggression, undeniable raw skill and a level head. Magisk brings it all. His spray with the rifle is often praised as the best in the world, and six major trophies and more than half a year as the world\'s #1 since he joined the team speaks for itself. <br />Age: 20 years old <br />From: Risskov, Denmark', '16586<br /> 48.4%<br /> 14061<br /> 1.18<br /> 81.5<br />854', 'images/player_magisk.png', 1),
(6, ' Nick \'nitr0\' Cannella', 'Nicholas \"nitr0\" Cannella (born August 16, 1995) is an American Counter-Strike: Global Offensive and former Counter-Strike 1.6 player. He currently plays for Team Liquid as the in-game leader.', '18442<br /> 44.7%<br /> 17663<br /> 1.04<br /> 74.2<br /> 1021', 'images/player_nitr0.png', 2),
(7, 'Keith \'NAF\' Markovic', 'Keith \"NAF\" Markovic (born November 24, 1997) is a Canadian professional Counter-Strike: Global Offensive player and former Counter-Strike: Source player who currently plays for Team Liquid.', '18295<br /> 41.6%<br /> 15912<br /> 1.15<br /> 82.1<br /> 956', 'images/player_naf.png', 2),
(8, 'Jonathan \'EliGE\' Jablonowski', 'Jonathan \"EliGE\" Jablonowski (born July 16, 1997) is an American professional Counter-Strike: Global Offensive player of Polish descent, whose competitive background lies in StarCraft II.', '19347<br /> 48.5%<br /> 17807<br /> 1.09<br /> 82.9<br /> 994', 'images/player_elige.png', 2),
(9, 'Jake \'Stewie2K\' Yip', 'Jacky \'Jake\' \"Stewie2K\" Yip (born January 7, 1998) is an American professional Counter-Strike: Global Offensive player. He currently plays for Team Liquid. He is widely regarded as one of the best players in North America, despite having only played CS:GO since the summer of 2014. On January 11th 2016, Stewie2K joined Cloud9. Although the initial announcement that he would be joining Cloud9 was met with criticism from both professionals and the public, such as Thorin criticizing the decision, Stewie2K soon became known as one of the best players in Cloud9. After 2 years on the roster and a Major win under his belt, he decided to move on and join SK Gaming under the leadership of Brazilian Legend FalleN replacing TACO on their active lineup. After a period of 3 months, he was signed by MIBR along with the other players of SK Gaming. Following months of up-and-down results, Stewie2K returned to his North American roots and joined Team Liquid.', '17384 <br /> 50.7%<br /> 16376<br /> 1.06<br /> 81.6<br /> 920', 'images/player_stewie2k.png', 2),
(10, 'Russel \'Twistzz\' Van Dulken', 'Russel \"Twistzz\" Van Dulken (born November 14, 1999) is a Canadian professional Counter-Strike: Global Offensive player who currently plays for Team Liquid.', '14561<br /> 59.8%<br /> 12082<br /> 1.21<br /> 79.2<br /> 741', 'images/player_twistzz.png', 2),
(11, 'Ioann \'Edward\' Sukhariev', 'Ioann \"Edward\" Sukhariev (born December 28, 1987) is an Ukrainian professional Counter-Strike: Global Offensive and former CS 1.6 player. Currently plays for team Natus Vincere as an Entry-Fragger.', '23730<br /> 50.9%<br /> 22861<br /> 1.04<br /> 72.3<br /> 1301', 'images/player_edward.png', 3),
(12, 'Danylo \' Zeus\' Teslenko', 'Danylo \"Zeus\" Teslenko (born October 8, 1987) is an Ukrainian professional Counter-Strike: Global Offensive and former Counter-Strike 1.6 player. He is currently the team captain and in-game leader of Natus Vincere. He is also the founder and president of pro100, one of his former teams which he revived and turned into an organization in 2017 and the founder of ZeusCyberSchool.', '22077<br /> 43.2%<br /> 23854<br /> 0.93<br /> 70.5<br /> 1315', 'images/player_zeus.png', 3),
(13, 'Egor \'flamie\' Vasilyev', 'Egor \"flamie\" Vasilyev (born April 5, 1997) is a Russian professional Counter-Strike: Global Offensive player and former Counter-Strike: Source player. He currently plays for Natus Vincere as an Rifler and secondary AWPer.', '21624<br /> 54.3%<br /> 19968<br /> 1.08<br /> 78.9<br /> 1129', 'images/player_flamie.png', 3),
(14, 'Aleksandr \'s1mple\' Kostyliev', 'Oleksandr \"s1mple\" Kostyliev (born October 2, 1997) is an Ukrainian professional Counter-Strike: Global Offensive player. He currently plays for Natus Vincere as an AWPer.', '21250<br /> 42.4%<br /> 16500<br /> 1.29<br /> 87.0<br /> 948', 'images/player_s1mple.png', 3),
(15, 'Denis \'electronic\' Sharipov', 'Denis \"electronic\" Sharipov (born September 2, 1998) is a Russian professional Counter-Strike: Global Offensive player, who currently plays for Natus Vincere.', '13991<br /> 51.6%<br /> 12198<br /> 1.15<br /> 84.4<br /> 697', 'images/player_electronic.png', 3),
(16, 'Dauren \'AdreN\' Kystaubayev', 'Eric \"adreN\" Hoag (born April 26, 1990) is an American Counter-Strike: Global Offensive and former Counter-Strike: Source player. He previously played for Mythic. adreN has prior experience as an in-game-leader and/or an AWPer for various top level teams, such as Team iBUYPOWER and Team Liquid, as well as in Counter-Strike: Source with Team Dynamic, which he played for at the beginning of Counter-Strike: Global Offensive for a short while. He is currently the coach of Team Liquid.', '23387<br /> 48.9%<br /> 22461<br /> 1.04<br /> 82.3<br /> 1254', 'images/player_adren.png', 4),
(17, 'Olof \'olofmeister\' Kajbjer', 'lof \"olofmeister\" Kajbjer Gustafsson (born January 31, 1992) is a Swedish professional Counter-Strike: Global Offensive player and former Counter-Strike 1.6 player. He currently plays for FaZe Clan as a lurker. This comes after his legendary 3-year long tenure with Fnatic, during which he won two majors; ESL One: Katowice 2015 and ESL One: Cologne 2015, among numerous other international tournaments and was named the best player in the world in 2015.', '23018<br /> 45.5%<br /> 20051<br /> 1.15<br /> 77.2<br /> 1190', 'images/player_olofmeister.png', 4),
(18, 'Ladislav \'GuardiaN\' Kov&aacute;cs', 'Ladislav \"GuardiaN\" Kov&aacute;cs (born July 9, 1991) is a Slovakian professional Counter-Strike: Global Offensive player and a former Counter-Strike: Source and Counter-Strike 1.6 player. He is currently playing for FaZe Clan. GuardiaN is one of the only players in the CS History to perform at a very high level in all 3 games (1.6, CS:S, CS:GO). He is known for his incredible handling of the AWP. His aggressive peeks, freedom in any given team, and his deadly way to turn any bad situation into a good one has brought him through situations where nobody thought he could ever win the round.', '26340<br /> 29.1%<br /> 21656<br /> 1.22<br /> 73.3<br /> 1329', 'images/player_guardian.png', 4),
(19, 'Nikola \'NiKo\' Kova&ccaron;', 'Nikola \"NiKo\" Kova&ccaron; (born February 16, 1997) is a Bosnian professional Counter-Strike: Global Offensive and former Counter-Strike 1.6 player. NiKo got very popular within the community after his impressive performances for mousesports, especially during ESEA Season 18 where he showed his incredible aim and game sense at such young age. He currently plays the role of a in-game-leader and lurker for FaZe Clan.', '21402<br /> 50.5%<br /> 17696<br /> 1.21<br /> 86.1<br /> 1001', 'images/player_niko.png', 4),
(20, 'H&aring;vard \'rain\' Nygaard', 'H&aring;vard \"rain\" Nygaard (born August 27, 1994) is a Norwegian professional Counter-Strike: Global Offensive player and former Counter-Strike: Source player. He currently plays for FaZe Clan as the entry-fragger. He is the longest lasting member of the lineup, having played since the team first formed under the Team Kinguin banner.', '19822<br /> 55.5%<br /> 18567<br /> 1.07<br /> 82.7<br /> 1027', 'images/player_rain.png', 4),
(21, 'Richard \'Xizt\' Landstr&ouml;m', 'Richard \"Xizt\" Landstr&ouml;m (born February 22, 1991) is a Swedish Counter-Strike: Global Offensive player and former Counter-Strike 1.6 player. He spent a long and almost six-year tenure as the in-game leader for Ninjas in Pyjamas, leading the team to many victories over the years, including a Major title. He was benched in February 2018 following a string of poor results. He is currently the in-game leader for Fnatic.', '25091<br /> 47.1%<br /> 23858<br /> 1.05<br /> 72.5<br /> 1439', 'images/player_xizt.png', 5),
(22, 'Jesper \'JW\' Wecksell', 'Jesper \"JW\" Wecksell (born February 23, 1995) is a Swedish professional Counter-Strike: Global Offensive player and former Counter-Strike 1.6 player. He is known for his wildly aggressive style of play while using the AWP. He is currently the hybrid AWPer for Fnatic.', '27872<br /> 36.6%<br /> 25482<br /> 1.09<br /> 77.7<br /> 1432', 'images/player_jw.png', 5),
(23, 'Simon \'twist\' Eliasson', 'Simon \"twist\" Eliasson (born December 12, 1994) is a Swedish professional Counter-Strike: Global Offensive player and former Counter-Strike: Source player. He mainly plays the role of the rifler but is also very capable of handling the AWP. He is currently playing for Fnatic.', '21374<br /> 41.3%<br /> 19236<br /> 1.11<br /> 80.6<br /> 1080', 'images/player_twist.png', 5),
(24, 'Freddy \'KRIMZ\' Johansson', 'Freddy \"KRIMZ\" Johansson (born April 25, 1994) is a Swedish professional Counter-Strike: Global Offensive player. He currently plays for Fnatic as a support player. KRIMZ is regarded as one of the most consistent players in the competitive scene and is known for his clutching ability. His partnership with olofmeister in the 2015/16 Fnatic lineup is regarded as one of the best duos in Counter-Strike history.', '22412<br /> 40.0%<br /> 19997<br /> 1.12<br /> 76.6<br /> 1212', 'images/player_krimz.png', 5),
(25, 'Ludvig \'Brollan\' Brolin', 'Ludvig \"Brollan\" Brolin is a Swedish Counter-Strike: Global Offensive player currently playing for Fnatic. Brollan is one of the youngest players to play for a professional team, signing with GODSENT when he was only 15 years old. On October 17th he signed with Fnatic.', '7778<br /> 53.0%<br /> 7130<br /> 1.09<br /> 79.5<br /> 405', 'images/player_brollan.png', 5);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `ratingId` int(3) NOT NULL COMMENT 'unique rating is, auto incremented',
  `playerId` int(3) NOT NULL COMMENT 'the heroId used as reference to the hero table, can''t be unique in thie table',
  `rating` int(3) NOT NULL COMMENT 'rating is defined as an integer from 0 (min) to 10 (max)',
  `ratingDate` int(5) NOT NULL COMMENT 'the date of this rating. Dates are presented as an integer (timestamp) and displayed as a human readable date and time string using the PHP strftime() function',
  `ratingReview` text NOT NULL COMMENT 'a textual review added by the user\\nthe form where the user can rate the hero by using stars (radio-buttons)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`ratingId`, `playerId`, `rating`, `ratingDate`, `ratingReview`) VALUES
(16, 1, 8, 1550054265, 'dx'),
(17, 12, 7, 1550136967, 'bfg'),
(18, 12, 5, 1550139766, 'IK MAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAX DIT UITTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT'),
(19, 12, 5, 1550139797, 'ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«Vð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«Vð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«Vð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«Vð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«Vð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«ð’«V'),
(20, 12, 9, 1550139830, 'QWER'),
(21, 1, 7, 1550216698, 'no'),
(22, 17, 5, 1550565399, 'aswedrftgyhjkl'),
(23, 16, 7, 1550565477, 'asdfasdg'),
(24, 16, 1, 1550565923, 'asdf'),
(25, 16, 9, 1550565926, 'awetae'),
(26, 16, 7, 1550566083, 'd'),
(27, 16, 9, 1550566087, 'sfdg'),
(28, 16, 1, 1550566092, 'asdg'),
(29, 16, 8, 1550566123, 'asdf'),
(30, 16, 9, 1550566127, 'ewrq'),
(31, 6, 7, 1550566480, 'adfs'),
(33, 1, 7, 1550653241, 'aega'),
(34, 1, 8, 1550657102, 'hasdf'),
(35, 2, 5, 1550665440, 'hj'),
(36, 25, 6, 1550666848, 'asdfasdf'),
(37, 25, 0, 1550666853, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `teamId` int(3) NOT NULL COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable',
  `teamName` varchar(50) NOT NULL COMMENT 'team name, just an ordinary string',
  `teamDescription` text NOT NULL COMMENT 'team description, just a string',
  `teamImage` varchar(100) NOT NULL COMMENT 'team image, stored as a string and used with the source of the HTML-tag'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`teamId`, `teamName`, `teamDescription`, `teamImage`) VALUES
(1, 'Astralis', 'Astralis is a Danish CS:GO organization owned by players of the former Danish Team SoloMid/Questionmark lineup, with the help of their manager, Frederik \"realition\" Byskov.S', 'images/team_astralis.png'),
(2, 'Liquid', 'Team Liquid is a professional CSGO team, founded in the Netherlands in 2000. Originally a Brood War clan, the team switched to StarCraft2 during the SC2 Beta in 2010, and became one of the most successful foreign teams. On January 13, 2015, it was announced that the team had formed a Counter-Strike: Global Offensive division.', 'images/team_liquid.png'),
(3, 'Natus Vincere', 'Natus Vincere (Latin: \"born to win\", often abbreviated as Na\'Vi or NaVi) is a leading multi-game esports organization from Ukraine. It is the first team in Counter-Strike history to win three major tournaments in one calendar year - Intel Extreme Masters, Electronic Sports World Cup and World Cyber Games 2010.', 'images/team_navi.png'),
(4, 'FaZe', 'FaZe Clan is an American professional esports organization, mostly known for its presence in the Call of Duty scene. They currently field teams in Call of Duty, Counter-Strike: Global Offensive, Tom Clancy\'s Rainbow Six Siege, PLAYERUNKNOWN\'S BATTLEGROUNDS and Fortnite. Initially, it was a sniping team on YouTube channel with various sniping videos, similar to another American organisation OpTic Gaming. They fielded their first competitive roster in Call of Duty: Black Ops II and competed in every Call of Duty title ever since. In 2016, FaZe Clan expanded into other first-person shooter competitive games: Counter-Strike: Global Offensive and later in the summer, Overwatch. FaZe Clan is the most subscribed eSports organization on YouTube with over 5 million subscribers.', 'images/team_faze.png'),
(5, 'Fnatic', 'The team Fnatic (occasionally stylized as fnatic) is a world leader in multiple games, such as League of Legends, Dota 2, Halo and more. Fnatic\'s players attend more than 75 events per year, representing Fnatic in over 25 countries. More than 1,200,000 fans on social media follow the team.\r\n\r\nIn Europe, the US, India, and South America, Fnatic stands as one of the best eSports organizations, whose players have achieved numerous tournament wins. Fnatic also won the ESPORTS Team of the Year Award in 2006 and 2009.\r\n\r\nThe management around founders Sam and Anne Mathews resides in London, where Fnatic\'s main office is located.', 'images/team_fnatic.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`playerId`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ratingId`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hero`
--
ALTER TABLE `hero`
  MODIFY `playerId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable', AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `ratingId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique rating is, auto incremented', AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `teamId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
