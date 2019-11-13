-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Sam 11 Novembre 2017 à 23:52
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `monsitebdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `message` varchar(255) NOT NULL,
  `dateMessage` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reponse` varchar(255) NOT NULL DEFAULT 'Pas de r&eacute;ponse'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `contact`
--

INSERT INTO `contact` (`id`, `nom`, `email`, `telephone`, `message`, `dateMessage`, `reponse`) VALUES
(3, 'Fenick', 'pas@la.ca', '4187596321', 'Igrid : "You know nothing Jon snow"', '2014-04-04 22:05:12', 'Pas de r&eacute;ponse'),
(28, 'Jorah Mormond', 'SerBaristan@GoT.hbo', '+666 911 911', 'Arya : "Anyone can be kill"', '2014-04-05 15:00:00', 'Pas de r&eacute;ponse'),
(40, 'Visiteur', '', '', 'Je tiens &agrave; faire remarquer que le lien de ... est mort mais sinon c\'est un bon site !', '2017-11-11 23:27:37', 'Pas de r&eacute;ponse');

-- --------------------------------------------------------

--
-- Structure de la table `droit`
--

CREATE TABLE `droit` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `permission` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `droit`
--

INSERT INTO `droit` (`id`, `nom`, `permission`) VALUES
(5, 'root', 777),
(6, 'utilisateur', 640),
(7, 'visiteur', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `droit` int(11) NOT NULL,
  `login` varchar(20) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `sexe` enum('M','F') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `droit`, `login`, `password`, `nom`, `prenom`, `age`, `sexe`) VALUES
(1, 5, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'LeRobot', 'Jarvis', 99, 'F'),
(2, 6, 'martin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Stark', 'LeDernier', 66, 'M'),
(3, 6, 'vaness', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'AgeDeGlace', 'Sid', 15, 'F');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `droit`
--
ALTER TABLE `droit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`droit`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `droit`
--
ALTER TABLE `droit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
