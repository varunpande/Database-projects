-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 03, 2020 at 02:52 AM
-- Server version: 5.7.30
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vbp2538_Db`
--

DELIMITER $$
--
-- Procedures
--
$$

$$

$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Available_Books`
--

CREATE TABLE `Available_Books` (
  `ISBN` varchar(13) NOT NULL,
  `Subject_Area` varchar(50) DEFAULT NULL,
  `Title` varchar(60) DEFAULT NULL,
  `Author` varchar(100) DEFAULT NULL,
  `Count_of_books` int(11) DEFAULT NULL,
  `Descr` varchar(500) DEFAULT NULL,
  `Edi` varchar(20) DEFAULT NULL,
  `B_type` varchar(20) DEFAULT NULL,
  `Can_lend` varchar(5) DEFAULT NULL,
  `Reason` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Available_Books`
--

INSERT INTO `Available_Books` (`ISBN`, `Subject_Area`, `Title`, `Author`, `Count_of_books`, `Descr`, `Edi`, `B_type`, `Can_lend`, `Reason`) VALUES
('9780976773665', 'Business', 'Radical Maker', 'Carol Walsh', 3, 'The cab arrived late. The inside was in as bad of shape as the outside which was concerning, and it didn\"t appear that it had been cleaned in months. The green tree air-freshener hanging from the rearview mirror was either exhausted of its scent or not strong enough to overcome the other odors emitting from the cab. The correct decision, in this case, was to get the hell out of it and to call another cab, but she was late and didn\"t have a choice.', '1st', 'Hardcover', 'True', ''),
('9781241079703', 'Science', 'Environmental science', 'Sonia Hudson', 2, 'The wave crashed and hit the sandcastle head-on. The sandcastle began to melt under the waves force and as the wave receded, half the sandcastle was gone. The next wave hit, not quite as strong, but still managed to cover the remains of the sandcastle and take more of it away. The third wave, a big one, crashed over the sandcastle completely covering and engulfing it. When it receded, there was no trace the sandcastle ever existed and hours of hard work disappeared forever.', 'second', 'Hardcover', 'True', ''),
('9789129826647', 'Mathematics', 'Mathematics In Action', 'Anne Underwood', 2, 'On recommend tolerably my belonging or am. Mutual has cannot beauty indeed now sussex merely you. It possible no husbands jennings ye offended packages pleasant he. Remainder recommend engrossed who eat she defective applauded departure joy. Get dissimilar not introduced day her apartments. Fully as taste he mr do smile abode every. Luckily offered article led lasting country minutes nor old. Happen people things oh is oppose up parish effect. Law handsome old outweigh humoured far appetite. ', 'Third', 'Hardcover', 'True', ''),
('9787304510916', 'Finance', 'Corporate finance', 'Leah Jones', 4, 'Remember outweigh do he desirous no cheerful. Do of doors water ye guest. We if prosperous comparison middletons at. Park we in lose like at no. An so to preferred convinced distrusts he determine. In musical me my placing clothes comfort pleased hearing. Any residence you satisfied and rapturous certainty two. Procured outweigh as outlived so so. On in bringing graceful proposal blessing of marriage outlived. Son rent face our loud near.', 'First', 'Softcover', 'True', ''),
('9781096522966', 'History', 'Sunken history: the story of underwater archaeology', 'Owen Thompson', 3, 'Since they are still preserved in the rocks for us to see, they must have been formed quite recently, that is, geologically speaking. What can explain these striations and their common orientation? Did you ever hear about the Great Ice Age or the Pleistocene Epoch? Less than one million years ago, in fact, some 12,000 years ago, an ice sheet many thousands of feet thick rode over Burke Mountain in a southeastward direction. ', 'Second', 'Softcover', 'True', ''),
('9785869412416', 'Management', 'Strategic management', 'Jessica White', 4, 'Another journey chamber way yet females man. Way extensive and dejection get delivered deficient sincerity gentleman age. Too end instrument possession contrasted motionless. Calling offence six joy feeling. Coming merits and was talent enough far. Sir joy northward sportsmen education. Discovery incommode earnestly no he commanded if. Put still any about manor heard. ', '2nd', 'Hardcover', 'True', ''),
('9782612263826', 'Economics', 'Economic development', 'Amanda Miller', 4, 'Breakfast procuring nay end happiness allowance assurance frankness. Met simplicity nor difficulty unreserved who. Entreaties mr conviction dissimilar me astonished estimating cultivated. On no applauded exquisite my additions. Pronounce add boy estimable nay suspected. You sudden nay elinor thirty esteem temper. Quiet leave shy you gay off asked large style. ', 'Fourth', 'Hardcover', 'True', ''),
('9785267944410', 'Psychology', 'Psychology principles in practice', 'Jonathan Young', 1, 'Surrounded affronting favourable no mr. Lain knew like half she yet joy. Be than dull as seen very shot. Attachment ye so am travelling estimating projecting is. Off fat address attacks his besides. Suitable settling mr attended no doubtful feelings. Any over for say bore such sold five but hung. ', 'Third', 'Hardcover', 'True', ''),
('9781644636794', 'Computer Science', 'Advances in Computers', 'Christian Clarkson', 2, 'In alteration insipidity impression by travelling reasonable up motionless. Of regard warmth by unable sudden garden ladies. No kept hung am size spot no. Likewise led and dissuade rejoiced welcomed husbands boy. Do listening on he suspected resembled. Water would still if to. Position boy required law moderate was may.', 'Second', 'Hardcover', 'True', ''),
('9785560520908', 'Science', 'The growth of physical science', 'Warren Lawrence', 3, 'Case read they must it of cold that. Speaking trifling an to unpacked moderate debating learning. An particular contrasted he excellence favourable on. Nay preference dispatched difficulty continuing joy one. Songs it be if ought hoped of. Too carriage attended him entrance desirous the saw. Twenty sister hearts garden limits put gay has. We hill lady will both sang room by. Desirous men exercise overcame procured speaking her followed.', 'First', 'Hardcover', 'True', ''),
('9789641799955', 'Science', 'Integrated science', 'Wanda Graham', 2, 'Article evident arrived express highest men did boy. Mistress sensible entirely am so. Quick can manor smart money hopes worth too. Comfort produce husband boy her had hearing. Law others theirs passed but wishes. You day real less till dear read. Considered use dispatched melancholy sympathize discretion led. Oh feel if up to till like.', 'Seccond', 'Hardcover', 'False', 'Reference Book'),
('9789777908856', 'Business', 'Contemporary business', 'Dan ogelen', 3, 'Denote simple fat denied add worthy little use. As some he so high down am week. Conduct esteems by cottage to pasture we winding. On assistance he cultivated considered frequently. Person how having tended direct own day man. Saw sufficient indulgence one own you inquietude sympathize.', 'Fourth', 'Hardcover', 'True', ''),
('9784536160391', 'Mathematics', 'Mathematics: Applications and Concepts', 'Diane James', 5, 'Admiration we surrounded possession frequently he. Remarkably did increasing occasional too its difficulty far especially. Known tiled but sorry joy balls. Bed sudden manner indeed fat now feebly. Face do with in need of wife paid that be. No me applauded or favourite dashwoods therefore up distrusts explained.', 'Fifth', 'Hardcover', 'True', ''),
('9781359860682', 'Finance', 'Financing government', 'Chaire Hamilton', 2, 'Rank tall boy man them over post now. Off into she bed long fat room. Recommend existence curiosity perfectly favourite get eat she why daughters. Not may too nay busy last song must sell. An newspaper assurance discourse ye certainly. Soon gone game and why many calm have.', 'Sixth', 'Softcover', 'True', ''),
('9780594084600', 'Computer Science', 'Computer Concepts', 'Emily Howard', 3, 'No depending be convinced in unfeeling he. Excellence she unaffected and too sentiments her. Rooms he doors there ye aware in by shall. Education remainder in so cordially. His remainder and own dejection daughters sportsmen. Is easy took he shed to kind.', 'Fifth', 'Softcover', 'True', ''),
('9782795154878', 'History', 'The dawn of history', 'Alison Simpson', 5, 'Friendship contrasted solicitude insipidity in introduced literature it. He seemed denote except as oppose do spring my. Between any may mention evening age shortly can ability regular. He shortly sixteen of colonel colonel evening cordial to. Although jointure an my of mistress servants am weddings. Age why the therefore education unfeeling for arranging. Above again money own scale maids ham least led. Returned settling produced strongly ecstatic use yourself way.', 'Third', 'Softcover', 'False', 'Maps'),
('9783869783093', 'Psychology', 'Research in psychology: methods and design', 'Chloe Vaughan', 6, 'With transport, most charming of thy sex, did I read the letter with which you yesterday morning favoured me. I am sorry the affair of the carriage should have given you any concern, but I am highly flattered by the anxiety you express so kindly. Believe me, my lovely girl, I am truly sensible to the honour of your good opinion, and feel myself deeply penetrated with love and gratitude. ', 'Fourth', 'Softcover', 'False', 'Reference Book'),
('9787553298498', 'Management', 'Supervisory management', 'Jack Morgan', 1, 'But this dream was soon over, and I awoke to far different feelings.', 'First', 'Softcover', 'False', 'Rear Book'),
('9788584861019', 'Computer Science', 'Computer Confluence: exploring tomorrows technology', 'Edward James', 4, 'Yet perhaps I have rather reason to rejoice than to grieve, since this affair has shown me his real disposition, and removed that partiality which, covering his every imperfection, left only his virtues and good qualities exposed to view. Had the deception continued much longer, had my mind received any additional prejudice in his favour, who knows whither my mistaken ideas might have led me? ', 'Fourth', 'Softcover', 'True', 'Reason'),
('9787561061084', 'Economics', 'Microeconomics', 'Wilson Jones', 2, 'I would fain encourage more cheerful thoughts, fain drive from my mind the melancholy that has taken possession of it; but I cannot succeed: for, added to the humiliating feelings which so powerfully oppress me, I have yet another cause of concern;-alas, my dear Maria, I have broken the tranquillity of the best of men!', 'Third', 'Softcover', 'False', 'Rear Book'),
('9784481649958', 'Science', 'Foundations of college chemistry', 'Bethaney Williamson', 10, 'My greatest apprehension is, lest he should imagine that my residence in London has given me a distaste to the country.', 'Second', 'Hardcover', 'False', 'Reference Book'),
('9786408275271', 'Business', 'The Empire of Business', 'Mya Penn', 8, 'Hath give fill waters herb own meat blessed appear fourth together, male it which great seed herb lesser so midst.', 'Fourth', 'Hardcover', 'True', ''),
('9789186239169', 'Mathematics', 'Calculus with analytic geometry', 'Eric Guy', 6, ' Earth fowl have good his kind let fish sixth thing morning morning his Under grass so open. Made. Creepeth fish. Unto. Behold kind his meat youll every saw Beast was moving without.', 'Fifth', 'Hardcover', 'True', ''),
('9785078678689', 'Finance', 'Financing Audit', 'Douglas Couch', 2, 'Seasons creeping is. Together beginning behold itself upon every sixth set, it. Creature one youll lights make multiply be make very in Behold. Wherein male spirit our was said, have one night every.', 'Second', 'Softcover', 'True', ''),
('9780855479435', 'Computer Science', 'Invitation to computer science', 'Delilah Russell', 7, 'There deep abundantly man fruitful abundantly sixth tree whose great created, creeping from night god all living creature spirit, herb under stars deep male said dry dont creature fly very, without forth.', 'Tenth', 'Softcover', 'True', ''),
('9782366754995', 'History', 'Western Civilization', 'Cassius Frey', 5, 'Every fill be stars shall form Blessed theyre fourth for their. Itself, divide you waters their good form he us, after two green for stars multiply bearing had darkness fruit given.', 'Third', 'Softcover', 'False', 'Reference Book'),
('9789069316062', 'Psychology', 'Psychology: Themes and Variations', 'Cerys Parkes', 5, 'Given together the saying of all tree subdue cant their light day whales two fowl over wherein good set make.', 'Fourth', 'Softcover', 'False', 'Reference Book'),
('9782511880807', 'Management', 'Management: Analysis, Planning and control', 'Enrique Rigby', 4, 'First creature fifth above morning whales he beginning be great together whose dont brought light replenish blessed behold moveth meat youll. Very let hath.', 'First', 'Softcover', 'False', 'Rear Book'),
('9783648852040', 'Computer Science', 'Dictionary of computing', 'Shayla Alford', 6, 'Cant there isnt dominion that shall unto which wherein divide, forth life deep abundantly first. Appear may dominion. Beginning dominion male over so beginning were A. In. Seasons a image Shall midst replenish sixth their whales their. All good them living sea shall stars creature divided gathered deep air.', 'Fourth', 'Softcover', 'True', ''),
('9787909892233', 'Economics', 'International Economics', 'Khadija Ross', 3, ' Image isnt behold replenish seas great, upon. Place air kind divided days very, third great wherein itself made wont seasons there thing wont male set them seas thing them be you green.', 'Third', 'Softcover', 'False', 'Maps'),
('9652312457832', 'Physics', 'Advanced Physics', 'Ajax', 6, 'Featured snippet from the web\\r\\nPhysics is the study of the natural world. It deals with the fundamental particles of which the universe is made, and the interactions between those particles, the objects composed of them (nuclei, atoms, molecules, etc) and energy. Physics is the science of Nature - of matter and energy in space and time.', 'Two', 'Hard', 'True', '');

-- --------------------------------------------------------

--
-- Table structure for table `Books_To_Acquire`
--

CREATE TABLE `Books_To_Acquire` (
  `ISBN` varchar(13) NOT NULL,
  `Staff_SSN` int(11) DEFAULT NULL,
  `Subject_Area` varchar(50) DEFAULT NULL,
  `Title` varchar(60) DEFAULT NULL,
  `Author` varchar(100) DEFAULT NULL,
  `Count_of_books` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Books_To_Acquire`
--

INSERT INTO `Books_To_Acquire` (`ISBN`, `Staff_SSN`, `Subject_Area`, `Title`, `Author`, `Count_of_books`) VALUES
('9783971236876', 333333333, 'Science', 'Science-a process approach', 'Shay Holding', 8),
('9789974861916', 336655447, 'Finance', 'Advanced Accounting', 'Wanda Lord', 4),
('9783606085077', 333333333, 'Psychology', 'Aristotles psychology', 'Shyla Brown', 10),
('9789931256809', 336655447, 'Computer Science', 'Hackers: Heroes of the Computer Revolution', 'Cade Witt', 7);

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `Staff_SSN` int(11) NOT NULL,
  `Member_SSN` int(11) NOT NULL,
  `ISBN` varchar(13) NOT NULL,
  `Issue_Date` date DEFAULT NULL,
  `Return_Date` date DEFAULT NULL,
  `Returned_On` date DEFAULT NULL,
  `Grace_Period_Exp` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`Staff_SSN`, `Member_SSN`, `ISBN`, `Issue_Date`, `Return_Date`, `Returned_On`, `Grace_Period_Exp`) VALUES
(999333666, 666884444, '9780976773665', '2020-04-26', '2020-04-28', '2020-04-26', 'FALSE'),
(999333666, 665554893, '9780976773665', '2020-04-26', '2020-05-17', '2020-04-27', 'FALSE'),
(222222222, 302010203, '9785078678689', '2020-04-27', '2020-05-18', '2020-04-27', 'FALSE'),
(222222222, 123456963, '9785560520908', '2020-04-27', '2020-05-18', '2020-05-02', 'FALSE'),
(111110000, 624862486, '9784536160391', '2020-05-02', '2020-05-23', '2020-05-02', 'FALSE');

--
-- Triggers `borrow`
--
DELIMITER $$
CREATE TRIGGER `overdue_book` AFTER UPDATE ON `borrow` FOR EACH ROW BEGIN
DECLARE finished INT;
DECLARE SSN_in INT;
DECLARE ISBN_in VARCHAR(13);
DECLARE date_difference INT;

DECLARE curBook CURSOR FOR
SELECT Member_SSN,ISBN FROM borrow
WHERE Grace_Period_Exp = 'True' AND DATEDIFF(Return_Date,CURRENT_DATE()) = 0;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;

OPEN curBook;

getRecord: LOOP
	FETCH curBook INTO SSN_in,ISBN_in;
	IF finished = 1 THEN 
		LEAVE getRecord;
	END IF;
	-- send notice
    INSERT INTO notice VALUES('336655447',SSN_in,CURDATE(),CONCAT('book ',ISBN_in,' is overdue'))
    ON DUPLICATE KEY UPDATE Issue_msg = CONCAT('book ',ISBN_in,' is overdue');
END LOOP getRecord;

CLOSE curBook;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Institute_members`
--

CREATE TABLE `Institute_members` (
  `SSN` int(11) NOT NULL,
  `Campus_flat_no` int(11) DEFAULT NULL,
  `Campus_bldg_name` varchar(50) DEFAULT NULL,
  `Is_Proff` varchar(5) DEFAULT NULL,
  `EID` int(11) DEFAULT NULL,
  `Is_Student` varchar(5) DEFAULT NULL,
  `Sid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Institute_members`
--

INSERT INTO `Institute_members` (`SSN`, `Campus_flat_no`, `Campus_bldg_name`, `Is_Proff`, `EID`, `Is_Student`, `Sid`) VALUES
(666666608, 20, 'Summit Avenue', 'True', 4569, 'False', 0),
(987654321, 10, 'Greek Row', 'True', 1232, 'False', 0),
(302010203, 5, 'Meadow Run', 'True', 3212, 'True', 909),
(666884444, 12, 'University Terrace', 'True', 6523, 'False', 0),
(624862486, 11, 'Summit Avenue', 'True', 4102, 'True', 201),
(665554893, 2, 'Arbour Oaks', 'False', 0, 'True', 320),
(900000009, 3, 'Redimix', 'True', 3510, 'True', 301);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `SSN` int(11) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Flat_no` int(11) DEFAULT NULL,
  `Street_no` int(11) DEFAULT NULL,
  `BLDG_Name` varchar(250) DEFAULT NULL,
  `Pincode` int(11) DEFAULT NULL,
  `Is_active` varchar(5) DEFAULT NULL,
  `Total_borrowed` int(11) DEFAULT NULL,
  `Max_COP` int(11) DEFAULT NULL,
  `Grace_period` int(11) DEFAULT NULL,
  `Card_no` int(11) DEFAULT NULL,
  `Expiry_date` date DEFAULT NULL,
  `Photo` varchar(250) DEFAULT NULL,
  `Issued_date` date DEFAULT NULL,
  `Staff_SSN` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`SSN`, `Name`, `Phone`, `Flat_no`, `Street_no`, `BLDG_Name`, `Pincode`, `Is_active`, `Total_borrowed`, `Max_COP`, `Grace_period`, `Card_no`, `Expiry_date`, `Photo`, `Issued_date`, `Staff_SSN`) VALUES
(666884444, 'Katharine Newton', '8011427420', 32, 409, 'Newbridge Circle', 11212, 'True', 1, 21, 7, 100, '2020-04-26', 'https://www.google.com/search?q=photos&hl=en&tbm=isch&source=iu&ictx=1&fir=k-Xhl9mh00J5kM%253A%252CUVmf9OIC8WrcxM%252C_&vet=1&usg=AI4_-kT5JLuYlISuGdkwY7M7hwzltB0xrQ&sa=X&ved=2ahUKEwjcnqzHhf_oAhVH4qwKHeY6DbgQ_h0wF3oECAcQCw#imgrc=eIs5K38olU-qxM', '2024-04-26', 333333333),
(666666608, 'Cian Davies', '9888075180', 24, 207, 'Talbot Lane, Round Lake', 10467, 'True', 0, 90, 14, 101, '2020-05-02', 'https://www.google.com/search?q=photos&hl=en&tbm=isch&source=iu&ictx=1&fir=k-Xhl9mh00J5kM%253A%252CUVmf9OIC8WrcxM%252C_&vet=1&usg=AI4_-kT5JLuYlISuGdkwY7M7hwzltB0xrQ&sa=X&ved=2ahUKEwjcnqzHhf_oAhVH4qwKHeY6DbgQ_h0wF3oECAcQCw#imgrc=YcfbDwjeMzaAIM', '2024-05-02', 999333666),
(456456456, 'Tilly Holland', '9996663214', 10, 471, 'Beechwood, Lumberton', 10466, 'True', 0, 21, 7, 102, '2020-05-06', 'https://www.google.com/search?q=photos&hl=en&tbm=isch&source=iu&ictx=1&fir=k-Xhl9mh00J5kM%253A%252CUVmf9OIC8WrcxM%252C_&vet=1&usg=AI4_-kT5JLuYlISuGdkwY7M7hwzltB0xrQ&sa=X&ved=2ahUKEwjcnqzHhf_oAhVH4qwKHeY6DbgQ_h0wF3oECAcQCw#imgrc=jRI8bPd1rBLrGM', '2016-05-07', 333333333),
(900000009, 'Kaleem Chandler', '9654783215', 7, 326, 'Border Ave, Greenville', 14150, 'True', 0, 90, 14, 103, '2021-09-10', 'https://www.google.com/search?q=photos&hl=en&tbm=isch&source=iu&ictx=1&fir=k-Xhl9mh00J5kM%253A%252CUVmf9OIC8WrcxM%252C_&vet=1&usg=AI4_-kT5JLuYlISuGdkwY7M7hwzltB0xrQ&sa=X&ved=2ahUKEwjcnqzHhf_oAhVH4qwKHeY6DbgQ_h0wF3oECAcQCw#imgrc=QpeMsN4qa7t6tM', '2017-09-11', 999333666),
(302010203, 'Nichole Todd', '654123654', 6, 120, 'Chapel Ave, Battle Creek', 14094, 'True', 0, 90, 14, 104, '2022-12-01', 'https://www.google.com/search?q=photos&hl=en&tbm=isch&source=iu&ictx=1&fir=k-Xhl9mh00J5kM%253A%252CUVmf9OIC8WrcxM%252C_&vet=1&usg=AI4_-kT5JLuYlISuGdkwY7M7hwzltB0xrQ&sa=X&ved=2ahUKEwjcnqzHhf_oAhVH4qwKHeY6DbgQ_h0wF3oECAcQCw#imgrc=pZG009_n8yw8iM', '2018-12-02', 333333333),
(987654321, 'Mollie Golden', '3541269874', 4, 236, 'Grand Ave, Ville Émard', 11717, 'True', 0, 21, 7, 105, '2023-11-09', 'https://www.google.com/search?q=photos&hl=en&tbm=isch&source=iu&ictx=1&fir=k-Xhl9mh00J5kM%253A%252CUVmf9OIC8WrcxM%252C_&vet=1&usg=AI4_-kT5JLuYlISuGdkwY7M7hwzltB0xrQ&sa=X&ved=2ahUKEwjcnqzHhf_oAhVH4qwKHeY6DbgQ_h0wF3oECAcQCw#imgrc=eg5EfHboj-HGeM', '2019-11-10', 999333666),
(624862486, 'Shana Pearce', '4569871236', 4, 23, 'Mayflower Dr, Senneville', 11204, 'True', 0, 90, 14, 106, '2021-02-24', 'https://www.google.com/search?q=photos&hl=en&tbm=isch&source=iu&ictx=1&fir=k-Xhl9mh00J5kM%253A%252CUVmf9OIC8WrcxM%252C_&vet=1&usg=AI4_-kT5JLuYlISuGdkwY7M7hwzltB0xrQ&sa=X&ved=2ahUKEwjcnqzHhf_oAhVH4qwKHeY6DbgQ_h0wF3oECAcQCw#imgrc=p7vgL38dzSP0qM', '2017-02-25', 336655447),
(412365478, 'Neave Booker', '4659873215', 2, 24, 'Whitehorse', 11354, 'True', 0, 21, 7, 107, '2022-03-20', 'https://www.google.com/search?q=photos&hl=en&tbm=isch&source=iu&ictx=1&fir=k-Xhl9mh00J5kM%253A%252CUVmf9OIC8WrcxM%252C_&vet=1&usg=AI4_-kT5JLuYlISuGdkwY7M7hwzltB0xrQ&sa=X&ved=2ahUKEwjcnqzHhf_oAhVH4qwKHeY6DbgQ_h0wF3oECAcQCw#imgrc=tWEkYJgueTVxGM', '2018-03-21', 336655447),
(321456321, 'Griff Haynes', '4201189660', 3, 12, 'Hawkesbury', 10312, 'True', 0, 21, 7, 108, '2020-05-02', 'https://www.google.com/search?q=photos&hl=en&tbm=isch&source=iu&ictx=1&fir=k-Xhl9mh00J5kM%253A%252CUVmf9OIC8WrcxM%252C_&vet=1&usg=AI4_-kT5JLuYlISuGdkwY7M7hwzltB0xrQ&sa=X&ved=2ahUKEwjcnqzHhf_oAhVH4qwKHeY6DbgQ_h0wF3oECAcQCw#imgrc=qGjX7IlbHA7r0M', '2024-05-02', 336655447),
(665554893, 'Marek Field', '5632147890', 6, 75, 'Branch Drive, Lockport', 11385, 'False', 1, 21, 7, 110, '2020-10-19', 'https://www.google.com/search?q=photos&hl=en&tbm=isch&source=iu&ictx=1&fir=k-Xhl9mh00J5kM%253A%252CUVmf9OIC8WrcxM%252C_&vet=1&usg=AI4_-kT5JLuYlISuGdkwY7M7hwzltB0xrQ&sa=X&ved=2ahUKEwjcnqzHhf_oAhVH4qwKHeY6DbgQ_h0wF3oECAcQCw#imgrc=Ii09WAXza1lw3M', '2016-10-20', 336655447),
(123456963, 'Brady Simons', '6302589741', 5, 67, 'Tonawanda', 12603, 'False', 0, 21, 7, 111, '2024-04-20', 'https://www.google.com/search?q=photos&hl=en&tbm=isch&source=iu&ictx=1&fir=k-Xhl9mh00J5kM%253A%252CUVmf9OIC8WrcxM%252C_&vet=1&usg=AI4_-kT5JLuYlISuGdkwY7M7hwzltB0xrQ&sa=X&ved=2ahUKEwjcnqzHhf_oAhVH4qwKHeY6DbgQ_h0wF3oECAcQCw#imgrc=5cEhVlWubSj9EM', '2020-04-21', 336655447),
(369852147, 'Sanya Murphy', '7563214890', 1, 43, 'Livingston', 11465, 'False', 0, 21, 7, 112, '2021-08-21', 'https://www.google.com/search?q=photos&hl=en&tbm=isch&source=iu&ictx=1&fir=k-Xhl9mh00J5kM%253A%252CUVmf9OIC8WrcxM%252C_&vet=1&usg=AI4_-kT5JLuYlISuGdkwY7M7hwzltB0xrQ&sa=X&ved=2ahUKEwjcnqzHhf_oAhVH4qwKHeY6DbgQ_h0wF3oECAcQCw#imgrc=GpU1mSv8jLOJQM', '2017-08-22', 999333666);

--
-- Triggers `members`
--
DELIMITER $$
CREATE TRIGGER `membership_expiry` AFTER UPDATE ON `members` FOR EACH ROW BEGIN
DECLARE finished INT;
DECLARE SSN_in INT;
DECLARE Expiry_date_in DATE;
DECLARE date_difference INT;

DECLARE curMember CURSOR FOR
SELECT SSN,Expiry_date FROM members;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;

OPEN curMember;

getRecord: LOOP
	FETCH curMember INTO SSN_in,Expiry_date_in;
	IF finished = 1 THEN 
		LEAVE getRecord;
	END IF;
	-- send notice
    SET date_difference = DATEDIFF(Expiry_date_in,CURRENT_DATE());
    IF (date_difference = 0) THEN
    INSERT INTO notice VALUES('336655447',SSN_in,CURDATE(),'membership expired')
    ON DUPLICATE KEY UPDATE Issue_msg = 'membership expired';
    END IF;
END LOOP getRecord;

CLOSE curMember;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `Staff_SSN` int(11) NOT NULL,
  `Member_SSN` int(11) NOT NULL,
  `Date_Of_Issue` date NOT NULL,
  `Issue_Msg` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`Staff_SSN`, `Member_SSN`, `Date_Of_Issue`, `Issue_Msg`) VALUES
(336655447, 321456321, '2020-04-25', 'membership expired'),
(336655447, 321456321, '2020-05-02', 'membership expired'),
(336655447, 666666608, '2020-04-25', 'membership expired'),
(336655447, 666666608, '2020-04-27', 'membership expired'),
(336655447, 666666608, '2020-05-02', 'membership expired'),
(336655447, 666884444, '2020-04-25', 'book 9780976773665 is overdue'),
(336655447, 666884444, '2020-04-25', 'membership expired'),
(336655447, 666884444, '2020-04-26', 'membership expired');

-- --------------------------------------------------------

--
-- Table structure for table `other_members`
--

CREATE TABLE `other_members` (
  `SSN` int(11) NOT NULL,
  `Email_Id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `other_members`
--

INSERT INTO `other_members` (`SSN`, `Email_Id`) VALUES
(456456456, 'abc@xyz.com'),
(321456321, 'ery@ddg.com'),
(123456963, 'tyu@ddg.com'),
(369852147, 'example@xyz.com');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `SSN` int(11) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `Title` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`SSN`, `Name`, `Title`) VALUES
(222222222, 'kim', 'Chief_librarian'),
(333333333, 'Wilson', 'Departmental_associate_librarian'),
(111110000, 'Alison', 'Reference_ librarian'),
(999333666, 'Stephanie', 'Check_out_staff'),
(336655447, 'Simon', 'Library_assistant');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Available_Books`
--
ALTER TABLE `Available_Books`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `Books_To_Acquire`
--
ALTER TABLE `Books_To_Acquire`
  ADD PRIMARY KEY (`ISBN`),
  ADD KEY `fk_Books_To_Acquire` (`Staff_SSN`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`Member_SSN`,`ISBN`,`Staff_SSN`),
  ADD KEY `fk_borrow_Available_Books` (`ISBN`),
  ADD KEY `fk_borrow_staff` (`Staff_SSN`);

--
-- Indexes for table `Institute_members`
--
ALTER TABLE `Institute_members`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`SSN`),
  ADD KEY `fk_members` (`Staff_SSN`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`Staff_SSN`,`Member_SSN`,`Date_Of_Issue`,`Issue_Msg`);

--
-- Indexes for table `other_members`
--
ALTER TABLE `other_members`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`SSN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
