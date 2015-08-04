-- MySQL dump 10.13  Distrib 5.6.24, for osx10.10 (x86_64)
--
-- Host: localhost    Database: portfolio
-- ------------------------------------------------------
-- Server version	5.6.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `project_types`
--

DROP TABLE IF EXISTS `project_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1400 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_types`
--

LOCK TABLES `project_types` WRITE;
/*!40000 ALTER TABLE `project_types` DISABLE KEYS */;
INSERT INTO `project_types` VALUES (1392,'all categories','all'),(1393,'tangible ui','tui'),(1394,'natural language processing','nlp'),(1395,'information vizualization','info_viz'),(1396,'web development','web_dev'),(1397,'databases and devops','dbs'),(1398,'writing samples','writing'),(1399,'ux research','ux_research');
/*!40000 ALTER TABLE `project_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `title_short` varchar(255) DEFAULT NULL,
  `proj_date` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `toolbox_ids` varchar(255) DEFAULT NULL,
  `skills` varchar(255) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `team` varchar(255) DEFAULT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `description` text,
  `github` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `report` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=756 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (747,'Whirld','whirld','Spring 2015','---\n- ux_research\n- web_dev\n','whirld_logo.svg','---\n- mysql\n- ruby on rails\n- ajax\n- html/css\n- javascript\n- elastic search\n','---\n- Contextual Interviewing\n- Rapid Iterative Testing Evaluation\n- Competive Research\n- Affinity Diagramming\n- Object Based Parcipatory Design\n- \" Prototyping\"\n',1,'UC School of Information Masters Thesis Project','---\n- user research\n- backend web-development\n- front-end web-development\n','I School Classmates (4)','Online Collaboration for Aerial Imagery','\'We developed Whirld, a platform for collaborating on drone and aerial imagery projects.  Drone technology is rapidly evolving and aerial images are becoming an increasingly rich data source. Whirld combines technical features like computer vision and machine learning with interface designs that encourage online collaboration into a platform of peer produced, user generated projects. Whirld will drive public engaging in creating a positive vision of what drone and aerial imagery technologies can achieve in the future.\'','https://github.com/j9recurses/whirld',NULL,NULL),(748,'Meeglo','meeglo','Spring 2015','---\n- ux_research, web_dev, tui\n','meeglo_logo.png','---\n- arduino, sinatra, ajax, html/css, javascript, mongodb\n','---\n- Contextual Interviewing, Rapid Iterative Testing Evaluation,  Affinity Diagramming,\n  Prototyping\n',3,'UC Berkeley Invention Lab Fellowship and UC Berkeley CITRIS Foundary Team','---\n- user research, product design, web development, branding, device prototyping\n','UC Berkeley Classmates (3)','Breathe, Glow, Balance','\'We are developing Meeglo, a tangible device that promotes calm by helping users match their matches their heart to their breath, so they can balance their minds. Meeglo senses your heart rate and glows as it changes.\'','https://github.com/antoniorohit/heartsong',NULL,NULL),(749,'ArchExtract','archextract','Summer 2014 and Spring 2015','---\n- nlp, web_dev, dbs\n','bancroft_library_lg.jpg','---\n- mysql, ruby on rails, ajax, html/css, javascript, python, map reduce, shell scripting\n','---\n- contextual interviewing, comparative analysis, dev ops, automation, product design,\n  web development\n',2,'Bancroft Archive Digital Archives Fellowship',NULL,NULL,'An Text Exploration Tool for Digital Archival Collections','\'ArchExtract is web application that enables archivists and researchers to perform topic modeling, keyword and named entity extraction on a text collection. The web application automates and packages a number of existing natural language processes and algorithms for the researcher or archivist. Using automated text analysis as the starting point, ArchExtract illuminates the scope and content of a digital text collection and provides an web-based interface for text exploration.\'','https://github.com/j9recurses/archextract',NULL,'https://drive.google.com/file/d/0ByLGxcGIhaSVbVFGZm9JekZqaE0/view?usp=sharing'),(750,'Predicting Oil Spills in the US','trains','Fall 2014','---\n- info_viz\n','2005kde_pp_oil_.png','---\n- mysql, python\n','---\n- spacial data analysis, data visualization\n',4,'Spacial Data Analysis, UC Berkeley Master\'s Class Project',NULL,NULL,'A Visualization of the Likelyhood of Oil Spils in the USA.',NULL,'https://gist.github.com/j9recurses/4a7a9a78e9d689dacba5',NULL,NULL),(751,'SF Graffiti Dashboard','sfgraffitti','Spring 2014','---\n- info_viz\n','sfg.jpg','---\n- tablau\n','---\n- data analysis, data visualization\n',5,'UC Berkeley I School Data Visualization Class Project',NULL,NULL,'An Analytics Dashboard About Graffiti in San Francisco','\'Using data from San Francisco City Gov website, I created a tablau dash board to explore the \ndates, times, places and types of graffiti that occur in the city.\'',NULL,NULL,'https://drive.google.com/file/d/0ByLGxcGIhaSVa3l2dzdJRUJydXM/view?usp=sharing'),(752,'Domestic Violence in India','india','Spring 2014','---\n- info_viz\n','AwarenessIndia_logo2.jpg','---\n- d3, html/css, javascript, tablau\n','---\n- data analysis, data visualization, user testing\n',6,'UC Berkeley I School Data Visualization Class Project','---\n- exploratory data analysis, creation of d3 and highcharts visualizations, user testing\n','I School Classmates (2)','An Interactive Infographic about Domestic Violence in India','\'This project aimed to create a series of visualizations to help a user explore and analyze data about domestic violence in India. To create these visualizations, we used tableau for some of the initial exploratory data analysis and then used highcharts.js and d3.js for the final deliverable.','https://github.com/j9recurses/infovizfinal','http://people.ischool.berkeley.edu/~ruchitarathi/infoviz-final-caw/','https://drive.google.com/file/d/0ByLGxcGIhaSVMzZwWS1jVzc2Z2M/view?usp=sharing'),(753,'CACEO Costs','caceo','Summer and Fall 2014','---\n- web_dev\n','cali.png','---\n- ruby on rails, ajax, html/css, mysql\n','---\n- contextual interviewing, dev ops, product design, web development\n',7,'A web app for California Association of Clerks and Election Officials',NULL,NULL,'A Web Application Built for California County Election Officials to Account For County Election Costs',NULL,NULL,NULL,NULL),(754,'TubesTrends','tubestrends','Fall 2014','---\n- dbs\n','tubestrends_main.png','---\n- mongo db, mysql, amazon ec2, shell scripting, python\n','---\n- automation engineering, server admininstration, ETL pipline creation, data management\n',8,NULL,NULL,NULL,'An Automated ETL Tool To Gather and Scrape Internet Trends',NULL,NULL,NULL,NULL),(755,'Fractal Viewer','fractalviewer','Fall 2014','---\n- tui\n','fractal.png','---\n- arduino, processing, java\n','---\n- prototyping, tangible ui design\n',7,'UC Berkeley I School C62-Tangible User Interface Design Class Project',NULL,NULL,'Explore and Manipulate Fractals Through a Tangible Interface','The Fractal Viewer is a tangible interface to help users explore the various shapes and patterns generated by a recursive fractal algorithm. Squeezing a sensor inside the a dropper causes the fractal to expand in size on the screen. A potentiometer sensor gives the user a tangible way to manipulate the perspective that the fractals are shown on screen.','https://github.com/j9recurses/fractal_viewer',NULL,NULL);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20150204003630'),('20150216022926'),('20150216023218'),('20150302042537'),('20150302045956'),('20150302051000'),('20150701042904'),('20150702000016'),('20150702001834'),('20150707232444'),('20150708211857'),('20150710030554'),('20150725023700');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toolboxes`
--

DROP TABLE IF EXISTS `toolboxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toolboxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2489 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toolboxes`
--

LOCK TABLES `toolboxes` WRITE;
/*!40000 ALTER TABLE `toolboxes` DISABLE KEYS */;
INSERT INTO `toolboxes` VALUES (2477,'all tools'),(2478,'mysql'),(2479,'ajax'),(2480,'html/css'),(2481,'ruby on rails'),(2482,'python'),(2483,'arduino'),(2484,'d3'),(2485,'amazon ec2'),(2486,'shell scripting'),(2487,'node.js'),(2488,'tablau');
/*!40000 ALTER TABLE `toolboxes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-28 23:34:34
