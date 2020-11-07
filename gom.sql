-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 07 nov. 2020 à 15:57
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

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
(23, 'metropolis ', 'Fritz Lang', 'Dans une ville futuriste fortement scindée entre la classe ouvrière et les maîtres de la cité, le fils du &quot;&quot;cerveau&quot;&quot; de la ville tombe amoureux d\'une prophétesse de la classe ouvrière qui prédit la venue d\'un sauveur pour régler leurs différends.&quot;\r\n', 'https://www.imdb.com/title/tt0017136/?ref_=nv_sr_srsg_0', '5f9dabd1863ab_81GfWY4PtCL._AC_SL1500_.jpg', 5, 2, 2, 8),
(24, 'M le maudit', 'Fritz Lang', 'Lorsque la police d\'une ville allemande ne parvient pas à attraper un enfant assassin, d\'autres criminels se joignent à la chasse à l\'homme.\r\n', 'https://www.imdb.com/title/tt0022100/?ref_=nv_sr_srsg_0', '5f9dac5b61a77_M_le_maudit.jpg', 2, 2, 2, 7),
(25, 'Le Bon, la brute, le truand', 'Sergio Leone', 'Une arnaque à la chasse aux primes associe deux hommes à une alliance difficile contre un troisième dans une course à la recherche d\'une fortune en or enfouie dans un cimetière éloigné.\r\n', 'https://www.imdb.com/title/tt0060196/?ref_=nv_sr_srsg_0', '5f9dacb5336e4_237103.jpg', 8, 2, 2, 4),
(26, 'Il était une fois dans l\'Ouest', 'Sergio Leone', 'Un mystérieux inconnu possédant un harmonica s\'associe à un desperado notoire pour protéger une jolie veuve d\'un assassin sans scrupule travaillant pour le chemin de fer.', 'https://www.imdb.com/title/tt0064116/?ref_=nv_sr_srsg_0', '5f9dacfcdc03c_434841.jpg', 8, 2, 2, 4),
(27, 'La guerre des étoiles', 'George Lucas', 'Luke Skywalker se joint à un chevalier Jedi, un pilote arrogant, un Wookiee et à deux droïdes pour sauver la galaxie de l\'Empire, tout en essayant de sauver la princesse Léia du maléfique Dark Vador.\r\n', 'https://www.imdb.com/title/tt0076759/?ref_=nv_sr_srsg_0', '5f9dad3b02c37_fc12814f7f32b766409faf48df15ddf0.jpg', 7, 1, 3, 3),
(28, 'Le dictateur', 'Charles Chaplin', 'Dans le ghetto juif vit un petit barbier qui ressemble énormément à Adenoid Hynkel, le dictateur de Tomania qui a décidé l\'extermination du peuple juif. Au cours d\'une rafle, le barbier est arrêté en compagnie de Schultz, un farouche adversaire d\'Hynkel...', 'https://www.imdb.com/title/tt0032553/?ref_=nv_sr_srsg_3', '5f9dae1e0b484_Affiche-Le-Dictateur.jpg', 3, 1, 1, 6),
(29, 'Blade Runner', 'Ridley Scott', 'Un agent d\'une unité spéciale, un blade runner, doit poursuivre et éliminer les quatre répliquant qui ont volé un navire dans l\'espace et sont retournés sur Terre pour trouver leur créateur.', 'https://www.imdb.com/title/tt0083658/?ref_=nv_sr_srsg_3', '5f9daee39a0b4_blade-runner-affiche-1000460.jpg', 5, 2, 3, 2),
(30, 'Shining', 'Stanley Kubrick', 'Une famille se rend dans un hôtel isolé pour l\'hiver, où une présence spirituelle et maléfique incite le père à la violence, tandis que son fils télépathe fait l\'expérience d\'horribles visions du passé et du futur.', 'https://www.imdb.com/title/tt0081505/?ref_=nv_sr_srsg_0', '5fa2ff1797b0b_81TiKfQeJxL._AC_SL1500_.jpg', 4, 2, 6, 2),
(31, 'Alien', 'Ridley Scott', 'Un vaisseau spatial perçoit une transmission non-identifiée comme un signal de détresse. Lors de son atterrissage, l\'un des membres de l\'équipage est attaqué par une mystérieuse forme de vie, ils réalisent rapidement que son cycle de vie vient seulement de commencer.', 'https://www.imdb.com/title/tt0078748/', '5fa2f74e58469_alien.jpg', 4, 3, 6, 3),
(32, 'Aliens', 'James Cameron', 'Ellen Ripley est sauvée par une équipe de sauvetage en profondeur après 57 ans de sommeil extrême. La lune visitée par le Nostromo a été colonisée, mais tout contact a été perdu. Cette fois, les marines coloniales ont une force de frappe impressionnante, mais cela suffira-t-il?\r\n', 'https://www.imdb.com/title/tt0090605/?ref_=nv_sr_srsg_0', '5fa2f8da44af9_hcfmly8c3tdsh173c8nhopf0pek-781.jpg', 5, 2, 2, 2),
(33, 'La mouche', 'David Cronenberg', 'Un scientifique brillant et excentrique entame une lente transformation en un hybride géant homme/mouche après une expérience qui a très mal tourné.\r\n', 'https://www.imdb.com/title/tt0091064/?ref_=fn_al_tt_1', '5fa2fd997352d_mmouche.jpg', 6, 3, 2, 2),
(34, 'Mary à tout prix', 'Bobby Farrelly, Peter Farrelly', 'Un homme a l\'opportunité de retrouver la fille de ses rêves du lycée, même si leur rendez-vous de l\'époque était un désastre complet.\r\n', 'https://www.imdb.com/title/tt0129387/?ref_=nv_sr_srsg_0', '5fa2fb0065bcd_Mary_a_tout_prix.jpg', 3, 1, 1, 1),
(35, 'The Big Lebowski', 'Joel Coen, Ethan Coen ', 'Le Duc Lebowski, pris pour un millionnaire répondant également au nom de Lebowski, cherche à obtenir la restitution de son tapis détruit et demande à ses amis de jouer au bowling.\r\n', 'https://www.imdb.com/title/tt0118715/?ref_=nv_sr_srsg_0', '5fa2fbbd38d80_714VynI1qPL._AC_SL1161_.jpg', 3, 1, 1, 1),
(38, 'La haine', 'Mathieu Kassovitz', '24 heures dans la vie de trois jeunes de banlieue en France au lendemain de violentes émeutes.\r\n', 'https://www.imdb.com/title/tt0113247/?ref_=fn_al_tt_1', '5fa300fac7327_la-haine-lodio-poster.jpg', 1, 2, 2, 1),
(39, 'Pierrot le fou', 'Jean-Luc Godard', 'Pierrot échappe à sa société ennuyeuse et se rend de Paris en Méditerranée avec Marianne, une jeune fille poursuivie par des meurtriers algériens. Sans cesse en cavale, ils mènent ensemble une vie peu orthodoxe.\r\n', 'https://www.imdb.com/title/tt0059592/?ref_=nv_sr_srsg_0', '5fa3017c18930_71WKRyDihSL._AC_SL1211_.jpg', 1, 2, 2, 4),
(40, 'Les tribulations d\'un Chinois en Chine', 'Philippe de Broca', 'Les aventures farfelues du malheureux milliardaire suicidaire Arthur Lempereur.\r\n', 'https://www.imdb.com/title/tt0059831/?ref_=fn_al_tt_3', '5fa302950973f_ce0a935c19c06b0282f3a82f52a5fa80.jpg', 7, 1, 7, 4),
(41, 'Les Tontons flingueurs', 'Georges Lautner', 'L\'ancien gangster Fernand reçoit l\'appel d\'un ami mourant, un chef de la mafia surnommé &quot;Le Mexicain&quot;. Le truand condamné demande à Fernand de s\'occuper d\'une affaire criminelle et de s\'occuper de sa fille qui sera bientôt mariée.\r\n', 'https://www.imdb.com/title/tt0057591/?ref_=nv_sr_srsg_0', '5fa304000bdf4_sq.jpg', 3, 1, 1, 4),
(42, 'Les enfants du paradis ', 'Marcel Carné', 'La vie d\'une belle courtisane et des quatre hommes qui l\'aiment.\r\n', 'https://www.imdb.com/title/tt0037674/?ref_=nv_sr_srsg_0', '5fa30470ac9aa_i282319414627520104.jpg', 1, 1, 5, 6),
(43, 'Legend', 'Ridley Scott', 'Un jeune homme doit empêcher le Lord des Ténèbres de détuire la lumière du jour et voudra se marier avec la femme qu\'il aime.\r\n', 'https://www.imdb.com/title/tt0089469/?ref_=fn_al_tt_1', '5fa3054eae7a0_unnamed.jpg', 6, 2, 3, 2),
(44, 'La nuit des morts-vivants', 'George A. Romero', 'Un groupe de Pennsylvaniens se barricade dans une ancienne ferme pour être à l\'abri de monstres carnivores assoiffés de sang qui ravagent la côte est des États-Unis.', 'https://www.imdb.com/title/tt0063350/?ref_=nv_sr_srsg_0', '5fa305f9e228e_la-nuit-des-morts-vivants-affiche-986239.jpg', 4, 3, 6, 4),
(45, 'Zombie : Le Crépuscule des morts-vivants', 'George A. Romero', 'Suite à une épidémie de zombies grandissante, deux membres d\'une unité d\'élite de Philadelphia, un reporter de la circulation et sa petite-amie productrice de télévision se réfugient dans un centre commercial isolé.', 'https://www.imdb.com/title/tt0077402/?ref_=nv_sr_srsg_0', '5fa30801bc588_Zombie_Le_Crepuscule_des_morts_vivants.jpg', 4, 3, 2, 3),
(46, 'Zombie : Le Crépuscule des morts-vivants', 'George A. Romero', 'Suite à une épidémie de zombies grandissante, deux membres d\'une unité d\'élite de Philadelphia, un reporter de la circulation et sa petite-amie productrice de télévision se réfugient dans un centre commercial isolé.', 'https://www.imdb.com/title/tt0077402/?ref_=nv_sr_srsg_0', '5fa3b6fe80b2c_Zombie_Le_Crepuscule_des_morts_vivants.jpg', 4, 3, 2, 3),
(47, 'Halloween, la nuit des masques', 'John Carpenter', 'Quinze ans après avoir assassiné sa soeur le soir d\'Halloween en 1963, Michael Myers s\'échappe d\'un hôpital psychiatrique et retourne dans la petite ville de Haddonfield pour tuer à nouveau.\r\n', 'https://www.imdb.com/title/tt0077651/?ref_=nv_sr_srsg_4', '5fa3efabc398a_halloween.jpg', 4, 2, 6, 3),
(48, 'L\'exorciste ', 'William Friedkin', 'Lorsqu\'une adolescente est possédée par une entité mystérieuse, sa mère demande l\'aide de deux prêtres pour sauver sa fille.\r\n', 'https://www.imdb.com/title/tt0070047/?ref_=nv_sr_srsg_0', '5fa3f015da379_lkwcZpz5EQotTryNLljmZqnhLtI.jpg', 4, 3, 6, 3),
(49, 'Retour vers le futur', 'Robert Zemeckis', 'Marty McFly, un lycéen de 17 ans, est accidentellement envoyé trente ans plus tôt avec une voiture DeLorean qui voyage dans le temps, inventé par son ami le scientifique non-conformiste Doc Brown.\r\n', 'https://www.imdb.com/title/tt0088763/?ref_=nv_sr_srsg_0', '5fa3f08f8ab50_bttf.jpg', 7, 1, 1, 2),
(50, 'Retour vers le futur 3', 'Robert Zemeckis', '&quot;Savourant une existence paisible en 1885, le docteur Emmet Brown est sur le point d\'être tué par Buford &quot;&quot;Mad Dog&quot;&quot; Tannen. Marty McFly revient alors dans le passé pour sauver son ami.&quot;', 'https://www.imdb.com/title/tt0099088/', '5fa40f836352a_106906.jpg', 7, 1, 1, 1),
(51, 'Retour vers le futur 2 ', 'Robert Zemeckis', 'Après un détour par 2015, Marty McFly doit recommencer sa visite de 1955 afin d\'éviter des changements désastreux en 1985... mais sans nuire aux effets de son premier voyage.\r\n', 'https://www.imdb.com/title/tt0096874/?ref_=nv_sr_srsg_3', '5fa4101597cb2_ret.jpg', 7, 1, 1, 2),
(52, 'Microcosmos: Le peuple de l\'herbe', 'Claude Nuridsany, Marie Pérennou', 'Un documentaire sur la vie des insectes dans les champs et les étangs.\r\n', 'https://www.imdb.com/title/tt0117040/?ref_=nv_sr_srsg_0', '5fa412cf1e159_402776cb27f9e7fccceb459ff5f1c916.jpg', 12, 1, 4, 1),
(53, 'JFK', 'Oliver Stone ', 'Le procureur de La Nouvelle-Orléans Jim Garrison découvre que l\'assassinat de Kennedy est bien plus compliqué que la version officielle.\r\n', 'https://www.imdb.com/title/tt0102138/?ref_=nv_sr_srsg_0', '5fa4142c27cfb_363311a597e1def9300988dbc0d1aa23.jpg', 11, 2, 2, 1),
(54, 'Basic Instinct', 'Paul Verhoeven', 'Un détective de la police violent enquête sur un meurtre brutal dans lequel pourrait être impliqué un romancier manipulateur et séducteur.', 'https://www.imdb.com/title/tt0103772/?ref_=nv_sr_srsg_0', '5fa41499e0f35_$_57.jpg', 13, 3, 2, 1),
(55, 'La corde', 'Alfred Hitchcock', 'Deux hommes tentent de prouver qu\'ils ont commis le crime parfait en organisant un dîner après avoir étranglé à mort leur ancien camarade de classe.\r\n', 'https://www.imdb.com/title/tt0040746/', '5fa68fc086ac5_La_Corde.jpg', 2, 2, 2, 6),
(56, 'Psychose ', 'Alfred Hitchcock', 'Lorsqu\'une secrétaire de Phoenix détourne 40 000 dollars du client de son employeur, elle part en cavale et arrive dans un motel isolé dont le gérant est un jeune homme sous la domination de sa mère.', 'https://www.imdb.com/title/tt0054215/?ref_=fn_al_tt_1', '5fa69022643fe_Psycho_(1960)_theatrical_poster_(retouched).jpg', 2, 2, 2, 4),
(57, 'Dr. Folamour', 'Stanley Kubrick', 'Un général insensé ouvre la voie à l\'holocauste nucléaire qu\'une salle de guerre remplie d\'hommes politiques et de généraux tentent désespérément de s\'arrêter.', 'https://www.imdb.com/title/tt0057012/?ref_=nv_sr_srsg_0', '5fa6909c2ab1b_Docteur_Folamour.jpg', 8, 2, 2, 4),
(58, 'Le parrain', 'Francis Ford Coppola', 'Le patriarche vieillissant d\'une dynastie de la mafia New Yorkaise passe le flambeau de son empire clandestin à son fils réticent.', 'https://www.imdb.com/title/tt0068646/?ref_=nv_sr_srsg_0', '5fa6910583d05_1d460af0d3a08643e5257cf73582a20d.jpg', 2, 2, 2, 3),
(59, 'L\'éveil ', 'Penny Marshall', 'Les victimes d\'une épidémie d\'encéphalite il y a de nombreuses années ont été catatoniques depuis ce temps-là, mais désormais un nouveau médicament donne la possibilité de les faire revivre.', 'https://www.imdb.com/title/tt0099077/', '5fa691e16db05_322717.jpg', 1, 2, 5, 1),
(60, 'Albino Alligator', 'Kevin Spacey', 'Au moment d\'empocher le magot, trois cambrioleurs déclenchent malencontreusement le système d\'alarme. Ils parviennent à s\'enfuir mais un accident de voiture les ralentit. Pour comble de malchance, ils sont identifiés par erreur comme de dangereux trafiquants d\'armes. Ils trouvent refuge dans un bar, mais sont bientôt encerclés par les fédéraux.', 'https://www.imdb.com/title/tt0115495/?ref_=nv_sr_srsg_0', '5fa692a689817_91PF7TbzF0L._AC_SL1500_.jpg', 2, 2, 2, 1),
(61, '2001: L\'odyssée de l\'espace', 'Stanley Kubrick', 'De la nuit des temps à l\'humanité atteignant les étoiles, 2001: L\'odyssée de l\'espace raconte l\'histoire du Monolithe Noir, l\'évolution de l\'humanité et l\'essor du superordinateur ultime HAL 9000 doté d\'intelligence artificielle.', 'https://www.imdb.com/title/tt0062622/?ref_=nv_sr_srsg_0', '5fa692feb25a4_2001_L_Odyssee_de_l_espace.jpg', 5, 2, 2, 4),
(62, '2010 - L\'année du premier contact', 'Peter Hyams', 'Neuf ans après 2001, Russes et Americains qui jouent aux matamores vont tout de même voir ensemble du côté de Jupiter où il se passe des choses bizarres ; ils réveillent Hall et une intelligence supérieure (Dieu ?) tance ces idiots de terriens belliqueux. [255]\r\n', 'https://www.imdb.com/title/tt0086837/?ref_=nv_sr_srsg_0', '5fa6935968838_2010_L_Annee_du_premier_contact.jpg', 5, 2, 2, 2),
(63, 'La cité de la peur', 'Alain Berbérian', 'Odile Deray, attachée de presse, vient au Festival de Cannes pour présenter le film `Red is Dead\'. Malheureusement, celui-ci est d\'une telle faiblesse que personne ne souhaite en faire l\'écho. Cependant, lorsque les projectionnistes du long-métrage en question meurent chacun leur tour dans d\'étranges circonstances, `Red is dead\' bénéficie d\'une incroyable publicité. Serge Karamazov est alors chargé de protéger le nouveau projectionniste du film', 'https://www.imdb.com/title/tt0109440/?ref_=nv_sr_srsg_1', '5fa6941e3a297_1132544.jpg', 3, 1, 1, 1),
(64, 'Didier', 'Alain Chabat', 'Jean-Pierre, un manager d\'équipe de foot, est doublement dans la mouise. Côté ballon, ça ne tourne pas rond, et côté salon, Didier, le labrador qu\'on vient de lui confier s\'est mystérieusement métamorphosé en homme... Du moins en apparence, car Didier n\'a rien perdu de ses réflexes d\'animal à quatre pattes. Or, un chien, tout le monde sait, ça rapporte la baballe. Un talent que Jean-Pierre pourrait bien mettre au profit.\r\n', 'https://www.imdb.com/title/tt0118976/?ref_=nv_sr_srsg_6', '5fa694911b735_clzfvbhkm20eguy0rhyhjgtg52u-384.jpg', 3, 1, 1, 1),
(65, 'Monty Python, le sens de la vie', 'Terry Jones, Terry Gilliam', 'Satire sur l\'existence, de la vie à la mort en passant par la religion, le mariage, la guerre.', 'https://www.imdb.com/title/tt0085959/?ref_=nv_sr_srsg_3', '5fa6952792d93_Monty_Python_Le_Sens_de_la_vie.jpg', 3, 2, 1, 2),
(66, 'E.T. l\'extra-terrestre', 'Steven Spielberg', 'Un enfant perturbé prend son courage à deux mains et décide d\'aider un ami extra-terrestre à s\'échapper de la Terre pour rentrer sur sa planète natale.', 'https://www.imdb.com/title/tt0083866/?ref_=nv_sr_srsg_0', '5fa69579889d6_e-t-l-extra-terrestre-affiche-1019271.jpg', 1, 1, 1, 2),
(67, 'Les Goonies', 'Richard Donner', 'Les Goonies sont un groupe d\'amis qui vivent à Goon Docks, Astoria, mais leurs maisons ont été achetées et vont être démolies. Cependant, ils vivront leur dernière aventure à la recherche d\'un trésor qui pourra sauver le quartier.', 'https://www.imdb.com/title/tt0089218/?ref_=nv_sr_srsg_0', '5fa695f13b1d8_1098273235.webp', 7, 1, 1, 2),
(68, 'Stand by me - Compte sur moi ', 'Rob Reiner', 'Après la mort d\'un ami, un écrivain raconte un périple d\'enfance avec pour but de retrouver le corps d\'un garçon disparu.', 'https://www.imdb.com/title/tt0092005/?ref_=nv_sr_srsg_0', '5fa69654893d3_Stand_by_Me.jpg', 7, 1, 1, 2),
(69, 'Princess Bride', 'Rob Reiner', 'Alors qu\'il est malade et cloué au lit, le grand-père d\'un jeune garçon lui lit une histoire intitulée Princess Bride.', 'https://www.imdb.com/title/tt0093779/?ref_=fn_al_tt_2', '5fa696b00c094_the-princess-bride-movie-digital-art-silk.jpg', 7, 1, 1, 2),
(70, 'Princess Bride', 'Rob Reiner', 'Alors qu\'il est malade et cloué au lit, le grand-père d\'un jeune garçon lui lit une histoire intitulée Princess Bride.', 'https://www.imdb.com/title/tt0093779/?ref_=fn_al_tt_2', '5fa697092d7de_the-princess-bride-movie-digital-art-silk.jpg', 7, 1, 1, 2),
(71, 'Fenêtre sur cour', 'Alfred Hitchcock', 'Un photographe en fauteuil roulant épie ses voisins depuis la fenêtre de son appartement et finit par être convaincu que l\'un d\'entre eux a commis un meurtre.', 'https://www.imdb.com/title/tt0047396/?ref_=nv_sr_srsg_0', '5fa6974819650_Fenetre-Sur-Cour.jpg', 2, 2, 2, 5),
(72, 'Thelma &amp; Louise', 'Ridley Scott', 'Deux meilleures amies se lancent dans une aventure qui se transforme rapidement en cavale pour échapper à la police qui les poursuit à cause des crimes qu\'elles ont commis.', 'https://www.imdb.com/title/tt0103074/?ref_=nv_sr_srsg_0', '5fa697c3d325f_Thelma_et_Louise.jpg', 1, 2, 1, 1),
(73, 'Entretien avec un vampire', 'Neil Jordan', 'Un vampire raconte l\'histoire de sa vie : amours, trahison, solitude et faim.\r\n', 'https://www.imdb.com/title/tt0110148/?ref_=nv_sr_srsg_0', '5fa6981267924_Entretien_avec_un_vampire.jpg', 6, 1, 3, 1),
(74, 'Frankenstein ', 'Kenneth Branagh', 'Lorsque le scientifique brillant mais peu orthodoxe, le Dr Victor Frankenstein, rejette l\'homme artificiel qu\'il a créé, la créature s\'échappe et jure plus tard de se venger.\r\n', 'https://www.imdb.com/title/tt0109836/?ref_=nv_sr_srsg_4', '5fa698dba70b0_410119.jpg', 6, 2, 6, 1),
(75, 'Godzilla ', 'Ishirô Honda', 'Dans les années cinquante, au Japon. Réveillé d\'un sommeil séculaire par les essais nucléaires américains, un monstre antédiluvien apparemment indestructible, baptisé Godzilla, vient ravager la ville de Tokyo. Un reporter arrivé des États-Unis en est témoin.\r\n', 'https://www.imdb.com/title/tt0047034/?ref_=nv_sr_srsg_8', '5fa699bf2cb09_A1Tl2SGYJHL._AC_SL1500_.jpg', 6, 1, 3, 5),
(76, 'Dracula ', 'Francis Ford Coppola', 'Le comte Dracula, un vampire âgé de plusieurs siècles, se rend en Angleterre pour séduire Mina Murray, la fiancée de son avocat Jonathan Harker, et faire des ravages dans ce pays étranger.', 'https://www.imdb.com/title/tt0103874/?ref_=nv_sr_srsg_0', '5fa69a1b4cd65_Dracula.jpg', 4, 2, 6, 1),
(77, 'Dracula', ' Tod Browning', 'Le vampire ancien et comte Dracula arrive en Angleterre et commence à s\'en prendre à la jeune et vertueuse Mina.', 'https://www.imdb.com/title/tt0021814/?ref_=nv_sr_srsg_8', '5fa69ad3c8545_vampire-story-1-dracula-1931,M64452.jpg', 4, 2, 6, 7),
(78, 'Nosferatu le vampire', 'F.W. Murnau', 'Le comte vampire Orlok exprime son intérêt pour une nouvelle résidence et l\'épouse de l\'agent immobilier Hutter.\r\n', 'https://www.imdb.com/title/tt0013442/?ref_=nv_sr_srsg_0', '5fa69b41a785f_Nosferatu_le_vampire.jpg', 4, 2, 6, 8),
(79, 'Apocalypse Now', 'Francis Ford Coppola', 'Pendant la guerre du Vietnam, le capitaine Willard est envoyé en mission au Cambodge pour assassiner un colonel rebelle qui s\'est déclaré Dieu parmi une tribu locale.', 'https://www.imdb.com/title/tt0078788/?ref_=nv_sr_srsg_0', '5fa69bc93bc4f_91PSOm89odL._AC_SL1500_.jpg', 8, 3, 2, 3),
(80, 'L\'échelle de Jacob', 'Adrian Lyne', 'En deuil après la mort de son enfant, un ancien combattant hanté par la guerre du Vietnam tente de percer les secrets de son passé tout en souffrant de dissociation. Pour ça, il doit distinguer la réalité de ses rêves et illusions.', 'https://www.imdb.com/title/tt0099871/', '5fa69c3fe8f1f_dnqmjwwwkxrh6pjsdjx6mncmtmi-417.jpg', 6, 2, 2, 1),
(81, 'Les tortues ninja', 'Steve Barron', 'Quatre tortues ninja mutantes émergent de l\'ombre pour protéger la ville de New York d\'un gang de ninjas criminels.', 'https://www.imdb.com/title/tt0100758/?ref_=nv_sr_srsg_0', '5fa69ce6107cd_ee0e645bccac51c43809e85247a4da79.jpg', 7, 1, 1, 1),
(82, 'Dellamorte Dellamore', 'Michele Soavi', 'Un gardien de cimetière doit tuer les morts une deuxième fois lorsque ceux-ci deviennent des zombies.\r\n', 'https://www.imdb.com/title/tt0109592/?ref_=fn_al_tt_1', '5fa69da4bb342_cemetery_man_poster_02.jpg', 3, 2, 2, 1),
(83, 'Mon voisin Totoro', 'Hayao Miyazaki', 'Lorsque deux jeunes filles déménagent à la campagne pour être près de leur mère souffrante, elles vivent des aventures avec les merveilleux esprits de la forêt qui vivent tout près.\r\n', 'https://www.imdb.com/title/tt0096283/?ref_=nv_sr_srsg_0', '5fa69df8278fb_Mon_voisin_Totoro.jpg', 9, 1, 1, 2),
(84, 'Qui veut la peau de Roger Rabbit?', ' Robert Zemeckis', 'Un détective qui déteste les dessins animés est le seul espoir d\'un lapin cherchant à prouver son innocence alors qu\'il est accusé de meurtre.', 'https://www.imdb.com/title/tt0096438/?ref_=nv_sr_srsg_0', '5fa69e47d2a47_8kmkwclscovvxvpflktsmzxruoo-297.jpg', 7, 1, 1, 2),
(85, 'À la poursuite du diamant vert', 'Robert Zemeckis', 'Une écrivaine romanesque part en Colombie pour délivrer sa soeur kidnappée, et se retrouve bientôt au milieu d\'une aventure dangereuse à la recherche d\'un trésor avec un mercenaire truand.', 'https://www.imdb.com/title/tt0088011/?ref_=nv_sr_srsg_0', '5fa69ea3c0962_jyvuh7qcsaysuyvdiievghgsrsc-296.jpg', 7, 1, 3, 2),
(86, 'Soleil vert', 'Richard Fleischer', 'Dans le monde ravagé par l\'effet de serre et la surpopulation, un détective de la police de New York enquête sur le meurtre du PDG d\'une grande entreprise.', 'https://www.imdb.com/title/tt0070723/?ref_=nv_sr_srsg_0', '5fa69eff6429e_Soleil_vert.jpg', 5, 2, 2, 3),
(87, 'Les aventuriers de l\'arche perdue', 'Steven Spielberg', 'En 1936, l \'archéologue et aventurier Indiana Jones est engagé par le gouvernement américain pour trouver l\'arche de l\'alliance avant que les nazis d\'Adolf Hitler ne puissent obtenir ses pouvoirs extraordinaires.', 'https://www.imdb.com/title/tt0082971/?ref_=fn_al_tt_1', '5fa69f91514cb_Les_Aventuriers_de_l_arche_perdue.jpg', 7, 1, 3, 2),
(88, 'Indiana Jones et la dernière croisade ', 'Steven Spielberg', 'En 1938, après la disparition de son père le professeur Henry Jones Senior dans sa poursuite du Saint Graal, Indiana Jones se retrouve de nouveau confronté aux nazis d\'Adolf Hitler pour les empêcher d\'acquérir ses pouvoirs.', 'https://www.imdb.com/title/tt0097576/?ref_=nv_sr_srsg_0', '5fa6a0b1812a6_ee3c80ceb52690a69b03f8ef689c8982.jpg', 7, 1, 3, 1),
(89, 'Indiana Jones et le temple maudit', 'Steven Spielberg', 'En 1935, Indiana Jones débarque en Inde, qui fait alors toujours partie de l\'empire britannique. Il est invité à retrouver une pierre mystique, et découvre un culte secret qui pratique l\'esclavage et les sacrifices humains dans les catacombes d\'un ancien palais.\r\n', 'https://www.imdb.com/title/tt0087469/?ref_=nv_sr_srsg_3', '5fa6a0d80c3fe_97ba14e8fd876c70d36e91b4fcda7642.jpg', 7, 2, 3, 2),
(90, 'Matrix ', 'Les frères/ sœurs Wachowski ', 'Un pirate informatique découvre par de mystérieux rebelles la véritable nature de sa réalité et son rôle dans la guerre contre ceux qui la contrôlent.\r\n', 'https://www.imdb.com/title/tt0133093/?ref_=nv_sr_srsg_0', '5fa6a14c64b30_Matrix.jpg', 7, 1, 3, 1),
(91, 'L\'île aux pirates', 'Renny Harlin', '. A la mort du pirate Harry le Noir odieusement assassiné, sa fille Morgan Adams hérite de son bateau et du tiers de la carte d\'un fabuleux trésor', 'https://www.imdb.com/title/tt0112760/', '5fa6a26f064b4_L_Ile_aux_pirates.jpg', 7, 1, 3, 1),
(92, 'Re-Animator', 'Stuart Gordon', 'Un étrange étudiant en médecine arrive sur le campus et se lance, à l\'aide d\'un assistant et de sa petite amie, dans des expériences bizarres pour réanimer les tissus morts.\r\n', 'https://www.imdb.com/title/tt0089885/?ref_=nv_sr_srsg_0', '5fa6a2bc795b8_21057055_20131112165318123.jpg', 6, 2, 6, 2),
(93, 'Les aventures de Buckaroo Banzaï à travers la 8e dimension', 'W.D. Richter', 'Aventurier, neurochirurgien, musicien de rock Buckaroo Banzai et son équipe de lutte contre le crime, les Cavaliers de Hong Kong, doivent arrêter les envahisseurs extraterrestres maléfiques de la huitième dimension qui se préparent de conquérir la Terre.\r\n', 'https://www.imdb.com/title/tt0086856/?ref_=nv_sr_srsg_0', '5fa6a3390db4f_Les_Aventures_de_Buckaroo_Banzai_a_travers_la_8e_dimension.jpg', 7, 1, 7, 2),
(94, 'La formidable aventure de Bill et Ted', 'Stephen Herek', 'Deux adolescents stupides en apparence se lancent dans une aventure à l\'aide d\'une machine à remonter le temps.\r\n', 'https://www.imdb.com/title/tt0096928/?ref_=nv_sr_srsg_3', '5fa6a389c3cf7_1724314.jpg', 3, 1, 1, 2),
(95, 'Seven ', 'David Fincher', 'Deux détectives, une recrue et un ancien combattant, chassent un tueur en série qui utilise les sept péchés capitaux comme motif pour tuer.\r\n', 'https://www.imdb.com/title/tt0114369/?ref_=fn_al_tt_1', '5fa6a3e70e1fe_815VVAvdgDL._AC_SL1500_.jpg', 2, 2, 2, 1),
(96, 'Dogma', 'Kevin Smith', 'Une employée de clinique d\'avortement est choisie pour sauver l\'humanité de deux anges déchus, essayant d\'exploiter une faille et de rentrer au Paradis.\r\n', 'https://www.imdb.com/title/tt0120655/?ref_=nv_sr_srsg_0', '5fa6a443de39b_Dogma.jpg', 6, 1, 3, 1),
(97, 'Clerks, les employés modèles', 'Kevin Smith', 'Un jour de la vie de deux employés d\'une épicerie, Dante et Randal, pendant lequel ils importunent les clients, parlent de films et jouent au hockey sur le toit du magasin.', 'https://www.imdb.com/title/tt0109445/?ref_=nv_sr_srsg_2', '5fa6a4ba76509_f7eibyezppgxvlgqwre8kf3krpb-624.jpg', 3, 1, 1, 1),
(98, 'Gladiator ', 'Ridley Scott', 'Un ancien général romain cherche à se venger de l\'empereur corrompu qui a assassiné sa famille et condamné à l\'esclavage.', 'https://www.imdb.com/title/tt0172495/?ref_=nv_sr_srsg_0', '5fa6a551bea59_4d4636b3ec97774c2d371b3b64e3e786.jpg', 11, 1, 3, 1),
(99, 'Le talentueux Mr. Ripley', 'Anthony Minghella', 'À la fin des années 1950, Tom Ripley, un jeune homme sur le point de rater sa vie, est envoyé en Italie pour en ramener Dickie Greenleaf, un play-boy millionnaire riche et gâté. Quand cette mission échoue, Ripley est amené à prendre des décisions drastiques.\r\n', 'https://www.imdb.com/title/tt0134119/?ref_=nv_sr_srsg_0', '5fa6a5bbb7862_2wuh3iunweo6vysxejlmkzayeoa-667.jpg', 1, 2, 5, 1),
(100, 'Will Hunting', 'Gus Van Sant', 'Will Hunting, un employé de ménage à M.I.T., a un don pour les mathématiques, mais a besoin de l\'aide d\'un psychologue pour trouver sa voie.\r\n', 'https://www.imdb.com/title/tt0119217/?ref_=nv_sr_srsg_0', '5fa6a60900d58_Will_Hunting.jpg', 1, 1, 5, 1),
(101, 'Will Hunting', 'Gus Van Sant', 'Will Hunting, un employé de ménage à M.I.T., a un don pour les mathématiques, mais a besoin de l\'aide d\'un psychologue pour trouver sa voie.\r\n', 'https://www.imdb.com/title/tt0119217/?ref_=nv_sr_srsg_0', '5fa6b796921e9_Will_Hunting.jpg', 1, 1, 5, 1),
(102, 'Hook ou la revanche du Capitaine Crochet', 'Steven Spielberg', 'Lorsque le Capitaine Crochet enlève ses enfants, Peter Pan, devenu adulte, doit retourner au Pays imaginaire et retrouver sa jeunesse d\'esprit pour défier son vieil ennemi.\r\n', 'https://www.imdb.com/title/tt0102057/?ref_=nv_sr_srsg_0', '5fa6b82005abd_Hook_ou_la_Revanche_du_capitaine_Crochet.jpg', 7, 1, 1, 1),
(103, 'La liste de Schindler', 'Steven Spielberg', 'Dans la Pologne occupée par les Allemands durant la Seconde Guerre mondiale, Oskar Schindler se préoccupe peu à peu de sa main-d\'oeuvre juive après avoir été témoin de la persécution des Allemands nazis.\r\n', 'https://www.imdb.com/title/tt0108052/?ref_=nv_sr_srsg_0', '5fa6b87a694a2_50lwfdv65p9dy1gvnhslk67zncz-012.jpg', 11, 2, 5, 1),
(104, 'Nuits blanches à Seattle', 'Nora Ephron', 'Le fils d\'un homme ayant récemment perdu sa femme appelle une émission de radio pour essayer de trouver une nouvelle femme pour son père.', 'https://www.imdb.com/title/tt0108160/', '5fa6b8eec3a26_Nuits_blanches_a_Seattle.jpg', 3, 1, 1, 1),
(105, 'Il faut sauver le soldat Ryan', 'Steven Spielberg', 'À la suite du débarquement en Normandie, un groupe de soldats américains passe derrière les lignes ennemies pour récupérer un parachutiste dont les frères ont été tués au combat.', 'https://www.imdb.com/title/tt0120815/?ref_=nv_sr_srsg_0', '5fa6b94a948c4_22bafb73cdfd0901a4b4ef9f230602f0.jpg', 8, 2, 3, 1),
(106, 'Forrest Gump', 'Robert Zemeckis', 'Les présidences de Kennedy et Johnson, le Vietnam, le Watergate et d\'autres histoires se déroulent à travers la perspective d\'un homme d\'Alabama avec un QI de 75.\r\n', 'https://www.imdb.com/title/tt0109830/?ref_=nv_sr_srsg_0', '5fa6b9c018833_81NAb0T7gxL._AC_SL1500_.jpg', 1, 1, 1, 1),
(107, 'Apollo 13', 'Ron Howard', 'La NASA doit élaborer une stratégie pour ramener Apollo 13 sur Terre en toute sécurité après que l\'engin spatial a subi d\'importants dommages internes mettant la vie des trois astronautes à bord en danger.\r\n', 'https://www.imdb.com/title/tt0112384/?ref_=nv_sr_srsg_0', '5fa6ba05663b5_Apollo_13.jpg', 11, 1, 1, 1),
(108, 'La ligne verte', 'Frank Darabont', 'La vie des gardes du couloir de la mort est touchée par l\'un de leurs détenus: a homme noir accusé de meurtre et de viol d\'enfants, doté d\'un pouvoir mystérieux.\r\n', 'https://www.imdb.com/title/tt0120689/?ref_=nv_sr_srsg_0', '5fa6ba61c530f_1109915862.webp', 1, 1, 5, 1),
(109, 'Contact ', 'Robert Zemeckis', 'Le docteur Ellie Arroway, après des années de recherche, trouve des preuves radio concluantes de l\'existence d\'une intelligence extraterrestre, qui envoie les plans d\'une mystérieuse machine.\r\n', 'https://www.imdb.com/title/tt0118884/?ref_=nv_sr_srsg_0', '5fa6bac33a2af_Contact.jpg', 1, 1, 2, 1),
(110, 'Tueurs nés', 'Oliver Stone', 'Deux victimes d\'enfants victimes de traumatismes deviennent des amants et des meurtriers en série psychopathes que les médias glorifient de façon irresponsable.\r\n', 'https://www.imdb.com/title/tt0110632/?ref_=nv_sr_srsg_0', '5fa6bb15e8a55_b2edd048515dd5fd11de85a564d947ff.jpg', 2, 2, 2, 1),
(111, 'Fisher King - Le roi pêcheur', 'Terry Gilliam', 'Un ancien DJ de radio, suicidaire après une terrible erreur, se rachète en aidant un clochard déséquilibré qui a été la victime malgré lui de cette erreur.\r\n', 'https://www.imdb.com/title/tt0101889/?ref_=nv_sr_srsg_0', '5fa6bb78654c8_Fisher_King_Le_Roi_pecheur.jpg', 1, 2, 1, 1),
(112, 'Une nuit en enfer', 'Robert Rodriguez', 'Deux criminels et leurs otages trouvent sans le vouloir un refuge temporaire dans un relais routier peuplé de vampires, menant à des résultats chaotiques.\r\n', 'https://www.imdb.com/title/tt0116367/?ref_=nv_sr_srsg_0', '5fa6bbc9352f9_8debf5e22e992ee24e78330c1c56fa33.jpg', 6, 2, 2, 1),
(113, 'Top Gun', 'Tony Scott', 'Alors que les élèves de l\'école d\'élite de la marine américaine se battent pour être les meilleurs de leur classe, un jeune pilote audacieux apprend d\'un moniteur civil quelques chose qui ne leur est pas enseigné en classe.\r\n', 'https://www.imdb.com/title/tt0092099/?ref_=nv_sr_srsg_3', '5fa6bc1b7f0be_422779.jpg', 7, 1, 3, 2),
(114, 'Rain Man', 'Barry Levinson', 'Le père du yuppie égoïste Charlie Babbitt a laissé une fortune à son savant frère Raymond et une bouchée de pain à Charlie ; ils voyagent à travers le pays.\r\n', 'https://www.imdb.com/title/tt0095953/?ref_=nv_sr_srsg_0', '5fa6bc727d4d3_Rain_Man.jpg', 1, 1, 1, 2),
(115, 'Né un 4 juillet', 'Oliver Stone', 'Biographie de Ron Kovic. Revenu paralysé de la Guerre du Vietnam, il devient militant pacifiste engagé en faveur des droits de l\'Homme après s\'être senti trahi par le pays pour lequel il s\'est battu.\r\n', 'https://www.imdb.com/title/tt0096969/?ref_=nv_sr_srsg_0', '5fa6bcc9cac20_174_cinemovies_2d9_9d3_1f731e3b07b1ac9e5ded290484_ne-un-4-juillet_movies-5455-9001668047.jpg', 1, 2, 5, 2),
(116, 'Mission: Impossible', 'Brian De Palma', 'Un agent américain, soupçonné à tort de trahison, doit découvrir et exposer le véritable espion sans l\'aide de son organisation.', 'https://www.imdb.com/title/tt0117060/?ref_=nv_sr_srsg_6', '5fa6bd2a7bee1_Mission_Impossible.jpg', 2, 2, 3, 1),
(117, 'Jerry Maguire', 'Cameron Crowe', 'Un agent sportif est licencié pour avoir exprimé une contradiction morale liée à son métier. Il décide alors de mettre sa nouvelle philosophie à l\'épreuve en tant qu\'agent indépendant, auprès du seul sportif qui est reste à ses côtés, et de son ancien secrétaire.', 'https://www.imdb.com/title/tt0116695/?ref_=nv_sr_srsg_4', '5fa6bd7f4e637_Jerry_Maguire.jpg', 3, 1, 1, 1),
(118, 'Magnolia', 'Paul Thomas Anderson', 'Une mosaïque épique de personnages étroitement liés, en quête d\'amour, de pardon et de sens, dans la vallée de San Fernando.', 'https://www.imdb.com/title/tt0175880/?ref_=nv_sr_srsg_0', '5fa6bdcb906dd_Magnolia.jpg', 1, 2, 1, 1),
(119, 'Boogie Nights', 'Paul Thomas Anderson', 'Les aventures d\'un jeune homme dans l\'industrie californienne de la pornographie à la fin des années 1970 et au début des années 1980.', 'https://www.imdb.com/title/tt0118749/?ref_=nv_sr_srsg_0', '5fa6be28483e6_boogie-nights-affiche.jpg', 1, 2, 2, 1),
(120, 'True Romance', 'Tony Scott', 'À Detroit, un geek solitaire épouse une call-girl, vole la cocaïne de son mac et tente de la vendre à Hollywood. Pendant ce temps, les propriétaires mafieux de la cocaïne les traquent pour tenter de la récupérer.\r\n', 'https://www.imdb.com/title/tt0108399/?ref_=nv_sr_srsg_3', '5fa6be8913f33_True_Romance.jpg', 2, 2, 1, 1),
(121, 'L\'Armée des 12 singes', 'Terry Gilliam', 'Dans un monde futuriste ravagé par la maladie, un détenu est renvoyé dans le temps pour recueillir des informations sur le virus fabriqué par l\'homme qui a éradiqué la majeure partie de la population sur Terre.\r\n', 'https://www.imdb.com/title/tt0114746/', '5fa6bef39f79d_11466106.jpg', 5, 2, 2, 1),
(122, 'Sept ans au Tibet', 'Jean-Jacques Annaud', 'Le parcours de rédemption dHeinrich Harrer, un alpiniste adulé en Allemagne, ayant en 1939 délaissé sa femme enceinte pour lHimalaya. Au terme dun périple il se dévouera à un enfant, le Dalaï-Lama, jusquà lappropriation brutale du Tibet par la Chine. [255]\r\n', 'https://www.imdb.com/title/tt0120102/?ref_=nv_sr_srsg_0', '5fa6bf3b11f30_unnamed.jpg', 1, 1, 5, 1),
(123, 'Rencontre avec Joe Black ', 'Martin Brest', 'La Mort, qui a pris la forme d\'un jeune homme, demande à un magnat des médias d\'agir comme guide spirituel pour lui apprendre la vie sur Terre. Ce faisant, il va tomber amoureux de la fille de son guide.\r\n', 'https://www.imdb.com/title/tt0119643/?ref_=nv_sr_srsg_0', '5fa6bf8854083_Rencontre_avec_Joe_Black.jpg', 1, 1, 5, 1),
(124, 'Fight Club', 'David Fincher', 'Un employé de bureau insomniaque et un fabriquant de savons forment un club de combat clandestin qui devient beaucoup plus que ça.', 'https://www.imdb.com/title/tt0137523/?ref_=nv_sr_srsg_0', '5fa6bfc94fcb2_fight-club-affiche-1079106.jpg', 2, 2, 2, 1),
(125, 'Raging Bull', 'Martin Scorsese', 'La vie du boxeur Jake LaMotta, que la violence et le caractère sanguin auront conduit au sommet du ring tout en détruisant sa vie en dehors de celui-ci.\r\n', 'https://www.imdb.com/title/tt0081398/?ref_=nv_sr_srsg_0', '5fa6c019618ac_537883-l-affiche-de-raging-bull-950x0-3.jpg', 11, 2, 2, 2),
(126, 'Taxi Driver', 'Martin Scorsese', 'Un vétéran instable sur le plan mental travaille comme chauffeur de taxi de nuit à New York, où la décadence et les actes de violence alimentent son envie de violence, tout en tentant de libérer une prostituée de douze ans.', 'https://www.imdb.com/title/tt0075314/?ref_=nv_sr_srsg_0', '5fa6c070962b2_Taxi_Driver.jpg', 2, 2, 2, 3),
(127, 'Scarface ', 'Brian De Palma', 'En 1980 à Miami, un immigrant cubain déterminé prend en charge un cartel de drogue et succombe au vice d\'avidité.', 'https://www.imdb.com/title/tt0086250/?ref_=nv_sr_srsg_0', '5fa6c0b3ebfe7_6e969b440c6eb4b27ad7b3d8f2b9ed3b.jpg', 2, 3, 2, 2),
(128, 'Le Temps d\'un week-end ', 'Martin Brest', 'Un étudiant en école privée qui veut se faire de l\'argent, travaille comme baby-sitter pour un homme aveugle, mais le travail n\'est pas du tout à ce qu\'il attend.', 'https://www.imdb.com/title/tt0105323/', '5fa6c108ceef6_7e7vyrwqij6hj0o7uuzqjavbd5o-429.jpg', 1, 2, 1, 1),
(129, 'L\'associé du diable', 'Taylor Hackford', 'Floride, un avocat exceptionnellement doué est proposé un poste dans un cabanet d\'avocats haut de gamme à New York avec un patron de la même standing - la plus grande opportunité de sa carrière jusqu\'alors.\r\n', 'https://www.imdb.com/title/tt0118971/', '5fa6c16acf148_17ri1ycff4m2clqegts1fwxziar-563.jpg', 6, 3, 6, 1),
(130, 'Dark City', 'Alex Proyas', 'Un homme se débat avec les souvenirs de son passé, qui incluent une femme dont il ne se souvient plus et un monde cauchemardesque sans soleil.\r\n', 'https://www.imdb.com/title/tt0118929/?ref_=nv_sr_srsg_0', '5fa6c1b35810f_3hllgu9wbaed3hwgoapha5quci-558.jpg', 5, 2, 3, 1),
(131, 'Labyrinthe ', 'Jim Henson', 'Une jeune fille de 16 ans dispose de 13 heures pour résoudre un labyrinthe et sauver son petit frère lorsque son souhait de l\'emmener est accordé par le Goblin King (le roi des gobelins).\r\n', 'https://www.imdb.com/title/tt0091369/?ref_=nv_sr_srsg_3', '5fa6c229893e8_102998459_o.jpg', 6, 2, 2, 2),
(132, 'Heat ', 'Michael Mann', 'Un groupe de braqueurs de banque professionnels commence à sentir la chaleur de la police quand, sans le savoir, il laisse un indice à son dernier vol.\r\n', 'https://www.imdb.com/title/tt0113277/?ref_=nv_sr_srsg_0', '5fa6c2b4235b4_Heat affiche.jpg', 2, 2, 3, 1),
(133, 'La valse des pantins', 'Martin Scorsese', 'L\'humoriste en herbe Rupert Pupkin tente de percer dans le show-business en harcelant son idole, un présentateur d\'une émission télévisée tardive qui ne souhaite que préserver sa vie privée.\r\n', 'https://www.imdb.com/title/tt0085794/?ref_=nv_sr_srsg_0', '5fa6c30cacdc3_1012882703.webp', 1, 2, 2, 2);

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
(1, 'Feel good movie'),
(2, 'Film choc'),
(3, 'Film a grand spectacle'),
(4, 'Film éducatif'),
(5, 'Film triste'),
(6, 'Frisson'),
(7, 'Nanar'),
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
