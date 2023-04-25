-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 25, 2023 at 07:02 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instant_gaming`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id` int NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id`, `type`) VALUES
(1, 'Action'),
(2, 'Arcade'),
(3, 'Aventure'),
(4, 'Beat\'em all'),
(5, 'Xbox Serie XS'),
(6, 'Combat'),
(7, 'Coopération'),
(8, 'Course'),
(9, 'Early Access'),
(10, 'FPS'),
(11, 'Free to play'),
(12, 'Gestion'),
(13, 'Indies'),
(14, 'Jeux solo'),
(15, 'Local co-op'),
(16, 'MMO'),
(17, 'Multijoueur'),
(18, 'Plates-formes'),
(19, 'PvP en ligne'),
(20, 'RPG'),
(21, 'Remote Play Together'),
(22, 'Simulation'),
(23, 'Sport'),
(24, 'Stratégie'),
(25, 'VR'),
(26, 'VR Supported'),
(27, 'Wargame');

-- --------------------------------------------------------

--
-- Table structure for table `produits`
--

CREATE TABLE `produits` (
  `id` int NOT NULL,
  `nom` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `prix` int DEFAULT NULL,
  `categorie_id` int DEFAULT NULL,
  `date_sortie` date DEFAULT NULL,
  `note` int NOT NULL,
  `tag_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `image`, `description`, `prix`, `categorie_id`, `date_sortie`, `note`, `tag_id`) VALUES
(1, 'Assetto Corsa Competizione - 2023 GT World Challenge Pack', 'assetto-corsa-competizione-2023-gt-world-challenge-pack-pc-jeu-steam-cover.jpg', 'Cette extension requiert le jeu de base Assetto Corsa Competizione', 10, 8, '2023-04-19', 8, 1),
(2, 'Dead Island 2', 'dead-island-2-xbox-one-xbox-series-x-s-xbox-one-xbox-series-x-s-jeu-microsoft-store-cover.jpg', 'La saga de zombies adorée est de retour avec un mélange unique d’horreur, d’humour noir et de massacre de zombies pour une aventure épique et extravagante.\r\n\r\nDead Island 2 est un jeu de rôle et d’action en vue subjective qui déborde de style, de dynamisme et de virus zombie. Explorez la ville emblématique de Los Angeles noyée dans le sang, rencontrez des personnages hauts en couleur, massacrez des hordes d’ennemis dans une avalanche de détails sanglants Évoluez jusqu’à devenir le tueur de zombies ultime !', 70, 1, '2023-04-21', 8, 1),
(3, 'Ravenswatch', 'ravenswatch-pc-jeu-steam-cover.jpg', '', 20, 1, '2023-04-06', 8, 1),
(4, 'Minecraft Legends', 'minecraft-legends-pc-jeu-microsoft-store-europe-cover.jpg', '', 40, 24, '2023-04-18', 8, 1),
(6, 'Total War: Warhammer III - Forge of the Chaos Dwarfs', 'total-war-warhammer-iii-forge-of-the-chaos-dwarfs-pc-jeu-steam-europe-cover.jpg', 'La carte de campagne de la Forge des Nains du Chaos introduit dans Total War: WARHAMMER III une nouvelle faction impitoyable, les Nains du Chaos, jouables à la fois dans les campagnes Royaume du Chaos et Empires Immortels. Incarnez Astragoth Main-de-Fer, Drazhoath le Cendreux ou Zhatan le Noir et développez, exploitez et dominez le Vieux Monde. Tous trois possèdent leurs propres mécaniques de campagne, objectifs et unités que seules les âmes corrompues des Nains du Chaos pourraient mettre à profit. Poursuivant leurs propres terribles objectifs, ils n\'interviennent pas dans l\'histoire d\'Ursun dans la campagne du Royaume du Chaos.\r\n\r\n• Semez la destruction en incarnant l\'un des trois nouveaux Seigneurs légendaires : Astragoth Main-de-Fer, Drazhoath le Cendreux ou Zhatan le Noir.\r\n• Recrutez Gorduz le Sournois, le dernier Héros légendaire, pour prendre vos adversaires à revers.\r\n• Maîtrisez la magie du Chaos grâce au tout nouveau domaine d\'Hashut. Frappez fort avec Marteau Infernal, ou réduisez-les en cendres avec Colère ardente.\r\n• Construisez la Grande Foreuse d\'Hashut pour ouvrir le domaine d\'Hashut, siphonner son sang et obtenir ses pouvoirs cataclysmiques.\r\n• Coopérez avec vos camarades nains du Chaos pour obtenir des récompenses de quartier dans la Tour de Zharr, ou usurpez leurs sièges dans votre ascension vers la suprématie.\r\n• Dirigez une armée considérable de plus de 26 nouvelles unités, dont la sinistre machine de guerre des Nains du Chaos, les nouveaux Destructeurs K\'daai, et certains des guerriers infernaux les plus cruels du Vieux Monde.\r\n\r\nTotal War: Warhammer III - Forge of the Chaos Dwarfs thumbnailTotal War: Warhammer III - Forge of the Chaos Dwarfs thumbnailTotal War: Warhammer III - Forge of the Chaos Dwarfs thumbnailAstragoth Main-de-Fer, Grand Prêtre d\'Hashut, est le doyen des Sorciers-Prophètes des Nains du Chaos. Jadis le sorcier le plus puissant à fouler la Plaine de Zharrduk en un millier d\'années, ses pouvoirs ont commencé à s\'amenuiser et son corps succombe peu à peu à la pétrification. Seul un appareil mécanique lui permet encore de se mouvoir.\r\n\r\nGrâce à son armure et aux différences domaines de magie dans lequel il peut puiser, Astragoth parcourt le champ de bataille à une vitesse importante et peut se défendre en combat rapproché.\r\n\r\nTotal War: Warhammer III - Forge of the Chaos Dwarfs thumbnailTotal War: Warhammer III - Forge of the Chaos Dwarfs thumbnailDrazhoath le Cendreux, un Sorcier-Prophète d\'Hashut, est le seigneur de la Forteresse Noire et le commandant la maudite Légion d\'Azgorh. Exilé dans les terres sur lesquelles il règne désormais, Drazhoath a pu encore améliorer sa maîtrise de la magie et de l\'ingénierie.\r\n\r\nDrazhoath est à la fois un terrible guerrier et un lanceur de sorts redoutable. Sa puissance est quasi-inarrêtable, qu\'il fende des crânes à pied ou qu\'il ravage les terres sur le dos de Soufflecendre, son Taurus Calamitas.\r\n\r\nTotal War: Warhammer III - Forge of the Chaos Dwarfs thumbnailTotal War: Warhammer III - Forge of the Chaos Dwarfs thumbnailZhatan le Noir est le Nain du Chaos commandant la Tour de Zharr.\r\nZhatan sert son maître, Ghorth le Cruel, et lui fournit une Main-d\'œuvre abondante et des ressources nécessaires à la croissance de leur empire tout en apaisant sa soif inextinguible de sacrifices.\r\n\r\nCraint pour ses besoins importants en armement, sa cruauté sans limites et sa haute stature, Zhatan sème le carnage sur le champ de bataille.\r\n\r\nTotal War: Warhammer III - Forge of the Chaos Dwarfs thumbnailLes Nains du Chaos englobent certaines des unités les plus uniques de WARHAMMER III à ce jour. Ils utilisent leurs prouesses d\'ingénierie pour embarquer leurs Canons Trembleterre, leurs Mortiers Trembleffroi, leurs Canons à Magma et leurs machines de guerre en fer démoniaque dans leurs trains de destruction partout où ils passent.\r\n\r\nDu côté démoniaque, embrasez les terres avec les monstrueux Rejetons du feu K\'daai et les unités de Destructeurs K\'daai. Tous possèdent une armure lourde leur permettant de contenir leur pouvoir, causant des perturbations encore jamais vues dans le monde mortel.\r\nOBJECTIFS\r\n\r\nTotal War: Warhammer III - Forge of the Chaos Dwarfs thumbnailLes Nains du Chaos sont en quête d\'un pouvoir inconcevable, le sang d\'Hashut, pour conquérir le monde connu.\r\n\r\nPour cela, ils doivent tout d\'abord construire la Grande Foreuse d\'Hashut pour creuser un passage vers le domaine de leur puissant dieu. Cette construction ne saurait être possible sans le vol et la corruption de plusieurs reliques naines précieuses.\r\n\r\nUne fois la Grande Foreuse achevée, elle pourra commencer à creuser au centre du monde, perforant terre, pierre et le tissu même de la réalité, pour atteindre le domaine d\'Hashut.\r\n\r\nToutefois, les Nains sont rancuniers, et chercheront à venger l\'avilissement de leur héritage antique. Ils ne reculeront devant rien pour vous arrêter.\r\n\r\nTotal War: Warhammer III - Forge of the Chaos Dwarfs thumbnailL\'économie à plusieurs niveaux des Nains du Chaos est centrée autour de la collecte et de la gestion des Travailleurs. Ils capturent ceux qu\'ils vainquent au combat et leur imposent un travail exténuant dans leurs postes avancés miniers. Là, les Travailleurs doivent extraire des Matières premières qui seront utilisées pour l\'expansion de l\'empire de leurs tortionnaires, la construction de bâtiments avancés et le renforcement de leurs armées.\r\n\r\nTotal War: Warhammer III - Forge of the Chaos Dwarfs thumbnailGrâce à la Forge de l\'enfer et à des plans spéciaux forgés dans le feu, les puissantes légions de Nains du Chaos peuvent accroître leur pouvoir. Ces plans accordent un ensemble de bonus aux unités définies pour qu\'elles brillent sur le champ de bataille.\r\n\r\nTotal War: Warhammer III - Forge of the Chaos Dwarfs thumbnailLes Nains du Chaos se disputent les sièges spéciaux de cette puissante tour, car ces derniers octroient à leurs factions des récompenses uniques en cas de réussite. Les Nains du Chaos peuvent aussi coopérer pour terminer des quartiers et ainsi œuvrer au bien de toute la communauté, ou s\'affronter pour des sièges spécifiques en renversant les l\'autorité des autres.\r\n\r\nTotal War: Warhammer III - Forge of the Chaos Dwarfs thumbnailLes Nains du Chaos sont des marchands d\'armes réputés et fournissent des armes, des armures et des machines de guerre aux forces du Chaos. En utilisant des convois, vous pouvez échanger votre matériel de guerre contre un large éventail de ressources.\"', 25, 24, '2023-04-13', 8, 1),
(7, 'Dredge', 'dredge-pc-jeu-steam-cover.jpg', 'Prenez le gouvernail de votre chalutier pour partir à la découverte d’une collection d’îles isolées, et des profondeurs avoisinantes, histoire de voir ce qui se cache sous la surface. Vendez votre prise aux gens du cru et accomplissez des quêtes pour en apprendre plus au sujet du passé troublé de chaque zone. Installez un meilleur équipement sur votre bateau pour pêcher en eaux profondes et atteindre des contrées éloignées, mais ne perdez jamais de vue l’heure. Mieux vaut ne pas se retrouver au milieu de l’océan à la nuit tombée...', 25, 24, '2023-03-30', 25, 1),
(8, 'Les Sims 4 Grandir ensemble', 'les-sims-4-grandir-ensemble-pc-mac-jeu-origin-cover.jpg', 'Renforcez les liens familiaux, faites-vous des amis ou des ennemis et découvrez la véritable identité de vos Sims avec le pack d’extension Les Sims 4 Grandir ensemble. Les façons dont vos Sims nouent des liens avec ceux qui les entourent, des membres de leur famille aux nouvelles rencontres, évoluent. Des événements planifiés comme des soirées pyjamas et des étapes inattendues comme une crise de la quarantaine façonnent vos Sims et leurs relations.\r\n\r\nCARACTÉRISTIQUES PRINCIPALES\r\n\r\nUn impact durable — Des choix et des étapes clés permettront de façonner l\'identité de vos Sims. Débloquez et modifiez des traits de caractère tout au long de la vie de vos Sims tandis qu\'ils traversent des crises de la quarantaine, réagissent aux demandes de membres de leur famille d\'habiter avec eux, et bien plus encore. La découverte de soi est le voyage de toute une vie.\r\nDes dynamiques sociales — Parfois, des Sims s\'entendent bien instantanément. Votre Sim peut avoir une alchimie sociale naturelle avec quelqu\'un rencontré à une fête... ou le détester tout aussi spontanément. Votre Sim a désormais des préférences qui déterminent les Sims socialement compatibles et ceux qui ont plus de chances de devenir ses ennemis.\r\nDes liens familiaux — Les liens entre les Sims d\'une même famille sont importants et complexes. En découvrant la vie ensemble, ils feront aussi bien face à des conflits qu\'à des moments d\'unité qui influenceront la dynamique familiale et les relations avec les membres de leur famille.\r\nParfaite pour les familles — San Sequoia est un ancien petit village de pêcheurs situé le long d\'une baie, qui s\'est transformé en une ville dynamique. On y trouve une banlieue paisible, un centre d\'activités animé, une communauté soudée et même une famille locale influente : les Robles.\r\n', 40, 22, '2023-03-16', 6, 1),
(9, 'Europa Universalis IV: Domination - Europe', 'europa-universalis-iv-domination-pc-jeu-steam-europe-cover.jpg', '', 20, 24, '2023-04-18', 6, 1),
(10, 'The Last of Us Part I', 'the-last-of-us-part-i-pc-jeu-steam-cover.jpg', '', 60, 3, '2023-03-28', 8, 1),
(11, 'Hogwarts Legacy : L\'Héritage de Poudlard Deluxe Edition - Europe', 'hogwarts-legacy-l-heritage-de-poudlard-deluxe-edition-deluxe-edition-pc-jeu-steam-europe-cover.jpg', '', 70, 1, '2023-02-10', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int NOT NULL,
  `tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `tag`) VALUES
(1, 'Steam'),
(2, 'Xbox One'),
(3, 'PS5'),
(4, 'PS4'),
(5, 'Xbox Serie X/S'),
(6, 'Nintendo Switch'),
(7, 'Epic');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorie_id` (`categorie_id`),
  ADD KEY `tag_id` (`tag_id`) USING BTREE;

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
