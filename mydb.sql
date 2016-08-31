-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action` (
  `idAction` int(11) NOT NULL AUTO_INCREMENT,
  `ActionNum` int(11) DEFAULT NULL,
  `ActionTitre` varchar(45) NOT NULL,
  `ActionStatut` varchar(45) DEFAULT NULL,
  `ActionPriorite` int(11) DEFAULT NULL,
  `ActionRetard` int(11) DEFAULT NULL,
  `ActionCreationDte` date DEFAULT NULL,
  `ActionCloturePlanDte` date DEFAULT NULL,
  `ActionClotureRealDte` date DEFAULT NULL,
  `ActionComment` tinytext,
  `Utilisateur_idUtilisateur` int(11) NOT NULL,
  `Chantier_idChantier` int(11) NOT NULL,
  `actionAvancement` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAction`),
  KEY `fk_Action_Utilisateur1_idx` (`Utilisateur_idUtilisateur`),
  KEY `fk_Action_Chantier1_idx` (`Chantier_idChantier`),
  CONSTRAINT `fk_Action_Chantier1` FOREIGN KEY (`Chantier_idChantier`) REFERENCES `chantier` (`idChantier`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Action_Utilisateur1` FOREIGN KEY (`Utilisateur_idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
INSERT INTO `action` VALUES (1,1,'Action1','En cours',1,12,'2016-08-22','2016-08-22','2016-08-22',NULL,3,1,NULL);
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `idUtilisateur` int(11) NOT NULL,
  PRIMARY KEY (`idUtilisateur`),
  KEY `fk_Admin_Utilisateur1_idx` (`idUtilisateur`),
  CONSTRAINT `fk_Admin_Utilisateur1` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (3),(10);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chantier`
--

DROP TABLE IF EXISTS `chantier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chantier` (
  `idChantier` int(11) NOT NULL AUTO_INCREMENT,
  `ChantierLabel` varchar(45) DEFAULT NULL,
  `Sousprojet_idSousprojet` int(11) NOT NULL,
  PRIMARY KEY (`idChantier`),
  KEY `fk_Chantier_Sousprojet1_idx` (`Sousprojet_idSousprojet`),
  CONSTRAINT `fk_Chantier_Sousprojet1` FOREIGN KEY (`Sousprojet_idSousprojet`) REFERENCES `sousprojet` (`idSousprojet`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=cp850;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chantier`
--

LOCK TABLES `chantier` WRITE;
/*!40000 ALTER TABLE `chantier` DISABLE KEYS */;
INSERT INTO `chantier` VALUES (1,'Chnatier1',1);
/*!40000 ALTER TABLE `chantier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compte`
--

DROP TABLE IF EXISTS `compte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compte` (
  `idCompte` int(11) NOT NULL AUTO_INCREMENT,
  `CompteNom` varchar(45) DEFAULT NULL,
  `CompteAdresse` varchar(45) DEFAULT NULL,
  `CompteEmail` varchar(45) DEFAULT NULL,
  `CompteTel` varchar(45) DEFAULT NULL,
  `CompteLogolien` text,
  `CompteFblien` text,
  `CompteInlien` text,
  PRIMARY KEY (`idCompte`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compte`
--

LOCK TABLES `compte` WRITE;
/*!40000 ALTER TABLE `compte` DISABLE KEYS */;
INSERT INTO `compte` VALUES (3,'ITSERV','AdresseITSERV','EmailITSERV','TelITSERV','http://www.concours-emploi.com/images/logoprofil/logo-416-2.JPG','#','https://www.linkedin.com/company/it-serv'),(4,'OOREDOO','AdresseOOREDOO','EmailOOREDOO','TelOOREDOO','http://www.ooredoo.tn/sites/all/themes/particulier/logo.png?23','https://www.facebook.com/ooredootn','https://www.linkedin.com/company/ooredootn');
/*!40000 ALTER TABLE `compte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultant`
--

DROP TABLE IF EXISTS `consultant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultant` (
  `idUtilisateur` int(11) NOT NULL,
  PRIMARY KEY (`idUtilisateur`),
  KEY `fk_Consultant_Utilisateur1_idx` (`idUtilisateur`),
  CONSTRAINT `fk_Consultant_Utilisateur1` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultant`
--

LOCK TABLES `consultant` WRITE;
/*!40000 ALTER TABLE `consultant` DISABLE KEYS */;
/*!40000 ALTER TABLE `consultant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demande`
--

DROP TABLE IF EXISTS `demande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demande` (
  `idDemande` int(11) NOT NULL AUTO_INCREMENT,
  `DemandeNum` int(11) DEFAULT NULL,
  `DemandeLabel` varchar(60) NOT NULL,
  `DemandeStatut` varchar(45) DEFAULT NULL,
  `DemandeDemandeur` varchar(45) DEFAULT NULL,
  `DemandePriorite` varchar(45) DEFAULT NULL,
  `DemandeDte` date DEFAULT NULL,
  `DemandeDecisPlan` date DEFAULT NULL,
  `DemandeDecisReal` date DEFAULT NULL,
  `DemandeComment` tinytext,
  `Projet_idProjet` int(11) NOT NULL,
  `Utilisateur_idUtilisateur` int(11) NOT NULL,
  PRIMARY KEY (`idDemande`),
  KEY `fk_Demande_Projet1_idx` (`Projet_idProjet`),
  KEY `fk_Demande_Utilisateur1_idx` (`Utilisateur_idUtilisateur`),
  CONSTRAINT `fk_Demande_Projet1` FOREIGN KEY (`Projet_idProjet`) REFERENCES `projet` (`idProjet`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Demande_Utilisateur1` FOREIGN KEY (`Utilisateur_idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demande`
--

LOCK TABLES `demande` WRITE;
/*!40000 ALTER TABLE `demande` DISABLE KEYS */;
/*!40000 ALTER TABLE `demande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etranger`
--

DROP TABLE IF EXISTS `etranger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etranger` (
  `idUtilisateur` int(11) NOT NULL,
  PRIMARY KEY (`idUtilisateur`),
  KEY `fk_Etranger_Utilisateur1_idx` (`idUtilisateur`),
  CONSTRAINT `fk_Etranger_Utilisateur1` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etranger`
--

LOCK TABLES `etranger` WRITE;
/*!40000 ALTER TABLE `etranger` DISABLE KEYS */;
/*!40000 ALTER TABLE `etranger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intervenant`
--

DROP TABLE IF EXISTS `intervenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intervenant` (
  `idUtilisateur` int(11) NOT NULL,
  PRIMARY KEY (`idUtilisateur`),
  KEY `fk_Intervenant_Utilisateur1_idx` (`idUtilisateur`),
  CONSTRAINT `fk_Intervenant_Utilisateur1` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intervenant`
--

LOCK TABLES `intervenant` WRITE;
/*!40000 ALTER TABLE `intervenant` DISABLE KEYS */;
INSERT INTO `intervenant` VALUES (7),(8);
/*!40000 ALTER TABLE `intervenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordinaire`
--

DROP TABLE IF EXISTS `ordinaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordinaire` (
  `idUtilisateur` int(11) NOT NULL,
  PRIMARY KEY (`idUtilisateur`),
  KEY `fk_Ordinaire_Utilisateur1_idx` (`idUtilisateur`),
  CONSTRAINT `fk_Ordinaire_Utilisateur1` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordinaire`
--

LOCK TABLES `ordinaire` WRITE;
/*!40000 ALTER TABLE `ordinaire` DISABLE KEYS */;
INSERT INTO `ordinaire` VALUES (9);
/*!40000 ALTER TABLE `ordinaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partenaire`
--

DROP TABLE IF EXISTS `partenaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partenaire` (
  `idPartenaire` int(11) NOT NULL AUTO_INCREMENT,
  `PartenaireNom` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPartenaire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partenaire`
--

LOCK TABLES `partenaire` WRITE;
/*!40000 ALTER TABLE `partenaire` DISABLE KEYS */;
/*!40000 ALTER TABLE `partenaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partenaire_compte`
--

DROP TABLE IF EXISTS `partenaire_compte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partenaire_compte` (
  `Partenaire_idPartenaire` int(11) NOT NULL,
  `Compte_idCompte` int(11) NOT NULL,
  PRIMARY KEY (`Partenaire_idPartenaire`,`Compte_idCompte`),
  KEY `fk_Partenaire_has_Compte_Compte1_idx` (`Compte_idCompte`),
  KEY `fk_Partenaire_has_Compte_Partenaire1_idx` (`Partenaire_idPartenaire`),
  CONSTRAINT `fk_Partenaire_has_Compte_Compte1` FOREIGN KEY (`Compte_idCompte`) REFERENCES `compte` (`idCompte`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Partenaire_has_Compte_Partenaire1` FOREIGN KEY (`Partenaire_idPartenaire`) REFERENCES `partenaire` (`idPartenaire`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partenaire_compte`
--

LOCK TABLES `partenaire_compte` WRITE;
/*!40000 ALTER TABLE `partenaire_compte` DISABLE KEYS */;
/*!40000 ALTER TABLE `partenaire_compte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pointsus`
--

DROP TABLE IF EXISTS `pointsus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pointsus` (
  `idPointSus` int(11) NOT NULL AUTO_INCREMENT,
  `PointSusNum` int(11) DEFAULT NULL,
  `PointSusDescrip` varchar(120) NOT NULL,
  `PointSusStatut` varchar(45) DEFAULT NULL,
  `PointSusPriorite` varchar(45) DEFAULT NULL,
  `PointSusCreation` date DEFAULT NULL,
  `PointSusResPlan` date DEFAULT NULL,
  `PointSusResReal` date DEFAULT NULL,
  `PointSusImpacts` varchar(120) DEFAULT NULL,
  `PointSusDecis` varchar(120) DEFAULT NULL,
  `Projet_idProjet` int(11) NOT NULL,
  `Utilisateur_idUtilisateur` int(11) NOT NULL,
  PRIMARY KEY (`idPointSus`),
  KEY `fk_PointSus_Projet1_idx` (`Projet_idProjet`),
  KEY `fk_PointSus_Utilisateur1_idx` (`Utilisateur_idUtilisateur`),
  CONSTRAINT `fk_PointSus_Projet1` FOREIGN KEY (`Projet_idProjet`) REFERENCES `projet` (`idProjet`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_PointSus_Utilisateur1` FOREIGN KEY (`Utilisateur_idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pointsus`
--

LOCK TABLES `pointsus` WRITE;
/*!40000 ALTER TABLE `pointsus` DISABLE KEYS */;
/*!40000 ALTER TABLE `pointsus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projet`
--

DROP TABLE IF EXISTS `projet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projet` (
  `idProjet` int(11) NOT NULL AUTO_INCREMENT,
  `ProjetLabel` varchar(45) DEFAULT NULL,
  `Compte_idCompte` int(11) NOT NULL,
  `ProjetStatut` varchar(45) DEFAULT NULL,
  `ProjetDteDebut` date DEFAULT NULL,
  `ProjetDteCloture` date DEFAULT NULL,
  `ProjetConcept` tinytext,
  PRIMARY KEY (`idProjet`),
  KEY `fk_Projet_Compte1_idx` (`Compte_idCompte`),
  CONSTRAINT `fk_Projet_Compte1` FOREIGN KEY (`Compte_idCompte`) REFERENCES `compte` (`idCompte`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projet`
--

LOCK TABLES `projet` WRITE;
/*!40000 ALTER TABLE `projet` DISABLE KEYS */;
INSERT INTO `projet` VALUES (3,'Projet5',3,'En cours','2016-08-05','2016-09-05','Description'),(4,'Projet3',3,'StandBy','2016-10-10','2016-11-10','Description\n'),(5,'Projet4',4,'En Cours','2016-08-12','2016-09-12','Description\n');
/*!40000 ALTER TABLE `projet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risque`
--

DROP TABLE IF EXISTS `risque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `risque` (
  `idRisque` int(11) NOT NULL AUTO_INCREMENT,
  `RisqueNum` int(11) DEFAULT NULL,
  `RisqueDescrip` varchar(120) NOT NULL,
  `RisqueProbabilite` int(11) DEFAULT NULL,
  `RisqueImpacte` int(11) DEFAULT NULL,
  `RisqueKRI` int(11) DEFAULT NULL,
  `RisqueDisposition` varchar(45) DEFAULT NULL,
  `RisquePlanAction` varchar(120) DEFAULT NULL,
  `RisqueStatut` varchar(45) DEFAULT NULL,
  `RisqueDecision` varchar(45) DEFAULT NULL,
  `RisqueDetectionDte` date DEFAULT NULL,
  `RisqueQualifDte` date DEFAULT NULL,
  `RisqueClotureDte` date DEFAULT NULL,
  `RisqueComment` tinytext,
  `Projet_idProjet` int(11) NOT NULL,
  PRIMARY KEY (`idRisque`),
  KEY `fk_Risque_Projet1_idx` (`Projet_idProjet`),
  CONSTRAINT `fk_Risque_Projet1` FOREIGN KEY (`Projet_idProjet`) REFERENCES `projet` (`idProjet`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risque`
--

LOCK TABLES `risque` WRITE;
/*!40000 ALTER TABLE `risque` DISABLE KEYS */;
/*!40000 ALTER TABLE `risque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sousprojet`
--

DROP TABLE IF EXISTS `sousprojet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sousprojet` (
  `idSousprojet` int(11) NOT NULL AUTO_INCREMENT,
  `SousprojetLabel` varchar(45) DEFAULT NULL,
  `Projet_idProjet` int(11) NOT NULL,
  `SousprojetStatut` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSousprojet`),
  KEY `fk_Sous-projet_Projet1` (`Projet_idProjet`),
  CONSTRAINT `fk_Sous-projet_Projet1` FOREIGN KEY (`Projet_idProjet`) REFERENCES `projet` (`idProjet`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sousprojet`
--

LOCK TABLES `sousprojet` WRITE;
/*!40000 ALTER TABLE `sousprojet` DISABLE KEYS */;
INSERT INTO `sousprojet` VALUES (1,'Sous-projet#2',3,'Cloture'),(2,'Sous-projet#7',5,'Standby');
/*!40000 ALTER TABLE `sousprojet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilisateur` (
  `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `UtilisateurLogin` varchar(45) DEFAULT NULL,
  `UtilisateurPassword` varchar(60) DEFAULT NULL,
  `UtilisateurNom` varchar(45) DEFAULT NULL,
  `UtilisateurPrenom` varchar(45) DEFAULT NULL,
  `UtilisateurTel` varchar(45) DEFAULT NULL,
  `UtilisateurEmail` varchar(45) DEFAULT NULL,
  `UtilisateurEtat` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUtilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` VALUES (3,'ITSERVadmin','3556e1b80d6bd3e775a7c55ecedf6063','ITSERV','Admin','75654892','adresse@gmail.com',2),(7,'BechirHouas23','5f4dcc3b5aa765d61d8327deb882cf99','Houas','Bechir','7233645','bechir@gmail.com',1),(8,'Graywynd','f11536bee899541aa233f5c0aa98f625','Khiari','Seif','5756456','seif_2@hotmail.fr',1),(9,'regular','5f4dcc3b5aa765d61d8327deb882cf99','Ms','Ordinaire','5756456','email@sdkfklsjlkfds.sdfsdf',1),(10,'OOREDOOadmin','5f4dcc3b5aa765d61d8327deb882cf99','Ooredoo','Admin','21548976','ooredoo@mail.com',1);
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur_compte`
--

DROP TABLE IF EXISTS `utilisateur_compte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilisateur_compte` (
  `Utilisateur_idUtilisateur` int(11) NOT NULL,
  `Compte_idCompte` int(11) NOT NULL,
  PRIMARY KEY (`Utilisateur_idUtilisateur`,`Compte_idCompte`),
  KEY `fk_Utilisateur_has_Compte_Compte1_idx` (`Compte_idCompte`),
  KEY `fk_Utilisateur_has_Compte_Utilisateur1_idx` (`Utilisateur_idUtilisateur`),
  CONSTRAINT `fk_Utilisateur_has_Compte_Compte1` FOREIGN KEY (`Compte_idCompte`) REFERENCES `compte` (`idCompte`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Utilisateur_has_Compte_Utilisateur1` FOREIGN KEY (`Utilisateur_idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur_compte`
--

LOCK TABLES `utilisateur_compte` WRITE;
/*!40000 ALTER TABLE `utilisateur_compte` DISABLE KEYS */;
INSERT INTO `utilisateur_compte` VALUES (3,3),(7,3),(8,3),(9,3),(7,4),(10,4);
/*!40000 ALTER TABLE `utilisateur_compte` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-31 17:59:59
