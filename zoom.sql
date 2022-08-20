-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 20 août 2022 à 04:14
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `zoom`
--

-- --------------------------------------------------------

--
-- Structure de la table `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `acess_token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `zoom_oauth`
--

CREATE TABLE `zoom_oauth` (
  `id` int(11) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `zoom_oauth`
--

INSERT INTO `zoom_oauth` (`id`, `provider`, `provider_value`) VALUES
(1, 'zoom', '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIxOTQ4YmRiMi1jMTZjLTRiY2UtOTA5Yi1iMGEyNGY5M2U1ZmIifQ.eyJ2ZXIiOjcsImF1aWQiOiI4NzQ0YzgxMmE0NmRkNzMyMzY1YzYxMzQ5N2IyOTljNCIsImNvZGUiOiJpRkRaaGNWY0NtXzlCTUtxOExtU1JDVXFnand2SnF0T3ciLCJpc3MiOiJ6bTpjaWQ6Z1AwVTU3d01Sem15OVozbjZpajVYQSIsImdubyI6MCwidHlwZSI6MCwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiI5Qk1LcThMbVNSQ1VxZ2p3dkpxdE93IiwibmJmIjoxNjYwOTU5NjIwLCJleHAiOjE2NjA5NjMyMjAsImlhdCI6MTY2MDk1OTYyMCwiYWlkIjoiOS1sUzBYV1hTOFdSLWwzajNBVDktZyIsImp0aSI6ImZkMzFlMjJjLWQ4OWUtNDkzYS04MjNmLTY5YzEwNGJhZTljMiJ9.XlIDZtdHRjjzX4Pi9-d6yuI5ihYI6fNWNlxZQ1tlVtQbARBUPl-a05d5u0WsGgzHLaMuhwlXGQum5g3etdyeYg\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiI0MWQ0MmNhNy1jMWU3LTRiMGEtODI1NS03MDI3MzczNmUxNGIifQ.eyJ2ZXIiOjcsImF1aWQiOiI4NzQ0YzgxMmE0NmRkNzMyMzY1YzYxMzQ5N2IyOTljNCIsImNvZGUiOiJpRkRaaGNWY0NtXzlCTUtxOExtU1JDVXFnand2SnF0T3ciLCJpc3MiOiJ6bTpjaWQ6Z1AwVTU3d01Sem15OVozbjZpajVYQSIsImdubyI6MCwidHlwZSI6MSwidGlkIjowLCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiI5Qk1LcThMbVNSQ1VxZ2p3dkpxdE93IiwibmJmIjoxNjYwOTU5NjIwLCJleHAiOjIxMzM5OTk2MjAsImlhdCI6MTY2MDk1OTYyMCwiYWlkIjoiOS1sUzBYV1hTOFdSLWwzajNBVDktZyIsImp0aSI6Ijc4YzVlMjBjLTQyZGQtNDRjZS05YmFmLWRkNTBiYzVjOTlhMSJ9.RW2MzakYgPnnA1HPOlROCLtSQWE9sGip7UCeJ_qFyYEHtgjPYzBuNqsTghJqJBfoKrSYli0kLeZxy5XHw8lcXA\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin meeting_token:read:admin:live_streaming meeting_token:read:admin:local_archiving meeting_token:read:admin:local_recording\"}');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `zoom_oauth`
--
ALTER TABLE `zoom_oauth`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `zoom_oauth`
--
ALTER TABLE `zoom_oauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
