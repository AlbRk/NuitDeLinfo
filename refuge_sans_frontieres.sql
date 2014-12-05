-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 05, 2014 at 06:14 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `refuge_sans_frontieres`
--

-- --------------------------------------------------------

--
-- Table structure for table `ref_appartienta`
--

CREATE TABLE IF NOT EXISTS `ref_appartienta` (
  `utilisateur_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ref_estetablidans`
--

CREATE TABLE IF NOT EXISTS `ref_estetablidans` (
  `etablissement_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ref_estmaladede`
--

CREATE TABLE IF NOT EXISTS `ref_estmaladede` (
  `maladie_id` int(11) NOT NULL,
  `utilisateur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ref_previent`
--

CREATE TABLE IF NOT EXISTS `ref_previent` (
  `maladie_id` int(11) NOT NULL,
  `prevention_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ref_proche`
--

CREATE TABLE IF NOT EXISTS `ref_proche` (
  `utilisateur_id` int(11) NOT NULL,
  `utilisateur_id2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coordonnees`
--

CREATE TABLE IF NOT EXISTS `tbl_coordonnees` (
`coordonnees_id` int(11) NOT NULL,
  `coordonnees_lat` float NOT NULL,
  `coordonnees_long` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_coordonnees`
--

INSERT INTO `tbl_coordonnees` (`coordonnees_id`, `coordonnees_lat`, `coordonnees_long`) VALUES
(1, -0.36778, 21.903),
(2, 37.3451, 97.3814),
(3, 53.5586, -113.481),
(4, 37.3451, 97.3814);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_etablissement`
--

CREATE TABLE IF NOT EXISTS `tbl_etablissement` (
`etablissement_id` int(11) NOT NULL,
  `etablissement_nom` varchar(20) NOT NULL,
  `type_id` int(11) NOT NULL,
  `etablissement_capacite` int(11) NOT NULL,
  `etablissement_telephone` varchar(12) NOT NULL,
  `coordonnees_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_etablissement`
--

INSERT INTO `tbl_etablissement` (`etablissement_id`, `etablissement_nom`, `type_id`, `etablissement_capacite`, `etablissement_telephone`, `coordonnees_id`) VALUES
(3, 'Picasso', 1, 3000, '0152368451', 1),
(4, 'Moulin', 1, 8000, '0125478652', 2),
(5, 'Zambuly', 2, 42, '+33652415847', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_formation`
--

CREATE TABLE IF NOT EXISTS `tbl_formation` (
`formation_id` int(11) NOT NULL,
  `formation_intitule` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_maladie`
--

CREATE TABLE IF NOT EXISTS `tbl_maladie` (
`maladie_id` int(11) NOT NULL,
  `maladie_contagieuse` tinyint(1) NOT NULL,
  `vaccin_id` int(11) NOT NULL,
  `maladie_intitule` varchar(30) NOT NULL,
  `maladie_remede` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_medecin`
--

CREATE TABLE IF NOT EXISTS `tbl_medecin` (
`medecin_id` int(11) NOT NULL,
  `formation_id` int(11) NOT NULL,
  `etablissement_id` int(11) NOT NULL,
  `medecin_mdp` varchar(10) NOT NULL,
  `medecin_nom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pays`
--

CREATE TABLE IF NOT EXISTS `tbl_pays` (
`pays_id` int(11) NOT NULL,
  `pays_nom` varchar(30) NOT NULL,
  `pays_risque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prevention`
--

CREATE TABLE IF NOT EXISTS `tbl_prevention` (
`prevention_id` int(11) NOT NULL,
  `prevention_dateC` date NOT NULL,
  `prevention_desc` text NOT NULL,
  `prevention_titre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_symptomes`
--

CREATE TABLE IF NOT EXISTS `tbl_symptomes` (
`symptomes_id` int(11) NOT NULL,
  `symptomes_boutons` tinyint(1) NOT NULL,
  `symptomes_diarrhée` tinyint(1) NOT NULL,
  `symptomes_fatigue` tinyint(1) NOT NULL,
  `symptomes_fievre` tinyint(1) NOT NULL,
  `symptomes_malArticulation` tinyint(1) NOT NULL,
  `symptomes_malTete` tinyint(1) NOT NULL,
  `symptomes_malVentre` tinyint(1) NOT NULL,
  `symptomes_nausee` tinyint(1) NOT NULL,
  `symptomes_saignemen` tinyint(1) NOT NULL,
  `symptomes_saignement` tinyint(1) NOT NULL,
  `symptomes_autre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE IF NOT EXISTS `tbl_type` (
`type_id` int(11) NOT NULL,
  `type_libelle` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`type_id`, `type_libelle`) VALUES
(1, 'Hôpital'),
(2, 'Camp');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type_zone`
--

CREATE TABLE IF NOT EXISTS `tbl_type_zone` (
`type_zone_id` int(11) NOT NULL,
  `type_zone_color` varchar(6) NOT NULL,
  `type_zone_libelle` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_type_zone`
--

INSERT INTO `tbl_type_zone` (`type_zone_id`, `type_zone_color`, `type_zone_libelle`) VALUES
(1, 'ff0000', 'guerre'),
(2, '0000ff', 'maladie');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_utilisateur`
--

CREATE TABLE IF NOT EXISTS `tbl_utilisateur` (
`utilisateur_id` int(11) NOT NULL,
  `utilisateur_age` int(11) NOT NULL,
  `utilisateur_nom` int(11) NOT NULL,
  `utilisateur_prenom` int(11) NOT NULL,
  `utilisateur_mdp` varchar(10) NOT NULL,
  `utilisateur_sexe` tinyint(1) NOT NULL,
  `utilisateur_enceinte` tinyint(1) NOT NULL,
  `symptomes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vaccin`
--

CREATE TABLE IF NOT EXISTS `tbl_vaccin` (
`vaccin_id` int(11) NOT NULL,
  `vaccin_nom` varchar(10) NOT NULL,
  `vaccin_dateCrea` date NOT NULL,
  `vaccin_dateFin` date NOT NULL,
  `vaccin_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_zone`
--

CREATE TABLE IF NOT EXISTS `tbl_zone` (
`zone_id` int(11) NOT NULL,
  `coordonnees_id` int(11) NOT NULL,
  `zone_radius` int(11) NOT NULL,
  `type_zone_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_zone`
--

INSERT INTO `tbl_zone` (`zone_id`, `coordonnees_id`, `zone_radius`, `type_zone_id`) VALUES
(1, 1, 2000000, 1),
(2, 2, 20000000, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ref_appartienta`
--
ALTER TABLE `ref_appartienta`
 ADD PRIMARY KEY (`utilisateur_id`,`zone_id`), ADD KEY `FK_appartienta_zone` (`zone_id`);

--
-- Indexes for table `ref_estetablidans`
--
ALTER TABLE `ref_estetablidans`
 ADD PRIMARY KEY (`etablissement_id`,`zone_id`), ADD KEY `FK_estetablidans_zone` (`zone_id`);

--
-- Indexes for table `ref_estmaladede`
--
ALTER TABLE `ref_estmaladede`
 ADD PRIMARY KEY (`maladie_id`,`utilisateur_id`), ADD KEY `FK_estmaladede_utilisateur` (`utilisateur_id`);

--
-- Indexes for table `ref_previent`
--
ALTER TABLE `ref_previent`
 ADD PRIMARY KEY (`maladie_id`,`prevention_id`), ADD KEY `FK_previent_prevention` (`prevention_id`);

--
-- Indexes for table `ref_proche`
--
ALTER TABLE `ref_proche`
 ADD PRIMARY KEY (`utilisateur_id`,`utilisateur_id2`), ADD KEY `FK_proche_utilisateur2` (`utilisateur_id2`);

--
-- Indexes for table `tbl_coordonnees`
--
ALTER TABLE `tbl_coordonnees`
 ADD PRIMARY KEY (`coordonnees_id`);

--
-- Indexes for table `tbl_etablissement`
--
ALTER TABLE `tbl_etablissement`
 ADD PRIMARY KEY (`etablissement_id`), ADD KEY `type_id` (`type_id`), ADD KEY `coordonnees_id` (`coordonnees_id`);

--
-- Indexes for table `tbl_formation`
--
ALTER TABLE `tbl_formation`
 ADD PRIMARY KEY (`formation_id`);

--
-- Indexes for table `tbl_maladie`
--
ALTER TABLE `tbl_maladie`
 ADD PRIMARY KEY (`maladie_id`), ADD KEY `vaccin_id` (`vaccin_id`);

--
-- Indexes for table `tbl_medecin`
--
ALTER TABLE `tbl_medecin`
 ADD PRIMARY KEY (`medecin_id`), ADD KEY `formation_id` (`formation_id`,`etablissement_id`), ADD KEY `etablissement_id` (`etablissement_id`);

--
-- Indexes for table `tbl_pays`
--
ALTER TABLE `tbl_pays`
 ADD PRIMARY KEY (`pays_id`);

--
-- Indexes for table `tbl_prevention`
--
ALTER TABLE `tbl_prevention`
 ADD PRIMARY KEY (`prevention_id`);

--
-- Indexes for table `tbl_symptomes`
--
ALTER TABLE `tbl_symptomes`
 ADD PRIMARY KEY (`symptomes_id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
 ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_type_zone`
--
ALTER TABLE `tbl_type_zone`
 ADD PRIMARY KEY (`type_zone_id`);

--
-- Indexes for table `tbl_utilisateur`
--
ALTER TABLE `tbl_utilisateur`
 ADD PRIMARY KEY (`utilisateur_id`), ADD KEY `symptomes_id` (`symptomes_id`);

--
-- Indexes for table `tbl_vaccin`
--
ALTER TABLE `tbl_vaccin`
 ADD PRIMARY KEY (`vaccin_id`);

--
-- Indexes for table `tbl_zone`
--
ALTER TABLE `tbl_zone`
 ADD PRIMARY KEY (`zone_id`), ADD KEY `coordonnees_id` (`coordonnees_id`), ADD KEY `type_zone_id` (`type_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_coordonnees`
--
ALTER TABLE `tbl_coordonnees`
MODIFY `coordonnees_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_etablissement`
--
ALTER TABLE `tbl_etablissement`
MODIFY `etablissement_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_formation`
--
ALTER TABLE `tbl_formation`
MODIFY `formation_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_maladie`
--
ALTER TABLE `tbl_maladie`
MODIFY `maladie_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_medecin`
--
ALTER TABLE `tbl_medecin`
MODIFY `medecin_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pays`
--
ALTER TABLE `tbl_pays`
MODIFY `pays_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_prevention`
--
ALTER TABLE `tbl_prevention`
MODIFY `prevention_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_symptomes`
--
ALTER TABLE `tbl_symptomes`
MODIFY `symptomes_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_type_zone`
--
ALTER TABLE `tbl_type_zone`
MODIFY `type_zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_utilisateur`
--
ALTER TABLE `tbl_utilisateur`
MODIFY `utilisateur_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_vaccin`
--
ALTER TABLE `tbl_vaccin`
MODIFY `vaccin_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_zone`
--
ALTER TABLE `tbl_zone`
MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ref_appartienta`
--
ALTER TABLE `ref_appartienta`
ADD CONSTRAINT `FK_appartienta_utilisateur` FOREIGN KEY (`utilisateur_id`) REFERENCES `tbl_utilisateur` (`utilisateur_id`),
ADD CONSTRAINT `FK_appartienta_zone` FOREIGN KEY (`zone_id`) REFERENCES `tbl_zone` (`zone_id`);

--
-- Constraints for table `ref_estetablidans`
--
ALTER TABLE `ref_estetablidans`
ADD CONSTRAINT `FK_estetablidans_etablissement` FOREIGN KEY (`etablissement_id`) REFERENCES `tbl_etablissement` (`etablissement_id`),
ADD CONSTRAINT `FK_estetablidans_zone` FOREIGN KEY (`zone_id`) REFERENCES `tbl_zone` (`zone_id`);

--
-- Constraints for table `ref_estmaladede`
--
ALTER TABLE `ref_estmaladede`
ADD CONSTRAINT `FK_estmaladede_maladie` FOREIGN KEY (`maladie_id`) REFERENCES `tbl_maladie` (`maladie_id`),
ADD CONSTRAINT `FK_estmaladede_utilisateur` FOREIGN KEY (`utilisateur_id`) REFERENCES `tbl_utilisateur` (`utilisateur_id`);

--
-- Constraints for table `ref_previent`
--
ALTER TABLE `ref_previent`
ADD CONSTRAINT `FK_previent_maladie` FOREIGN KEY (`maladie_id`) REFERENCES `tbl_maladie` (`maladie_id`),
ADD CONSTRAINT `FK_previent_prevention` FOREIGN KEY (`prevention_id`) REFERENCES `tbl_prevention` (`prevention_id`);

--
-- Constraints for table `ref_proche`
--
ALTER TABLE `ref_proche`
ADD CONSTRAINT `FK_proche_utilisateur` FOREIGN KEY (`utilisateur_id`) REFERENCES `tbl_utilisateur` (`utilisateur_id`),
ADD CONSTRAINT `FK_proche_utilisateur2` FOREIGN KEY (`utilisateur_id2`) REFERENCES `tbl_utilisateur` (`utilisateur_id`);

--
-- Constraints for table `tbl_etablissement`
--
ALTER TABLE `tbl_etablissement`
ADD CONSTRAINT `FK_etablissement_coordonnees` FOREIGN KEY (`coordonnees_id`) REFERENCES `tbl_coordonnees` (`coordonnees_id`),
ADD CONSTRAINT `FK_etablissement_type` FOREIGN KEY (`type_id`) REFERENCES `tbl_type` (`type_id`);

--
-- Constraints for table `tbl_maladie`
--
ALTER TABLE `tbl_maladie`
ADD CONSTRAINT `FK_maladie_vaccin` FOREIGN KEY (`vaccin_id`) REFERENCES `tbl_vaccin` (`vaccin_id`);

--
-- Constraints for table `tbl_medecin`
--
ALTER TABLE `tbl_medecin`
ADD CONSTRAINT `FK_medecin_etablissement` FOREIGN KEY (`etablissement_id`) REFERENCES `tbl_etablissement` (`etablissement_id`),
ADD CONSTRAINT `FK_medecin_formation` FOREIGN KEY (`formation_id`) REFERENCES `tbl_formation` (`formation_id`);

--
-- Constraints for table `tbl_utilisateur`
--
ALTER TABLE `tbl_utilisateur`
ADD CONSTRAINT `FK_utilisateur_symptomes` FOREIGN KEY (`symptomes_id`) REFERENCES `tbl_symptomes` (`symptomes_id`);

--
-- Constraints for table `tbl_zone`
--
ALTER TABLE `tbl_zone`
ADD CONSTRAINT `FK_zone_coordonnees` FOREIGN KEY (`coordonnees_id`) REFERENCES `tbl_coordonnees` (`coordonnees_id`),
ADD CONSTRAINT `FK_zone_type_zone` FOREIGN KEY (`type_zone_id`) REFERENCES `tbl_type_zone` (`type_zone_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
