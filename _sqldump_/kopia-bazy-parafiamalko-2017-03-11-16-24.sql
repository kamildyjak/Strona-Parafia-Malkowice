-- MySQL dump 10.13  Distrib 5.5.25a, for Linux (x86_64)
--
-- Host: sql.parafiamalko.nazwa.pl    Database: parafiamalko
-- ------------------------------------------------------
-- Server version	5.5.53-MariaDB

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
-- Table structure for table `aktualnosci`
--

DROP TABLE IF EXISTS `aktualnosci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aktualnosci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tytul` text NOT NULL,
  `link` text NOT NULL,
  `data` text NOT NULL,
  `news_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aktualnosci`
--

LOCK TABLES `aktualnosci` WRITE;
/*!40000 ALTER TABLE `aktualnosci` DISABLE KEYS */;
INSERT INTO `aktualnosci` VALUES (14,'Wielki Post','aktu.php?child=3&parent=1&news_id=7','2015-09-01',7,1,3),(15,'Boże Narodzenie','aktu.php?child=3&parent=1&news_id=8','2015-09-01',8,1,3),(16,'Adwent','aktu.php?child=3&parent=1&news_id=9','2015-09-01',9,1,3),(17,'Sakrament pojednania','aktu.php?child=3&parent=1&news_id=10','2015-09-01',10,1,3),(18,'Nabożeństwa w dni powszednie','aktu.php?child=3&parent=1&news_id=11','2015-09-01',11,1,3),(19,'Nabożeństwa w niedzielę i święta','aktu.php?child=3&parent=1&news_id=12','2015-09-01',12,1,3),(25,'Hymn ministrancki','aktu.php?child=2&parent=4&news_id=7','2015-09-01',7,4,2),(26,'Zbiórki','aktu.php?child=2&parent=4&news_id=8','2015-09-01',8,4,2),(46,'Nawiedzenie Najświętszej Maryi Panny','aktu.php?child=1&parent=3&news_id=1','2015-09-12',1,3,1),(52,'O Misjach','aktu.php?child=3&parent=2&news_id=4','2015-09-17',4,2,3),(62,'Św. Maksymilian Maria Kolbe','aktu.php?child=2&parent=3&news_id=1','2015-09-27',1,3,2),(63,'Św. Sebastian','aktu.php?child=5&parent=3&news_id=1','2015-09-27',1,3,5),(64,'Św. Roch','aktu.php?child=4&parent=3&news_id=8','2015-09-27',8,3,4),(65,'Oblubieniec Najświętszej Marii Panny','aktu.php?child=3&parent=3&news_id=2','2015-09-27',2,3,3),(67,'Program Misji parafialnych','aktu.php?child=4&parent=2&news_id=3','2015-09-27',3,2,4),(69,'Duszpasterze naszej parafii','aktu.php?child=4&parent=1&news_id=2','2015-09-27',2,1,4),(71,'Tabor - II Niedziela Wielkiego Postu','aktu.php?child=3&parent=2&news_id=5','2016-02-20',5,2,3),(75,'Nie grzesz więcej - V Niedziela Wielkiego Postu','aktu.php?child=3&parent=2&news_id=6','2016-03-13',6,2,3),(82,'Spotkania wakacyjne','aktu.php?child=2&parent=4&news_id=10','2016-07-06',10,4,2),(83,'14 niedziela zw.','aktu.php?child=3&parent=2&news_id=7','2016-07-06',7,2,3),(139,'27. 11. 2016 r.','aktu.php?child=2&parent=2&news_id=49','2016-12-10',49,2,2),(140,'4. 12. 2016 r.','aktu.php?child=2&parent=2&news_id=50','2016-12-10',50,2,2),(142,'11. 12. 2016 r.','aktu.php?child=2&parent=2&news_id=52','2016-12-10',52,2,2),(143,'18. 12. 2016 r.','aktu.php?child=2&parent=2&news_id=53','2016-12-17',53,2,2),(145,'26.12.2016 r.','aktu.php?child=2&parent=2&news_id=55','2016-12-28',55,2,2),(146,'26.12.2016 r.','aktu.php?child=2&parent=2&news_id=56','2016-12-28',56,2,2),(147,'Życzenia','aktu.php?child=3&parent=2&news_id=33','2016-12-28',33,2,3),(148,'Życzenia','aktu.php?child=4&parent=2&news_id=4','2016-12-28',4,2,4),(149,'Orszak Trzech Króli','aktu.php?child=4&parent=2&news_id=5','2016-12-30',5,2,4),(150,'Orszak Trzech Króli','aktu.php?child=3&parent=2&news_id=34','2016-12-30',34,2,3),(151,'1. 01. 2017 r.','aktu.php?child=2&parent=2&news_id=57','2016-12-31',57,2,2),(152,'Nowy Rok','aktu.php?child=2&parent=2&news_id=58','2016-12-31',58,2,2),(153,'8. 01. 2017 r.','aktu.php?child=2&parent=2&news_id=59','2017-01-07',59,2,2),(154,'Orszak Trzech Króli','aktu.php?child=4&parent=2&news_id=6','2017-01-07',6,2,4),(159,'Galeria Orszaku Trzech Króli','aktu.php?child=4&parent=2&news_id=11','2017-01-08',11,2,4),(160,'Orszak Trzech Króli','aktu.php?child=4&parent=2&news_id=12','2017-01-08',12,2,4),(161,'15. 01. 2017 r.','aktu.php?child=2&parent=2&news_id=60','2017-01-14',60,2,2),(162,'22. 01. 2017 r.','aktu.php?child=2&parent=2&news_id=61','2017-01-21',61,2,2),(163,'5. 02. 2017 r.','aktu.php?child=2&parent=2&news_id=62','2017-02-04',62,2,2),(166,'19. 02. 2017 r.','aktu.php?child=2&parent=2&news_id=63','2017-02-18',63,2,2);
/*!40000 ALTER TABLE `aktualnosci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dunkowiczki`
--

DROP TABLE IF EXISTS `dunkowiczki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dunkowiczki` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dni_powszednie` text NOT NULL,
  `niedziela` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dunkowiczki`
--

LOCK TABLES `dunkowiczki` WRITE;
/*!40000 ALTER TABLE `dunkowiczki` DISABLE KEYS */;
INSERT INTO `dunkowiczki` VALUES (2,'','09:30 - Msza święta<br>');
/*!40000 ALTER TABLE `dunkowiczki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_php`
--

DROP TABLE IF EXISTS `index_php`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_php` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_php`
--

LOCK TABLES `index_php` WRITE;
/*!40000 ALTER TABLE `index_php` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_php` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ksiega_gosci`
--

DROP TABLE IF EXISTS `ksiega_gosci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ksiega_gosci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` text NOT NULL,
  `autor` text NOT NULL,
  `tresc` text NOT NULL,
  `ok` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ksiega_gosci`
--

LOCK TABLES `ksiega_gosci` WRITE;
/*!40000 ALTER TABLE `ksiega_gosci` DISABLE KEYS */;
INSERT INTO `ksiega_gosci` VALUES (1,'2011-03-13','Demo','Witam wszystkich, pozdrowienia dla \"admina\" strony.','tak'),(2,'2011-03-30','Dora','Fan Club \"Froda\" upomina sie o nowe filmiki - plis !!!','tak'),(3,'2011-04-10','Bogusław Słabicki','Pozdrowienia dla ks. Proboszcza, całej Społeczności Parafialnej i oczywiście dla pupila \"Frodo\".','tak'),(4,'2011-04-13','Hubert','Fajny ten Frodo :)','tak'),(5,'2011-04-21','Parafianie','Z okazji tak wspaniałego Święta, jakim jest Rocznica Ustanowienia Kapłaństwa, życzymy Księdzu Proboszczowi zdrowia i wielu Łask Bożych do dalszej pracy duszpasterskiej. Niech Cię Bóg wspiera swą miłością a Matka Chrystusa, Matka Kapłanów niech Cię broni i osłania oraz obdarza swymi łasymi.','tak'),(6,'2011-07-15','Arko','Cieszę się, ze strona znów \"ruszyła\", - a będą nowe filmiki z Frodem?','tak'),(7,'2011-11-20','Aleksandra Niżnik','Czy będzie nowy film z Frodo<br />PS. jak będą wakacje przyjdę z moją kuzynką do frodo.','tak'),(8,'2012-02-13','Ks. Marek Kolbuch','Serdeczne pozdrowienia dla ks. Proboszcza i całej wspólnoty parafialnej wprost z Jamajki.','tak'),(9,'2012-12-01','Elżbieta Zapałowicz','Poroszę na stronie zamieścić zdjęcia wnętrza kościoła i koniecznie organów. Byłam latem gościem na mszy - do dzis jestem zachwycona i wielu znajomym opowiadam o tym niezwykłym miejscu. Pozdrowienia dla ksiedza Proboszcza i Pana Organisty.','tak'),(10,'2013-02-02','Anna Gołębowska/Ciechanowska/','Bardzo lubię wracać do kościoła w Małkowicach gdzie byłam chrzczona, przystąpiłam do pierwszej Komunii ŚW. Byłam tutaj bieżmowana i tutaj przed 33 laty wzięłam ślub. Teraz gdy nie mieszkam już ponad 25 lat zawsze wracam do miłuch wspomnień o twj Parafii. Tutaj znajduję się groby bardzo bliskich memu sercu osób. Bardzo miło wspominam poprzednich proboszczów tej dawnej mojej parafii. Bardzo lubię obecnego proboszcza. Jest taki miły, ciepły i bardzo wspaniały Proboszcz. Pozdrawiam księdza i całą moją dawną Parafię.<br />Anna.','tak'),(11,'2013-02-03','elzbieta','Z calego serca przesylam gorace pozdrowienia z Soliny dla najwspanialszego ksiedza Jerzego Sowy .Ela','tak'),(12,'2013-12-17','Parafianka','DUŻO ZDROWIA ŻYCZĘ .','tak'),(40,'2015-09-01','Uczniowie','Szczęśliwego Nowego Roku... szkolnego !!!','tak'),(41,'2016-08-26','Małgorzata','Duszpasterzom i Parafianom wielu łask i Błogosławieństwa Bożego.<br /><br />Zapraszam http://wnmp.grudziadz.pl','tak'),(44,'2017-03-07','Marek','Tego tu nie powinno być, ale mój dramat nie ma granic. Bardzo proszę przeczytać: www.pomagam.pl/dcnyuqo1','nie');
/*!40000 ALTER TABLE `ksiega_gosci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `malkowice`
--

DROP TABLE IF EXISTS `malkowice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `malkowice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dni_powszednie` text NOT NULL,
  `niedziela` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `malkowice`
--

LOCK TABLES `malkowice` WRITE;
/*!40000 ALTER TABLE `malkowice` DISABLE KEYS */;
INSERT INTO `malkowice` VALUES (1,'18:00 - Msza święta<br>We wtorek Litania do św. Józefa po Mszy św. o godz. 18.00 <br>Nowenna do Matki Bożej Nieustającej Pomocy w środę po Mszy św. o godz. 18.00 <br>W czwartek od godz. 17.00 adoracja Jezusa Eucharystycznego<br>','08:00 - Prymaria<br>11:00 - Suma<br>');
/*!40000 ALTER TABLE `malkowice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_1`
--

DROP TABLE IF EXISTS `menu_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` text NOT NULL,
  `plik` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_1`
--

LOCK TABLES `menu_1` WRITE;
/*!40000 ALTER TABLE `menu_1` DISABLE KEYS */;
INSERT INTO `menu_1` VALUES (1,'zawsze aktualne',''),(2,'z historii Parafii',''),(3,'o nabożeństwach',''),(4,'o duszpasterzach','');
/*!40000 ALTER TABLE `menu_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_1_1`
--

DROP TABLE IF EXISTS `menu_1_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_1_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_1_1`
--

LOCK TABLES `menu_1_1` WRITE;
/*!40000 ALTER TABLE `menu_1_1` DISABLE KEYS */;
INSERT INTO `menu_1_1` VALUES (1,'KATECHIZACJA','<html><head><style type=\"text/css\"> body{padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;font-size:1em !important;background-color:transparent !important;}</style></head><body><center><p style=\"float:right\"><img src=\"uploads/menu_1_1_1_menu_1_1_kate.jpg\"></p><p style=\"padding-top:65px\">Na terenie Parafii znajduje się<br /><b>Szkoła Podstawowa<br />im. ks. Kardynała Stefana Wyszyńskiego.</b><br /><a target=\"_parent\" target=\"_parent\" href=\"http://www.spmalkowice.pl/\" target=\"_blank\">http://www.spmalkowice.pl/</a><br /> <br />Katechizację w szkole prowadzi<br />ks. Proboszcz.</p></center></body></html>','',''),(2,'DOKUMENTY POTRZEBNE DO UDZIELENIA','<html><head><style type=\"text/css\"> body{padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;font-size:1em !important;background-color:transparent !important;}</style></head><body><b>sakramentu chrztu świętego:</b><br />- akt urodzenia dziecka z Urzędu Stanu Cywilnego dla wpisania danych<br />- dane personalne rodziców dziecka<br />- data ślubu rodziców dziecka<br />- zaświadczenie dla chrzestnych z parafii ich zamieszkania<br /><br />Chrzestnym może być osoba ochrzczona, bierzmowana, wierząca i praktykująca, której status życiowy pozwala na skorzystanie z sakramentu pokuty przed chrztem dziecka.<br /><br />Przy chrzcie dziecka chrzestni zgłaszają się w zakrystii z zaświadczeniami ze swoich parafii i dowodami tożsamości.<br /><br /><br /><b>sakramentu małżeństwa:</b><br /><br />Minimum trzy miesiące przed planowanym ślubem należy zgłosić się do kancelarii parafialnej z:<br />- dowody osobiste- bieżące świadectwa chrztu świętego i bierzmowania<br />- zaświadczenie do małżeństwa konkordatowego z USC (ważne 6 mies.)<br />- świadectwa ukończenia kursu przedmałżeńskiego<br />- świadectwa odbytych spotkań w poradni przedmałżeńskiej (w naszym dekanacie spotkania są organizowane w Żurawicy G. w trzeci czwartek miesiąca o godz. ... )<br />- do wglądu świadectwa ukończenia katechizacji w zakresie szkoły podstawowej, gimnazjum i średniej<br /><br />Przy ślubie świadkowie zgłaszają się w zakrystii z dowodami tożsamości.<br /><br /><br /><b>pogrzebu:</b><br />- akt zgonu z USC dla wpisania danych<br /><br /><br /><b>Do udzielenia chrztu, ślubu i pogrzebu oraz przystąpienia do I Komunii Św. i Bierzmowania poza własną parafią potrzebna jest pisemna zgoda swojego proboszcza.</b></body></html>','',''),(3,'KANCELARIA PARAFIALNA','<html><head><style type=\"text/css\"> body{padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;font-size:1em !important;background-color:transparent !important;}</style></head><body><center>czynna codziennie po wieczornym nabożeństwie.<br /><br><i>(w uroczystości i święta kancelaria nieczynna)</i><br /><br>w razie pogrzebu, lub konieczności wyjazdu do chorego z sakramentami można kontaktować się z duszpasterzem o każdej porze dnia.</center></body></html>','',''),(4,'KONTO PARAFIALNE','<html><head><style type=\"text/css\"> body{padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;font-size:1em !important;background-color:transparent !important;}</style></head><body><center>Bank PEKAO SA<br /><br />I Odział w Przemyślu<br /><br />Nr rachunku:<br /><br /><b>48 1240 1776 1111 0000 2030 0915</b></center></body></html>','',''),(5,'STRONA INTERNETOWA','<html><head><style type=\"text/css\"> body{padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;font-size:1em !important;background-color:transparent !important;}</style></head><body><center><a target=\"_parent\" target=\"_parent\" target=\"_parent\" target=\"_parent\" href=\"http://parafia-malkowice.pl\"><b>www.parafia-malkowice.pl</b></a><br></center></body></html>','',''),(6,'ADRES E-MAIL','<html><head><style type=\"text/css\"> body{padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;font-size:1em !important;background-color:transparent !important;}</style></head><body><center><a target=\"_parent\" target=\"_parent\" target=\"_parent\" target=\"_parent\" href=\"mailto:mail@parafia-malkowice.pl\"><b>mail@parafia-malkowice.pl</b></a><br></center></body></html>','',''),(7,'TELEFON','<html><head><style type=\"text/css\"> body{padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;font-size:1em !important;background-color:transparent !important;}</style></head><body><center><b>16 67 12 429</b><br></center></body></html>','',''),(8,'ADRES PARAFII','<html><head><style type=\"text/css\"> body{padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;font-size:1em !important;background-color:transparent !important;}</style></head><body><center><p style=\"float:right\"><img src=\"uploads/menu_1_1_8_menu_1_1_adres1.png\"></p><p style=\"padding-top:30px;padding-left:110px\"><b>Parafia Rzymskokatolicka<br /><i>pw. Nawiedzenia NMP</i></b><br />Małkowice 64<br />37-716 Orły<br />pow. przemyski<br />w. podkarpackie</p></center></body></html>','','');
/*!40000 ALTER TABLE `menu_1_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_1_2`
--

DROP TABLE IF EXISTS `menu_1_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_1_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_1_2`
--

LOCK TABLES `menu_1_2` WRITE;
/*!40000 ALTER TABLE `menu_1_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_1_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_1_3`
--

DROP TABLE IF EXISTS `menu_1_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_1_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_1_3`
--

LOCK TABLES `menu_1_3` WRITE;
/*!40000 ALTER TABLE `menu_1_3` DISABLE KEYS */;
INSERT INTO `menu_1_3` VALUES (4,'Odpust parafialny','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c0{orphans:2;widows:2;text-align:justify;direction:ltr;height:12pt}.c2{orphans:2;widows:2;text-align:justify;direction:ltr}.c1{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.0;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:12pt;font-family:\"Times New Roman\"}p{margin:0;color:#000000;font-size:12pt;font-family:\"Times New Roman\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c1\"><p class=\"c2\"><span>- W ko&#347;ciele w parafialny w Ma&#322;kowicach - Nawiedzenia Naj&#347;wi&#281;tszej Marii Panny - 31 maja </span></p><p class=\"c2\"><span>uroczysta suma odpustowa o godz. 11.00.</span></p><p class=\"c0\"><span></span></p><p class=\"c2\"><a target=\"_parent\" name=\"h.gjdgxs\"></a><span>- W ko&#347;ciele filialnym w Du&#324;kowiczkach &ndash; &#347;w. Maksymiliana Marii Kolbe - w niedziel&#281; po 14 sierpnia uroczysta suma odpustowa o godz. 11.30.</span></p></body></html>','','2015-09-01'),(5,'Wielkanoc','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c0{orphans:2;widows:2;text-align:justify;direction:ltr}.c1{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.0;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:12pt;font-family:\"Times New Roman\"}p{margin:0;color:#000000;font-size:12pt;font-family:\"Times New Roman\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c1\"><p class=\"c0\"><a target=\"_parent\" target=\"_parent\" name=\"h.gjdgxs\"></a><span>- Msza św. z procesją Rezurekcyjną godz. 6.00 w kościele parafialnym w Małkowicach i w kościele filialnym w Duńkowiczkach o godz. 9.00.</span></p></body></html>','','2015-09-01'),(6,'Triduum Paschalne','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c0{orphans:2;widows:2;text-align:justify;direction:ltr}.c3{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.c1{height:12pt}.c2{padding-bottom:6pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.0;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:12pt;font-family:\"Times New Roman\"}p{margin:0;color:#000000;font-size:12pt;font-family:\"Times New Roman\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c3\"><p class=\"c0\"><span>Wielki Czwartek - dzie&#324; ustanowienia Eucharystii i Kap&#322;a&#324;stwa:</span></p><p class=\"c0\"><span>- Msza &#347;w. w ko&#347;ciele filialnym w Du&#324;kowiczkach o godz. 16.00.</span></p><p class=\"c0\"><span>- Msza &#347;w. w ko&#347;ciele parafialnym w Ma&#322;kowicach o godz. 18.00.</span></p><p class=\"c0 c1\"><span></span></p><p class=\"c0\"><span>Wielki Pi&#261;tek - dzie&#324; m&#281;ki i &#347;mierci Chrystusa Pana:</span></p><p class=\"c0\"><span>- Nabo&#380;e&#324;stwo w ko&#347;ciele filialnym w Du&#324;kowiczkach o godz. 16.00.</span></p><p class=\"c0\"><span>- Nabo&#380;e&#324;stwo w ko&#347;ciele parafialnym w Ma&#322;kowicach o godz. 18.00.</span></p><p class=\"c0\"><span>- Nast&#281;pnie Gorzkie &#379;ale i Droga Krzy&#380;owa.</span></p><p class=\"c0 c1\"><span></span></p><p class=\"c0\"><span>Wielka Sobota - liturgia wigilii paschalnej:</span></p><p class=\"c0\"><span>- Liturgia &#347;wiat&#322;a i wody w ko&#347;ciele parafialnym w Ma&#322;kowicach od godz. 19.00.</span></p><p class=\"c0 c1\"><span></span></p><p class=\"c0 c2\"><a target=\"_parent\" name=\"h.gjdgxs\"></a><span>- Po&#347;wi&#281;cenie pokarm&oacute;w na st&oacute;&#322; wielkanocny o godz. 9.00, 10.00 i 11.00 w Ma&#322;kowicach a o godz. 12.00 w Du&#324;kowiczkach.</span></p></body></html>','','2015-09-01'),(7,'Wielki Post','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c0{orphans:2;widows:2;direction:ltr}.c2{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.c1{height:12pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.0;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:12pt;font-family:\"Times New Roman\"}p{margin:0;color:#000000;font-size:12pt;font-family:\"Times New Roman\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c2\"><p class=\"c0\"><span>Droga Krzyżowa w każdy piątek:</span></p><p class=\"c0\"><span>- godz. 16.00  w kościele filialnym w Duńkowiczkach,</span></p><p class=\"c0\"><span>- godz. 17.30  w kościele parafialnym w Małkowicach.</span></p><p class=\"c0 c1\"><span></span></p><p class=\"c0\"><span>Gorzkie Żale z kazaniem pasyjnym w każdą niedzielę:</span></p><p class=\"c0\"><span>- po Mszy św. w Duńkowiczkach,</span></p><p class=\"c0\"><span>- godz. 15.00 w kościele parafialnym w Małkowicach.</span></p><p class=\"c0 c1\"><span></span></p><p class=\"c0\"><a target=\"_parent\" target=\"_parent\" name=\"h.gjdgxs\"></a><span>Codziennie, pół godziny przed Eucharystią Godzinki o Matce Bożej Bolesnej.</span></p></body></html>','','2015-09-01'),(8,'Boże Narodzenie','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c1{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.c0{orphans:2;widows:2;direction:ltr}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.0;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:12pt;font-family:\"Times New Roman\"}p{margin:0;color:#000000;font-size:12pt;font-family:\"Times New Roman\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c1\"><p class=\"c0\"><span>- Msza &#347;w. &bdquo;Pasterka&rdquo; w ko&#347;ciele filialnym w Du&#324;kowiczkach o godz. 22.00.</span></p><p class=\"c0\"><a target=\"_parent\" name=\"h.gjdgxs\"></a><span>- Msza &#347;w. &bdquo;Pasterka&rdquo; w ko&#347;ciele parafialnym w Ma&#322;kowicach o godz. &nbsp; 0.00.</span></p></body></html>','','2015-09-01'),(9,'Adwent','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c2{orphans:2;widows:2;direction:ltr;height:12pt}.c0{orphans:2;widows:2;text-align:justify;direction:ltr}.c1{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.0;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:12pt;font-family:\"Times New Roman\"}p{margin:0;color:#000000;font-size:12pt;font-family:\"Times New Roman\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c1\"><p class=\"c0\"><span>- Msza &#347;w. Roratnia codziennie o godz.17.00.</span></p><p class=\"c0\"><a target=\"_parent\" name=\"h.gjdgxs\"></a><span>- Godzinki o Niepokalanym Pocz&#281;ciu Naj&#347;wi&#281;tszej Maryi Panny p&oacute;&#322; godziny przed Msz&#261; &#347;w.</span></p><p class=\"c2\"><span></span></p></body></html>','','2015-09-01'),(10,'Sakrament pojednania','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c1{orphans:2;widows:2;text-align:justify;direction:ltr}.c0{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.0;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:12pt;font-family:\"Times New Roman\"}p{margin:0;color:#000000;font-size:12pt;font-family:\"Times New Roman\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c0\"><p class=\"c1\"><span>- Codziennie p&oacute;&#322; godziny przed Msz&#261; &#347;wi&#281;t&#261; z wyj&#261;tkiem &#347;wi&#261;t i uroczysto&#347;ci, a w ka&#380;dy czwartek podczas adoracji Naj&#347;wi&#281;tszego Sakramentu.</span></p><p class=\"c1\"><span>- Dodatkowo w &#347;rod&#281; i czwartek przed pierwszym pi&#261;tkiem miesi&#261;ca godzin&#281; przed Eucharysti&#261;.</span></p><p class=\"c1\"><a target=\"_parent\" name=\"h.gjdgxs\"></a><span>- W pierwszy pi&#261;tek miesi&#261;ca spowied&#378; w Du&#324;kowiczkach od godz. 15.00, godzin&#281; przed Msz&#261; &#347;w.</span></p></body></html>','','2015-09-01'),(11,'Nabożeństwa w dni powszednie','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c0{orphans:2;widows:2;text-align:justify;direction:ltr}.c1{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.c2{height:12pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.0;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:12pt;font-family:\"Times New Roman\"}p{margin:0;color:#000000;font-size:12pt;font-family:\"Times New Roman\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c1\"><p class=\"c0\"><span>- Msza &#347;wi&#281;ta w ko&#347;ciele parafialnym:</span></p><p class=\"c0\"><span>godz. &nbsp;18.00 &nbsp;w okresie letnim (kwiecie&#324; &ndash; wrzesie&#324;)</span></p><p class=\"c0\"><span>godz. &nbsp;17.00 &nbsp;w okresie zimowym (pa&#378;dziernik &ndash; marzec)</span></p><p class=\"c0\"><span>- Msza &#347;wi&#281;ta w ko&#347;ciele filialnym w Du&#324;kowiczkach:</span></p><p class=\"c0\"><span>godz. 16.00 &nbsp;w pi&#261;tki.</span></p><p class=\"c0 c2\"><span></span></p><p class=\"c0\"><span>- We wtorek Litania do &#347;w. J&oacute;zefa po Mszy &#347;w.</span></p><p class=\"c0\"><span>- W &#347;rod&#281; &nbsp;nowenna do Matki Bo&#380;ej Nieustaj&#261;cej Pomocy po Mszy &#347;w.</span></p><p class=\"c0\"><span>- W czwartek adoracja Naj&#347;wi&#281;tszego Sakramentu, godzin&#281; przed Msz&#261; &#347;w., zako&#324;czona Koronk&#261; do Mi&#322;osierdzia Bo&#380;ego.</span></p><p class=\"c0\"><span>- W pierwsz&#261; sobot&#281; miesi&#261;ca przed Msz&#261; &#347;w. r&oacute;&#380;aniec wynagradzaj&#261;cy za zniewagi Niepokalanemu Sercu Naj&#347;wi&#281;tszej Maryi Panny.</span></p><p class=\"c0 c2\"><span></span></p><p class=\"c0\"><span>- W maju Litania Loreta&#324;ska codziennie po Mszy &#347;w.</span></p><p class=\"c0\"><span>- W czerwcu Litania do Naj&#347;wi&#281;tszego Serca Pana Jezusa codziennie po Mszy &#347;w.</span></p><p class=\"c0\"><span>- W pa&#378;dzierniku nabo&#380;e&#324;stwo r&oacute;&#380;a&#324;cowe codziennie po Mszy &#347;w.</span></p><p class=\"c0\"><a target=\"_parent\" name=\"h.gjdgxs\"></a><span>- W listopadzie nabo&#380;e&#324;stwo wypominkowe codziennie po Mszy &#347;w. (w ka&#380;dy pi&#261;tek listopada Msza &#347;w. w intencji zmar&#322;ych polecanych w parafialnych wypominkach).</span></p></body></html>','','2015-09-01'),(12,'Nabożeństwa w niedzielę i święta','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c1{orphans:2;widows:2;text-align:justify;direction:ltr}.c0{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.c2{height:12pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.0;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:12pt;font-family:\"Times New Roman\"}p{margin:0;color:#000000;font-size:12pt;font-family:\"Times New Roman\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c0\"><p class=\"c1\"><a target=\"_parent\" name=\"h.gjdgxs\"></a><span>- Msze &#347;wi&#281;te:</span></p><p class=\"c1\"><span>godz. &nbsp; 8.00 &nbsp; w ko&#347;ciele parafialnym w Ma&#322;kowicach - Prymaria</span></p><p class=\"c1\"><span>godz. &nbsp; 9.30 &nbsp; w ko&#347;ciele filialnym w Du&#324;kowiczkach</span></p><p class=\"c1\"><span>godz. 11.00 &nbsp; w ko&#347;ciele parafialnym w Ma&#322;kowicach - Suma</span></p><p class=\"c1 c2\"><span></span></p><p class=\"c1\"><span>- Godzinki o Niepokalanym Pocz&#281;ciu Naj&#347;wi&#281;tszej Maryi Panny p&oacute;&#322; godziny przed Prymari&#261;.</span></p><p class=\"c1\"><span>- R&oacute;&#380;aniec przed Msz&#261; &#347;w. w Du&#324;kowiczkach od godz. 9.00, a w Ma&#322;kowicach od godz. 10.30 przed Sum&#261;.</span></p><p class=\"c1\"><span>- Nabo&#380;e&#324;stwa okoliczno&#347;ciowe w ko&#347;ciele parafialnym o godz. 15.00</span></p><p class=\"c1 c2\"><span></span></p><p class=\"c1\"><span>- Zmiana Tajemnic R&oacute;&#380;a&#324;cowych w ka&#380;d&#261; pierwsza niedziel&#281; miesi&#261;ca:</span></p><p class=\"c1\"><span>w Ma&#322;kowicach po Sumie</span></p><p class=\"c1\"><span>w Du&#324;kowiczkach po Mszy &#347;w.</span></p></body></html>','','2015-09-01');
/*!40000 ALTER TABLE `menu_1_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_1_4`
--

DROP TABLE IF EXISTS `menu_1_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_1_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_1_4`
--

LOCK TABLES `menu_1_4` WRITE;
/*!40000 ALTER TABLE `menu_1_4` DISABLE KEYS */;
INSERT INTO `menu_1_4` VALUES (2,'Duszpasterze naszej parafii','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c6{padding-top:0pt;padding-bottom:35.4pt;line-height:1.0;orphans:2;widows:2;text-align:left;direction:ltr}.c0{color:#000000;font-weight:normal;text-decoration:none;vertical-align:baseline;font-size:13pt;font-family:\"Times New Roman\";font-style:normal}.c2{padding-top:0pt;padding-bottom:0pt;line-height:1.0;orphans:2;widows:2;text-align:left;direction:ltr}.c7{padding-top:35.4pt;padding-bottom:0pt;line-height:1.0;orphans:2;widows:2;text-align:left;direction:ltr}.c3{color:#000000;font-weight:bold;text-decoration:none;vertical-align:baseline;font-family:\"Times New Roman\";font-style:normal}.c5{background-color:#ffffff;max-width:453.3pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.c4{height:12pt}.c1{font-size:13pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.0;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:12pt;font-family:\"Times New Roman\"}p{margin:0;color:#000000;font-size:12pt;font-family:\"Times New Roman\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c5\"><div><p class=\"c4 c7\"><span></span></p></div><p class=\"c2\"><span class=\"c1\">&nbsp; &nbsp;</span><span class=\"c3 c1\">Ks. Stanis&#322;aw &#379;ukowski</span></p><p class=\"c2\"><span class=\"c0\">1945 r.</span></p><p class=\"c2 c4\"><span class=\"c0\"></span></p><p class=\"c2\"><span class=\"c1\">&nbsp; &nbsp;</span><span class=\"c3 c1\">Ks. Wincenty Urban</span></p><p class=\"c2\"><span class=\"c0\">1945 r.</span></p><p class=\"c2 c4\"><span class=\"c0\"></span></p><p class=\"c2\"><span class=\"c1\">&nbsp; &nbsp;</span><span class=\"c1 c3\">Ks. Stanis&#322;aw Ko&#347;ci&#324;ski</span></p><p class=\"c2\"><span class=\"c0\">maj 1945 r. &ndash; 16 kwiecie&#324; 1956 r.</span></p><p class=\"c2 c4\"><span class=\"c0\"></span></p><p class=\"c2\"><span class=\"c1\">&nbsp; &nbsp;</span><span class=\"c3 c1\">Ks. Jan Obara</span></p><p class=\"c2\"><span class=\"c0\">25 kwiecie&#324; 1956 r. &ndash; 11 czerwiec 1956 r.</span></p><p class=\"c2 c4\"><span class=\"c0\"></span></p><p class=\"c2\"><span class=\"c1\">&nbsp; &nbsp;</span><span class=\"c3 c1\">Ks. Florian Zaj&#261;c</span></p><p class=\"c2\"><span class=\"c0\">17 czerwiec 1956 r. &ndash; 31 maj 1959 r.</span></p><p class=\"c2 c4\"><span class=\"c0\"></span></p><p class=\"c2\"><span class=\"c1\">&nbsp; &nbsp;</span><span class=\"c3 c1\">Ks. Jerzy Blira</span></p><p class=\"c2\"><span class=\"c0\">16 czerwiec 1959 r. &ndash; 23 sierpie&#324; 2000 r.</span></p><p class=\"c2 c4\"><span class=\"c0\"></span></p><p class=\"c2\"><span class=\"c1\">&nbsp; &nbsp;</span><span class=\"c3 c1\">Ks. Adam Hus</span></p><p class=\"c2\"><span class=\"c0\">23 sierpie&#324; 2000 r. &ndash; 1 lipiec 2002 r.</span></p><p class=\"c2 c4\"><span class=\"c0\"></span></p><p class=\"c2\"><span class=\"c1\">&nbsp; &nbsp;</span><span class=\"c3 c1\">Ks. Jerzy A. Sowa</span></p><p class=\"c2\"><span class=\"c0\">1 lipiec 2002 r. &ndash; ...</span></p><div><p class=\"c4 c6\"><span></span></p></div></body></html>','','2015-09-27');
/*!40000 ALTER TABLE `menu_1_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_2`
--

DROP TABLE IF EXISTS `menu_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` text NOT NULL,
  `plik` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_2`
--

LOCK TABLES `menu_2` WRITE;
/*!40000 ALTER TABLE `menu_2` DISABLE KEYS */;
INSERT INTO `menu_2` VALUES (1,'Szczęść Boże!','index.php'),(2,'z ogłoszeń',''),(3,'z ambony',''),(4,'z życia parafii','');
/*!40000 ALTER TABLE `menu_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_2_1`
--

DROP TABLE IF EXISTS `menu_2_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_2_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_2_1`
--

LOCK TABLES `menu_2_1` WRITE;
/*!40000 ALTER TABLE `menu_2_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_2_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_2_2`
--

DROP TABLE IF EXISTS `menu_2_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_2_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_2_2`
--

LOCK TABLES `menu_2_2` WRITE;
/*!40000 ALTER TABLE `menu_2_2` DISABLE KEYS */;
INSERT INTO `menu_2_2` VALUES (49,'27. 11. 2016 r.','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_2_49_Dokument1.jpg\" /></center>	<br /></body><br /></head></html>','','2016-12-10'),(50,'4. 12. 2016 r.','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_2_50_dok2.jpg\" /></center>	<br /></body><br /></head></html>','','2016-12-10'),(52,'11. 12. 2016 r.','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_2_52_dok3.jpg\" /></center>	<br /></body><br /></head></html>','','2016-12-10'),(53,'18. 12. 2016 r.','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_2_53_4 niedz. Adwentu rok A.jpg\" /></center>	<br /></body><br /></head></html>','','2016-12-17'),(55,'26.12.2016 r.','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_2_55_ogl 2.jpg\" /></center>	<br /></body><br /></head></html>','','2016-12-28'),(56,'26.12.2016 r.','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_2_56_ogl.jpg\" /></center>	<br /></body><br /></head></html>','','2016-12-28'),(57,'1. 01. 2017 r.','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_2_57_nowy.jpg\" /></center>	<br /></body><br /></head></html>','','2016-12-31'),(58,'Nowy Rok','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_2_58_zycz.jpg\" /></center>	<br /></body><br /></head></html>','','2016-12-31'),(59,'8. 01. 2017 r.','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_2_59_orszak.jpg\" /></center>	<br /></body><br /></head></html>','','2017-01-07'),(60,'15. 01. 2017 r.','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_2_60_Ogłoszenia.jpg\" /></center>	<br /></body><br /></head></html>','','2017-01-14'),(61,'22. 01. 2017 r.','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_2_61_O.jpg\" /></center>	<br /></body><br /></head></html>','','2017-01-21'),(62,'5. 02. 2017 r.','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_2_62_555.jpg\" /></center>	<br /></body><br /></head></html>','','2017-02-04'),(63,'19. 02. 2017 r.','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_2_63_Ogl.jpg\" /></center>	<br /></body><br /></head></html>','','2017-02-18');
/*!40000 ALTER TABLE `menu_2_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_2_3`
--

DROP TABLE IF EXISTS `menu_2_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_2_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_2_3`
--

LOCK TABLES `menu_2_3` WRITE;
/*!40000 ALTER TABLE `menu_2_3` DISABLE KEYS */;
INSERT INTO `menu_2_3` VALUES (4,'O Misjach','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol.lst-kix_list_1-3{list-style-type:none}ol.lst-kix_list_1-4{list-style-type:none}ol.lst-kix_list_1-5{list-style-type:none}ol.lst-kix_list_1-6{list-style-type:none}ul.lst-kix_list_1-0{list-style-type:none}.lst-kix_list_1-4>li{counter-increment:lst-ctn-kix_list_1-4}ol.lst-kix_list_1-1{list-style-type:none}ol.lst-kix_list_1-2{list-style-type:none}ol.lst-kix_list_1-6.start{counter-reset:lst-ctn-kix_list_1-6 -1}.lst-kix_list_1-1>li{counter-increment:lst-ctn-kix_list_1-1}ol.lst-kix_list_1-3.start{counter-reset:lst-ctn-kix_list_1-3 -1}ol.lst-kix_list_1-2.start{counter-reset:lst-ctn-kix_list_1-2 -1}ol.lst-kix_list_1-8.start{counter-reset:lst-ctn-kix_list_1-8 -1}.lst-kix_list_1-0>li:before{content:\"-  \"}ol.lst-kix_list_1-5.start{counter-reset:lst-ctn-kix_list_1-5 -1}ol.lst-kix_list_1-7{list-style-type:none}.lst-kix_list_1-1>li:before{content:\"\" counter(lst-ctn-kix_list_1-1,upper-roman) \". \"}.lst-kix_list_1-2>li:before{content:\" \"}.lst-kix_list_1-7>li{counter-increment:lst-ctn-kix_list_1-7}ol.lst-kix_list_1-8{list-style-type:none}.lst-kix_list_1-3>li:before{content:\" \"}.lst-kix_list_1-4>li:before{content:\" \"}.lst-kix_list_1-6>li{counter-increment:lst-ctn-kix_list_1-6}.lst-kix_list_1-7>li:before{content:\" \"}.lst-kix_list_1-3>li{counter-increment:lst-ctn-kix_list_1-3}.lst-kix_list_1-5>li:before{content:\" \"}.lst-kix_list_1-6>li:before{content:\" \"}ol.lst-kix_list_1-7.start{counter-reset:lst-ctn-kix_list_1-7 -1}.lst-kix_list_1-2>li{counter-increment:lst-ctn-kix_list_1-2}.lst-kix_list_1-5>li{counter-increment:lst-ctn-kix_list_1-5}.lst-kix_list_1-8>li{counter-increment:lst-ctn-kix_list_1-8}ol.lst-kix_list_1-4.start{counter-reset:lst-ctn-kix_list_1-4 -1}.lst-kix_list_1-8>li:before{content:\" \"}ol.lst-kix_list_1-1.start{counter-reset:lst-ctn-kix_list_1-1 0}ol{margin:0;padding:0}.c0{padding-top:0pt;text-indent:35.5pt;padding-bottom:6pt;line-height:1.0;orphans:2;widows:2;text-align:justify;direction:ltr}.c1{vertical-align:baseline;font-size:12pt;font-family:\"Times New Roman\";font-weight:normal}.c2{vertical-align:baseline;font-size:12pt;font-family:\"Times New Roman\";font-weight:bold}.c5{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.c3{font-style:italic}.c4{height:11pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:\"Arial\"}p{margin:0;color:#000000;font-size:11pt;font-family:\"Arial\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c5\"><p class=\"c0\"><a target=\"_parent\" name=\"h.gjdgxs\"></a><span class=\"c2\">Czym s&#261; misje &#347;wi&#281;te ?</span></p><p class=\"c0\"><span class=\"c1\">S&#322;owo </span><span class=\"c2\">MISJA</span><span class=\"c1\">&nbsp;oznacza przede wszystkim wybranie i POS&#321;ANIE przez Boga pewnych os&oacute;b do spe&#322;nienia okre&#347;lonych zada&#324;. W Nowym Testamencie sam Jezus Chrystus, Syn Bo&#380;y, nazwany jest w&#322;a&#347;nie POS&#321;A&#323;CEM BO&#379;YM, kt&oacute;ry przyszed&#322; na ziemi&#281; z polecenia Ojca, aby g&#322;osi&#263; Dobr&#261; Nowin&#281; o zbawieniu. T&#281; misj&#281; pe&#322;ni&#322; Chrystus w czasie swego &#380;ycia na ziemi, a po swoim zmartwychwstaniu POS&#321;A&#321; On swoich uczni&oacute;w z poleceniem: </span><span class=\"c2 c3\">&bdquo;Id&#378;cie na ca&#322;y &#347;wiat i g&#322;o&#347;cie Ewangeli&#281; wszelkiemu stworzeniu&rdquo;</span><span class=\"c1\">&nbsp;</span><span class=\"c1 c3\">(Mk 16,15)</span><span class=\"c1\">. Pos&#322;anie przez Chrystusa aposto&#322;&oacute;w dla g&#322;oszenia Ewangelii trwa po dzie&#324; dzisiejszy w Ko&#347;ciele &#347;wi&#281;tym.</span></p><p class=\"c0\"><span class=\"c1\">Termin MISJE pochodzi od &#322;aci&#324;skiego s&#322;owa &bdquo;missio&rdquo;, co znaczy POS&#321;ANIE. Termin ten mo&#380;e mie&#263; znaczenie &#347;wieckie, gdy pos&#322;anie wi&#261;&#380;e si&#281; z wykonaniem funkcji &#347;wieckiej: np. kulturalnej, dyplomatycznej, handlowej. Je&#380;eli pos&#322;anie dotyczy relacji pomi&#281;dzy Bogiem i cz&#322;owiekiem, to m&oacute;wimy o misji w znaczeniu religijnym.</span></p><p class=\"c0\"><span class=\"c1\">Przepowiadanie Dobrej Nowiny o zbawieniu nale&#380;y do istotnych zada&#324; Ko&#347;cio&#322;a. Jest ono &#347;ci&#347;le zwi&#261;zane z normalnym funkcjonowaniem wsp&oacute;lnot chrze&#347;cija&#324;skich. Jednak obok zwyczajnego przepowiadania s&#322;owa Bo&#380;ego znana jest w Ko&#347;ciele r&oacute;wnie&#380; jego forma nadzwyczajna: o &#347;ci&#347;le okre&#347;lonym celu, zestawie katechez, kaza&#324;, skoncentrowanych wok&oacute;&#322; sakramentu pokuty i Eucharystii. Celem tego przepowiadania jest utwierdzanie w wierze, reforma obyczaj&oacute;w i odnowa praktyk religijnych. Ca&#322;o&#347;&#263; dzia&#322;alno&#347;ci, skoncentrowana na celu ostatecznym cz&#322;owieka, jest zdecydowanym wezwaniem do pokuty poprzez odwo&#322;ywanie si&#281; do prawd eschatologicznych.</span></p><p class=\"c0\"><span class=\"c1\">Liczne nawr&oacute;cenia, przemiany obyczaj&oacute;w i umocnienia w wierze sprawi&#322;y, &#380;e Ko&#347;ci&oacute;&#322; uzna&#322; g&#322;oszenie MISJI za jeden z wa&#380;nych &#347;rodk&oacute;w Chrystusowego pos&#322;annictwa i poleca je nadal organizowa&#263; wszystkim duszpasterzom </span><span class=\"c1 c3\">(por. Kodeks Prawa Kanonicznego 770)</span><span class=\"c1\">. Zach&#281;ca&#322; do nich r&oacute;wnie&#380; &#347;w. Jan Pawe&#322; II, nazywaj&#261;c Misje &bdquo;niezast&#261;pionym &#347;rodkiem okresowej i intensywnej odnowy &#380;ycia chrze&#347;cija&#324;skiego&rdquo; </span><span class=\"c1 c3\">(por. adhortacja apostolska o katechizacji Catchesi tradendae 47)</span><span class=\"c1\">.</span></p><p class=\"c0\"><a target=\"_parent\" name=\"h.30j0zll\"></a><span class=\"c1\">Misje nie s&#261; wi&#281;c prywatn&#261; spraw&#261; duszpasterzy czy misjonarzy. Misjonarze przybywaj&#261; nie we w&#322;asnym imieniu, lecz jako wys&#322;annicy Chrystusa i Ko&#347;cio&#322;a. Nie g&#322;osz&#261; oni swoich s&#322;&oacute;w, ale s&#322;owa Jezusa Chrystusa i w Jego imieniu wzywaj&#261; do nawr&oacute;cenia i pokuty.</span></p><p class=\"c0\"><span class=\"c1\">Wsp&oacute;&#322;czesne czasy domagaj&#261; si&#281; od nas nawr&oacute;cenia; misje maj&#261; nam u&#322;atwi&#263; osobist&#261; odpowied&#378; na pytanie, co oznacza dzisiaj by&#263; chrze&#347;cijaninem.</span></p><p class=\"c0 c4\"><span class=\"c1\"></span></p></body></html>','','2015-09-17'),(5,'Tabor - II Niedziela Wielkiego Postu','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}table td,table th{padding:0}.c0{text-indent:35.5pt;padding-bottom:6pt;line-height:1.0;orphans:2;widows:2;text-align:justify}.c1{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.1500000000000001;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.1500000000000001;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:12pt;font-family:\"Times New Roman\"}p{margin:0;color:#000000;font-size:12pt;font-family:\"Times New Roman\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.1500000000000001;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.1500000000000001;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.1500000000000001;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.1500000000000001;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.1500000000000001;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.1500000000000001;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c1\"><p class=\"c0\"><span>Nawet mocne prze&#380;ycie mistyczne nie wyklucza grzechu. To znak i dla nas.</span></p><p class=\"c0\"><span>Wielki Post jest czasem odkrywania si&#322;y grzechu i si&#322;y &#322;aski.</span></p><p class=\"c0\"><span>My te&#380;, mimo &#380;e nie mamy prze&#380;y&#263; mistycznych na miar&#281; Piotra, pope&#322;niamy grzechy i potrzebujemy &#380;alu za nie.</span></p><p class=\"c0\"><a target=\"_parent\" id=\"h.gjdgxs\"></a><span>Bior&#261;c udzia&#322; w Naj&#347;wi&#281;tszej Ofierze i prze&#380;ywaj&#261;c Rok Mi&#322;osierdzia b&#322;agajmy Boga o umocnienie naszej wiary, by&#347;my kiedy&#347; wszyscy stali si&#281; uczestnikami wiecznego przemienienia.</span></p></body></html>','','2016-02-20'),(6,'Nie grzesz więcej - V Niedziela Wielkiego Postu','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}table td,table th{padding:0}.c1{text-indent:35.5pt;padding-bottom:6pt;line-height:1.0;orphans:2;widows:2;text-align:justify}.c2{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.c3{font-style:italic}.c4{font-weight:bold}.c0{color:#000000}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.1500000000000001;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.1500000000000001;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:12pt;font-family:\"Times New Roman\"}p{margin:0;color:#000000;font-size:12pt;font-family:\"Times New Roman\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.1500000000000001;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.1500000000000001;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.1500000000000001;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.1500000000000001;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.1500000000000001;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.1500000000000001;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c2\"><p class=\"c1\" id=\"h.gjdgxs\"><span class=\"c0\">Jezusowi, gdy m&oacute;wi do owej kobiety: </span><span class=\"c0 c3\">Nie grzesz wi&#281;cej</span><span class=\"c0\">, chodzi o konkretn&#261; spraw&#281;: ma&#322;&#380;e&#324;sk&#261; wierno&#347;&#263;. W &#380;yciu ka&#380;dego cz&#322;owieka podobnych spraw, z kt&oacute;rymi i mo&#380;na, i trzeba zerwa&#263;, jest wi&#281;cej.</span></p><p class=\"c1\"><span class=\"c0\">Nasz&#261; wi&#281;c odpowiedzi&#261; na Bo&#380;e mi&#322;osierdzie s&#261; zobowi&#261;zania. Jednak nie jakie&#347; mgliste obietnice, kt&oacute;re praktycznie niewiele znacz&#261; poza tym, &#380;e &bdquo;chcia&#322;bym&rdquo;.</span></p><p class=\"c1\"><span class=\"c0\">Zapytajmy wi&#281;c samych siebie: Z kt&oacute;rym grzechem zerwa&#263; ca&#322;kowicie? W czym sta&#263; si&#281; lepszym?</span></p><p class=\"c1\"><span class=\"c0\">Postanowienie zerwania z grzechem najci&#281;&#380;szym wobec Boga, a tak&#380;e najwi&#281;cej zam&#281;tu wprowadzaj&#261;cym w &#380;ycie moje i mego otoczenia.</span></p><p class=\"c1\"><span class=\"c0\">Postanowienie bycia lepszym w tym, w czym na co dzie&#324; pope&#322;niam b&#322;&#281;dy, cho&#263;by ma&#322;e, ale cz&#281;ste.</span></p><p class=\"c1\"><span class=\"c0\">Jezus, nie pot&#281;pia nikogo. Powiedzia&#322; to dzi&#347; w Ewangelii. Oczekuje jednak wysi&#322;ku i stawia wymagania. A wymagania s&#261; zdecydowane: </span><span class=\"c3 c0 c4\">Id&#378;, a od tej chwili ju&#380; nie grzesz!</span></p></body></html>','','2016-03-13'),(7,'14 niedziela zw.','<html><head><style type=\"text/css\"> body{padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;font-size:1em !important;background-color:transparent !important;}</style></head><body>Zawsze z bojaźnią patrzę na ludzi, którym się wszystko udaje. Spokojniej patrzę na przyszłość ludzi, którzy ponoszą klęski. Ostateczne zwycięstwo bliżej jest tego, kto często przegrywał, niż tego, kto zawsze wygrywał. Dziwne, ale prawdziwe.<br /><br />Wartości człowieka nie można mierzyć ani jego sukcesami, ani klęskami. Trzeba ją mierzyć jego stosunkiem do sukcesu i klęski.<br /><br />Wartościowy człowiek nie dostanie zawrotu głowy gdy odnosi sukces, ale też nie rozrywa szat, gdy ponosi klęskę. Zawsze i wszędzie pamięta o swej godności i o tym, że wszystko cokolwiek dobrego posiada, nie jest jego, lecz otrzymał to w darze.</body></html>','','2016-07-06'),(33,'Życzenia','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_3_33_zyczenia.jpg\" /></center>	<br /></body><br /></head></html>','','2016-12-28'),(34,'Orszak Trzech Króli','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_3_34_trzech.jpg\" /></center>	<br /></body><br /></head></html>','','2016-12-30');
/*!40000 ALTER TABLE `menu_2_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_2_4`
--

DROP TABLE IF EXISTS `menu_2_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_2_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_2_4`
--

LOCK TABLES `menu_2_4` WRITE;
/*!40000 ALTER TABLE `menu_2_4` DISABLE KEYS */;
INSERT INTO `menu_2_4` VALUES (3,'Program Misji parafialnych','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c0{margin-left:35.5pt;padding-top:0pt;padding-bottom:0pt;line-height:1.0;orphans:2;widows:2;direction:ltr;height:12pt}.c8{padding-top:35.5pt;padding-bottom:0pt;line-height:1.0;orphans:2;widows:2;text-align:left;direction:ltr;height:12pt}.c14{padding-top:0pt;padding-bottom:35.5pt;line-height:1.0;orphans:2;widows:2;text-align:left;direction:ltr}.c4{color:#000000;font-weight:normal;text-decoration:underline;vertical-align:baseline;font-family:\"Times New Roman\";font-style:normal}.c2{color:#000000;font-weight:normal;text-decoration:none;vertical-align:baseline;font-family:\"Times New Roman\";font-style:normal}.c3{padding-top:0pt;padding-bottom:0pt;line-height:1.0;orphans:2;widows:2;direction:ltr}.c18{color:#c00000;font-weight:normal;text-decoration:none;vertical-align:baseline;font-family:\"Times New Roman\";font-style:italic}.c9{color:#0070c0;font-weight:normal;text-decoration:none;vertical-align:baseline;font-family:\"Times New Roman\";font-style:normal}.c15{color:#c00000;font-weight:bold;text-decoration:none;vertical-align:baseline;font-family:\"Times New Roman\";font-style:normal}.c6{color:#00b050;font-weight:normal;text-decoration:none;vertical-align:baseline;font-family:\"Times New Roman\";font-style:normal}.c17{background-color:#ffffff;max-width:756.9pt;padding:42.5pt 42.5pt 42.5pt 42.5pt}.c1{font-size:13pt}.c5{font-size:8pt}.c16{color:#00b050}.c12{height:12pt}.c10{margin-left:35.5pt}.c13{text-decoration:underline}.c7{text-align:center}.c11{color:#0070c0}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.0;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:12pt;font-family:\"Times New Roman\"}p{margin:0;color:#000000;font-size:12pt;font-family:\"Times New Roman\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c17\"><div><p class=\"c8\"><span></span></p></div><p class=\"c3 c7\"><span class=\"c1 c15\">Program Misji &#346;wi&#281;tych</span></p><p class=\"c3 c7\"><span class=\"c15 c1\">6 &ndash; 11 pa&#378;dziernika 2015 r.</span></p><p class=\"c0 c7\"><span class=\"c1\"></span></p><p class=\"c3 c7\"><span class=\"c4 c1\">Wtorek &ndash; 6 pa&#378;dziernika</span></p><p class=\"c3 c7\"><span class=\"c18 c1\">Rozpocz&#281;cie Misji &#346;wi&#281;tych</span></p><p class=\"c0\"><span class=\"c1\"></span></p><p class=\"c3 c10\"><span class=\"c6 c1\">Du&#324;kowiczki</span></p><p class=\"c3\"><span class=\"c2 c1\">15.30 &nbsp; &nbsp; - R&oacute;&#380;aniec prowadzony przez R&oacute;&#380;e R&oacute;&#380;a&#324;cowe</span></p><p class=\"c3\"><span class=\"c2 c1\">16.00 &nbsp; &nbsp; - Wprowadzenie Ojca Misjonarza i przekazanie stu&#322;y</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Msza &#347;w. z nauk&#261; misyjn&#261;</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3 c10\"><span class=\"c9 c1\">Ma&#322;kowice</span></p><p class=\"c3\"><span class=\"c2 c1\">17.30 &nbsp; &nbsp; - R&oacute;&#380;aniec prowadzony przez R&oacute;&#380;e R&oacute;&#380;a&#324;cowe</span></p><p class=\"c3\"><span class=\"c2 c1\">18.00 &nbsp; &nbsp; - Wprowadzenie Ojca Misjonarza i przekazanie stu&#322;y</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Msza &#347;w. z nauk&#261; misyjn&#261;</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3 c7\"><span class=\"c1 c4\">&#346;roda &ndash; 7 pa&#378;dziernika</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3 c10\"><span class=\"c9 c1\">Ma&#322;kowice</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp;9.00 &nbsp; &nbsp; - Spotkanie misyjne dla dzieci ze Szko&#322;y Podstawowej</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Rozdanie r&oacute;&#380;a&#324;c&oacute;w dzieciom klasy III</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Nabo&#380;e&#324;stwo r&oacute;&#380;a&#324;cowe prowadzone przez dzieci</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3\"><span class=\"c2 c1\">15.00 &nbsp; &nbsp; - Wystawienie Naj&#347;wi&#281;tszego Sakramentu</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Godzina Mi&#322;osierdzia</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3 c10\"><span class=\"c6 c1\">Du&#324;kowiczki</span></p><p class=\"c3\"><span class=\"c2 c1\">15.30 &nbsp; &nbsp; - R&oacute;&#380;aniec prowadzony przez R&oacute;&#380;e R&oacute;&#380;a&#324;cowe</span></p><p class=\"c3\"><span class=\"c2 c1\">16.00 &nbsp; &nbsp; - Msza &#347;w. z nauk&#261; misyjn&#261;</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3 c10\"><span class=\"c9 c1\">Ma&#322;kowice</span></p><p class=\"c3\"><span class=\"c2 c1\">17.30 &nbsp; &nbsp; - R&oacute;&#380;aniec prowadzony przez R&oacute;&#380;e R&oacute;&#380;a&#324;cowe</span></p><p class=\"c3\"><span class=\"c2 c1\">18.00 &nbsp; &nbsp; - Msza &#347;w. z nauk&#261; misyjn&#261;</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Po Mszy &#347;w. nauka misyjna dla ojc&oacute;w i matek</span></p><p class=\"c3 c12\"><span class=\"c5\"></span></p><p class=\"c3 c12\"><span class=\"c5\"></span></p><p class=\"c3 c7\"><span class=\"c4 c1\">Czwartek &ndash; 8 pa&#378;dziernika</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3 c10\"><span class=\"c9 c1\">Ma&#322;kowice</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp;9.00 &nbsp; &nbsp; - Msza &#347;w. z nauk&#261; misyjn&#261; dla os&oacute;b starszych i chorych</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Udzielenie Sakramentu Chorych</span></p><p class=\"c3\"><span class=\"c2 c1\">10.30 &nbsp; &nbsp; &nbsp;- Odwiedziny z Panem Jezusem w domach os&oacute;b chorych z Ma&#322;kowic</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3 c10\"><span class=\"c6 c1\">Du&#324;kowiczki</span></p><p class=\"c3\"><span class=\"c2 c1\">15.30 &nbsp; &nbsp; - R&oacute;&#380;aniec prowadzony przez R&oacute;&#380;e R&oacute;&#380;a&#324;cowe</span></p><p class=\"c3\"><span class=\"c2 c1\">16.00 &nbsp; &nbsp; - Msza &#347;w. z nauk&#261; misyjn&#261; o pojednaniu</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3 c10\"><span class=\"c9 c1\">Ma&#322;kowice</span></p><p class=\"c3\"><span class=\"c2 c1\">17.30 &nbsp; &nbsp; - R&oacute;&#380;aniec prowadzony przez R&oacute;&#380;e R&oacute;&#380;a&#324;cowe</span></p><p class=\"c3\"><span class=\"c1 c2\">18.00 &nbsp; &nbsp; - Msza &#347;w. z nauk&#261; misyjn&#261; o pojednaniu</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Po Mszy &#347;w. nauka misyjna dla m&#322;odzie&#380;y gimnazjalnej i ponadgimnazjalnej</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3 c7\"><span class=\"c4 c1\">Pi&#261;tek &ndash; 9 pa&#378;dziernika</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3 c10\"><span class=\"c1 c6\">Du&#324;kowiczki</span></p><p class=\"c3\"><span class=\"c2 c1\">10.00 &nbsp; &nbsp; - Odwiedziny z Panem Jezusem w domach os&oacute;b chorych z Du&#324;kowiczek i Or&#322;&oacute;w</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3 c7\"><span class=\"c15 c1\">Spowied&#378; misyjna:</span></p><p class=\"c3 c12 c7\"><span class=\"c5\"></span></p><p class=\"c3 c7\"><span class=\"c6 c1\">Du&#324;kowiczki</span><span class=\"c1 c16\">&nbsp; &nbsp; &nbsp; </span><span class=\"c6 c1\">14.00 &ndash; 16.00</span></p><p class=\"c3\"><span class=\"c2 c1\">15.30 &nbsp; &nbsp; - R&oacute;&#380;aniec prowadzony przez R&oacute;&#380;e R&oacute;&#380;a&#324;cowe</span></p><p class=\"c3\"><span class=\"c2 c1\">16.00 &nbsp; &nbsp; - Msza &#347;w. z nauk&#261; misyjna</span></p><p class=\"c3 c12\"><span class=\"c5\"></span></p><p class=\"c3 c7\"><span class=\"c1 c9\">Ma&#322;kowice </span><span class=\"c1 c11\">&nbsp; &nbsp; &nbsp; </span><span class=\"c9 c1\">14.00 &ndash; 17.00</span></p><p class=\"c3\"><span class=\"c2 c1\">18.00 &nbsp; &nbsp; - Msza &#347;w. z nauk&#261; misyjn&#261;</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Po Mszy &#347;w. procesja na cmentarz z modlitwa r&oacute;&#380;a&#324;cow&#261; za zmar&#322;ych parafian</span></p><p class=\"c3 c12\"><span class=\"c5\"></span></p><p class=\"c3 c12\"><span class=\"c5\"></span></p><p class=\"c3 c7\"><span class=\"c4 c1\">Sobota &ndash; 10 pa&#378;dziernika</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3 c10\"><span class=\"c6 c1\">Du&#324;kowiczki</span></p><p class=\"c3\"><span class=\"c2 c1\">15.30 &nbsp; &nbsp; - R&oacute;&#380;aniec prowadzony przez R&oacute;&#380;e R&oacute;&#380;a&#324;cowe</span></p><p class=\"c3\"><span class=\"c2 c1\">16.00 &nbsp; &nbsp; - Msza &#347;w. z nauk&#261; misyjn&#261;</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Za&#322;o&#380;enie korony figurze Matki Bo&#380;ej</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Przyj&#281;cie do Szkaplerza NMP.</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3 c10\"><span class=\"c9 c1\">Ma&#322;kowice</span></p><p class=\"c3\"><span class=\"c2 c1\">17.30 &nbsp; &nbsp; - R&oacute;&#380;aniec prowadzony przez R&oacute;&#380;e R&oacute;&#380;a&#324;cowe</span></p><p class=\"c3\"><span class=\"c2 c1\">18.00 &nbsp; &nbsp; - Msza &#347;w. z nauk&#261; misyjn&#261;</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span class=\"c1\">- </span><span class=\"c2 c1\">Przyj&#281;cie do Szkaplerza NMP.</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3\"><span class=\"c2 c1\">21.00 &nbsp; &nbsp; - Apel Jasnog&oacute;rski</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3 c7\"><span class=\"c4 c1\">Niedziela &ndash; 11 pa&#378;dziernika</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3 c10\"><span class=\"c9 c1\">Ma&#322;kowice</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp;8.00 &nbsp; &nbsp; - Msza &#347;w. z nauk&#261; misyjn&#261;</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3 c10\"><span class=\"c6 c1\">Du&#324;kowiczki</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp;9.00 &nbsp; &nbsp; - R&oacute;&#380;aniec prowadzony przez R&oacute;&#380;e R&oacute;&#380;a&#324;cowe</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp;9.30 &nbsp; &nbsp; - Msza &#347;w. z nauk&#261; misyjn&#261;</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Nabo&#380;e&#324;stwo przy Krzy&#380;u misyjnym</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3 c10\"><span class=\"c9 c1\">Ma&#322;kowice</span></p><p class=\"c3\"><span class=\"c2 c1\">11.00 &nbsp; &nbsp; - R&oacute;&#380;aniec prowadzony przez R&oacute;&#380;e R&oacute;&#380;a&#324;cowe</span></p><p class=\"c3\"><span class=\"c2 c1\">11.30 &nbsp; &nbsp; - Msza &#347;w. z nauk&#261; misyjn&#261;</span></p><p class=\"c3\"><span class=\"c2 c1\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Nabo&#380;e&#324;stwo przy Krzy&#380;u misyjnym</span></p><p class=\"c0\"><span class=\"c5\"></span></p><p class=\"c3 c7\"><span class=\"c1 c18\">Zako&#324;czenie Misji &#346;wi&#281;tych</span></p><div><p class=\"c12 c14\"><span></span></p></div></body></html>','','2015-09-27'),(4,'Życzenia','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_4_4_zyczenia.jpg\" /></center>	<br /></body><br /></head></html>','','2016-12-28'),(5,'Orszak Trzech Króli','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_4_5_trzech.jpg\" /></center>	<br /></body><br /></head></html>','','2016-12-30'),(6,'Orszak Trzech Króli','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_4_6_podz.jpg\" /></center>	<br /></body><br /></head></html>','','2017-01-07'),(11,'Galeria Orszaku Trzech Króli','<html><head><style type=\"text/css\"> body{padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;font-size:1em !important;background-color:transparent !important;}</style></head><body></body></html>','<a class=\"option\" href=\"uploads/full/menu_2_4_11_OTK01.jpg\" rel=\"shadowbox[11]\"><img src=\"uploads/thumbs/menu_2_4_11_OTK01m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_2_4_11_OTK02.jpg\" rel=\"shadowbox[11]\"><img src=\"uploads/thumbs/menu_2_4_11_OTK02m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_2_4_11_OTK03.jpg\" rel=\"shadowbox[11]\"><img src=\"uploads/thumbs/menu_2_4_11_OTK03m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_2_4_11_OTK04.jpg\" rel=\"shadowbox[11]\"><img src=\"uploads/thumbs/menu_2_4_11_OTK04m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_2_4_11_OTK05.jpg\" rel=\"shadowbox[11]\"><img src=\"uploads/thumbs/menu_2_4_11_OTK05m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_2_4_11_OTK06.jpg\" rel=\"shadowbox[11]\"><img src=\"uploads/thumbs/menu_2_4_11_OTK06m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_2_4_11_OTK07.jpg\" rel=\"shadowbox[11]\"><img src=\"uploads/thumbs/menu_2_4_11_OTK07m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_2_4_11_OTK08.jpg\" rel=\"shadowbox[11]\"><img src=\"uploads/thumbs/menu_2_4_11_OTK08m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_2_4_11_OTK09.jpg\" rel=\"shadowbox[11]\"><img src=\"uploads/thumbs/menu_2_4_11_OTK09m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_2_4_11_OTK10.jpg\" rel=\"shadowbox[11]\"><img src=\"uploads/thumbs/menu_2_4_11_OTK10m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_2_4_11_OTK11.jpg\" rel=\"shadowbox[11]\"><img src=\"uploads/thumbs/menu_2_4_11_OTK11m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_2_4_11_OTK12.jpg\" rel=\"shadowbox[11]\"><img src=\"uploads/thumbs/menu_2_4_11_OTK12m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_2_4_11_OTK13.jpg\" rel=\"shadowbox[11]\"><img src=\"uploads/thumbs/menu_2_4_11_OTK13m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_2_4_11_OTK14.jpg\" rel=\"shadowbox[11]\"><img src=\"uploads/thumbs/menu_2_4_11_OTK14m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_2_4_11_OTK15.jpg\" rel=\"shadowbox[11]\"><img src=\"uploads/thumbs/menu_2_4_11_OTK15m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_2_4_11_OTK16.jpg\" rel=\"shadowbox[11]\"><img src=\"uploads/thumbs/menu_2_4_11_OTK16m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_2_4_11_OTK17.jpg\" rel=\"shadowbox[11]\"><img src=\"uploads/thumbs/menu_2_4_11_OTK17m.jpg\" style=\"cursor:zoom-in\"></a><k></k>','2017-01-08'),(12,'Orszak Trzech Króli','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><br /><body><br /><center><img style=\"width: 650px;\" src=\"uploads/menu_2_4_12_otk.jpg\" /></center>	<br /></body><br /></head></html>','','2017-01-08');
/*!40000 ALTER TABLE `menu_2_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_3`
--

DROP TABLE IF EXISTS `menu_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` text NOT NULL,
  `plik` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_3`
--

LOCK TABLES `menu_3` WRITE;
/*!40000 ALTER TABLE `menu_3` DISABLE KEYS */;
INSERT INTO `menu_3` VALUES (1,'Matka Boża',''),(2,'Św. Maksymilian',''),(3,'Św. Józef',''),(4,'Św. Roch',''),(5,'Św. Sebastian','');
/*!40000 ALTER TABLE `menu_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_3_1`
--

DROP TABLE IF EXISTS `menu_3_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_3_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_3_1`
--

LOCK TABLES `menu_3_1` WRITE;
/*!40000 ALTER TABLE `menu_3_1` DISABLE KEYS */;
INSERT INTO `menu_3_1` VALUES (1,'Nawiedzenie Najświętszej Maryi Panny','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol.lst-kix_list_1-3{list-style-type:none}ol.lst-kix_list_1-4{list-style-type:none}ol.lst-kix_list_1-5{list-style-type:none}ol.lst-kix_list_1-6{list-style-type:none}ol.lst-kix_list_1-0{list-style-type:none}.lst-kix_list_1-4>li{counter-increment:lst-ctn-kix_list_1-4}ol.lst-kix_list_1-1{list-style-type:none}ol.lst-kix_list_1-2{list-style-type:none}ol.lst-kix_list_1-6.start{counter-reset:lst-ctn-kix_list_1-6 0}.lst-kix_list_1-1>li{counter-increment:lst-ctn-kix_list_1-1}ol.lst-kix_list_1-3.start{counter-reset:lst-ctn-kix_list_1-3 0}ol.lst-kix_list_1-2.start{counter-reset:lst-ctn-kix_list_1-2 0}ol.lst-kix_list_1-8.start{counter-reset:lst-ctn-kix_list_1-8 0}.lst-kix_list_1-0>li:before{content:\"\" counter(lst-ctn-kix_list_1-0,decimal) \". \"}ol.lst-kix_list_1-5.start{counter-reset:lst-ctn-kix_list_1-5 0}ol.lst-kix_list_1-7{list-style-type:none}.lst-kix_list_1-1>li:before{content:\"\" counter(lst-ctn-kix_list_1-1,decimal) \". \"}.lst-kix_list_1-2>li:before{content:\"\" counter(lst-ctn-kix_list_1-2,decimal) \". \"}.lst-kix_list_1-7>li{counter-increment:lst-ctn-kix_list_1-7}ol.lst-kix_list_1-8{list-style-type:none}.lst-kix_list_1-3>li:before{content:\"\" counter(lst-ctn-kix_list_1-3,decimal) \". \"}.lst-kix_list_1-4>li:before{content:\"\" counter(lst-ctn-kix_list_1-4,decimal) \". \"}ol.lst-kix_list_1-0.start{counter-reset:lst-ctn-kix_list_1-0 0}.lst-kix_list_1-0>li{counter-increment:lst-ctn-kix_list_1-0}.lst-kix_list_1-6>li{counter-increment:lst-ctn-kix_list_1-6}.lst-kix_list_1-7>li:before{content:\"\" counter(lst-ctn-kix_list_1-7,decimal) \". \"}.lst-kix_list_1-3>li{counter-increment:lst-ctn-kix_list_1-3}.lst-kix_list_1-5>li:before{content:\"\" counter(lst-ctn-kix_list_1-5,decimal) \". \"}.lst-kix_list_1-6>li:before{content:\"\" counter(lst-ctn-kix_list_1-6,decimal) \". \"}ol.lst-kix_list_1-7.start{counter-reset:lst-ctn-kix_list_1-7 0}.lst-kix_list_1-2>li{counter-increment:lst-ctn-kix_list_1-2}.lst-kix_list_1-5>li{counter-increment:lst-ctn-kix_list_1-5}.lst-kix_list_1-8>li{counter-increment:lst-ctn-kix_list_1-8}ol.lst-kix_list_1-4.start{counter-reset:lst-ctn-kix_list_1-4 0}.lst-kix_list_1-8>li:before{content:\"\" counter(lst-ctn-kix_list_1-8,decimal) \". \"}ol.lst-kix_list_1-1.start{counter-reset:lst-ctn-kix_list_1-1 0}ol{margin:0;padding:0}.c3{padding-top:0pt;text-indent:35.5pt;padding-bottom:0pt;line-height:1.0;orphans:2;widows:2;text-align:justify;direction:ltr}.c4{padding-top:0pt;text-indent:35.5pt;padding-bottom:6pt;line-height:1.0;orphans:2;widows:2;text-align:justify;direction:ltr}.c2{vertical-align:baseline;font-size:12pt;font-family:\"Times New Roman\";font-weight:normal}.c0{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.c1{vertical-align:baseline;color:#1155cc;text-decoration:underline}.c6{color:inherit;text-decoration:inherit}.c5{height:11pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:\"Arial\"}p{margin:0;color:#000000;font-size:11pt;font-family:\"Arial\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c0\"><p class=\"c4\"><span class=\"c2\">Naszej wsp&oacute;lnoty parafialnej, symbolem i &bdquo;domem&rdquo; jest ko&#347;ci&oacute;&#322; po&#347;wi&#281;cony w roku 1939, gdzie patronuje nam Matka Bo&#380;a w tajemnicy Nawiedzenia.</span></p><p class=\"c4\"><span class=\"c2\">To &#347;wi&#281;to liturgiczne obchodzone w Ko&#347;ciele katolickim 31 maja jest dla nas Uroczysto&#347;ci&#261; Odpustow&#261;.</span></p><p class=\"c4\"><span class=\"c2\">Nawiedzenie Naj&#347;wi&#281;tszej Maryi Panny &ndash; Powsta&#322;o w 1263 z inicjatywy &#346;w. Bonawentury i a&#380; do Reformy liturgicznej Paw&#322;a VI wprowadzonej w 1969 obchodzono je 2 lipca. Papie&#380; Bonifacy IX poleci&#322; je obchodzi&#263; w 1389, a oficjalnie ustanowione zosta&#322;o w 1441 podczas Soboru w Bazylei. W 1969 Papie&#380; Pawe&#322; VI przesun&#261;&#322; obchody tego &#347;wi&#281;ta na dzie&#324; 31 maja, by wypada&#322;o ono po &#347;wi&#281;cie Zwiastowania Naj&#347;wi&#281;tszej Marii Panny (25 Marca), a przed Narodzeniem &#347;w. Jana Chrzciciela (24 czerwca), co bardziej odpowiada relacji ewangelicznej.</span></p><p class=\"c4\"><span class=\"c2\">&#346;wi&#281;to powsta&#322;o z rozwa&#380;a&#324; pi&#281;knej tajemnicy &#380;ycia Maryi, mianowicie Jej spotkania ze &#347;w. El&#380;biet&#261; przed narodzeniem &#347;w. Jana Chrzciciela. Teksty liturgiczne przybli&#380;aj&#261; nam to zbawcze wydarzenie. W kolekcie mszalnej wspomina si&#281;, &#380;e za natchnieniem Ducha &#346;wi&#281;tego Maryja w swoim &#322;onie nosi&#322;a Bo&#380;ego Syna i nawiedzi&#322;a &#347;w. El&#380;biet&#281;. Prosimy, aby&#347;my pos&#322;uszni Duchowi &#346;wi&#281;temu zawsze wraz z Maryj&#261; mogli wielbi&#263; Boga w Tr&oacute;jcy &#346;wi&#281;tej Jedynego.</span></p><p class=\"c4\"><span class=\"c2\">&#346;w. &#321;ukasz (1, 39-56) w Ewangelii opisuje scen&#281; spotkania Maryi z El&#380;biet&#261;, nast&#281;pnie podaje hymn Uwielbiaj duszo moja Pana, w kt&oacute;rym Maryja wys&#322;awia Boga za wielkie Jego mi&#322;osierdzie i za wybranie Jej do wielkich rzeczy w dziele zbawienia. Ewangelista przy ko&#324;cu swojej relacji informuje, &#380;e Maryja oko&#322;o trzech miesi&#281;cy pozosta&#322;a u &#347;w. El&#380;biety, pomagaj&#261;c jej, jak mo&#380;na przypuszcza&#263;, w domowych zaj&#281;ciach.</span></p><p class=\"c4\"><span class=\"c2\">Cenny jest fragment homilii &#347;w. Bedy Czcigodnego, kap&#322;ana, benedyktyna (+735) po&#347;wi&#281;cony rozwa&#380;aniu tre&#347;ci Magnificat. Autor zach&#281;ca nas do cz&#281;stego wypowiadania tego &#347;wi&#281;tego tekstu: &bdquo;(...) pi&#281;kny zaprawd&#281; i wielce u&#380;yteczny powsta&#322; w Ko&#347;ciele zwyczaj &#347;piewania przez wszystkich hymnu Maryi ka&#380;dego dnia w wieczornej modlitwie chwa&#322;y, by cz&#281;stym wspominaniem Wcielenia Pa&#324;skiego umys&#322;y do pobo&#380;no&#347;ci zapali&#263; oraz utwierdzi&#263; je w cnotach wielokrotnym rozwa&#380;aniem przyk&#322;adu &#380;ycia Bo&#380;ej Rodzicielki. I bardzo dobrze jest odmawia&#263; ten hymn wieczorem, albowiem utrudzona ca&#322;ym dniem i poch&#322;oni&#281;ta jego k&#322;opotami dusza potrzebuje wraz z nadchodz&#261;cym czasem spoczynku wewn&#281;trznego w sobie skupienia&rdquo; (LG, t. II).</span></p><p class=\"c4\"><span class=\"c2\">Lud polski w swojej ludowej religijno&#347;ci nazywa&#322; Maryj&#281; w tajemnicy Nawiedzenia Matk&#261; Bo&#380;&#261; Jagodn&#261;. W tym bowiem czasie (2 VII) znajdowa&#322;y si&#281; w naszych lasach jagody. Wed&#322;ug legendy Maryja sz&#322;a sama do El&#380;biety odludnymi &#347;cie&#380;kami. Na rozgrzanych s&#322;o&#324;cem ska&#322;ach mo&#380;na by&#322;o spotka&#263; jaszczurki, a jadowite skorpiony nieraz wychodzi&#322;y na drog&#281;, po kt&oacute;rej w&#281;drowa&#322;a Matka Bo&#380;a. Nic nie mog&#322;y jednak z&#322;ego uczyni&#263; Maryi, gdy&#380; potraci&#322;y wzrok. Matka Bo&#380;a zatrzymywa&#322;a si&#281; w drodze, aby po&#380;ywi&#263; si&#281; rosn&#261;cymi tam jagodami. Tradycja ludowa zakazywa&#322;a w dniu 2 lipca zrywania jag&oacute;d i innych owoc&oacute;w. Nie wolno by&#322;o wi&#281;c je&#347;&#263; wi&#347;ni, czere&#347;ni, malin, poziomek, je&#380;yn, porzeczek, agrestu, jag&oacute;d ani &#380;adnych innych le&#347;nych owoc&oacute;w. Powinno by&#263; tego dnia du&#380;o jag&oacute;d, kt&oacute;rymi &#380;ywi&#322;a si&#281; Naj&#347;wi&#281;tsza Maryja. Ten kto z&#322;amie to ludowe prawo, nie uczci Maryi, ale te&#380; mo&#380;e narazi&#263; siebie na bolesne uk&#261;szenie &#380;mii lub innych gad&oacute;w (E. Ferenc). </span></p><p class=\"c4\"><span class=\"c2\">Niech to pi&#281;kne &#347;wi&#281;to a nasza Uroczysto&#347;&#263; sk&#322;ania nas do uwielbienia Boga za dar Maryi i Jej Syna, naszego Zbawiciela. Dzi&#281;kujmy te&#380; za &#322;ask&#281; wiary i pro&#347;my o jej umocnienie. Za przyk&#322;adem Maryi spieszmy z pomoc&#261; potrzebuj&#261;cym, szczeg&oacute;lnie w okresie nasilaj&#261;cych si&#281; prac polowych. B&#281;d&#261;c cz&#281;&#347;ciej w&#347;r&oacute;d pi&#281;knej naszej polskiej przyrody, umiejmy w niej dostrzec &#347;lady dobrego Boga. Zano&#347;my te&#380; do Pana nasze gor&#261;ce pro&#347;by:</span></p><p class=\"c3\"><span class=\"c2\">&bdquo;(...) Ty, co&#347; do domu El&#380;biety</span></p><p class=\"c3\"><span class=\"c2\">Przynios&#322;a rado&#347;&#263; bezmiern&#261;. </span></p><p class=\"c3\"><span class=\"c2\">Przyjd&#378;, opiekunko ludzko&#347;ci, </span></p><p class=\"c3\"><span class=\"c2\">I obmyj z brudu sumienia (...)</span></p><p class=\"c3\"><span class=\"c2\">Uka&#380; nam drog&#281; w&#322;a&#347;ciw&#261;</span></p><p class=\"c3\"><span class=\"c2\">I &#380;yciem obdarz niewinnym.&rdquo;</span></p><p class=\"c4\"><span class=\"c2\">(LG, t. II)</span></p><p class=\"c4 c5\"><span class=\"c2\"></span></p><p class=\"c4\"><span class=\"c2\">Czym jest odpust?</span></p><p class=\"c4\"><span class=\"c2\">Odpust to darowanie kary wobec Boga za grzechy odpuszczone ju&#380; w sakramencie spowiedzi, co do winy. Mo&#380;e go uzyska&#263; wierny, odpowiednio przygotowany - po wype&#322;nieniu pewnych okre&#347;lonych warunk&oacute;w - przy pomocy Ko&#347;cio&#322;a, kt&oacute;ry jako s&#322;u&#380;ebnica odkupienia, autorytatywnie rozporz&#261;dza i dysponuje skarbcem zado&#347;&#263;uczynienia Chrystusa i &#346;wi&#281;tych. Odpustami s&#261; czynno&#347;ci wiernych, w wielu wypadkach &#322;&#261;cz&#261;ce si&#281; z jakim&#347; miejscem (np. ko&#347;cio&#322;em) lub z rzecz&#261; (np. r&oacute;&#380;a&#324;cem).</span></p><p class=\"c4\"><span class=\"c2\">Odpust cz&#261;stkowy albo zupe&#322;ny, zale&#380;nie od tego, czy uwalnia od kary doczesnej nale&#380;nej za grzechy w cz&#281;&#347;ci, czy w ca&#322;o&#347;ci. Cz&#261;stkowy jest oznaczany bez okre&#347;lania dni lub lat. Kryterium miary tego odpustu stanowi wysi&#322;ek i gorliwo&#347;&#263; z jak&#261; kto&#347; wykonuje dzie&#322;o obdarzone tym odpustem. Mianowicie zyskuj&#261;cemu odpust Ko&#347;ci&oacute;&#322; przydziela ze swego skarbca tyle darowania kary doczesnej, ile on sam jej otrzymuje przez wykonanie dobrej czynno&#347;ci. St&#261;d tym wi&#281;cej b&#281;dzie darowania, im wi&#281;cej gorliwo&#347;ci oka&#380;e osoba zyskuj&#261;ca odpust.</span></p><p class=\"c4\"><span class=\"c2\">Odpusty zar&oacute;wno cz&#261;stkowe jak i zupe&#322;ne mog&#261; by&#263; zawsze ofiarowane za zmar&#322;ych na spos&oacute;b wstawiennictwa. Nie mo&#380;na natomiast przekazywa&#263; ich owoc&oacute;w &nbsp;&#380;ywym.</span></p><p class=\"c4\"><span class=\"c2\">Odpust zupe&#322;ny mo&#380;na uzyska&#263; tylko jeden w ci&#261;gu dnia. Jednak&#380;e w momencie &#347;mierci wierny mo&#380;e uzyska&#263; odpust zupe&#322;ny, chocia&#380;by tego dnia zyska&#322; ju&#380; inny odpust zupe&#322;ny. Odpust cz&#261;stkowy mo&#380;na uzyska&#263; kilka razy dziennie, chyba &#380;e co innego jest wyra&#378;nie zaznaczone.</span></p><p class=\"c4\"><span class=\"c2\">Do uzyskania odpustu zupe&#322;nego wymaga si&#281; wykonania dzie&#322;a obdarzonego odpustem, oraz wype&#322;nienia trzech nast&#281;puj&#261;cych warunk&oacute;w:</span></p><p class=\"c3\"><span class=\"c2\">1) spowied&#378; sakramentalna,</span></p><p class=\"c3\"><span class=\"c2\">2) Komunia eucharystyczna,</span></p><p class=\"c4\"><span class=\"c2\">3) modlitwa w intencjach Ojca &#346;wi&#281;tego.</span></p><p class=\"c4\"><span class=\"c2\">Wi&#281;cej na temat mo&#380;liwo&#347;ci zyskania odpust&oacute;w znajdziesz na stronie internetowej: </span><span class=\"c1\"><a target=\"_parent\" class=\"c6\" href=\"https://www.google.com/url?q=http://www.opoka.org.pl/slownik/odpust.html%23&amp;sa=D&amp;usg=AFQjCNHn4LdI9iSzFxSGh51d6gIPDXFJZw\">http://www.opoka.org.pl/slownik/odpust.html#</a></span></p></body></html>','','2015-09-12');
/*!40000 ALTER TABLE `menu_3_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_3_2`
--

DROP TABLE IF EXISTS `menu_3_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_3_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_3_2`
--

LOCK TABLES `menu_3_2` WRITE;
/*!40000 ALTER TABLE `menu_3_2` DISABLE KEYS */;
INSERT INTO `menu_3_2` VALUES (1,'Św. Maksymilian Maria Kolbe','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">@import url(\"https://themes.googleusercontent.com/fonts/css?kit=Su9cPBdaKucZGyXzr7BkXw\");ol{margin:0;padding:0}.c3{padding-top:35.4pt;padding-bottom:0pt;line-height:1.0;orphans:2;widows:2;text-align:left;direction:ltr;height:12pt}.c4{padding-top:0pt;text-indent:35.5pt;padding-bottom:6pt;line-height:1.0;orphans:2;widows:2;text-align:justify;direction:ltr}.c5{padding-top:0pt;padding-bottom:35.4pt;line-height:1.0;orphans:2;widows:2;text-align:left;direction:ltr;height:12pt}.c1{color:#000000;font-weight:normal;text-decoration:none;vertical-align:baseline;font-size:12pt;font-style:italic}.c0{color:#000000;font-weight:normal;text-decoration:none;vertical-align:baseline;font-size:12pt;font-style:normal}.c2{background-color:#ffffff;max-width:453.3pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.0;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:12pt;font-family:\"Times New Roman\"}p{margin:0;color:#000000;font-size:12pt;font-family:\"Times New Roman\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c2\"><div><p class=\"c3\"><span></span></p></div><p class=\"c4\"><span class=\"c0\">&#346;</span><span class=\"c0\">w. Maksymilian pozostanie w dziejach Ko</span><span class=\"c0\">&#347;</span><span class=\"c0\">cio</span><span class=\"c0\">&#322;</span><span class=\"c0\">a w Polsce jako jedna z najpi</span><span class=\"c0\">&#281;</span><span class=\"c0\">kniejszych jego postaci. Cz</span><span class=\"c0\">&#322;</span><span class=\"c0\">owiek, kt</span><span class=\"c0\">&oacute;</span><span class=\"c0\">ry zaufa</span><span class=\"c0\">&#322; </span><span class=\"c0\">Niepokalanej, nie zawi</span><span class=\"c0\">&oacute;</span><span class=\"c0\">d</span><span class=\"c0\">&#322; </span><span class=\"c0\">si</span><span class=\"c0\">&#281;</span><span class=\"c0\">, bo zawie</span><span class=\"c0\">&#347;&#263; </span><span class=\"c0\">si</span><span class=\"c0\">&#281; </span><span class=\"c0\">nie m</span><span class=\"c0\">&oacute;</span><span class=\"c0\">g</span><span class=\"c0\">&#322;</span><span class=\"c0\">. </span><span class=\"c0\">&#379;</span><span class=\"c0\">ycie </span><span class=\"c0\">&#347;</span><span class=\"c0\">wi</span><span class=\"c0\">&#281;</span><span class=\"c0\">tego Maksymiliana daje </span><span class=\"c0\">&#347;</span><span class=\"c0\">wiadectwo prawdzie, jak</span><span class=\"c0\">&#261; </span><span class=\"c0\">g</span><span class=\"c0\">&#322;</span><span class=\"c0\">osi</span><span class=\"c0\">&#322; </span><span class=\"c0\">i jest zgodne z </span><span class=\"c0\">&bdquo;</span><span class=\"c0\">regulaminem </span><span class=\"c0\">&#380;</span><span class=\"c0\">ycia</span><span class=\"c0\">&rdquo;</span><span class=\"c0\">, kt</span><span class=\"c0\">&oacute;</span><span class=\"c0\">ry sobie u</span><span class=\"c0\">&#322;</span><span class=\"c0\">o</span><span class=\"c0\">&#380;</span><span class=\"c0\">y</span><span class=\"c0\">&#322;</span><span class=\"c0\">: </span><span class=\"c1\">&bdquo;</span><span class=\"c1\">Musz</span><span class=\"c1\">&#281; </span><span class=\"c1\">by</span><span class=\"c1\">&#263; &#347;</span><span class=\"c1\">wi</span><span class=\"c1\">&#281;</span><span class=\"c1\">tym jak najwi</span><span class=\"c1\">&#281;</span><span class=\"c1\">kszym</span><span class=\"c1\">&rdquo;</span><span class=\"c0\">. W naszej parafii ku jego czci po</span><span class=\"c0\">&#347;</span><span class=\"c0\">wi</span><span class=\"c0\">&#281;</span><span class=\"c0\">cono ko</span><span class=\"c0\">&#347;</span><span class=\"c0\">ci</span><span class=\"c0\">&oacute;&#322; </span><span class=\"c0\">w Du</span><span class=\"c0\">&#324;</span><span class=\"c0\">kowiczkach.</span></p><p class=\"c4\"><span class=\"c0\">&#346;</span><span class=\"c0\">wi</span><span class=\"c0\">&#281;</span><span class=\"c0\">to</span><span class=\"c0\">&#347;&#263; </span><span class=\"c0\">ojca Maksymiliana zosta</span><span class=\"c0\">&#322;</span><span class=\"c0\">a uwie</span><span class=\"c0\">&#324;</span><span class=\"c0\">czona m</span><span class=\"c0\">&#281;</span><span class=\"c0\">cze</span><span class=\"c0\">&#324;</span><span class=\"c0\">sk</span><span class=\"c0\">&#261; &#347;</span><span class=\"c0\">mierci</span><span class=\"c0\">&#261;</span><span class=\"c0\">. </span><span class=\"c1\">&bdquo;</span><span class=\"c1\">Wsz</span><span class=\"c1\">&#281;</span><span class=\"c1\">dzie imi</span><span class=\"c1\">&#281; </span><span class=\"c1\">Maksymiliana wymawia si</span><span class=\"c1\">&#281; </span><span class=\"c1\">na b</span><span class=\"c1\">&#322;</span><span class=\"c1\">ogos</span><span class=\"c1\">&#322;</span><span class=\"c1\">awie</span><span class=\"c1\">&#324;</span><span class=\"c1\">stwo, szcz</span><span class=\"c1\">&#281;&#347;</span><span class=\"c1\">liw</span><span class=\"c1\">&#261; </span><span class=\"c1\">wr</span><span class=\"c1\">&oacute;&#380;</span><span class=\"c1\">b</span><span class=\"c1\">&#281;</span><span class=\"c1\">, i zachowuje si</span><span class=\"c1\">&#281; </span><span class=\"c1\">je w wiecznej pami</span><span class=\"c1\">&#281;</span><span class=\"c1\">ci</span><span class=\"c1\">&rdquo;</span><span class=\"c0\">&nbsp;- czytamy w oficjalnej petycji rozpoczynaj</span><span class=\"c0\">&#261;</span><span class=\"c0\">cej proces beatyfikacyjny, zako</span><span class=\"c0\">&#324;</span><span class=\"c0\">czony za papie</span><span class=\"c0\">&#380;</span><span class=\"c0\">a Paw</span><span class=\"c0\">&#322;</span><span class=\"c0\">a VI. 10 pa</span><span class=\"c0\">&#378;</span><span class=\"c0\">dziernika 1982 roku papie</span><span class=\"c0\">&#380; </span><span class=\"c0\">Jan Pawe</span><span class=\"c0\">&#322; </span><span class=\"c0\">II zaliczy</span><span class=\"c0\">&#322; </span><span class=\"c0\">go w poczet </span><span class=\"c0\">&#347;</span><span class=\"c0\">wi</span><span class=\"c0\">&#281;</span><span class=\"c0\">tych. Powiedzia</span><span class=\"c0\">&#322; </span><span class=\"c0\">o </span><span class=\"c0\">&#347;</span><span class=\"c0\">wi</span><span class=\"c0\">&#281;</span><span class=\"c0\">tym Maksymilianie znamienne s</span><span class=\"c0\">&#322;</span><span class=\"c0\">owa: </span><span class=\"c1\">&bdquo;</span><span class=\"c1\">Je</span><span class=\"c1\">&#380;</span><span class=\"c1\">eli dzieje narod</span><span class=\"c1\">&oacute;</span><span class=\"c1\">w t</span><span class=\"c1\">&#322;</span><span class=\"c1\">umaczy si</span><span class=\"c1\">&#281; </span><span class=\"c1\">r</span><span class=\"c1\">&oacute;</span><span class=\"c1\">wnie</span><span class=\"c1\">&#380; </span><span class=\"c1\">wk</span><span class=\"c1\">&#322;</span><span class=\"c1\">adem </span><span class=\"c1\">&#347;</span><span class=\"c1\">wi</span><span class=\"c1\">&#281;</span><span class=\"c1\">tych, kt</span><span class=\"c1\">&oacute;</span><span class=\"c1\">rych wyda</span><span class=\"c1\">&#322;</span><span class=\"c1\">y, to dziej</span><span class=\"c1\">&oacute;</span><span class=\"c1\">w Polski w XX stuleciu nie b</span><span class=\"c1\">&#281;</span><span class=\"c1\">dzie mo</span><span class=\"c1\">&#380;</span><span class=\"c1\">na zrozumie</span><span class=\"c1\">&#263; </span><span class=\"c1\">bez postaci Ojca Maksymiliana, m</span><span class=\"c1\">&#281;</span><span class=\"c1\">czennika z O</span><span class=\"c1\">&#347;</span><span class=\"c1\">wi</span><span class=\"c1\">&#281;</span><span class=\"c1\">cimia</span><span class=\"c1\">&rdquo;</span><span class=\"c0\">, a w czasie swojej drugiej pielgrzymki do Ojczyzny z</span><span class=\"c0\">&#322;</span><span class=\"c0\">o</span><span class=\"c0\">&#380;</span><span class=\"c0\">y</span><span class=\"c0\">&#322; </span><span class=\"c0\">mu ho</span><span class=\"c0\">&#322;</span><span class=\"c0\">d, w jego sanktuarium w Niepokalanowie.</span></p><p class=\"c4\"><span class=\"c0\">Pi</span><span class=\"c0\">&#281;</span><span class=\"c0\">knie napisa</span><span class=\"c0\">&#322;</span><span class=\"c0\">a tak</span><span class=\"c0\">&#380;</span><span class=\"c0\">e o ojcu Kolbe Maria K</span><span class=\"c0\">&#261;</span><span class=\"c0\">czkowska: </span><span class=\"c1\">&bdquo;</span><span class=\"c1\">Cho</span><span class=\"c1\">&#263; </span><span class=\"c1\">wiatr rozmi</span><span class=\"c1\">&oacute;</span><span class=\"c1\">t</span><span class=\"c1\">&#322; </span><span class=\"c1\">prochy spalonego w krematorium cia</span><span class=\"c1\">&#322;</span><span class=\"c1\">a </span><span class=\"c1\">&#347;</span><span class=\"c1\">wi</span><span class=\"c1\">&#281;</span><span class=\"c1\">tego Maksymiliana - jego oczy patrz</span><span class=\"c1\">&#261; </span><span class=\"c1\">z wysoko</span><span class=\"c1\">&#347;</span><span class=\"c1\">ci strzelistych kolumn Bazyliki </span><span class=\"c1\">&#347;</span><span class=\"c1\">wiata, a jego mi</span><span class=\"c1\">&#322;</span><span class=\"c1\">o</span><span class=\"c1\">&#347;&#263; </span><span class=\"c1\">heroiczna, realizuj</span><span class=\"c1\">&#261;</span><span class=\"c1\">ca si</span><span class=\"c1\">&#281; </span><span class=\"c1\">w m</span><span class=\"c1\">&#281;</span><span class=\"c1\">cze</span><span class=\"c1\">&#324;</span><span class=\"c1\">skiej ofierze, patronuje ca</span><span class=\"c1\">&#322;</span><span class=\"c1\">ej ziemi jako wska</span><span class=\"c1\">&#378;</span><span class=\"c1\">nik i program na teraz i na najbli</span><span class=\"c1\">&#380;</span><span class=\"c1\">sze wieki. Na wieki wszystkie</span><span class=\"c1\">&rdquo;</span><span class=\"c0\">(</span><span class=\"c0\">&bdquo;</span><span class=\"c0\">Ojciec Kolbe</span><span class=\"c0\">&rdquo;</span><span class=\"c0\">, s. 190).</span></p><div><p class=\"c5\"><span></span></p></div></body></html>','','2015-09-27');
/*!40000 ALTER TABLE `menu_3_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_3_3`
--

DROP TABLE IF EXISTS `menu_3_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_3_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_3_3`
--

LOCK TABLES `menu_3_3` WRITE;
/*!40000 ALTER TABLE `menu_3_3` DISABLE KEYS */;
INSERT INTO `menu_3_3` VALUES (2,'Oblubieniec Najświętszej Marii Panny','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">@import url(\"https://themes.googleusercontent.com/fonts/css?kit=Su9cPBdaKucZGyXzr7BkXw\");ol{margin:0;padding:0}.c3{padding-top:0pt;padding-bottom:35.4pt;line-height:1.0;orphans:2;widows:2;text-align:left;direction:ltr;height:12pt}.c2{padding-top:0pt;text-indent:35.5pt;padding-bottom:3pt;line-height:1.0;orphans:2;widows:2;text-align:justify;direction:ltr}.c4{padding-top:35.4pt;padding-bottom:0pt;line-height:1.0;orphans:2;widows:2;text-align:left;direction:ltr;height:12pt}.c0{color:#000000;font-weight:normal;text-decoration:none;vertical-align:baseline;font-size:12pt;font-style:normal}.c1{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.0;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:12pt;font-family:\"Times New Roman\"}p{margin:0;color:#000000;font-size:12pt;font-family:\"Times New Roman\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c1\"><div><p class=\"c4\"><span></span></p></div><p class=\"c2\"><span class=\"c0\">&#346;</span><span class=\"c0\">wi</span><span class=\"c0\">&#281;</span><span class=\"c0\">temu J</span><span class=\"c0\">&oacute;</span><span class=\"c0\">zefowi Ewangelie po</span><span class=\"c0\">&#347;</span><span class=\"c0\">wi</span><span class=\"c0\">&#281;</span><span class=\"c0\">caj</span><span class=\"c0\">&#261; &#322;&#261;</span><span class=\"c0\">cznie 26 wierszy, a jego imi</span><span class=\"c0\">&#281; </span><span class=\"c0\">wymieniaj</span><span class=\"c0\">&#261; </span><span class=\"c0\">14 razy. J</span><span class=\"c0\">&oacute;</span><span class=\"c0\">zef pochodzi</span><span class=\"c0\">&#322; </span><span class=\"c0\">z rodu kr</span><span class=\"c0\">&oacute;</span><span class=\"c0\">la Dawida. Wykazuje to </span><span class=\"c0\">&#347;</span><span class=\"c0\">w. Mateusz w genealogii przodk</span><span class=\"c0\">&oacute;</span><span class=\"c0\">w </span><span class=\"c0\">&#347;</span><span class=\"c0\">w. J</span><span class=\"c0\">&oacute;</span><span class=\"c0\">zefa.</span></p><p class=\"c2\"><span class=\"c0\">Mimo wysokiego pochodzenia J</span><span class=\"c0\">&oacute;</span><span class=\"c0\">zef nie posiada</span><span class=\"c0\">&#322; &#380;</span><span class=\"c0\">adnego maj</span><span class=\"c0\">&#261;</span><span class=\"c0\">tku. Na </span><span class=\"c0\">&#380;</span><span class=\"c0\">ycie zarabia</span><span class=\"c0\">&#322; </span><span class=\"c0\">stolarstwem i prac</span><span class=\"c0\">&#261; </span><span class=\"c0\">jako cie</span><span class=\"c0\">&#347;</span><span class=\"c0\">la. Zdaniem </span><span class=\"c0\">&#347;</span><span class=\"c0\">w. Justyna, kt</span><span class=\"c0\">&oacute;</span><span class=\"c0\">ry </span><span class=\"c0\">&#380;</span><span class=\"c0\">y</span><span class=\"c0\">&#322; </span><span class=\"c0\">bardzo blisko czas</span><span class=\"c0\">&oacute;</span><span class=\"c0\">w Aposto</span><span class=\"c0\">&#322;&oacute;</span><span class=\"c0\">w, </span><span class=\"c0\">&#347;</span><span class=\"c0\">w. J</span><span class=\"c0\">&oacute;</span><span class=\"c0\">zef wykonywa</span><span class=\"c0\">&#322; </span><span class=\"c0\">sochy drewniane i jarzma na wo</span><span class=\"c0\">&#322;</span><span class=\"c0\">y. Przygotowywa</span><span class=\"c0\">&#322; </span><span class=\"c0\">wi</span><span class=\"c0\">&#281;</span><span class=\"c0\">c narz</span><span class=\"c0\">&#281;</span><span class=\"c0\">dzia gospodarcze i rolnicze. Autor Pseudoewangelii Filipa (w. III) nazywa J</span><span class=\"c0\">&oacute;</span><span class=\"c0\">zefa stolarzem. Zar</span><span class=\"c0\">&#281;</span><span class=\"c0\">czony z Maryj</span><span class=\"c0\">&#261;</span><span class=\"c0\">, J</span><span class=\"c0\">&oacute;</span><span class=\"c0\">zef stan</span><span class=\"c0\">&#261;&#322; </span><span class=\"c0\">przed tajemnic</span><span class=\"c0\">&#261; </span><span class=\"c0\">cudownego pocz</span><span class=\"c0\">&#281;</span><span class=\"c0\">cia. </span><span class=\"c0\">&#346;</span><span class=\"c0\">w. J</span><span class=\"c0\">&oacute;</span><span class=\"c0\">zef nie by</span><span class=\"c0\">&#322; </span><span class=\"c0\">wed</span><span class=\"c0\">&#322;</span><span class=\"c0\">ug cia</span><span class=\"c0\">&#322;</span><span class=\"c0\">a ojcem Chrystusa. By</span><span class=\"c0\">&#322; </span><span class=\"c0\">nim jednak wed</span><span class=\"c0\">&#322;</span><span class=\"c0\">ug prawa </span><span class=\"c0\">&#380;</span><span class=\"c0\">ydowskiego jako prawomocny ma</span><span class=\"c0\">&#322;&#380;</span><span class=\"c0\">onek Maryi. Chocia</span><span class=\"c0\">&#380; </span><span class=\"c0\">wi</span><span class=\"c0\">&#281;</span><span class=\"c0\">c Maryja porodzi</span><span class=\"c0\">&#322;</span><span class=\"c0\">a Pana Jezusa dziewiczo, to jednak wobec prawa </span><span class=\"c0\">&#380;</span><span class=\"c0\">ydowskiego i otoczenia </span><span class=\"c0\">&#347;</span><span class=\"c0\">w. J</span><span class=\"c0\">&oacute;</span><span class=\"c0\">zef by</span><span class=\"c0\">&#322; </span><span class=\"c0\">uwa</span><span class=\"c0\">&#380;</span><span class=\"c0\">any za ojca Pana Jezusa. Tak go te</span><span class=\"c0\">&#380; </span><span class=\"c0\">nazywaj</span><span class=\"c0\">&#261; </span><span class=\"c0\">Ewangelie.</span></p><p class=\"c2\"><span class=\"c0\">J</span><span class=\"c0\">&oacute;</span><span class=\"c0\">zef postanowi</span><span class=\"c0\">&#322; </span><span class=\"c0\">dyskretnie si</span><span class=\"c0\">&#281; </span><span class=\"c0\">usun</span><span class=\"c0\">&#261;&#263; </span><span class=\"c0\">z </span><span class=\"c0\">&#380;</span><span class=\"c0\">ycia Maryi, by nie narazi</span><span class=\"c0\">&#263; </span><span class=\"c0\">jej na zha</span><span class=\"c0\">&#324;</span><span class=\"c0\">bienie i obmowy. Wprowadzony jednak przez anio</span><span class=\"c0\">&#322;</span><span class=\"c0\">a w tajemnic</span><span class=\"c0\">&#281; </span><span class=\"c0\">wcielenia, wzi</span><span class=\"c0\">&#261;&#322; </span><span class=\"c0\">Maryj</span><span class=\"c0\">&#281; </span><span class=\"c0\">do siebie, do domu w Nazarecie (Mt 1-2; 13, 55; </span><span class=\"c0\">&#321;</span><span class=\"c0\">k 1-2). Podporz</span><span class=\"c0\">&#261;</span><span class=\"c0\">dkowuj</span><span class=\"c0\">&#261;</span><span class=\"c0\">c si</span><span class=\"c0\">&#281; </span><span class=\"c0\">dekretowi o spisie ludno</span><span class=\"c0\">&#347;</span><span class=\"c0\">ci, uda</span><span class=\"c0\">&#322; </span><span class=\"c0\">si</span><span class=\"c0\">&#281; </span><span class=\"c0\">z Ni</span><span class=\"c0\">&#261; </span><span class=\"c0\">do Betlejem, gdzie urodzi</span><span class=\"c0\">&#322; </span><span class=\"c0\">si</span><span class=\"c0\">&#281; </span><span class=\"c0\">Jezus. Po nadaniu Dziecku imienia i przedstawieniu Go w </span><span class=\"c0\">&#347;</span><span class=\"c0\">wi</span><span class=\"c0\">&#261;</span><span class=\"c0\">tyni, w obliczu prze</span><span class=\"c0\">&#347;</span><span class=\"c0\">ladowania ucieka z Matk</span><span class=\"c0\">&#261; </span><span class=\"c0\">i Dzieckiem do Egiptu. Po </span><span class=\"c0\">&#347;</span><span class=\"c0\">mierci Heroda wraca do Nazaretu.</span></p><p class=\"c2\"><span class=\"c0\">Po raz ostatni J</span><span class=\"c0\">&oacute;</span><span class=\"c0\">zef pojawia si</span><span class=\"c0\">&#281; </span><span class=\"c0\">na kartach Pisma </span><span class=\"c0\">&#346;</span><span class=\"c0\">wi</span><span class=\"c0\">&#281;</span><span class=\"c0\">tego podczas pielgrzymki z dwunastoletnim Jezusem do Jerozolimy. Przy wyst</span><span class=\"c0\">&#261;</span><span class=\"c0\">pieniu Jezusa w roli Nauczyciela nie ma ju</span><span class=\"c0\">&#380; &#380;</span><span class=\"c0\">adnej wzmianki o </span><span class=\"c0\">&#347;</span><span class=\"c0\">w. J</span><span class=\"c0\">&oacute;</span><span class=\"c0\">zefie. Wynika z tego, </span><span class=\"c0\">&#380;</span><span class=\"c0\">e prawdopodobnie ju</span><span class=\"c0\">&#380; </span><span class=\"c0\">nie </span><span class=\"c0\">&#380;</span><span class=\"c0\">y</span><span class=\"c0\">&#322;</span><span class=\"c0\">. Mia</span><span class=\"c0\">&#322; </span><span class=\"c0\">najpi</span><span class=\"c0\">&#281;</span><span class=\"c0\">kniejsz</span><span class=\"c0\">&#261; &#347;</span><span class=\"c0\">mier</span><span class=\"c0\">&#263; </span><span class=\"c0\">i pogrzeb, jaki sobie mo</span><span class=\"c0\">&#380;</span><span class=\"c0\">na na ziemi wyobrazi</span><span class=\"c0\">&#263;</span><span class=\"c0\">, gdy</span><span class=\"c0\">&#380; </span><span class=\"c0\">byli przy </span><span class=\"c0\">&#347;</span><span class=\"c0\">w. J</span><span class=\"c0\">&oacute;</span><span class=\"c0\">zefie w ostatnich chwilach jego </span><span class=\"c0\">&#380;</span><span class=\"c0\">ycia: Jezus i Maryja. Oni te</span><span class=\"c0\">&#380; </span><span class=\"c0\">urz</span><span class=\"c0\">&#261;</span><span class=\"c0\">dzili mu pogrzeb. Mo</span><span class=\"c0\">&#380;</span><span class=\"c0\">e dlatego tradycja nazwa</span><span class=\"c0\">&#322;</span><span class=\"c0\">a go patronem dobrej </span><span class=\"c0\">&#347;</span><span class=\"c0\">mierci.</span></p><p class=\"c2\"><span class=\"c0\">Ikonografia zwyk</span><span class=\"c0\">&#322;</span><span class=\"c0\">a przedstawia</span><span class=\"c0\">&#263; &#347;</span><span class=\"c0\">w. J</span><span class=\"c0\">&oacute;</span><span class=\"c0\">zefa jako starca. W rzeczywisto</span><span class=\"c0\">&#347;</span><span class=\"c0\">ci </span><span class=\"c0\">&#347;</span><span class=\"c0\">w. J</span><span class=\"c0\">&oacute;</span><span class=\"c0\">zef by</span><span class=\"c0\">&#322; </span><span class=\"c0\">m</span><span class=\"c0\">&#322;</span><span class=\"c0\">odzie</span><span class=\"c0\">&#324;</span><span class=\"c0\">cem w pe</span><span class=\"c0\">&#322;</span><span class=\"c0\">ni m</span><span class=\"c0\">&#281;</span><span class=\"c0\">skiej urody i si</span><span class=\"c0\">&#322;</span><span class=\"c0\">. Sztuka chrze</span><span class=\"c0\">&#347;</span><span class=\"c0\">cija</span><span class=\"c0\">&#324;</span><span class=\"c0\">ska zostawi</span><span class=\"c0\">&#322;</span><span class=\"c0\">a wiele tysi</span><span class=\"c0\">&#281;</span><span class=\"c0\">cy wizerunk</span><span class=\"c0\">&oacute;</span><span class=\"c0\">w </span><span class=\"c0\">&#347;</span><span class=\"c0\">w. J</span><span class=\"c0\">&oacute;</span><span class=\"c0\">zefa w rze</span><span class=\"c0\">&#378;</span><span class=\"c0\">bie i w malarstwie.</span></p><p class=\"c2\"><span class=\"c0\">Ojcowie i pisarze Ko</span><span class=\"c0\">&#347;</span><span class=\"c0\">cio</span><span class=\"c0\">&#322;</span><span class=\"c0\">a podkre</span><span class=\"c0\">&#347;</span><span class=\"c0\">laj</span><span class=\"c0\">&#261;</span><span class=\"c0\">, </span><span class=\"c0\">&#380;</span><span class=\"c0\">e do tak bliskiego </span><span class=\"c0\">&#380;</span><span class=\"c0\">ycia z Jezusem i Maryj</span><span class=\"c0\">&#261; </span><span class=\"c0\">Opatrzno</span><span class=\"c0\">&#347;&#263; </span><span class=\"c0\">wybra</span><span class=\"c0\">&#322;</span><span class=\"c0\">a m</span><span class=\"c0\">&#281;&#380;</span><span class=\"c0\">a o niezwyk</span><span class=\"c0\">&#322;</span><span class=\"c0\">ej cnocie. Dlatego Ko</span><span class=\"c0\">&#347;</span><span class=\"c0\">ci</span><span class=\"c0\">&oacute;&#322; </span><span class=\"c0\">s</span><span class=\"c0\">&#322;</span><span class=\"c0\">usznie stawia </span><span class=\"c0\">&#347;</span><span class=\"c0\">w. J</span><span class=\"c0\">&oacute;</span><span class=\"c0\">zefa na czele wszystkich </span><span class=\"c0\">&#347;</span><span class=\"c0\">wi</span><span class=\"c0\">&#281;</span><span class=\"c0\">tych i uznaje go za swojego szczeg</span><span class=\"c0\">&oacute;</span><span class=\"c0\">lnego opiekuna.</span></p><div><p class=\"c3\"><span></span></p></div></body></html>','','2015-09-27');
/*!40000 ALTER TABLE `menu_3_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_3_4`
--

DROP TABLE IF EXISTS `menu_3_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_3_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_3_4`
--

LOCK TABLES `menu_3_4` WRITE;
/*!40000 ALTER TABLE `menu_3_4` DISABLE KEYS */;
INSERT INTO `menu_3_4` VALUES (8,'Św. Roch','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c2{padding-top:35.4pt;padding-bottom:0pt;line-height:1.0;orphans:2;widows:2;text-align:left;direction:ltr;height:12pt}.c3{padding-top:0pt;padding-bottom:35.4pt;line-height:1.0;orphans:2;widows:2;text-align:left;direction:ltr;height:12pt}.c1{text-indent:35.5pt;padding-bottom:6pt;orphans:2;widows:2;text-align:justify;direction:ltr}.c4{background-color:#ffffff;max-width:453.3pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.c0{font-style:italic}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.0;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:12pt;font-family:\"Times New Roman\"}p{margin:0;color:#000000;font-size:12pt;font-family:\"Times New Roman\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c4\"><div><p class=\"c2\"><span></span></p></div><p class=\"c1\"><span>Niewiele zachowa&#322;o si&#281; pewnych wiadomo&#347;ci o &#347;w. Rochu. Jest pewne, &#380;e zmar&#322; przed rokiem 1420, gdy&#380; wtedy pojawia si&#281; jego pierwszy &#380;ywot i pierwsze &#347;lady jego kultu. Pewne jest, &#380;e urodzi&#322; si&#281; w wieku XIV. Znana jest miejscowo&#347;&#263; jego urodzenia - Montpellier (po&#322;udniowa Francja). Rodzice Rocha mieli nale&#380;e&#263; do zamo&#380;niejszych w mie&#347;cie. Kiedy d&#322;ugi czas nie mieli dziecka, uprosili sobie syna modlitw&#261; i ja&#322;mu&#380;nami.</span></p><p class=\"c1\"><span>Roch straci&#322; rodzic&oacute;w w m&#322;odym wieku. W&oacute;wczas, id&#261;c za rad&#261; Ewangelii: </span><span class=\"c0\">&bdquo;Je&#347;li chcesz by&#263; doskona&#322;y, id&#378;, sprzedaj, co posiadasz, i rozdaj ubogim, a b&#281;dziesz mia&#322; skarb w niebie&rdquo;</span><span>&nbsp;(Mt 19, 21), pieszo, z kijem podr&oacute;&#380;nym w r&#281;ku uda&#322; si&#281; z pielgrzymk&#261; do Rzymu. Nie doszed&#322; jednak do Wiecznego Miasta, kiedy w miasteczku w&#322;oskim Acquapendente zasta&#322; epidemi&#281; d&#380;umy. Zatrzyma&#322; si&#281; tam, aby zara&#380;onym spieszy&#263; z pomoc&#261;, nie bacz&#261;c, &#380;e sam nara&#380;a si&#281; na &#347;miertelne niebezpiecze&#324;stwo. W nagrod&#281; za to heroiczne po&#347;wi&#281;cenie dla bli&#378;nich, Pan B&oacute;g mia&#322; go obdarzy&#263; &#322;ask&#261; uzdrawiania. Zjedna&#322;o mu to s&#322;aw&#281; &#347;wi&#281;tego. Uciekaj&#261;c przed otaczaj&#261;cym go t&#322;umem wielbicieli, opu&#347;ci&#322; miasto i uda&#322; si&#281; do Rzymu, gdzie sp&#281;dzi&#322; ok. 3 lat, nawiedzaj&#261;c ko&#347;cio&#322;y, opiekuj&#261;c si&#281; chorymi i ubogimi.</span></p><p class=\"c1\"><span>W drodze powrotnej do Francji zatrzyma&#322; si&#281; w Loreto. W Piacenza znowu zasta&#322; epidemi&#281; d&#380;umy. Przy pos&#322;udze chorym zarazi&#322; si&#281;. Znalaz&#322; si&#281; jednak pewien zamo&#380;ny cz&#322;owiek, kt&oacute;ry si&#281; nim zaj&#261;&#322;. Kiedy Roch wyzdrowia&#322;, uda&#322; si&#281; dalej na p&oacute;&#322;noc. Gdy jednak znalaz&#322; si&#281; w miasteczku Angera, pochwycili go &#380;o&#322;nierze pograniczni i bior&#261;c za go szpiega, uwi&#281;zili. Wycie&#324;czony, po pi&#281;ciu latach wi&#281;zienia Roch zmar&#322; w lochu. Jego niewinno&#347;&#263; i &#347;wi&#281;to&#347;&#263; mia&#322; ujawni&#263; cudowny napis na &#347;cianie wi&#281;zienia: </span><span class=\"c0\">&bdquo;Ci, kt&oacute;rzy zostan&#261; dotkni&#281;ci zaraz&#261;, a b&#281;d&#261; wzywa&#263; na pomoc &#347;w. Rocha, jako swego po&#347;rednika i or&#281;downika, b&#281;d&#261; uleczeni&rdquo;</span><span>. Mieszka&#324;cy miasta uj&#281;li si&#281; wi&#281;c za pielgrzymem. Zabrali ze sob&#261; jego relikwie i pochowali je w ko&#347;ciele parafialnym. Potem przeniesiono je do Voghera, a wreszcie do Wenecji (w roku 1485), gdzie s&#261; do dzisiaj.</span></p><p class=\"c1\"><span>Kult &#347;w. Rocha rozszed&#322; si&#281; szybko po Europie. Cz&#281;ste epidemie, kt&oacute;re dziesi&#261;tkowa&#322;y ludno&#347;&#263; i wyludnia&#322;y osady ludzkie, sprzyja&#322;y rozwojowi czci &#347;w. Rocha jako patrona od zarazy. Jego imi&#281; nakaza&#322; umie&#347;ci&#263; w Martyrologium Rzymskim Grzegorz XIII.</span></p><p class=\"c1\"><span>&#346;w. Roch jest patronem aptekarzy, lekarzy, ogrodnik&oacute;w, rolnik&oacute;w, szpitali i wi&#281;&#378;ni&oacute;w. Uwa&#380;any jest tak&#380;e za opiekuna zwierz&#261;t domowych.</span></p><p class=\"c1\"><span>W ikonografii &#347;w. Roch przedstawiany jest jako m&#322;ody pielgrzym lub &#380;ebrak w &#322;achmanach, z psem li&#380;&#261;cym mu rany, torba pielgrzyma.</span></p><div><p class=\"c3\"><span></span></p></div></body></html>','','2015-09-27');
/*!40000 ALTER TABLE `menu_3_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_3_5`
--

DROP TABLE IF EXISTS `menu_3_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_3_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_3_5`
--

LOCK TABLES `menu_3_5` WRITE;
/*!40000 ALTER TABLE `menu_3_5` DISABLE KEYS */;
INSERT INTO `menu_3_5` VALUES (1,'Św. Sebastian','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c2{padding-top:35.4pt;padding-bottom:0pt;line-height:1.0;orphans:2;widows:2;text-align:left;direction:ltr;height:12pt}.c3{padding-top:0pt;text-indent:35.5pt;padding-bottom:3pt;line-height:1.0;orphans:2;widows:2;text-align:justify;direction:ltr}.c1{padding-top:0pt;padding-bottom:35.4pt;line-height:1.0;orphans:2;widows:2;text-align:left;direction:ltr;height:12pt}.c4{color:#000000;font-weight:normal;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:\"Times New Roman\";font-style:italic}.c0{color:#000000;font-weight:normal;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:\"Times New Roman\";font-style:normal}.c5{background-color:#ffffff;max-width:453.3pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.0;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:12pt;font-family:\"Times New Roman\"}p{margin:0;color:#000000;font-size:12pt;font-family:\"Times New Roman\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c5\"><div><p class=\"c2\"><span></span></p></div><p class=\"c3\"><span class=\"c0\">O Sebastianie, m&#281;czenniku, dowiadujemy si&#281; z </span><span class=\"c4\">Opisu m&#281;cze&#324;stwa</span><span class=\"c0\">&nbsp;nieznanego autora z roku 354 oraz komentarza &#347;w. Ambro&#380;ego do Psalmu 118. Wed&#322;ug tych dokument&oacute;w ojciec Sebastiana mia&#322; pochodzi&#263; ze znakomitej rodziny urz&#281;dniczej w Narbonne (Galia), matka za&#347; mia&#322;a pochodzi&#263; z Mediolanu. Staranne wychowanie i stanowisko ojca mia&#322;o synowi utorowa&#263; drog&#281; na dw&oacute;r cesarski, gdzie mia&#322; zosta&#263; przyw&oacute;dc&#261; gwardii cesarza Marka Aurelego Probusa (276-282).</span></p><p class=\"c3\"><span class=\"c0\">Wed&#322;ug &#347;w. Ambro&#380;ego Sebastian mia&#322; by&#263; dow&oacute;dc&#261; przybocznej stra&#380;y samego Dioklecjana. Za to, &#380;e mu wypomnia&#322; okrucie&#324;stwo wobec niewinnych chrze&#347;cijan, zosta&#322; skazany na &#347;mier&#263;.</span></p><p class=\"c3\"><span class=\"c4\">Dioklecjan kaza&#322; &#380;o&#322;nierzom przywi&#261;za&#263; go na &#347;rodku pola i zabi&#263; strza&#322;ami z &#322;uk&oacute;w. Tyle strza&#322; tedy utkwi&#322;o w nim, &#380;e podobny by&#322; do je&#380;a, a &#380;o&#322;nierze przypuszczaj&#261;c, &#380;e ju&#380; nie &#380;yje, odeszli</span><span class=\"c0\">&nbsp;- zapisa&#322; Jakub de Voraigne OP.</span></p><p class=\"c3\"><span class=\"c0\">Na p&oacute;&#322; umar&#322;ego odnalaz&#322;a go pewna niewiasta, Irena, i swoj&#261; opiek&#261; nad nim przywr&oacute;ci&#322;a mu zdrowie. Sebastian, gdy tylko powr&oacute;ci&#322; do si&#322;, mia&#322; ponownie uda&#263; si&#281; do cesarza i zwr&oacute;ci&#263; mu uwag&#281; na krzywd&#281;, jak&#261; wyrz&#261;dza&#322; niewinnym wyznawcom Chrystusa. Wtedy Dioklecjan kaza&#322; go zat&#322;uc pa&#322;kami, a jego cia&#322;o wrzuci&#263; do </span><span class=\"c4\">Cloaca Maxima.</span><span class=\"c0\">&nbsp;Wydoby&#322;a je stamt&#261;d i pochowa&#322;a ze czci&#261; w rzymskich katakumbach niewiasta Lucyna. By&#322; to prawdopodobnie rok 288.</span></p><p class=\"c3\"><span class=\"c0\">&#346;w. Sebastian cieszy&#322; si&#281; tak wielk&#261; czci&#261; w ca&#322;ym Ko&#347;ciele, &#380;e nale&#380;a&#322; do najbardziej znanych &#347;wi&#281;tych. Rzym uczyni&#322; go jednym ze swoich g&#322;&oacute;wnych patron&oacute;w.</span></p><p class=\"c3\"><span class=\"c0\">Sebastian jest patronem inwalid&oacute;w wojennych, kamieniarzy, &#322;ucznik&oacute;w, my&#347;liwych, ogrodnik&oacute;w, rusznikarzy, stra&#380;nik&oacute;w, strzelc&oacute;w, rannych i &#380;o&#322;nierzy.</span></p><p class=\"c3\"><span class=\"c0\">W ikonografii przedstawiany jest jako pi&#281;kny obna&#380;ony m&#322;odzieniec, przywi&#261;zany do s&#322;upa, przeszyty strza&#322;ami.</span></p><div><p class=\"c1\"><span></span></p></div></body></html>','','2015-09-27');
/*!40000 ALTER TABLE `menu_3_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_4`
--

DROP TABLE IF EXISTS `menu_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` text NOT NULL,
  `plik` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_4`
--

LOCK TABLES `menu_4` WRITE;
/*!40000 ALTER TABLE `menu_4` DISABLE KEYS */;
INSERT INTO `menu_4` VALUES (1,'Rada Parafialna',''),(2,'Służba Liturgiczna',''),(3,'Żywy Różaniec',''),(4,'Schole Parafialne','');
/*!40000 ALTER TABLE `menu_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_4_1`
--

DROP TABLE IF EXISTS `menu_4_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_4_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_4_1`
--

LOCK TABLES `menu_4_1` WRITE;
/*!40000 ALTER TABLE `menu_4_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_4_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_4_2`
--

DROP TABLE IF EXISTS `menu_4_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_4_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_4_2`
--

LOCK TABLES `menu_4_2` WRITE;
/*!40000 ALTER TABLE `menu_4_2` DISABLE KEYS */;
INSERT INTO `menu_4_2` VALUES (2,'Orędownicy','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c2{orphans:2;widows:2;text-align:justify;direction:ltr}.c0{background-color:#ffffff;color:#000000;font-weight:bold}.c5{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.c1{background-color:#ffffff;color:#000000}.c3{height:12pt}.c4{text-indent:35.4pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.0;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:12pt;font-family:\"Times New Roman\"}p{margin:0;color:#000000;font-size:12pt;font-family:\"Times New Roman\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Times New Roman\";line-height:1.0;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c5\"><p class=\"c2 c4\"><span class=\"c1\">A oto szczeg&oacute;lni or&#281;downicy w pro&#347;bach ministrant&oacute;w przedstawianych przed Bogiem</span><span>:</span></p><p class=\"c2\"><span class=\"c0\">&#346;wi&#281;ty Tarsycjusz (+ ok. 250);</span></p><p class=\"c2\"><span class=\"c0\">&#346;wi&#281;ty Stanis&#322;aw Kostka (1550-1568);</span></p><p class=\"c2\"><span class=\"c0\">&#346;wi&#281;ty Alojzy Gonzaga (1568-1591);</span></p><p class=\"c2\"><span class=\"c0\">&#346;wi&#281;ty Jan Berchmans (1599-1621);</span></p><p class=\"c2\"><span class=\"c0\">&#346;wi&#281;ty Dominik Savio (1842-1857).</span></p><p class=\"c2 c3\"><span class=\"c1\"></span></p><p class=\"c2 c4\"><a target=\"_parent\" name=\"h.gjdgxs\"></a><span>Drogi ministrancie wi&#281;cej potrzebnych informacji na temat Liturgicznej S&#322;u&#380;by O&#322;tarza naszej przemyskiej archidiecezji mo&#380;esz znale&#378;&#263; tam: http://www.ministranci.przemyska.pl/.</span></p></body></html>','','2015-09-01'),(3,'Modlitwa ministranta','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c0{padding-top:0pt;text-indent:36pt;padding-bottom:0pt;line-height:1.0;orphans:2;widows:2;text-align:justify;direction:ltr}.c1{vertical-align:baseline;font-size:12pt;font-family:\"Times New Roman\";font-weight:normal}.c2{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.c3{height:11pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:\"Arial\"}p{margin:0;color:#000000;font-size:11pt;font-family:\"Arial\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c2\"><p class=\"c0\"><span class=\"c1\">Modlitwa ministranta, pomaga przypomnie&#263; pos&#322;uguj&#261;cemu przy o&#322;tarzu, &#380;e przychodzi na spotkanie z samym Bogiem i na s&#322;u&#380;b&#281; podczas sk&#322;adania Naj&#347;wi&#281;tszej Ofiary Chrystusa za po&#347;rednictwem Jego kap&#322;ana. Wa&#380;ne, aby poprosi&#263; Boga o &#322;ask&#281; skupienia, by m&oacute;c jak najlepiej nie tylko przygotowa&#263; si&#281; do s&#322;u&#380;enia, ale pomaga&#263; w sprawowaniu &#346;wi&#281;tych Czynno&#347;ci. Jako propozycj&#281; podaje si&#281; dwie najbardziej znane modlitwy:</span></p><p class=\"c0 c3\"><span class=\"c1\"></span></p><p class=\"c0\"><span class=\"c1\">Przed s&#322;u&#380;eniem:</span></p><p class=\"c0\"><span class=\"c1\">Oto za chwil&#281; przyst&#261;pi&#281; &bdquo;do O&#322;tarza Bo&#380;ego, do Boga, kt&oacute;ry rozwesela m&#322;odo&#347;&#263; moj&#261;&rdquo; do &#347;wi&#281;tej przyst&#281;puj&#281; s&#322;u&#380;by. Chc&#281; j&#261; dobrze pe&#322;ni&#263;. Prosz&#281; Ci&#281;, Panie Jezu, o &#322;ask&#281; skupienia, by my&#347;li moje by&#322;y przy Tobie, by oczy moje by&#322;y zwr&oacute;cone na o&#322;tarza serce moje oddane tylko Tobie. Amen.</span></p><p class=\"c0 c3\"><span class=\"c1\"></span></p><p class=\"c0\"><span class=\"c1\">Po s&#322;u&#380;eniu:</span></p><p class=\"c0\"><span class=\"c1\">Bo&#380;e, kt&oacute;rego dobro&#263; powo&#322;a&#322;a mnie do Twej s&#322;u&#380;by, spraw, bym u&#347;wi&#281;cony uczestnictwem w Twych tajemnicach przez dzie&#324; dzisiejszy i ca&#322;e me &#380;ycie, szed&#322; tylko drog&#261; zbawienia. Przez Chrystusa, Pana naszego. Amen.</span></p></body></html>','','2015-09-01'),(4,'Uwagi dla Służby Liturgicznej','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c0{padding-bottom:2pt;orphans:2;widows:2;text-align:justify;direction:ltr}.c1{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:\"Arial\"}p{margin:0;color:#000000;font-size:11pt;font-family:\"Arial\"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class=\"c1\"><p class=\"c0\"><span>1. Pe&#322;ni&#261;cy pos&#322;ug&#281; przychodz&#261; do ko&#347;cio&#322;a przynajmniej 15 minut przed rozpocz&#281;ciem liturgii. Czas ten przeznaczamy na modlitw&#281;, na duchowe przygotowanie si&#281; do uczestnictwa w Eucharystii lub nabo&#380;e&#324;stwie oraz na ubranie si&#281;, przygotowanie potrzebnych rzeczy, i pomoc w ubraniu celebransa.</span></p><p class=\"c0\"><span>2. Przychodz&#261;c do ko&#347;cio&#322;a udaj&#261; si&#281; najpierw przed tabernakulum, aby odda&#263; pok&#322;on Chrystusowi. Powinni wi&#281;c wchodzi&#263; g&#322;&oacute;wnym wej&#347;ciem do ko&#347;cio&#322;a. Je&#380;eli kto&#347; wchodzi przez zakrysti&#281;, to nie przykl&#281;ka w k&#261;ciku, lecz udaj&#281; si&#281; przed o&#322;tarz, gdzie jest obecny Gospodarz tego domu.</span></p><p class=\"c0\"><span>3. Udzia&#322; s&#322;u&#380;by liturgicznej we Mszy &#347;w. nie mo&#380;e ograniczy&#263; si&#281; do wykonywania powierzonych im czynno&#347;ci. Pos&#322;uga ma ich prowadzi&#263; do pe&#322;niejszego w&#322;&#261;czania si&#281; w &#347;wi&#281;te obrz&#281;dy, aby uczestniczy&#263; w nich &bdquo;&#347;wiadomie i owocnie&rdquo;.</span></p><p class=\"c0\"><span>4. Spe&#322;nianie okre&#347;lonych czynno&#347;ci w liturgii nie mo&#380;e mie&#263; charakteru wyst&#281;pu, lecz pos&#322;ugi. Nale&#380;y wi&#281;c podkre&#347;la&#263; przekazywana tre&#347;&#263;, a nie samego siebie.</span></p><p class=\"c0\"><span>5. Wszyscy cz&#322;onkowie zespo&#322;u liturgicznego pe&#322;ni&#261;cy pos&#322;ug&#281; w prezbiterium bior&#261; udzia&#322; w procesji wej&#347;cia i uczestnicz&#261; w ca&#322;ej liturgii na swoich miejscach. Do zakrystii wychodz&#261; tylko w razie konieczno&#347;ci.</span></p><p class=\"c0\"><span>6. Swoje czynno&#347;ci wykonuj&#261; we w&#322;a&#347;ciwym czasie, bez po&#347;piechu, nigdy przed zako&#324;czeniem czynno&#347;ci poprzedzaj&#261;cej.</span></p><p class=\"c0\"><span>7. Do Komunii &#347;w. przyst&#281;puj&#261; pierwsi przed pozosta&#322;ymi wiernymi.</span></p><p class=\"c0\"><span>8. Swoj&#261; postaw&#261; i zachowaniem si&#281; daj&#261; wiernym przyk&#322;ad w&#322;a&#347;ciwego i pe&#322;nego uczestnictwa w Eucharystii.</span></p></body></html>','','2015-09-01'),(5,'Zasady według św. Jana Berchmansa - Patrona Ministrantów','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c1{padding-top:0pt;padding-bottom:0pt;line-height:1.0;orphans:2;widows:2;text-align:justify;direction:ltr}.c0{vertical-align:baseline;font-size:12pt;font-family:\"Times New Roman\";font-weight:normal}.c2{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:\"Arial\"}p{margin:0;color:#000000;font-size:11pt;font-family:\"Arial\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c2\"><p class=\"c1\"><span class=\"c0\">1. Serce moje jedynie bezpiecznym &#380;y&#263; mo&#380;e, gdy wytrwa w szczerej, dzieci&#281;cej mi&#322;o&#347;ci ku Matce Bo&#380;ej.</span></p><p class=\"c1\"><span class=\"c0\">2. Ma&#322;o m&oacute;wi&#263;, du&#380;o czyni&#263;.</span></p><p class=\"c1\"><span class=\"c0\">3. Wielce sobie wa&#380;y&#263; drobne sprawy.</span></p><p class=\"c1\"><span class=\"c0\">4. Je&#347;li nie dojd&#281; do &#347;wi&#281;to&#347;ci za m&#322;odu, nigdy nie b&#281;d&#281; &#347;wi&#281;tym.</span></p><p class=\"c1\"><span class=\"c0\">5. My&#347;l, &#380;eby&#347; Panu Bogu si&#281; podoba&#322;, a Pan B&oacute;g o tobie my&#347;le&#263; b&#281;dzie.</span></p><p class=\"c1\"><span class=\"c0\">6. Sumiennie dopilnuj&#281; punktualnego rannego wstawania.</span></p><p class=\"c1\"><span class=\"c0\">7. Kto nie docenia modlitwy, nie wytrwa w pobo&#380;no&#347;ci.</span></p><p class=\"c1\"><span class=\"c0\">8. Wszystko, co czynisz, czy&#324; z wielk&#261; staranno&#347;ci&#261;.</span></p><p class=\"c1\"><span class=\"c0\">9. Cierpliwo&#347;&#263; koron&#261; wszelkich cn&oacute;t.</span></p><p class=\"c1\"><span class=\"c0\">10. Nie czy&#324; nigdy tego, co Ci si&#281; w drugich nie podoba; ale to, co si&#281; w nich podoba.</span></p></body></html>','','2015-09-01'),(6,'Kodeks ministranta','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c1{padding-top:0pt;padding-bottom:4.5pt;line-height:1.0;orphans:2;widows:2;direction:ltr}.c0{vertical-align:baseline;font-size:12pt;font-family:\"Times New Roman\";font-weight:normal}.c2{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:\"Arial\"}p{margin:0;color:#000000;font-size:11pt;font-family:\"Arial\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c2\"><p class=\"c1\"><span class=\"c0\">1. Ministrant kocha Boga i dla Jego chwa&#322;y wzorowo spe&#322;nia swe obowi&#261;zki.</span></p><p class=\"c1\"><span class=\"c0\">2. Ministrant s&#322;u&#380;y Chrystusowi w ludziach.</span></p><p class=\"c1\"><span class=\"c0\">3. Ministrant rozwija w sobie &#380;ycie Bo&#380;e.</span></p><p class=\"c1\"><span class=\"c0\">4. Ministrant pracuje nad swoim charakterem i czuwa nad czysto&#347;ci&#261; serca i duszy.</span></p><p class=\"c1\"><span class=\"c0\">5. Ministrant poznaje liturgi&#281; i ni&#261; &#380;yje.</span></p><p class=\"c1\"><span class=\"c0\">6. Ministrant modli si&#281; za Ko&#347;ci&oacute;&#322;, za Ojczyzn&#281; i s&#322;u&#380;y Jej rzeteln&#261; prac&#261;.</span></p><p class=\"c1\"><span class=\"c0\">7. Ministrant jest dobrym synem i bratem.</span></p><p class=\"c1\"><span class=\"c0\">8. Ministrant swoj&#261; chrze&#347;cija&#324;sk&#261; postaw&#261; wnosi wsz&#281;dzie prawdziw&#261; rado&#347;&#263;.</span></p><p class=\"c1\"><span class=\"c0\">9. Ministrant przez swoj&#261; pilno&#347;&#263; i sumienno&#347;&#263; staje si&#281; przyk&#322;adem dla innych.</span></p><p class=\"c1\"><span class=\"c0\">10. Ministrant - podobnie jak kap&#322;an - stara si&#281; by&#263; niejako drugim Chrystusem.</span></p></body></html>','','2015-09-01'),(7,'Hymn ministrancki','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c1{padding-top:0pt;padding-bottom:0pt;line-height:1.0;orphans:2;widows:2;direction:ltr}.c0{vertical-align:baseline;font-size:12pt;font-family:\"Times New Roman\";font-weight:normal}.c3{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.c2{height:11pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:\"Arial\"}p{margin:0;color:#000000;font-size:11pt;font-family:\"Arial\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c3\"><p class=\"c1\"><span class=\"c0\">Kr&oacute;luj nam Chryste, zawsze i wsz&#281;dzie</span></p><p class=\"c1\"><span class=\"c0\">to nasze rycerskie has&#322;o.</span></p><p class=\"c1\"><span class=\"c0\">Ono nas zawsze prowadzi&#263; b&#281;dzie</span></p><p class=\"c1\"><span class=\"c0\">i &#347;wieci&#263; jak s&#322;o&#324;ce jasno.</span></p><p class=\"c1 c2\"><span class=\"c0\"></span></p><p class=\"c1\"><span class=\"c0\">Naprz&oacute;d przebojem m&#322;odzi rycerze</span></p><p class=\"c1\"><span class=\"c0\">Do walki z grzechem swej duszy</span></p><p class=\"c1\"><span class=\"c0\">Wodzem nam Jezus w Hostii ukryty</span></p><p class=\"c1\"><span class=\"c0\">Z nim w b&oacute;j nasz zast&#281;p wyruszy.</span></p><p class=\"c1 c2\"><span class=\"c0\"></span></p><p class=\"c1\"><span class=\"c0\">P&oacute;jdziemy naprz&oacute;d, naprz&oacute;d rado&#347;nie</span></p><p class=\"c1\"><span class=\"c0\">Podnosz&#261;c w g&oacute;r&#281; swe czo&#322;a.</span></p><p class=\"c1\"><span class=\"c0\">Przed nami &#380;ycie rozkwita w wio&#347;nie</span></p><p class=\"c1\"><span class=\"c0\">Odwa&#380;nie, bo Jezus wo&#322;a.</span></p><p class=\"c1 c2\"><span class=\"c0\"></span></p></body></html>','','2015-09-01'),(8,'Zbiórki','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c1{orphans:2;widows:2;text-align:center;direction:ltr}.c0{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:\"Arial\"}p{margin:0;color:#000000;font-size:11pt;font-family:\"Arial\"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class=\"c0\"><p class=\"c1\"><span>Spotkania ministrantów odbywają się w każdy poniedziałek po wieczornym nabożeństwie.</span></p></body></html>','','2015-09-01'),(10,'Spotkania wakacyjne','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c1{orphans:2;widows:2;text-align:center;direction:ltr}.c0{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:\"Arial\"}p{margin:0;color:#000000;font-size:11pt;font-family:\"Arial\"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class=\"c0\"><p class=\"c1\"><span>Spotkania ministrantów odbywają się w każdy poniedziałek po wieczornym nabożeństwie. A w czasie wakacyjnym we wtorki po wieczornym nabożeństwie odbywają się zbiórki dla wszystkich chętnych chłopców ze Szkoły Podstawowej, którzy od nowego roku szkolnego pragną dołączyć do grona ministrantów.</span></p></body></html>','','2016-07-06');
/*!40000 ALTER TABLE `menu_4_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_4_3`
--

DROP TABLE IF EXISTS `menu_4_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_4_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_4_3`
--

LOCK TABLES `menu_4_3` WRITE;
/*!40000 ALTER TABLE `menu_4_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_4_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_4_4`
--

DROP TABLE IF EXISTS `menu_4_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_4_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_4_4`
--

LOCK TABLES `menu_4_4` WRITE;
/*!40000 ALTER TABLE `menu_4_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_4_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_5`
--

DROP TABLE IF EXISTS `menu_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` text NOT NULL,
  `plik` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_5`
--

LOCK TABLES `menu_5` WRITE;
/*!40000 ALTER TABLE `menu_5` DISABLE KEYS */;
INSERT INTO `menu_5` VALUES (1,'nasze spotkania',''),(2,'nasze obserwacje','');
/*!40000 ALTER TABLE `menu_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_5_1`
--

DROP TABLE IF EXISTS `menu_5_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_5_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_5_1`
--

LOCK TABLES `menu_5_1` WRITE;
/*!40000 ALTER TABLE `menu_5_1` DISABLE KEYS */;
INSERT INTO `menu_5_1` VALUES (2,'Koło Ornitologiczne','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c3{padding-top:0pt;text-indent:35.4pt;padding-bottom:6pt;line-height:1.0;orphans:2;widows:2;text-align:justify;direction:ltr}.c1{padding-top:0pt;text-indent:35.5pt;padding-bottom:6pt;line-height:1.0;orphans:2;widows:2;text-align:justify;direction:ltr}.c0{padding-top:0pt;padding-bottom:10pt;line-height:1.1500000000000001;orphans:2;widows:2;direction:ltr;height:11pt}.c6{vertical-align:baseline;font-size:13pt;font-family:\"Times New Roman\";font-weight:bold}.c4{vertical-align:baseline;font-size:12pt;font-family:\"Times New Roman\";font-weight:normal}.c2{vertical-align:baseline;font-size:13pt;font-family:\"Times New Roman\";font-weight:normal}.c5{background-color:#ffffff;max-width:453.6pt;padding:70.8pt 70.8pt 70.8pt 70.8pt}.title{padding-top:24pt;color:#000000;font-weight:bold;font-size:36pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:18pt;color:#666666;font-size:24pt;padding-bottom:4pt;font-family:\"Georgia\";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:\"Arial\"}p{margin:0;color:#000000;font-size:11pt;font-family:\"Arial\"}h1{padding-top:24pt;color:#000000;font-weight:bold;font-size:24pt;padding-bottom:6pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-weight:bold;font-size:18pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:14pt;color:#000000;font-weight:bold;font-size:14pt;padding-bottom:4pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:12pt;color:#000000;font-weight:bold;font-size:12pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:11pt;color:#000000;font-weight:bold;font-size:11pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:10pt;color:#000000;font-weight:bold;font-size:10pt;padding-bottom:2pt;font-family:\"Arial\";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}</style></head><body class=\"c5\"><p class=\"c3\"><span class=\"c6\">Koło Ornitologiczne Młodych Przyrodników</span><span class=\"c2\"> <img alt=\"Logo Komp 01.png\" src=\"uploads/menu_5_1_1_image00.png\" style=\"width: 185.03px; height: 163.32px; margin-left: 10px; margin-top: 0.00px;float:right \" title=\"\">ma na celu uświadomić uczestnikom bogactwo środowiska naturalnego i rolę, jaką odgrywa ono w życiu ludzi. Ma również zachęcić ich do samodzielnego poznawania przyrody, dostrzegania jej wartości oraz wskazać sposoby ochrony środowiska najbliższej okolicy.</span></p><p class=\"c1\"><span class=\"c2\">Zajęcia w „Koła Ornitologicznym Młodych Przyrodników” mają obok dostarczenia wiadomości o ptakach i ich siedliskach nauczyć uczestników spotkań współpracy w grupie, zasad zachowania się podczas wycieczek przyrodniczych, dać okazję do przyjemnego i pożytecznego spędzenia wolnego czasu.</span></p><p class=\"c0\"><span class=\"c4\"></span></p></body></html>','','2015-08-27');
/*!40000 ALTER TABLE `menu_5_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_5_2`
--

DROP TABLE IF EXISTS `menu_5_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_5_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_5_2`
--

LOCK TABLES `menu_5_2` WRITE;
/*!40000 ALTER TABLE `menu_5_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_5_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_6`
--

DROP TABLE IF EXISTS `menu_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` text NOT NULL,
  `plik` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_6`
--

LOCK TABLES `menu_6` WRITE;
/*!40000 ALTER TABLE `menu_6` DISABLE KEYS */;
INSERT INTO `menu_6` VALUES (1,'z ogrodu',''),(2,'o pupilu',''),(3,'w obiektywie','');
/*!40000 ALTER TABLE `menu_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_6_1`
--

DROP TABLE IF EXISTS `menu_6_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_6_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_6_1`
--

LOCK TABLES `menu_6_1` WRITE;
/*!40000 ALTER TABLE `menu_6_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_6_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_6_2`
--

DROP TABLE IF EXISTS `menu_6_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_6_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_6_2`
--

LOCK TABLES `menu_6_2` WRITE;
/*!40000 ALTER TABLE `menu_6_2` DISABLE KEYS */;
INSERT INTO `menu_6_2` VALUES (1,'MAŁA PRÓBKA POPISÓW PTASZYNY','<script>window.location=\"video_list.php\";</script>','',''),(2,'Zdjęcia','<html><head><style type=\"text/css\"> body{padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;font-size:1em !important;background-color:transparent !important;}</style></head><body>Papuga Żako imieniem Frodo</body></html>','<a class=\"option\" href=\"uploads/full/menu_6_2_2_pupil 01.jpg\" rel=\"shadowbox[2]\"><img src=\"uploads/thumbs/menu_6_2_2_pupil 01 m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_6_2_2_pupil 02.jpg\" rel=\"shadowbox[2]\"><img src=\"uploads/thumbs/menu_6_2_2_pupil 02 m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_6_2_2_pupil 03.jpg\" rel=\"shadowbox[2]\"><img src=\"uploads/thumbs/menu_6_2_2_pupil 03 m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_6_2_2_pupil 04.jpg\" rel=\"shadowbox[2]\"><img src=\"uploads/thumbs/menu_6_2_2_pupil 04 m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_6_2_2_pupil 05.jpg\" rel=\"shadowbox[2]\"><img src=\"uploads/thumbs/menu_6_2_2_pupil 05 m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_6_2_2_pupil 06.jpg\" rel=\"shadowbox[2]\"><img src=\"uploads/thumbs/menu_6_2_2_pupil 06 m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_6_2_2_pupil 07.jpg\" rel=\"shadowbox[2]\"><img src=\"uploads/thumbs/menu_6_2_2_pupil 07 m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_6_2_2_pupil 08.jpg\" rel=\"shadowbox[2]\"><img src=\"uploads/thumbs/menu_6_2_2_pupil 08 m.jpg\" style=\"cursor:zoom-in\"></a><k></k><a class=\"option\" href=\"uploads/full/menu_6_2_2_pupil 09.jpg\" rel=\"shadowbox[2]\"><img src=\"uploads/thumbs/menu_6_2_2_pupil 09 m.jpg\" style=\"cursor:zoom-in\"></a><k></k>',''),(3,'ŻAKO - AFRYKAŃSKA GADUŁA','<html><head><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><style type=\"text/css\"> body{margin:0px !important;max-width:none !important;padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;background-color:transparent !important;font-size:16px}</style><link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\"/></head><body style=\"background-image:none\"><p align=\"justify\"><img src=\"pictures/zako_tresc.jpg\" style=\"float:right;margin:0px 0px 4px 22px\"/>„Gadająca papuga!” Przecież posiadanie takiej papugi to marzenie każdego dziecka i niemal każdego hodowcy ptaków egzotycznych. A wynika owo marzenie ze stereotypów i zapewne z disnejowskich bajek zapamiętanych z dzieciństwa. Przedewszystkim jednak z powszechnego mniemania o niezwykłej inteligencji tych ptaków</p> <p align=\"justify\">Rzeczywiście, pod względem umiejętności naśladowania dźwięków – i to niestety nie tylko mowy ludzkiej (!) – papugi są rzeczywiście wyjątkowe i potrafią zaskakiwać nawet doświadczonych hodowców.</p><p align=\"justify\">Jakie papugi „gadają”? No cóż, teoretycznie niemal wszystkie. Wymawiania pojedynczych słów przy dużej dozie cierpliwości i zaangażowania można nauczyć nawet maleńką, pospolitą papużkę falistą. Jednak do prawdziwych specjalistów w naśladowaniu ludzkiej mowy należą duże papugi: kakadu, ary, amazonki, zaś niekwestionowanym arcymistrzem w tej dziedzinie jest żako – niepozorna, szaropióra afrykańska papuga będąca wręcz doskonałym pierzastym „gadułą”.</p> <p align=\"justify\">Posiadanie takiego ptaka to jednak nie tylko przyjemność, ale również liczne obowiązki. Ze względu na rozwiniętą inteligencję papugi te wymagają bowiem poświęcania im wiele uwagi oraz jak najczęstszego dotrzymywania im towarzystwa.	</p></body></html>','','');
/*!40000 ALTER TABLE `menu_6_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_6_3`
--

DROP TABLE IF EXISTS `menu_6_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_6_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_6_3`
--

LOCK TABLES `menu_6_3` WRITE;
/*!40000 ALTER TABLE `menu_6_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_6_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `niedziela`
--

DROP TABLE IF EXISTS `niedziela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `niedziela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `malkowice` text NOT NULL,
  `dunkowiczki` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `niedziela`
--

LOCK TABLES `niedziela` WRITE;
/*!40000 ALTER TABLE `niedziela` DISABLE KEYS */;
/*!40000 ALTER TABLE `niedziela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `niedziela_dunk`
--

DROP TABLE IF EXISTS `niedziela_dunk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `niedziela_dunk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `godzina` text NOT NULL,
  `opis` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `niedziela_dunk`
--

LOCK TABLES `niedziela_dunk` WRITE;
/*!40000 ALTER TABLE `niedziela_dunk` DISABLE KEYS */;
INSERT INTO `niedziela_dunk` VALUES (1,'09:30','Msza święta');
/*!40000 ALTER TABLE `niedziela_dunk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `niedziela_malk`
--

DROP TABLE IF EXISTS `niedziela_malk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `niedziela_malk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `godzina` text NOT NULL,
  `opis` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `niedziela_malk`
--

LOCK TABLES `niedziela_malk` WRITE;
/*!40000 ALTER TABLE `niedziela_malk` DISABLE KEYS */;
INSERT INTO `niedziela_malk` VALUES (1,'08:00','Prymaria'),(2,'11.00','Suma');
/*!40000 ALTER TABLE `niedziela_malk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swieta`
--

DROP TABLE IF EXISTS `swieta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swieta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dzien` int(11) NOT NULL,
  `miesiac` int(11) NOT NULL,
  `tresc` text NOT NULL,
  `malkowice` text NOT NULL,
  `dunkowiczki` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swieta`
--

LOCK TABLES `swieta` WRITE;
/*!40000 ALTER TABLE `swieta` DISABLE KEYS */;
INSERT INTO `swieta` VALUES (1,1,1,'Nowy Rok','',''),(2,6,1,'Trzech Króli (Objawienie Pańskie)','',''),(3,21,1,'Dzień Babci','',''),(4,22,1,'Dzień Dziadka','',''),(5,2,2,'Ofiarowanie Pańskie (Matki Boskiej Gromnicznej)','',''),(6,12,2,'Tłusty czwartek','',''),(7,14,2,'Dzień Zakochanych (Walentynki), Ostatnia sobota karnawału','',''),(8,17,2,'Ostatki','',''),(9,18,2,'Popielec','',''),(10,1,3,'Narodowy Dzień Pamięci Żołnierzy Wyklętych','',''),(11,8,3,'Międzynarodowy Dzień Kobiet','',''),(12,10,3,'Dzień Mężczyzn','',''),(13,20,3,'Początek astronomicznej wiosny','',''),(14,29,3,'Zmiana czasu z zimowego na letni, Niedziela Palmowa','',''),(15,1,4,'Prima Aprilis','',''),(16,2,4,'Wielki Czwartek','',''),(17,3,4,'Wielki Piątek','',''),(18,4,4,'Wielka Sobota','',''),(19,5,4,'Wielkanoc','',''),(20,6,4,'Poniedziałek Wielkanocny','',''),(21,12,4,'Święto Bożego Miłosierdzia','',''),(22,22,4,'Międzynarodowy Dzień Ziemi','',''),(23,1,5,'Międzynarodowe Święto Pracy','',''),(24,2,5,'Dzień Flagi Rzeczpospolitej Polskiej','',''),(25,3,5,'Święto Konstytucji 3 Maja','',''),(26,17,5,'Wniebowstąpienie','',''),(27,24,5,'Zesłanie Ducha Świętego (Zielone Świątki)','',''),(28,26,5,'Dzień Matki','',''),(29,1,6,'Międzynarodowy Dzień Dziecka','',''),(30,4,6,'Boże Ciało','',''),(31,21,6,'Pierwszy Dzień Lata - najdłuższy dzień roku','',''),(32,23,6,'Dzień Ojca','',''),(33,1,8,'Narodowy Dzień Pamięci Powstania Warszawskiego','',''),(34,15,8,'Święto Wojska Polskiego, Wniebowzięcie Najświętszej Maryi Panny','',''),(35,31,8,'Dzień Solidarności i Wolności','',''),(36,23,9,'Początek Astronomicznej Jesieni','',''),(37,30,9,'Dzień Chłopaka','',''),(38,14,10,'Dzień Nauczyciela (Dzień Edukacji Narodowej)','',''),(39,25,10,'Zmiana czasu z letniego na zimowy','',''),(40,1,11,'Wszystkich Świętych','',''),(41,2,11,'Dzień zaduszny','',''),(42,11,11,'Narodowe święto Niepodległości','',''),(43,29,11,'Andrzejki (w nocy z 29 na 30)','',''),(44,4,12,'Barbórka (Dzień Górnika, Naftowca i Gazownika)','',''),(45,6,12,'Dzień św. Mikołaja','',''),(46,22,12,'Początek astronomicznej zimy - najkrótszy dzień roku','',''),(47,24,12,'Wigilia Bożego Narodzenia','',''),(48,25,12,'Boże Narodzenie (pierwszy dzień)','',''),(49,26,12,'Boże Narodzenie (drugi dzień)','',''),(50,31,12,'Sylwester','','');
/*!40000 ALTER TABLE `swieta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` text NOT NULL,
  `password` text NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test','parafia','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_list`
--

DROP TABLE IF EXISTS `video_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `link` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_list`
--

LOCK TABLES `video_list` WRITE;
/*!40000 ALTER TABLE `video_list` DISABLE KEYS */;
INSERT INTO `video_list` VALUES (7,'Archiwum 2009','https://www.youtube.com/embed/Wj3yAZEA6Z4?autoplay=1'),(8,'Archiwum 2009/2011','https://www.youtube.com/embed/IYL1-8P5Xnk?autoplay=1'),(9,'Frodo 2013','https://www.youtube.com/embed/2X25wbhT3j4?rel=0?autoplay=1'),(10,'salamandra','https://www.youtube.com/embed/7ju6yGahwXk?autoplay=1');
/*!40000 ALTER TABLE `video_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_php`
--

DROP TABLE IF EXISTS `video_php`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_php` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `galeria` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_php`
--

LOCK TABLES `video_php` WRITE;
/*!40000 ALTER TABLE `video_php` DISABLE KEYS */;
INSERT INTO `video_php` VALUES (1,'Test','<html><head><style type=\"text/css\"> body{padding:0px 22px 0px 22px !important;}  *{font-family:Cambria !important;color: #1e1c1a !important;font-size:16px !important;background-color:transparent !important;}</style><title>Dokument bez tytu&#322;u</title><meta content=\"text/html; charset=UTF-8\" http-equiv=\"content-type\"><style type=\"text/css\">ol{margin:0;padding:0}.c0{widows:2;orphans:2;text-indent:35pt;text-align:justify;direction:ltr;padding-bottom:3pt}.c3{widows:2;orphans:2;text-indent:35pt;text-align:justify;direction:ltr}.c4{widows:2;orphans:2;height:11pt;direction:ltr}.c1{font-size:16pt;font-style:italic;font-family:\"Times New Roman\"}.c6{max-width:468pt;background-color:#ffffff;padding:72pt 72pt 72pt 72pt}.c2{font-size:16pt;font-family:\"Times New Roman\"}.c5{font-size:16pt}.title{widows:2;padding-top:0pt;line-height:1.15;orphans:2;text-align:left;color:#000000;font-size:21pt;font-family:\"Trebuchet MS\";padding-bottom:0pt;page-break-after:avoid}.subtitle{widows:2;padding-top:0pt;line-height:1.15;orphans:2;text-align:left;color:#666666;font-style:italic;font-size:13pt;font-family:\"Trebuchet MS\";padding-bottom:10pt;page-break-after:avoid}li{color:#000000;font-size:11pt;font-family:\"Arial\"}p{color:#000000;font-size:11pt;margin:0;font-family:\"Arial\"}h1{widows:2;padding-top:10pt;line-height:1.15;orphans:2;text-align:left;color:#000000;font-size:16pt;font-family:\"Trebuchet MS\";padding-bottom:0pt;page-break-after:avoid}h2{widows:2;padding-top:10pt;line-height:1.15;orphans:2;text-align:left;color:#000000;font-size:13pt;font-family:\"Trebuchet MS\";font-weight:bold;padding-bottom:0pt;page-break-after:avoid}h3{widows:2;padding-top:8pt;line-height:1.15;orphans:2;text-align:left;color:#666666;font-size:12pt;font-family:\"Trebuchet MS\";font-weight:bold;padding-bottom:0pt;page-break-after:avoid}h4{widows:2;padding-top:8pt;line-height:1.15;orphans:2;text-align:left;color:#666666;font-size:11pt;text-decoration:underline;font-family:\"Trebuchet MS\";padding-bottom:0pt;page-break-after:avoid}h5{widows:2;padding-top:8pt;line-height:1.15;orphans:2;text-align:left;color:#666666;font-size:11pt;font-family:\"Trebuchet MS\";padding-bottom:0pt;page-break-after:avoid}h6{widows:2;padding-top:8pt;line-height:1.15;orphans:2;text-align:left;color:#666666;font-style:italic;font-size:11pt;font-family:\"Trebuchet MS\";padding-bottom:0pt;page-break-after:avoid}</style></head><body class=\"c6\"><p class=\"c0\"><span class=\"c2\">Naszej wsp&oacute;lnoty parafialnej, symbolem i &bdquo;domem&rdquo; jest ko&#347;ci&oacute;&#322; po&#347;wi&#281;cony w roku 1939, gdzie patronuje nam Matka Bo&#380;a w tajemnicy Nawiedzenia.</span></p><p class=\"c0\"><span class=\"c2\">To &#347;wi&#281;to liturgiczne obchodzone w Ko&#347;ciele katolickim 31 maja jest dla nas Uroczysto&#347;ci&#261; Odpustow&#261;.</span></p><p class=\"c0\"><span class=\"c2\">Nawiedzenie Naj&#347;wi&#281;tszej Maryi Panny &ndash; powsta&#322;o w 1263 z inicjatywy &#346;w. Bonawentury i a&#380; do Reformy liturgicznej Paw&#322;a VI wprowadzonej w 1969 obchodzono je 2 lipca. Papie&#380; Bonifacy IX poleci&#322; je obchodzi&#263; w 1389, a oficjalnie ustanowione zosta&#322;o w 1441 podczas Soboru w Bazylei. W 1969 Papie&#380; Pawe&#322; VI przesun&#261;&#322; obchody tego &#347;wi&#281;ta na dzie&#324; 31 maja, by wypada&#322;o ono po &#347;wi&#281;cie Zwiastowania Naj&#347;wi&#281;tszej Marii Panny (25 Marca), a przed Narodzeniem &#347;w. Jana Chrzciciela (24 czerwca), co bardziej odpowiada relacji ewangelicznej.</span></p><p class=\"c0\"><span class=\"c2\">&#346;wi&#281;to powsta&#322;o z rozwa&#380;a&#324; pi&#281;knej tajemnicy &#380;ycia Maryi, mianowicie Jej spotkania ze &#347;w. El&#380;biet&#261; przed narodzeniem &#347;w. Jana Chrzciciela. Teksty liturgiczne przybli&#380;aj&#261; nam to zbawcze wydarzenie. W kolekcie mszalnej wspomina si&#281;, &#380;e za natchnieniem Ducha &#346;wi&#281;tego Maryja w swoim &#322;onie nosi&#322;a Bo&#380;ego Syna i nawiedzi&#322;a &#347;w. El&#380;biet&#281;. Prosimy, aby&#347;my pos&#322;uszni Duchowi &#346;wi&#281;temu zawsze wraz z Maryj&#261; mogli wielbi&#263; Boga w Tr&oacute;jcy &#346;wi&#281;tej Jedynego.</span></p><p class=\"c0\"><span class=\"c2\">&#346;w. &#321;ukasz (1, 39-56) w Ewangelii opisuje scen&#281; spotkania Maryi z El&#380;biet&#261;, nast&#281;pnie podaje hymn Uwielbiaj duszo moja Pana, w kt&oacute;rym Maryja wys&#322;awia Boga za wielkie Jego mi&#322;osierdzie i za wybranie Jej do wielkich rzeczy w dziele zbawienia. Ewangelista przy ko&#324;cu swojej relacji informuje, &#380;e Maryja oko&#322;o trzech miesi&#281;cy pozosta&#322;a u &#347;w. El&#380;biety, pomagaj&#261;c jej, jak mo&#380;na przypuszcza&#263;, w domowych zaj&#281;ciach.</span></p><p class=\"c0\"><span class=\"c2\">Cenny jest fragment homilii &#347;w. Bedy Czcigodnego, kap&#322;ana, benedyktyna (+735) po&#347;wi&#281;cony rozwa&#380;aniu tre&#347;ci Magnificat. Autor zach&#281;ca nas do cz&#281;stego wypowiadania tego &#347;wi&#281;tego tekstu: &bdquo;(...) pi&#281;kny zaprawd&#281; i wielce u&#380;yteczny powsta&#322; w Ko&#347;ciele zwyczaj &#347;piewania przez wszystkich hymnu Maryi ka&#380;dego dnia w wieczornej modlitwie chwa&#322;y, by cz&#281;stym wspominaniem Wcielenia Pa&#324;skiego umys&#322;y do pobo&#380;no&#347;ci zapali&#263; oraz utwierdzi&#263; je w cnotach wielokrotnym rozwa&#380;aniem przyk&#322;adu &#380;ycia Bo&#380;ej Rodzicielki. I bardzo dobrze jest odmawia&#263; ten hymn wieczorem, albowiem utrudzona ca&#322;ym dniem i poch&#322;oni&#281;ta jego k&#322;opotami dusza potrzebuje wraz z nadchodz&#261;cym czasem spoczynku wewn&#281;trznego w sobie skupienia&rdquo; </span><span class=\"c1\">(LG, t. II)</span><span class=\"c2\">.</span></p><p class=\"c0\"><span class=\"c2\">Lud polski w swojej ludowej religijno&#347;ci nazywa&#322; Maryj&#281; w tajemnicy Nawiedzenia Matk&#261; Bo&#380;&#261; Jagodn&#261;. W tym bowiem czasie (2 VII) znajdowa&#322;y si&#281; w naszych lasach jagody. Wed&#322;ug legendy Maryja sz&#322;a sama do El&#380;biety odludnymi &#347;cie&#380;kami. Na rozgrzanych s&#322;o&#324;cem ska&#322;ach mo&#380;na by&#322;o spotka&#263; jaszczurki, a jadowite skorpiony nieraz wychodzi&#322;y na drog&#281;, po kt&oacute;rej w&#281;drowa&#322;a Matka Bo&#380;a. Nic nie mog&#322;y jednak z&#322;ego uczyni&#263; Maryi, gdy&#380; potraci&#322;y wzrok. Matka Bo&#380;a zatrzymywa&#322;a si&#281; w drodze, aby po&#380;ywi&#263; si&#281; rosn&#261;cymi tam jagodami. Tradycja ludowa zakazywa&#322;a w dniu 2 lipca zrywania jag&oacute;d i innych owoc&oacute;w. Nie wolno by&#322;o wi&#281;c je&#347;&#263; wi&#347;ni, czere&#347;ni, malin, poziomek, je&#380;yn, porzeczek, agrestu, jag&oacute;d ani &#380;adnych innych le&#347;nych owoc&oacute;w. Powinno by&#263; tego dnia du&#380;o jag&oacute;d, kt&oacute;rymi &#380;ywi&#322;a si&#281; Naj&#347;wi&#281;tsza Maryja. Ten kto z&#322;amie to ludowe prawo, nie uczci Maryi, ale te&#380; mo&#380;e narazi&#263; siebie na bolesne uk&#261;szenie &#380;mii lub innych gad&oacute;w </span><span class=\"c1\">(E. Ferenc)</span><span class=\"c2\">.</span></p><p class=\"c0\"><span class=\"c2\">Niech to pi&#281;kne &#347;wi&#281;to a nasza Uroczysto&#347;&#263; sk&#322;ania nas do uwielbienia Boga za dar Maryi i Jej Syna, naszego Zbawiciela. Dzi&#281;kujmy te&#380; za &#322;ask&#281; wiary i pro&#347;my o jej umocnienie. Za przyk&#322;adem Maryi spieszmy z pomoc&#261; potrzebuj&#261;cym, szczeg&oacute;lnie w okresie nasilaj&#261;cych si&#281; prac polowych. B&#281;d&#261;c cz&#281;&#347;ciej w&#347;r&oacute;d pi&#281;knej naszej polskiej przyrody, umiejmy w niej dostrzec &#347;lady dobrego Boga. Zano&#347;my te&#380; do Pana nasze gor&#261;ce pro&#347;by:</span></p><p class=\"c3\"><span class=\"c2\">&bdquo;(...) Ty, co&#347; do domu El&#380;biety</span></p><p class=\"c3\"><span class=\"c2\">Przynios&#322;a rado&#347;&#263; bezmiern&#261;.</span></p><p class=\"c3\"><span class=\"c2\">Przyjd&#378;, opiekunko ludzko&#347;ci,</span></p><p class=\"c3\"><span class=\"c2\">I obmyj z brudu sumienia (...)</span></p><p class=\"c3\"><span class=\"c2\">Uka&#380; nam drog&#281; w&#322;a&#347;ciw&#261;</span></p><p class=\"c3\"><span class=\"c2\">I &#380;yciem obdarz niewinnym.&rdquo;</span></p><p class=\"c3\"><span class=\"c1\">(LG, t. II)</span></p><p class=\"c4\"><span class=\"c5\"></span></p></body></html>','');
/*!40000 ALTER TABLE `video_php` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wydarzenie`
--

DROP TABLE IF EXISTS `wydarzenie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wydarzenie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `malkowice` text NOT NULL,
  `dunkowiczki` text NOT NULL,
  `opis` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wydarzenie`
--

LOCK TABLES `wydarzenie` WRITE;
/*!40000 ALTER TABLE `wydarzenie` DISABLE KEYS */;
INSERT INTO `wydarzenie` VALUES (11,'11:30  - Msza święta odpustowa<br>','','31-05-2015');
/*!40000 ALTER TABLE `wydarzenie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zakladki_menu`
--

DROP TABLE IF EXISTS `zakladki_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zakladki_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zakladki_menu`
--

LOCK TABLES `zakladki_menu` WRITE;
/*!40000 ALTER TABLE `zakladki_menu` DISABLE KEYS */;
INSERT INTO `zakladki_menu` VALUES (1,'Wiadomości'),(2,'Aktualności'),(3,'Patronowie'),(4,'Wspólnoty'),(5,'Koło Ornitologiczne'),(6,'Mało duszpasterskie');
/*!40000 ALTER TABLE `zakladki_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'parafiamalko'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-11 16:24:57
