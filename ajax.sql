-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 21 mai 2021 à 20:34
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ajax`
--

-- --------------------------------------------------------

--
-- Structure de la table `iles`
--

CREATE TABLE `iles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `iles`
--

INSERT INTO `iles` (`id`, `name`) VALUES
(1, 'Tahiti'),
(2, 'Bora Bora'),
(3, 'Raiatea');

-- --------------------------------------------------------

--
-- Structure de la table `iles_villes`
--

CREATE TABLE `iles_villes` (
  `id` int(11) NOT NULL,
  `fk_iles` int(11) NOT NULL,
  `fk_villes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `iles_villes`
--

INSERT INTO `iles_villes` (`id`, `fk_iles`, `fk_villes`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 1, 5),
(4, 2, 2),
(5, 2, 6),
(6, 2, 7),
(7, 3, 3),
(8, 3, 8),
(9, 3, 9);

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `name`) VALUES
(1, 'Papeete'),
(2, 'Vaitape'),
(3, 'Uturoa'),
(4, 'Arue '),
(5, 'Faa\'a'),
(6, 'Faanui'),
(7, 'Anau'),
(8, 'Taputapuatea'),
(9, 'Tumaraa');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `iles`
--
ALTER TABLE `iles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `iles_villes`
--
ALTER TABLE `iles_villes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_iles_viles` (`fk_iles`),
  ADD KEY `fk_viles_iles` (`fk_villes`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `iles`
--
ALTER TABLE `iles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `iles_villes`
--
ALTER TABLE `iles_villes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `iles_villes`
--
ALTER TABLE `iles_villes`
  ADD CONSTRAINT `fk_iles_viles` FOREIGN KEY (`fk_iles`) REFERENCES `iles` (`id`),
  ADD CONSTRAINT `fk_viles_iles` FOREIGN KEY (`fk_villes`) REFERENCES `villes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
