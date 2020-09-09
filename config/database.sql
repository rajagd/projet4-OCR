-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  mer. 09 sep. 2020 à 23:29
-- Version du serveur :  10.0.38-MariaDB-0+deb8u1
-- Version de PHP :  7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nom de votre base de donnée`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `id_billet` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `signalement` tinyint(1) NOT NULL DEFAULT '0',
  `comment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(75) NOT NULL,
  `content` text NOT NULL,
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `creation_date`) VALUES
(1, 'Chapitre 1', 'Duis euismod porta est, ac semper odio varius dignissim. Duis cursus aliquam purus, id bibendum velit vulputate sit amet. Duis luctus scelerisque arcu, maximus viverra risus eleifend sit amet. Donec id dui egestas, auctor sem at, mollis purus. In purus purus, euismod sit amet velit vitae, euismod dapibus nisi. Morbi mollis molestie eros. Vivamus a odio nulla. Praesent turpis nisi, gravida eget neque cursus, sagittis molestie ligula. Integer ac rutrum ipsum, ac cursus augue. Donec ut sollicitudin nisl, et finibus est. Cras sodales dui diam, eu tincidunt dolor posuere non.\r\n\r\nDuis at convallis lorem, in accumsan est. Aenean dapibus hendrerit mi. Nunc et dolor tortor. Maecenas quis ipsum vel dui bibendum volutpat. Nulla molestie tellus tellus, sit amet vestibulum tortor venenatis vel. Integer massa diam, vestibulum ac congue sed, hendrerit et ex. Vestibulum quis risus tortor. Vestibulum laoreet, ex sit amet lacinia porta, velit lacus ornare nisi, eget pretium purus quam eu arcu. Nulla eu mollis felis.', '2020-09-06 00:00:00'),
(2, 'Chapitre 2', 'In hac habitasse platea dictumst. Morbi lobortis tellus eu interdum laoreet. In sollicitudin tellus magna, at fermentum nisi rhoncus ut. Suspendisse ut pulvinar urna. Curabitur sed feugiat tortor. Aenean facilisis leo vitae nisl iaculis semper. Morbi sagittis velit sed felis auctor, sit amet consectetur nulla malesuada. Sed orci dui, vehicula ac orci at, maximus gravida lectus. Aenean scelerisque, ipsum ac dictum molestie, lectus quam ullamcorper est, quis imperdiet lacus urna at purus. Morbi sem massa, vulputate non justo semper, lobortis ullamcorper purus. Vivamus ornare, elit ac blandit tempor, leo odio luctus ipsum, id facilisis mauris nisl a odio. Morbi a ullamcorper sem.\r\n\r\nInterdum et malesuada fames ac ante ipsum primis in faucibus. Aenean consectetur eros eget dui commodo, nec interdum massa faucibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc a risus arcu. Phasellus tincidunt, lorem nec consectetur faucibus, nibh nunc lobortis nisi, non semper nisi tortor ut est. In id efficitur sapien. Phasellus aliquam tellus quis lorem maximus, a pellentesque diam aliquam. In mauris ligula, molestie suscipit lacus et, tristique sodales augue. Morbi in rutrum libero. Aliquam sit amet dolor vel sapien blandit eleifend. Mauris vitae lobortis orci, nec euismod libero. Curabitur ut metus non lorem laoreet aliquam congue vitae metus. Donec feugiat mi libero, ut ultrices justo porta eu. Vivamus at arcu eget lorem scelerisque ultrices.', '2020-09-07 15:45:00'),
(3, 'Chapitre 3', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean consectetur eros eget dui commodo, nec interdum massa faucibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc a risus arcu. Phasellus tincidunt, lorem nec consectetur faucibus, nibh nunc lobortis nisi, non semper nisi tortor ut est. In id efficitur sapien. Phasellus aliquam tellus quis lorem maximus, a pellentesque diam aliquam. In mauris ligula, molestie suscipit lacus et, tristique sodales augue. Morbi in rutrum libero. Aliquam sit amet dolor vel sapien blandit eleifend. Mauris vitae lobortis orci, nec euismod libero. Curabitur ut metus non lorem laoreet aliquam congue vitae metus. Donec feugiat mi libero, ut ultrices justo porta eu. Vivamus at arcu eget lorem scelerisque ultrices.\r\n\r\nNullam eu justo elit. Praesent risus odio, maximus eu congue ac, gravida elementum tortor. Ut finibus odio eu erat posuere faucibus. Aliquam fringilla, risus ut iaculis efficitur, elit velit tempor quam, sit amet pharetra ligula urna sit amet nibh. Nulla vulputate tortor at libero auctor sollicitudin. Morbi ultricies maximus augue in volutpat. Nunc lobortis luctus tellus ut pulvinar. Quisque orci nibh, scelerisque a egestas a, consectetur in nibh. Nunc non blandit sem. Aliquam malesuada egestas quam et tempus. Sed tempus neque eu nibh consequat ultrices. Etiam malesuada odio posuere erat egestas tempor. Suspendisse ultrices porta arcu sed commodo. Etiam varius elit nec velit scelerisque, sit amet vulputate tellus gravida.', '2020-09-08 14:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(35) NOT NULL,
  `mail` text NOT NULL,
  `motdepasse` varchar(100) NOT NULL,
  `droits` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `mail`, `motdepasse`, `droits`) VALUES
(1, 'jeans', 'jeans@mail.fr', '*AFF1139A7684B1B4EACB289D', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

