-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 02 nov. 2020 à 08:14
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gom`
--

-- --------------------------------------------------------

--
-- Structure de la table `age`
--

DROP TABLE IF EXISTS `age`;
CREATE TABLE IF NOT EXISTS `age` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `age`
--

INSERT INTO `age` (`id`, `age`) VALUES
(1, 'Enfant et +'),
(2, 'Ado et +'),
(3, 'Adulte');

-- --------------------------------------------------------

--
-- Structure de la table `date`
--

DROP TABLE IF EXISTS `date`;
CREATE TABLE IF NOT EXISTS `date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `decennie` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `date`
--

INSERT INTO `date` (`id`, `decennie`) VALUES
(1, 'années 90'),
(2, 'années 80'),
(3, 'années 70'),
(4, 'années 60'),
(5, 'années 50'),
(6, 'années 40'),
(7, 'années 30'),
(8, 'années 20 et -');

-- --------------------------------------------------------

--
-- Structure de la table `genre_de_film`
--

DROP TABLE IF EXISTS `genre_de_film`;
CREATE TABLE IF NOT EXISTS `genre_de_film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre_de_film`
--

INSERT INTO `genre_de_film` (`id`, `genre`) VALUES
(1, 'Drame'),
(2, 'Policier / Thriller'),
(3, 'Comédie / Comédie romantique'),
(4, 'Horreur'),
(5, 'Science Fiction / Anticipation'),
(6, 'Fantastique'),
(7, 'Action / Aventure'),
(8, 'Guerre / Western'),
(9, 'Animé'),
(10, 'Peplum / Cape et épée'),
(11, 'Historique'),
(12, 'Documentaire'),
(13, 'Autre');

-- --------------------------------------------------------

--
-- Structure de la table `movie`
--

DROP TABLE IF EXISTS `movie`;
CREATE TABLE IF NOT EXISTS `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) CHARACTER SET utf8 NOT NULL,
  `realisateur` varchar(50) CHARACTER SET utf8 NOT NULL,
  `synopsis` text CHARACTER SET utf8 NOT NULL,
  `lien` varchar(500) CHARACTER SET utf8 NOT NULL,
  `affiche` varchar(255) CHARACTER SET utf8 NOT NULL,
  `id_genre` int(11) NOT NULL,
  `id_age` int(11) NOT NULL,
  `id_type1` int(11) NOT NULL,
  `id_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `movie`
--

INSERT INTO `movie` (`id`, `titre`, `realisateur`, `synopsis`, `lien`, `affiche`, `id_genre`, `id_age`, `id_type1`, `id_date`) VALUES
(1, 'Full Metal Jacket', 'Stanley Kubrick', 'Un marine américain pragmatique observe les effets déshumanisants de la guerre du Vietnam sur ses camarades recrues, de leur entraînement violent du camp militaire jusqu\'aux combats de rue sanglants à Hue.', 'https://www.imdb.com/title/tt0093058/?ref_=nv_sr_srsg_3', '5f9da5050bcb3_a7a562ea1cfba91699f78755c1155563.jpg', 8, 3, 2, 2),
(2, 'Brazil', 'Terry Gilliam', 'Dans un monde rétro-futuriste, un bureaucrate tente de corriger une erreur administrative et devient un ennemi de l\'État.\r\n', 'https://www.imdb.com/title/tt0088846/?ref_=nv_sr_srsg_0', '5f9da4b7b1edb_51yiWETM1DL._AC_.jpg', 5, 2, 2, 2),
(3, 'Les sept samouraïs', 'Akira Kurosawa', 'Un village pauvre qui est la cible des attaques de bandits recrute sept samouraïs sans maître pour les défendre.', 'https://www.imdb.com/title/tt0047478/?ref_=nv_sr_srsg_2', '5f9da55b849ac_Les_Sept_Samourais.jpg', 10, 2, 2, 5),
(4, 'Citizen Kane', 'Orson Welles', 'Suite au décès d\'un magnat de l\'édition, des journalistes se démènent pour découvrir le sens de ses dernières paroles.', 'https://www.imdb.com/title/tt0033467/', '5f9dbeeae9f8a_Citizen_Kane_poster,_1941_(Style_B,_unrestored).jpg', 2, 2, 2, 6),
(5, 'Elephant Man', 'David Lynch', 'Un chirurgien de l\'époque victorienne sauve un homme défiguré et maltraité gagnant sa vie comme monstre de foire. Derrière sa façade monstrueuse se dévoile une personne empreinte de gentillesse, d\'intelligence et de sophistication.\r\n', 'https://www.imdb.com/title/tt0080678/?ref_=nv_sr_srsg_0', '5f9da62cea56e_3be3bfffe26a21c06e5b43e7b169d8d3.jpg', 1, 2, 5, 2),
(6, 'Rencontres du troisième type', 'Steven Spielberg', 'Roy Neary, monteur de lignes électrique, observe comment sa vie quotidienne calme et ordinaire se trouve bouleversée après une rencontre rapprochée avec un OVNI.\r\n', 'https://www.imdb.com/title/tt0081505/?ref_=nv_sr_srsg_0', '5f9da6634c1a1_7jejww3lmaosmzt2a3dgxqsup7f-759.jpg', 5, 2, 2, 3),
(7, 'Les dents de la mer', 'Steven Spielberg', 'Un shérif local, un biologiste marin et un vieux marin font équipe pour chasser un grand requin blanc qui fait des ravages dans une station balnéaire.\r\n', 'https://www.imdb.com/title/tt0081505/?ref_=nv_sr_srsg_0', '5f9da69e2995c_wurf6gkx0jujsu1meecpubhmrdd-613.jpg', 4, 2, 6, 3),
(8, 'Usual Suspects', 'Bryan Singer', 'L\'unique survivant d\'un horrible combat d\'armes à feu raconte les évènements sinistres, qui débutèrent lorsque cinq criminels furent rassemblés par la police pour une session d\'identification à priori aléatoire.\r\n', 'https://www.imdb.com/title/tt0114814/?ref_=nv_sr_srsg_0', '5f9da6dcad1cc_614eL3nTorL._AC_SL1191_.jpg', 2, 2, 2, 1),
(9, 'The Thing', 'John Carpenter', 'Une équipe de recherche en Antarctique est poursuivie par un extraterrestre qui change de forme et prend l\'apparence de ses victimes.', 'https://www.imdb.com/title/tt0084787/?ref_=nv_sr_srsg_0', '5f9da72786235_71sLjLJT04L._AC_SL1500_.jpg', 4, 3, 6, 2),
(10, '12 hommes en colère', 'Sidney Lumet', 'Un jury réfractaire tente d\'empêcher une erreur judiciaire en forçant les autres jurys à réexaminer les preuves.', 'https://www.imdb.com/title/tt0050083/?ref_=nv_sr_srsg_0', '5f9da77ded800_12_Angry_Men_(1957_film_poster).jpg', 2, 2, 2, 5),
(11, 'Reservoir Dogs', 'Quentin Tarantino', 'Un chef de la mafia réunit une équipe de six criminels expérimentés dans le but de réaliser un grand braquage de bijouterie.\r\n', 'https://www.imdb.com/title/tt0105236/?ref_=nv_sr_srsg_0', '5f9da7b96b70e_Reservoir_Dogs.jpg', 2, 3, 2, 1),
(12, 'Jurassic Park', 'Steven Spielberg', 'Grâce à l\'ADN fossilisé dans l\'ambre, John Hammond donne vie à plusieurs espèces de dinosaures et crée Jurassic Park, un parc à thème sur une île du Costa Rica. Mais ce qui ressemblait à un rêve devient rapidement un cauchemar.', 'https://www.imdb.com/title/tt0107290/?ref_=nv_sr_srsg_0', '5f9da867e9b1f_61l0K3CY32L._AC_SL1200_.jpg', 7, 1, 3, 1),
(13, 'Misery', 'Rob Reiner', 'Un célèbre romancier, sauvé d\'un accident de voiture par une fan éplorée, réalise que les soins que celle-ci lui prodigue ne sont que le début d\'un long cauchemar.\r\n', 'https://www.imdb.com/title/tt0100157/?ref_=nv_sr_srsg_0', '5f9da8a5e3b0c_352235-affiche-du-film-misery-953x0-1.jpg', 4, 2, 6, 1),
(14, 'Monty Python : Sacré Graal !', 'Terry Gilliam, Terry Jones', 'Le Roi Arthur et ses chevaliers se lancent dans une quête du Graal à petit budget, rencontrant de nombreux obstacles très stupides.', 'https://www.imdb.com/title/tt0071853/?ref_=nv_sr_srsg_0', '5f9da906e8c08_Monty_Python_Sacre_Graal.jpg', 3, 1, 1, 3),
(15, 'Monty Python: La Vie de Brian', 'Terry Jones', 'Brian est né le jour de Noël d\'origine, dans l\'étable d\'à côté. Toute sa vie, on le prend pour le messie.\r\n', 'https://www.imdb.com/title/tt0079470/?ref_=nv_sr_srsg_0', '5f9da9448fe16_Monty_Python_La_Vie_de_Brian.jpg', 3, 1, 1, 3),
(16, 'Le Roi Lion', 'Roger Allers, Rob Minkoff', 'Un lionceau prince héritier est convaincu par son oncle perfide qu\'il a causé la mort de son père. Désespéré, il s\'enfuit en exil pour apprendre seulement à l\'âge adulte son identité et ses responsabilités.', 'https://www.imdb.com/title/tt0081505/?ref_=nv_sr_srsg_0', '5f9da987b877f_affiche-roi-lion-01.jpg', 9, 1, 1, 1),
(17, 'Aladdin ', 'Ron Clements, John Musker', 'Quand un gamin des rues concoure pour l\'amour d\'une belle princesse, il utilise le pouvoir magique d\'un génie pour se transformer en prince afin de l\'épouser.', 'https://www.imdb.com/title/tt0103639/?ref_=nv_sr_srsg_3', '5f9da9c1ba814_aladdin.jpg', 9, 1, 1, 1),
(18, 'Princesse Mononoké', 'Hayao Miyazaki', 'En quête d\'un remède contre la malédiction d\'un Tatarigami, Ashitaka se retrouve plongé au coeur d\'une guerre entre les dieux de la forêt et Tatara, une colonie minière. Dans cette quête, il fait la rencontre de San, la princesse Mononoke.\r\n', 'https://www.imdb.com/title/tt0119698/?ref_=nv_sr_srsg_0', '5f9da9f22f32c_71Lf-X5pxQL._AC_SL1280_.jpg', 9, 2, 2, 1),
(19, 'Le cercle des poètes disparus', 'Peter Weir', 'Le professeur d\'anglais John Keating incite ses étudiants à regarder la poésie avec une perspective différente de connaissances et de sentiments authentiques.\r\n', 'https://www.imdb.com/title/tt0097165/?ref_=nv_sr_srsg_0', '5f9daa2a1744e_103509265.jpg', 1, 2, 5, 2),
(20, 'Flubber', 'Les Mayfield', 'Le professeur Brainard, qui enseigne la physique au collège de Medfield, est tellement absorbé par ses recherches qu\'il a oublié par deux fois de se rendre à son propre mariage avec la douce Sara Jean Lawrence, proviseur du collège. La jeune femme lui accorde une troisième chance. Mais le jour de la noce, Brainard ne peut pas s\'empêcher de tenter une nouvelle expèrience dont le resultat s\'avère explosif. Au milieu de son laboratoire en ruine, le professeur vient d\'inventer une nouvelle source d\'énergie indéstructible qu\'il baptise Flubber.', 'https://www.imdb.com/title/tt0119137/?ref_=nv_sr_srsg_0', '5f9daa8ce8f11_vlhw4xhjkgqslv77mzaddjkx1o3-378.jpg', 3, 1, 7, 1),
(21, 'La ruée vers l\'or', 'Charles Chaplin', 'Le célèbre assaut pour tout l\'or de l\'Oklahoma vu par l\'un des maîtres du burlesque américain.\r\n', 'https://www.imdb.com/title/tt0015864/?ref_=nv_sr_srsg_3', '5f9dab50c7f53_la-ruc3a9e-vers-lor.webp', 3, 1, 1, 8),
(22, 'Bienvenue à Gattaca', 'Andrew Niccol', 'Un homme génétiquement inférieur prend l\'identité d\'un homme supérieur afin de poursuivre son rêve de voyager dans l\'espace.\r\n', 'https://www.imdb.com/title/tt0119177/?ref_=nv_sr_srsg_0', '5f9dab9129b9b_bienvenue-a-gattaca-1997-ethan-hawke-jude-la.jpg', 5, 2, 2, 1),
(23, 'metropolis ', 'Stanley Kubrick', 'Dans une ville futuriste fortement scindée entre la classe ouvrière et les maîtres de la cité, le fils du &quot;&quot;cerveau&quot;&quot; de la ville tombe amoureux d\'une prophétesse de la classe ouvrière qui prédit la venue d\'un sauveur pour régler leurs différends.&quot;\r\n', 'https://www.imdb.com/title/tt0017136/?ref_=nv_sr_srsg_0', '5f9dabd1863ab_81GfWY4PtCL._AC_SL1500_.jpg', 5, 2, 2, 8),
(24, 'M le maudit', 'Fritz Lang', 'Lorsque la police d\'une ville allemande ne parvient pas à attraper un enfant assassin, d\'autres criminels se joignent à la chasse à l\'homme.\r\n', 'https://www.imdb.com/title/tt0022100/?ref_=nv_sr_srsg_0', '5f9dac5b61a77_M_le_maudit.jpg', 2, 2, 2, 7),
(25, 'Le Bon, la brute, le truand', 'Sergio Leone', 'Une arnaque à la chasse aux primes associe deux hommes à une alliance difficile contre un troisième dans une course à la recherche d\'une fortune en or enfouie dans un cimetière éloigné.\r\n', 'https://www.imdb.com/title/tt0060196/?ref_=nv_sr_srsg_0', '5f9dacb5336e4_237103.jpg', 8, 2, 2, 4),
(26, 'Il était une fois dans l\'Ouest', 'Sergio Leone', 'Un mystérieux inconnu possédant un harmonica s\'associe à un desperado notoire pour protéger une jolie veuve d\'un assassin sans scrupule travaillant pour le chemin de fer.', 'https://www.imdb.com/title/tt0064116/?ref_=nv_sr_srsg_0', '5f9dacfcdc03c_434841.jpg', 8, 2, 2, 4),
(27, 'La guerre des étoiles', 'George Lucas', 'Luke Skywalker se joint à un chevalier Jedi, un pilote arrogant, un Wookiee et à deux droïdes pour sauver la galaxie de l\'Empire, tout en essayant de sauver la princesse Léia du maléfique Dark Vador.\r\n', 'https://www.imdb.com/title/tt0076759/?ref_=nv_sr_srsg_0', '5f9dad3b02c37_fc12814f7f32b766409faf48df15ddf0.jpg', 7, 1, 3, 3),
(28, 'Le dictateur', 'Charles Chaplin', 'Dans le ghetto juif vit un petit barbier qui ressemble énormément à Adenoid Hynkel, le dictateur de Tomania qui a décidé l\'extermination du peuple juif. Au cours d\'une rafle, le barbier est arrêté en compagnie de Schultz, un farouche adversaire d\'Hynkel...', 'https://www.imdb.com/title/tt0032553/?ref_=nv_sr_srsg_3', '5f9dae1e0b484_Affiche-Le-Dictateur.jpg', 3, 1, 1, 6),
(29, 'Blade Runner', 'Ridley Scott', 'Un agent d\'une unité spéciale, un blade runner, doit poursuivre et éliminer les quatre répliquant qui ont volé un navire dans l\'espace et sont retournés sur Terre pour trouver leur créateur.', 'https://www.imdb.com/title/tt0083658/?ref_=nv_sr_srsg_3', '5f9daee39a0b4_blade-runner-affiche-1000460.jpg', 5, 2, 3, 2),
(30, 'Shining', 'Stanley Kubrick', 'Une famille se rend dans un hôtel isolé pour l\'hiver, où une présence spirituelle et maléfique incite le père à la violence, tandis que son fils télépathe fait l\'expérience d\'horribles visions du passé et du futur.', 'https://www.imdb.com/title/tt0081505/?ref_=nv_sr_srsg_0', '5f9da0b9bbbb9_81TiKfQeJxL._AC_SL1500_.jpg', 4, 3, 6, 2);

-- --------------------------------------------------------

--
-- Structure de la table `type_de_film`
--

DROP TABLE IF EXISTS `type_de_film`;
CREATE TABLE IF NOT EXISTS `type_de_film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_de_film`
--

INSERT INTO `type_de_film` (`id`, `type`) VALUES
(1, 'feel good movie'),
(2, 'Film choc'),
(3, 'Film a grand spectacle'),
(4, 'Film éducatif'),
(5, 'Film triste'),
(6, 'frisson'),
(7, 'nanar'),
(8, 'aucun');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mdp` varchar(255) CHARACTER SET utf8 NOT NULL,
  `role` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `pseudo`, `email`, `mdp`, `role`) VALUES
(5, 'Wmalain', 'wehbewmalain@gmail.com', '$2y$10$58WvZ.MRlT9vuJ6X2PYvIelKohncER1pdtCJRgcdYVgIc75wtBNWS', 1),
(6, 'aaa', 'aaa@aaa.fr', '$2y$10$wchdKz2J8g3WkY/SnDWFou48UvUxrmLsRBQvmDfKmq5eb.2Cj6vey', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
