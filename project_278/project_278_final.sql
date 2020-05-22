-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2020 at 10:11 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `UserName` varchar(30) NOT NULL DEFAULT '',
  `Password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`UserName`, `Password`) VALUES
('root', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `ans`
--

CREATE TABLE `ans` (
  `AID` int(11) NOT NULL,
  `ExpertID` int(6) NOT NULL,
  `UserID` int(6) NOT NULL,
  `QueID` int(10) NOT NULL,
  `Question` varchar(300) NOT NULL,
  `Answer` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ans`
--

INSERT INTO `ans` (`AID`, `ExpertID`, `UserID`, `QueID`, `Question`, `Answer`) VALUES
(16, 4, 13, 1, 'What is HTML?', 'Hypertext Markup Language (HTML) is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript.'),
(17, 4, 13, 3, 'What is CSS?', 'Hypertext Markup Language (HTML) is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript.'),
(18, 4, 13, 4, 'what is js', 'Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language like HTML. CSS is a cornerstone technology of the World Wide Web, alongside HTML and JavaScript. '),
(19, 4, 15, 5, 'This is a question by afy', 'JavaScript is the Programming Language for the Web. JavaScript can update and change both HTML and CSS. JavaScript can calculate, manipulate and validate data.'),
(23, 4, 17, 9, 'What is Java?', 'It is a programming language used in the computer science field '),
(24, 4, 17, 10, 'How can I study Better?', 'Java is a programming language'),
(25, 4, 19, 11, 'What is the importance of AI?', 'You can set a time scheduled, divide your courses, and set daily goals. '),
(26, 4, 15, 6, 'Is PHP used for websites?', 'Yes it is'),
(27, 4, 15, 7, 'How to declare an integer?\r\n', 'int x; or int y = 0;'),
(28, 4, 15, 8, 'How to scan an input in Java?', 'Scanner scan = new Scanner(System.in);');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Info` varchar(2000) NOT NULL,
  `Language` varchar(35) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `syllabus` text NOT NULL,
  `level` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CID`, `Title`, `Info`, `Language`, `Author`, `startDate`, `endDate`, `syllabus`, `level`, `price`) VALUES
(8, 'CMPS 287', 'This course in Artificial Intelligence covers most Machine Learning theory, algorithms,\r\nand applications.', 'English', 'Chadi Helwe', '2020-05-01', '2020-05-31', 'Learning Outcomes:\r\nBy the end of this course, you will be able to:\r\n1) Assess the feasibility of learning based on the theory of generalization\r\n2) Build various learning models for supervised, semi-supervised and unsupervised\r\nlearning tasks\r\n3) Validate the learnt models and estimate their out-of-sample performance\r\n4) Identify whether the learnt models suffer from overfitting or underfitting and deal with\r\neach\r\n5) Build real-world AI applications using machine learning\r\nTopics Covered:\r\n• Theory: Theory of Generalization, Bias-Variance Tradeoff, Error Analysis,\r\nOverfitting and Underfitting, Regularization, Evaluation of Machine Learning\r\nAlgorithms and Model Selection\r\n• Supervised Learning: Perceptron Learning Model, Linear Regression, Logistic\r\nRegression, Support Vector Machines and Kernels, Naïve Bayes, Decision Trees,\r\nNeural Networks, Recommender Systems, Feature Selection, Ensemble Methods\r\n• Unsupervised Learning: Clustering, Anomaly Detection, Dimensionality\r\nReduction, Expectation Maximization\r\n• Reinforcement Learning', 'undergrad', 300),
(9, 'CMPS 277', 'The course material will be organized in a weekly manner. At the beginning of each\r\nweek.', 'English', 'Hicham Yamout', '2020-05-01', '2020-06-13', 'The activities are divided into the following three categories:\r\n1. Assignments: These are individual assignments that include both theoretical and\r\nprogramming problems, which you will have to submit on Moodle by the due date\r\nof the assignment. All programming activities will take place in Python. It is the\r\nde facto language of Machine Learning nowadays. We will provide you with links\r\nto online tutorials on Moodle so you can familiarize yourself with it in case you\r\nare not.\r\n2. Exams: There will be one mid-term exam and one final exam. Dates will be\r\ndetermined later.\r\n3. Project: You will be required to come up with an idea for a project related to\r\nMachine Learning. You should settle on an idea early on and discuss it with your\r\ninstructor and TA. You will then present the results of your project at the end of\r\nthe semester during a poster session. We will post potential project ideas on\r\nMoodle. Projects can be done in groups of 2 to 3.', 'Grad', 200),
(10, 'CMPS 299', 'Environmental threats impact the quality of life in numerous ways. ', 'English', 'Fadi Kayrouz', '2020-04-01', '2020-04-30', 'Readings: Humans and Sustainability Spoolman Ch. 1; Beavan, Colin. No Impact Man (NIM):\r\nRead Preview in Google Books (through p. 17)\r\nSept. 5 – Course Introduction; “Record your Trash” Assignment: Record and document any trash that you and your\r\nroommates generate this week. Choose 3 pieces of trash and talk about its production, use, disposal, and after-life. Find\r\nways to reduce the amount of trash you generate.\r\nPost in SAKAI by Sunday 10 pm. Include pictures if possible. Ungraded.\r\nRead: Humans and Sustainability Spoolman Ch. 1\r\n[View: National Geographic: Six Degrees Could Change the World\r\nYouTube\r\nWeek 2 Trash Talk: Cut down on Waste\r\nReadings: NIM Ch. 2-3\r\nSept. 9 –Testing and communicating scientific results\r\nVideo/picture observation assigned: Transportation and traffic in your community/your commute.\r\nAssignment: Post in SAKAI by Sunday 10 pm.\r\nWeek 3 Turn it off: Conserving Energy\r\nReadings: Spoolman Ch. 16; NIM Ch. 4, 8\r\nSept. 16 - Energy and Energy Balance\r\nChoose a piece of electronics/electrical equipment and discuss its purpose and energy consumption; find ways to reduce\r\nyour Energy Consumption. Post response in SAKAI by Sunday 10 pm. Ungraded.\r\nWeek 4 Transportation CHAT Sunday 8 pm\r\nReadings: Spoolman Ch. 19\r\nSept. 26 – Transportation and Climate Change;\r\n View The End of Suburbia: http://www.youtube.com/watch?v=Q3uvzcY2Xug\r\nAssignment: – Transportation Alternatives Video Documentation: Alternative Transportation in your\r\nCommunity; post in SAKAI by Sunday 10 pm\r\nWeek 5 Food and Human Population; Local Food\r\nReadings: Spoolman Ch. 6\r\nPopulation Sustainability and Food Supply\r\nCommunity Activity --Video Documentation: Transportation, local food and Community Design', 'undergrad', 100),
(13, 'CSCI 200', 'In this course we will learn Java 1, and its impact on the computer science community.', 'English', 'Fatima Kanj', '2020-05-07', '2020-05-31', 'Week 9 Online Quiz 2 Sunday Oct. 28 CHAT Sunday 8 pm DEBATE: ELECTRONIC HANDSHAKE\r\nReadings: Doppelt Ch. 7\r\nOct. 30 (chat topic)- Self-Efficacy and Change; Designing a Community Campaign\r\nWeek 10 Online Quiz 3 Sunday Nov. 4\r\nReadings: The Six Americas\r\nNov. 7 –Changing Sustainability Behavior--Target Audience Characteristics for your Campaign\r\nWeek 11 Designing your Campaign CHAT Sunday Nov. 11 8 pm\r\nReadings: The Psychology of Global Warming; Why Isn’t the Brain Green?\r\nNov. 14– Increasing Campaign Effectiveness\r\nWeek 12 Online Quiz 4 Sunday Nov. 18 EMAIL DEBATE: ARGUMENTS EXCHANGED THIS WEEK\r\nReadings: Tom Friedman, Hot Flat and Crowded\r\nNov. 23 - Exchange of Global Debate Position Papers\r\nNov. 24 - Thanksgiving Break\r\n Report on 3 Conversations/Observations re: Sustainability/Environment by Monday 8 pm in SAKAI\r\nWeek 13 Happy Thanksgiving\r\nReadings: TBA\r\nNov. 28 – Work on Campaign\r\nWeek 14 Dec. 4: 8 pm CHAT: Present your Project Findings DEBATE REBUTTAL\r\nDec. 5 - Exchange of Rebuttal Arguments\r\nComplete Your Final Project Report\r\nWeek 15 Sustainability Beyond This Class DEBATE ELECTRONIC HANDSHAKE\r\nDec. 12 – Course Wrap-up: What can we do to make a difference in the future? Post comments in SAKAI\r\nDec. 16 - Electronic Handhake Farewell\r\nDec. 18 - Final Report due in SAKAI Discussions', 'Grad', 800);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `EID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `CID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`EID`, `UID`, `CID`) VALUES
(85, 17, 8),
(86, 17, 13),
(87, 18, 8),
(88, 19, 9),
(89, 19, 8);

-- --------------------------------------------------------

--
-- Table structure for table `expertsugg`
--

CREATE TABLE `expertsugg` (
  `Sug_id` int(11) NOT NULL,
  `ExpertID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email_id` varchar(500) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expertsugg`
--

INSERT INTO `expertsugg` (`Sug_id`, `ExpertID`, `Name`, `Email_id`, `Subject`, `Description`) VALUES
(5, 4, 'Ali Fayad', 'ali@gmail.coom', 'Add more', 'I suggest to add more java lectures since I have getting many questions about Java');

-- --------------------------------------------------------

--
-- Table structure for table `expert_info`
--

CREATE TABLE `expert_info` (
  `Expert_id` int(2) NOT NULL,
  `FirstName` varchar(20) NOT NULL DEFAULT '',
  `MiddleName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email_id` varchar(40) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `UserName` varchar(40) NOT NULL,
  `Password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expert_info`
--

INSERT INTO `expert_info` (`Expert_id`, `FirstName`, `MiddleName`, `LastName`, `Email_id`, `Gender`, `UserName`, `Password`) VALUES
(4, 'Ali', 'Habib', 'Fayad', 'ali@gmail.coom', 'male', 'ali123', '123'),
(5, 'Sarah', 'Hasan', 'Baydoun', 'sarah@gmail.com', 'female', 'sarah123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Description` varchar(5000) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Description`, `name`, `email`) VALUES
('I like that I can ask to experts... 10/10', 'Hassan Zalghout', 'hassan@gmail.com'),
('I had a very user-friendly experience in this website', 'Hicham Hassoun', 'hicham@gmail.com'),
('The website is amazing', 'Sarah Baydoun', 'sarah@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `lecture`
--

CREATE TABLE `lecture` (
  `Course` varchar(10) NOT NULL,
  `LecID` int(10) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Info` varchar(5000) NOT NULL,
  `summary` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecture`
--

INSERT INTO `lecture` (`Course`, `LecID`, `Title`, `Info`, `summary`) VALUES
('CMPS 287', 26, 'coding neural networ', '#Dependencies\r\nimport keras\r\nfrom keras.models import Sequential\r\nfrom keras.layers import Dense\r\n# Neural network\r\nmodel = Sequential()\r\nmodel.add(Dense(16, input_dim=20, activation=â€™reluâ€™))\r\nmodel.add(Dense(12, activation=â€™reluâ€™))\r\nmodel.add(Dense(4, activation=â€™softmaxâ€™))', 'Neural networks are a set of algorithms, modeled loosely after the human brain'),
('0', 0, 'Lecture title', 'Lecture description', 'Lecture info'),
('CMPS 277', 18, 'Creating tables', 'Creating a basic table involves naming the table and defining its columns and each column\'s data type.\r\n\r\nThe SQL CREATE TABLE statement is used to create a new table.\r\n\r\nSyntax\r\nThe basic syntax of the CREATE TABLE statement is as follows ?\r\n\r\nCREATE TABLE table_name(\r\n   column1 datatype,\r\n   column2 datatype,\r\n   column3 datatype,\r\n   .....\r\n   columnN datatype,\r\n   PRIMARY KEY( one or more columns )\r\n);\r\nCREATE TABLE is the keyword telling the database system what you want to do. In this case, you want to create a new table. The unique name or identifier for the table follows the CREATE TABLE statement.\r\n\r\nThen in brackets comes the list defining each column in the table and what sort of data type it is. The syntax becomes clearer with the following example.\r\n\r\nA copy of an existing table can be created using a combination of the CREATE TABLE statement and the SELECT statement. You can check the complete details at Create Table Using another Table.\r\n\r\nExample\r\nThe following code block is an example, which creates a CUSTOMERS table with an ID as a primary key and NOT NULL are the constraints showing that these fields cannot be NULL while creating records in this table ?\r\n\r\nSQL> CREATE TABLE CUSTOMERS(\r\n   ID   INT              NOT NULL,\r\n   NAME VARCHAR (20)     NOT NULL,\r\n   AGE  INT              NOT NULL,\r\n   ADDRESS  CHAR (25) ,\r\n   SALARY   DECIMAL (18, 2),       \r\n   PRIMARY KEY (ID)\r\n);\r\nYou can verify if your table has been created successfully by looking at the message displayed by the SQL server, otherwise you can use the DESC command as follows ?', 'We will learn how to create tables'),
('CMPS 287', 14, 'Clustering', 'find similar group: how similar to are vs others\r\nk means clustering : most famous\r\n\r\ncluster where minimum distance to centroid(euclidean, manhatten, cosine similarity)\r\nupdate uk\r\nO(n)\r\nfinding global optimum is np hard\r\n\r\ninitialize clusters randomly after choosing k samples\r\n\r\nor \r\nmulti run k means:\r\ncompute cost function each time and return clusters which minimize it\r\n\r\n\r\nHierarchical:\r\ntree based \r\n\r\nHAC : algommerative (bottom-up): start with many (each its own) and group based on similarity end up with one\r\n\r\nnaive implementation: O(n^3): similarity between all instances\r\n\r\nefficient: using heap of similarity (most recently computed): O(N^2 log N) or even O(N^2) based on how similar \r\n\r\nsingle link: max sim between instances of clusters\r\n\r\ncomplete link: min sim between \r\n\r\ngroup average : avg\r\n\r\ncentroid similarity: between centroids : cosine sim or euclidean distance\r\n\r\ncan have algo where similarity threshold given\r\n\r\n\r\n\r\ndivisive(top-down): start with 1 and break down iteratively\r\n', 'In this lecture we will talk about clustering'),
('CMPS 287', 15, 'Anomoly Detection', 'anomaly detection\r\n\r\nThe process of detecting data points that do not conform to the\r\ndistribution of the input space: outliers\r\n\r\ngaussian: normal \r\n\r\nassume independence\r\n\r\n\r\ngiven:\r\nan input space consisting of d features\r\na dataset D = {(x1, y1),(x2, y2), . . . ,(xN, yN)}\r\nwhere yn = +1 if xn is an anomaly and 0 otherwise\r\nTypically, the number of positive examples is much smaller than the\r\nnumber of negative examples\r\nEvaluation Procedure:\r\n1 Divide D into Dtrain, Dval and Dtest\r\nDtrain : 60% of the negative examples\r\nDval: 20% of the negative examples and 50% of the positive examples\r\nDtest: 20% of the negative examples and 50% of the positive examples\r\n2 Run the anomaly detection algorithm on Dtrain\r\n3 Use Dval to set the threshold value ?\r\n4 Use Dtest to evaluate the performance (using F-measure)\r\n\r\n\r\n\r\n\r\nAnomaly Detection:\r\nSmall number of positive\r\nexamples\r\nPositive examples are not\r\nrepresentative of all anomaly\r\ncases\r\nFraud Detection, Fault\r\nDetection, Intrusion Detection,\r\netc\r\n\r\n\r\nSupervised Learning:\r\nBalanced number of positive\r\nand negative examples\r\nPositive examples are\r\nrepresentative of all anomaly\r\ncases\r\nSpam Detection, Weather\r\nForecast, Disease Detection, etc\r\n\r\n\r\nplot histogram', 'We will discuss detection of anomolies'),
('CMPS 277', 17, 'Start SQL', 'What is Data?\r\nIn simple words data can be facts related to any object in consideration.\r\n\r\nFor example your name, age, height, weight, etc are some data related to you.\r\n\r\nA picture , image , file , pdf etc can also be considered data.\r\n\r\nWhat is a Database?\r\nDatabase is a systematic collection of data. Databases support storage and  manipulation of data. Databases make data management easy. Let\'s discuss few examples.\r\n\r\nAn online telephone directory would definitely use database to store data pertaining to people, phone numbers, other contact details, etc.\r\n\r\nYour electricity service provider is obviously using a database to manage billing , client related issues, to handle fault data, etc.\r\n\r\nLet\'s also consider the facebook. It needs to store, manipulate and present data related to members, their friends, member activities, messages, advertisements and lot more.\r\n\r\nWe can provide countless number of examples for usage of databases .\r\n\r\nWhat is SQL?\r\nSQL stands for Structured Query language, pronounced as \"S-Q-L\" or sometimes as \"See-Quel\". SQL is the standard language for dealing with Relational Databases. SQL can be used to insert, search, update and delete database records. SQL can do lots of other operations including optimizing and maintenance of databases. Relational databases like MySQL Database, Oracle, Ms SQL server, Sybase, etc uses SQL.', 'In This lecture we will focus on dome SQL Queries for beginners'),
('CMPS 277', 21, 'Exercises', 'Exercise 1\r\nConsider	the	LIBRARY	relational	database	schema	shown	in	the	figure	\r\nbelow (Figure	1).	Choose	the	appropriate	action	(reject,	cascade,	set	to	\r\nNULL,	set	to	default)	for	each	referential	integrity	constraint,	both	for	the	\r\ndeletion	of	a	referenced	tuple	and	for	the	update	of	a	primary	key	attribute	\r\nvalue	in	a	referenced tuple.	Justify	your	choices.\r\nSolution:\r\nBelow	are	possible	choices.	In	general,	if	it	is	not	clear which	action	to	\r\nchoose,	REJECTshould	be	chosen,	since	it	will	not	permit	automatic	changes	\r\nto	happen	(by	update propagation)	that	may	be	unintended.\r\n• BOOK_AUTHORS.(BookId)	-->	BOOK.(BookId)\r\no CASCADE	on	both	DELETE	or	UPDATE	(since	this	corresponds	\r\nto	a	multi-valued	attribute of	BOOK	(see	the	solution	to	\r\nExercise	6.27);	hence,	if	a	BOOK	is	deleted,	or	the	value	of its	\r\nBookId	is	updated	(changed),	the	deletion	or	change	is	\r\nautomatically	propagated	to	the referencing	BOOK_AUTHORS	\r\ntuples)\r\n• BOOK.(PublisherName)	-->	PUBLISHER.(Name)\r\no REJECT	on	DELETE	(we	should	not	delete	a	PUBLISHER	tuple	\r\nwhich	has	existing	BOOK tuples	that	reference	the	PUBLISHER)\r\no CASCADE	on	UPDATE	(if	a	PUBLISHER\'s	Name	is	updated,	the	\r\nchange	should	be	propagated	automatically	to	all	referencing	\r\nBOOK	tuples)\r\n• BOOK_LOANS.(BookId)	-->	BOOK.(BookId)\r\no CASCADE	on	both	DELETE	or	UPDATE	(if	a	BOOK	is	deleted,	or	\r\nthe	value	of	its	BookId	is updated	(changed),	the	deletion	or	\r\nchange	is	automatically	propagated	to	the	referencing\r\nBOOK_LOANS	tuples)	(Note:	One	could	also	choose	REJECT	on	\r\nDELETE)\r\n• BOOK_COPIES.(BookId)	-->	BOOK.(BookId)', 'In this lecture we will solve some exercises'),
('CSCI 200', 22, 'What is Java?', 'What is Java technology and why do I need it?\r\nJava is a programming language and computing platform first released by Sun Microsystems in 1995. There are lots of applications and websites that will not work unless you have Java installed, and more are created every day. Java is fast, secure, and reliable. From laptops to datacenters, game consoles to scientific supercomputers, cell phones to the Internet, Java is everywhere!\r\n\r\nIs Java free to download?\r\nYes, Java is free to download. Get the latest version at java.com.\r\n\r\nIf you are building an embedded or consumer device and would like to include Java, please contact Oracle for more information on including Java in your device.\r\n\r\nWhy should I upgrade to the latest Java version?\r\nThe latest Java version contains important enhancements to improve performance, stability and security of the Java applications that run on your machine. Installing this free update will ensure that your Java applications continue to run safely and efficiently.\r\n\r\nMORE TECHNICAL INFORMATION\r\n\r\nWhat will I get when I download Java software?\r\nThe Java Runtime Environment (JRE) is what you get when you download Java software. The JRE consists of the Java Virtual Machine (JVM), Java platform core classes, and supporting Java platform libraries. The JRE is the runtime portion of Java software, which is all you need to run it in your Web browser.\r\n\r\nWhat is Java Plug-in software?\r\nThe Java Plug-in software is a component of the Java Runtime Environment (JRE). The JRE allows applets written in the Java programming language to run inside various browsers. The Java Plug-in software is not a standalone program and cannot be installed separately.', 'We will discuss about Java and how it impacted the programming world '),
('CSCI 200', 23, 'History of Java', 'Java is a general-purpose, concurrent, object-oriented, class-based, and the runtime environment(JRE) which consists of JVM which is the cornerstone of the Java platform. This blog on What is Java will clear all your doubts about why to learn java, features and how it works.\r\n\r\nIn this What is Java blog, I would be covering following topics:\r\n\r\nWhat is Java used for?\r\nHistory of Java\r\nWhat is Java?\r\nFeatures of Java\r\nComponents in Java\r\nWhat is Java used for?\r\nBefore I answer the question, what is Java used for, let me brief you about why you should choose Java. Java is highly popular and has dominated this field from early 2000’s till the present 2018. \r\n\r\nJava has been used in different domains. Some of them are listed below:\r\n\r\nBanking: To deal with transaction management.\r\nRetail: Billing applications that you see in a store/restaurant are completely written in Java.\r\nInformation Technology: Java is designed to solve implementation dependencies.\r\nAndroid: Applications are either written in Java or use Java API.\r\nFinancial services: It is used in server-side applications.\r\nStock market: To write algorithms as to which company they should invest in.  \r\nBig Data: Hadoop MapReduce framework is written using Java.\r\nScientific and Research Community: To deal with huge amount of data.\r\nWait! Java can do more.\r\n\r\nLet’s see how some of the technologies make use of Java as an essential core of their functionalities.\r\n\r\n\r\n\r\nHistory of Java\r\nJava is a programming language developed by James Gosling with other team members named Mike Sheridan and Patrick Naughton also called as Green Team in 1995 for Sun Microsystems for digital devices such as set-top boxes, televisions etc. Now, let us see in detail what is Java.\r\n\r\n\r\nWhat is Java?\r\nIt is an object-oriented language similar to C++, but with advanced and simplified features. Java is free to access and can run on all platforms.', 'We will learn more about Java and its history'),
('CMPS 299', 24, 'What is AI?', 'WHAT IS ARTIFICIAL INTELLIGENCE (AI)?\r\nIt depends who you ask.\r\n\r\nBack in the 1950s, the fathers of the field Minsky and McCarthy, described artificial intelligence as any task performed by a program or a machine that, if a human carried out the same activity, we would say the human had to apply intelligence to accomplish the task.\r\n\r\nThat obviously is a fairly broad definition, which is why you will sometimes see arguments over whether something is truly AI or not.\r\n\r\nAI systems will typically demonstrate at least some of the following behaviours associated with human intelligence: planning, learning, reasoning, problem solving, knowledge representation, perception, motion, and manipulation and, to a lesser extent, social intelligence and creativity.\r\n\r\nNarrow AI is what we see all around us in computers today: intelligent systems that have been taught or learned how to carry out specific tasks without being explicitly programmed how to do so.\r\n\r\nThis type of machine intelligence is evident in the speech and language recognition of the Siri virtual assistant on the Apple iPhone, in the vision-recognition systems on self-driving cars, in the recommendation engines that suggest products you might like based on what you bought in the past. Unlike humans, these systems can only learn or be taught how to do specific tasks, which is why they are called narrow AI.\r\n\r\nWHAT CAN NARROW AI DO?\r\nThere are a vast number of emerging applications for narrow AI: interpreting video feeds from drones carrying out visual inspections of infrastructure such as oil pipelines, organizing personal and business calendars, responding to simple customer-service queries, co-ordinating with other intelligent systems to carry out tasks like booking a hotel at a suitable time and location, helping radiologists to spot potential tumors in X-rays, flagging inappropriate content online, detecting wear and tear in elevators from data gathered by IoT devices, the list goes on and on.\r\n\r\nWHAT CAN GENERAL AI DO?\r\nArtificial general intelligence is very different, and is the type of adaptable intellect found in humans, a flexible form of intelligence capable of learning how to carry out vastly different tasks, anything from haircutting to building spreadsheets, or to reason about a wide variety of topics based on its accumulated experience. This is the sort of AI more commonly seen in movies, the likes of HAL in 2001 or Skynet in The Terminator, but which doesn\'t exist today and AI experts are fiercely divided over how soon it will become a reality.\r\n\r\nSpecial report: How to implement AI and machine learning (free PDF)\r\n\r\nA survey conducted among four groups of experts in 2012/13 by AI researchers Vincent C Müller and philosopher Nick Bostrom reported a 50 percent chance that Artificial General Intelligence (AGI) would be developed between 2040 and 2050, rising to 90 percent by 2075. The group went even further, predicting that so-called \' superintelligence\' -- which Bostrom defines as \"any intellect that greatly exceeds the cognitive performance of humans in virtually all domains of interest\" -- was expected some 30 years after the achievement of AGI.', 'We will learn about AI and its importance');

-- --------------------------------------------------------

--
-- Table structure for table `que`
--

CREATE TABLE `que` (
  `QueID` int(10) NOT NULL,
  `UserID` int(10) NOT NULL,
  `UserName` varchar(40) NOT NULL,
  `Description` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `que`
--

INSERT INTO `que` (`QueID`, `UserID`, `UserName`, `Description`) VALUES
(1, 13, 'parth', 'What is HTML?'),
(3, 13, 'parth', 'What is CSS?'),
(4, 13, 'parth', 'what is js'),
(5, 15, 'ali360', 'This is a question by afy'),
(6, 15, 'ali360', 'this is a question by ali'),
(7, 15, 'ali360', 'hello i am ziad how to make vitrual cirrenct\r\n'),
(8, 15, 'ali360', 'this is a new question2020'),
(9, 17, 'iyad123', 'What is Java?'),
(10, 17, 'iyad123', 'How can I study Better?'),
(11, 19, 'rami123', 'What is the importance of AI?'),
(12, 17, 'iyad123', 'What is clustering?'),
(13, 17, 'iyad123', 'What is clustering?');

-- --------------------------------------------------------

--
-- Table structure for table `responsesugg`
--

CREATE TABLE `responsesugg` (
  `ExpertID` int(5) NOT NULL DEFAULT 0,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `User_id` int(12) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Email_id` varchar(40) NOT NULL,
  `UserName` varchar(10) NOT NULL,
  `Password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`User_id`, `FirstName`, `LastName`, `Gender`, `Email_id`, `UserName`, `Password`) VALUES
(17, 'Iyad', 'Mokdad', 'male', 'iyad@gmail.com', 'iyad123', '123'),
(18, 'Ziad', 'Osman', 'male', 'ziad@gmail.com', 'ziad123', '123'),
(19, 'Rami', 'Baydoun', 'male', 'rami@gmail.com', 'rami123', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`UserName`);

--
-- Indexes for table `ans`
--
ALTER TABLE `ans`
  ADD PRIMARY KEY (`AID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`EID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `CID` (`CID`);

--
-- Indexes for table `expertsugg`
--
ALTER TABLE `expertsugg`
  ADD PRIMARY KEY (`Sug_id`),
  ADD KEY `Expert_id` (`ExpertID`);

--
-- Indexes for table `expert_info`
--
ALTER TABLE `expert_info`
  ADD PRIMARY KEY (`Expert_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `lecture`
--
ALTER TABLE `lecture`
  ADD PRIMARY KEY (`LecID`);

--
-- Indexes for table `que`
--
ALTER TABLE `que`
  ADD PRIMARY KEY (`QueID`);

--
-- Indexes for table `responsesugg`
--
ALTER TABLE `responsesugg`
  ADD PRIMARY KEY (`ExpertID`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`User_id`),
  ADD UNIQUE KEY `UserName` (`UserName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ans`
--
ALTER TABLE `ans`
  MODIFY `AID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `EID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `expertsugg`
--
ALTER TABLE `expertsugg`
  MODIFY `Sug_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expert_info`
--
ALTER TABLE `expert_info`
  MODIFY `Expert_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lecture`
--
ALTER TABLE `lecture`
  MODIFY `LecID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `que`
--
ALTER TABLE `que`
  MODIFY `QueID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `User_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `user_info` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`CID`) REFERENCES `course` (`CID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expertsugg`
--
ALTER TABLE `expertsugg`
  ADD CONSTRAINT `expertsugg_ibfk_1` FOREIGN KEY (`ExpertID`) REFERENCES `expert_info` (`Expert_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
