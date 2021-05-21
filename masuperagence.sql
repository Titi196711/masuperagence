-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 21 mai 2021 à 17:10
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `masuperagence`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `property` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210429165046', '2021-04-29 18:51:59', 57),
('DoctrineMigrations\\Version20210429165837', '2021-04-29 18:58:46', 42),
('DoctrineMigrations\\Version20210504122517', '2021-05-04 14:25:38', 209),
('DoctrineMigrations\\Version20210504124153', '2021-05-04 14:42:02', 30),
('DoctrineMigrations\\Version20210506162304', '2021-05-06 18:27:38', 134),
('DoctrineMigrations\\Version20210510145317', '2021-05-10 17:01:05', 36),
('DoctrineMigrations\\Version20210518133412', '2021-05-18 15:34:27', 86);

-- --------------------------------------------------------

--
-- Structure de la table `option`
--

CREATE TABLE `option` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `option`
--

INSERT INTO `option` (`id`, `name`) VALUES
(1, 'Balcon'),
(2, 'Adapté PMR'),
(3, 'Ascenceur');

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `surface` int(11) NOT NULL,
  `rooms` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `heat` int(11) NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `sold` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `image` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `title`, `description`, `surface`, `rooms`, `bedrooms`, `floor`, `price`, `heat`, `city`, `address`, `postal_code`, `sold`, `created_at`, `image`, `updated_at`) VALUES
(1, 'distinctio aspernatur officiis', 'Iure quod nam non repellat omnis. Est sit iusto saepe dolore sed. Id qui sed soluta atque molestiae quam voluptatem.', 223, 2, 2, 1, 146825, 0, 'Guillou-sur-Vincent', 'place Juliette Vincent17129 Dias', '95450', 0, '2021-05-05 15:50:41', 'everything-moderation-limitation-everyting-do-attitude-possible-changes-better-choice-activity-trust-energy-motivation-122212470-60995a7a1bec1528974537.jpg', '2021-05-10 18:08:26'),
(2, 'nihil laudantium autem', 'Ipsum exercitationem cum eum iste quos deleniti iusto. Consectetur esse dolor ut facilis. Temporibus in perspiciatis ratione veritatis veritatis fugit.', 204, 9, 3, 1, 381264, 1, 'Roux', '791, impasse Arthur Aubry55 323 Grondin', '11985', 0, '2021-05-05 15:50:41', 'astronomy-1867616-1920-609e8fea70d13166729828.jpg', '2021-05-14 16:57:46'),
(3, 'dignissimos dolore autem', 'Autem fugiat reiciendis distinctio voluptas esse suscipit. Ut autem dolorem accusamus omnis. Non rem dolor culpa qui dolor accusamus molestias omnis.', 117, 7, 5, 4, 379813, 0, 'Delorme', '21, boulevard Colin82648 Diaz', '46087', 0, '2021-05-05 15:50:41', 'earthmap1k-609e8de5c9b4a346504578.jpg', '2021-05-14 16:49:09'),
(4, 'facere enim possimus', 'Ipsum molestiae molestias odio optio molestiae quis consequatur. Ex ipsum unde cumque molestiae voluptatem. Voluptas est fuga et provident repellendus ut.', 150, 10, 4, 2, 380662, 1, 'Descamps', 'avenue de Riou97391 GuilbertBourg', '77767', 0, '2021-05-05 15:50:41', 'matrix-356024-1920-609e9b0aaaa70526078430.jpg', '2021-05-14 17:45:14'),
(5, 'doloremque incidunt libero', 'Architecto nemo sunt placeat iste omnis laboriosam facilis sed. Aperiam autem aperiam vitae doloremque magni doloremque. Et necessitatibus autem ea magnam quam aliquam.', 255, 3, 5, 2, 138201, 1, 'Gautier-sur-Mer', '40, impasse de Buisson\n88 174 Gay', '92 525', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(6, 'optio numquam et', 'Est non facilis magni ut quas accusantium quam aperiam. Omnis at necessitatibus dolor similique consectetur sint eos. Et quidem qui debitis dolor.', 116, 6, 3, 1, 170780, 1, 'Bouvier-les-Bains', '63, boulevard Manon Le Roux\n96630 Colas', '46439', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(7, 'eos enim odit', 'Cum ab at porro eum nisi. Eius amet accusantium ea. Dolor quos alias quam nobis ut quos consequatur voluptatem.', 99, 9, 5, 1, 246662, 1, 'Guilletdan', '42, place Duhamel\n57074 DelmasVille', '08 694', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(8, 'qui aut reiciendis', 'Excepturi maiores consequatur voluptas consequatur. Sapiente explicabo et velit et sunt sapiente amet. Et ad adipisci velit iure.', 36, 4, 4, 3, 238678, 1, 'Poirier', '8, rue Bonneau\n45 254 Delattredan', '72 086', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(9, 'voluptatem voluptas placeat', 'Voluptas laboriosam voluptas perspiciatis fuga ipsam omnis fugit qui. Saepe modi nihil recusandae quia. Provident qui et suscipit molestiae illo autem non quidem.', 162, 6, 1, 1, 310254, 0, 'Millet-la-Forêt', '1, avenue Adèle Lebreton\n29561 Dubois', '59 267', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(10, 'sit neque delectus', 'Esse tempora adipisci blanditiis necessitatibus sequi modi doloremque. Porro odit accusantium voluptate sequi odio. Ab corporis quia est inventore rem eos.', 56, 5, 4, 1, 211184, 0, 'Lesage', '57, rue Dorothée Costa\n16 978 Blanchard-sur-Pottier', '76 421', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(11, 'voluptatem pariatur consequatur', 'Ut fugiat molestias officia voluptas. Cumque architecto impedit nihil illum rerum. Molestiae maiores ut ut delectus tenetur praesentium architecto.', 214, 8, 4, 2, 187920, 0, 'Robin', '2, chemin Benard\n81 294 Traoreboeuf', '65 739', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(12, 'praesentium qui culpa', 'Nihil voluptate impedit ea voluptas dolor. Et sit fuga quos veniam illum illum. Saepe qui et excepturi provident.', 127, 10, 2, 2, 350377, 1, 'Petitjean', '81, place Vasseur\n15019 Mendesnec', '82 798', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(13, 'dolor delectus velit', 'Quia similique autem laboriosam. Explicabo qui non nulla nihil adipisci praesentium. Consequatur eum nisi explicabo laborum nesciunt nihil natus.', 311, 2, 2, 3, 370761, 0, 'Bertrand-sur-Normand', '996, boulevard Valérie Leblanc\n87 663 BessonBourg', '65253', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(14, 'id aperiam eaque', 'Odit quas natus voluptates quae. Ipsa aliquid ad alias perspiciatis aspernatur quasi rerum. Autem voluptas magnam sit placeat est et.', 41, 8, 2, 2, 139206, 0, 'Marie', '72, avenue Philippine Courtois\n83701 Ledoux-sur-Leclercq', '78 195', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(15, 'reprehenderit aut voluptas', 'Aperiam similique magnam voluptatem dolor aut et. Est fugiat optio excepturi non. Veritatis inventore maxime suscipit nisi.', 95, 2, 5, 2, 373197, 0, 'Gros', '8, rue Sophie Guerin\n24 976 Lemonnier-sur-Tessier', '29566', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(16, 'ut autem asperiores', 'Deleniti doloribus quaerat inventore nobis. Dignissimos sunt iure consequatur cum quos maxime quidem. Ut itaque ducimus quo.', 54, 9, 4, 2, 230405, 1, 'Benoit', '36, chemin Jacqueline Lopez\n97 899 Bouvier-sur-Ferrand', '87913', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(17, 'sed dolores dolorem', 'Impedit laborum eum sint aliquam sequi. Autem aperiam quia quis ut tenetur fugiat pariatur. Ut aut nihil et a occaecati facilis.', 305, 8, 1, 2, 183127, 0, 'RiouBourg', '3, boulevard de Chretien\n97135 Bruneauboeuf', '74844', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(18, 'voluptas velit omnis', 'Vel magnam dolores adipisci. Ipsa excepturi molestiae quo placeat et mollitia dolor. Vel impedit incidunt at fugiat qui.', 29, 7, 2, 1, 358555, 0, 'Richard', '322, avenue Martine Lucas\n10 336 Turpin', '61 120', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(19, 'amet accusantium soluta', 'Rerum inventore exercitationem necessitatibus eius repudiandae. Ducimus consequatur et numquam quia ut amet. Voluptas rerum ea quia illo velit qui.', 28, 9, 2, 2, 394097, 1, 'AlbertVille', '582, boulevard de Fabre\n60 798 Lecomte', '16183', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(20, 'nostrum officia hic', 'Minus ut voluptatem sint est quibusdam. Harum libero inventore quo eligendi rem tempora. Labore similique assumenda ea consequatur velit quos sint explicabo.', 309, 9, 2, 3, 296469, 1, 'Dumas-sur-Ollivier', '8, rue de Techer\n57947 Renaudnec', '12 514', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(21, 'illum animi culpa', 'Delectus repellat quia quidem. Et ut modi in rem nostrum. Adipisci adipisci explicabo sunt.', 279, 4, 1, 3, 212916, 0, 'Briand', '86, place Jean\n36 824 Labbe', '08573', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(22, 'voluptas quis quod', 'Aut temporibus ipsa quod labore earum possimus expedita omnis. Quis harum dolor ratione odio quo. Ut cumque et numquam possimus qui.', 229, 10, 1, 4, 364713, 0, 'Schmitt', '15, avenue Léon Pineau\n95892 Lebonboeuf', '35298', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(23, 'aliquid ut dolores', 'Provident illo expedita iure vel similique praesentium reiciendis. Vel occaecati sit labore dolorem. Voluptatem cumque deserunt sed molestiae dolorem aperiam.', 106, 5, 2, 2, 128742, 0, 'Richard-les-Bains', '23, avenue de Descamps\n13655 Bousquet-sur-Faure', '04099', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(24, 'omnis voluptatem quia', 'Odio quam laboriosam aliquam non sint. Consequatur et atque nobis id blanditiis. Omnis ipsum omnis eius cumque sit quod deserunt.', 22, 2, 4, 4, 236761, 1, 'Riviere-sur-Mer', '2, avenue de Blin\n78 986 Roger', '63568', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(25, 'assumenda facilis sint', 'Provident repudiandae suscipit iste sit. Laudantium quo quam ut. Ipsum dolores quam porro qui rerum sed inventore.', 64, 4, 1, 3, 205498, 0, 'Le Gallboeuf', '84, avenue de Chevallier\n21004 Guilbert-les-Bains', '52140', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(26, 'dolorem id deleniti', 'Quia culpa ducimus laudantium ducimus dicta aut. Sequi dolor omnis minus iste repellendus numquam qui. Dolor magni unde dolor sunt.', 137, 9, 3, 3, 280597, 0, 'Camusdan', 'rue Bruneau\n37218 Traore', '62 766', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(27, 'id amet tempora', 'Optio sit aut quis tenetur cum illum consequatur. Ut ut maxime ullam quia facere labore incidunt occaecati. Tenetur repellendus dolorem et quia amet animi ipsam.', 169, 5, 4, 4, 115654, 1, 'David', '13, rue Thierry Faivre\n34 911 Bonnet', '92066', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(28, 'et et dicta', 'Porro molestiae aut accusantium tempora. Aut mollitia cum fugiat incidunt rem qui ut. Id ut eaque est nihil.', 229, 8, 2, 3, 301583, 1, 'Antoine', '83, impasse de Mary\n42428 Godard', '83329', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(29, 'vitae quo soluta', 'Qui eos hic vel similique dignissimos labore. Aperiam quis aut nostrum. Adipisci sit recusandae ad qui amet eos.', 249, 8, 5, 3, 141541, 1, 'Launay', '71, rue Théodore Godard\n35 906 David', '62 660', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(30, 'velit est vel', 'Omnis est asperiores eaque voluptatem aut. Repudiandae nostrum consequatur veritatis molestiae sed dolore. Veritatis minus delectus porro error in quis.', 69, 3, 4, 3, 396179, 0, 'Gallet', 'impasse Jacques Toussaint\n00 945 Hardy', '19 747', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(31, 'possimus aut ullam', 'Quibusdam eligendi non explicabo ea qui corrupti. Necessitatibus excepturi iure et laudantium magni. Ut qui aut labore consequatur aut sequi ullam.', 67, 5, 5, 3, 315102, 1, 'BerthelotBourg', '82, impasse de Mahe\n13 153 Colas-la-Forêt', '49518', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(32, 'atque illo saepe', 'Quas placeat qui sequi voluptatem repudiandae enim. In laborum sit repellat magni ratione rerum delectus. Blanditiis minus deleniti rerum consequatur iste et.', 343, 10, 2, 3, 227532, 0, 'Labbe', 'avenue de Duval\n26690 BeckerBourg', '22 082', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(33, 'magnam vero consequatur', 'Dignissimos et optio quo ut. At dolores ex dolor sed. Unde voluptatem nobis dignissimos omnis voluptate optio.', 319, 10, 5, 1, 207696, 1, 'Besnard', '179, chemin de Monnier\n98 747 Ferreira', '32379', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(34, 'id libero est', 'Nesciunt ut blanditiis minus provident non. Aspernatur et repellendus aperiam velit harum aliquam. Hic aut aut voluptate non odit.', 299, 3, 5, 2, 176502, 1, 'Martin', '897, avenue Lopes\n34298 Gauthier', '99830', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(35, 'earum et non', 'Est accusamus ipsum et quibusdam. Quisquam sint vel dolorem dolor. Dolor illo fuga quis consequuntur assumenda.', 151, 8, 4, 3, 301548, 0, 'Parisnec', '634, boulevard Isabelle Brunel\n59 541 Thierry', '77 220', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(36, 'dolor quis ut', 'Iure architecto laborum porro ab autem esse. Error ad at maxime quia. Neque est est dignissimos rerum.', 136, 3, 3, 2, 178856, 0, 'Martinez', '11, chemin de Perrin\n37859 Duhamel', '54270', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(37, 'quod eveniet consectetur', 'Quis amet id ullam doloribus. Dicta minima non recusandae quia quo iure. Et eligendi libero aliquam commodi blanditiis similique est sint.', 176, 9, 2, 1, 127139, 1, 'Clement', 'rue Collin\n33852 Carlier-sur-Mer', '67008', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(38, 'ea ut eveniet', 'Voluptatem veniam rerum ipsam nihil magni id nesciunt. Velit sed aspernatur in quasi enim molestias similique. Commodi ad quae enim.', 85, 8, 3, 2, 138352, 0, 'Gimenez', '7, place de Robin\n51557 Pierre', '69352', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(39, 'sequi placeat labore', 'Consectetur nihil aut rerum quia expedita at minima. Atque eius laudantium ut dolorem. Alias in in debitis ad.', 229, 4, 2, 3, 177950, 0, 'Guyon', '3, boulevard de Valette\n88734 Descamps-sur-Gros', '40791', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(40, 'sunt dolore ea', 'Ipsam qui facilis asperiores natus nesciunt laborum deserunt. Vero error inventore et expedita eos aut minus. Dignissimos expedita quis et nulla beatae.', 116, 9, 3, 4, 185767, 0, 'Vaillant', '462, rue Payet\n48369 Auger', '27628', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(41, 'mollitia eum accusantium', 'In qui ut dolorem repudiandae fugit. In consequuntur est inventore velit aut. Molestiae illum facilis labore rerum ut voluptatum.', 194, 9, 5, 3, 319158, 1, 'Pineauboeuf', '86, place Aimé Hernandez\n69 061 Gregoire-sur-Mer', '57740', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(42, 'culpa autem occaecati', 'Qui ipsum dolores qui sit non officiis omnis vitae. Eos repellat sed culpa quia rerum. Maiores omnis rerum qui sed.', 183, 2, 4, 2, 165819, 1, 'Auger', 'rue Arthur Marin\n44 645 Mercierboeuf', '52 580', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(43, 'voluptates enim quia', 'Quisquam qui quas voluptas officiis consequuntur quia est. Quae neque consequuntur recusandae ea quia ut quidem. Excepturi quisquam ut fugiat.', 206, 10, 3, 4, 223790, 1, 'Payet', '55, rue de Dos Santos\n19 933 Renault-sur-Lebon', '48 119', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(44, 'soluta omnis dolores', 'Magnam at ut qui dignissimos. Occaecati odit omnis est dicta eaque. Dolorum vel dolore molestias dolorem maiores dicta sit.', 220, 4, 3, 2, 221577, 1, 'Malletdan', '31, rue de Gay\n70 344 Danielnec', '20739', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(45, 'earum saepe quos', 'Veritatis minima aliquid cupiditate voluptatibus in sequi. Ut expedita eligendi sapiente consequatur. Porro quidem perferendis non quo quisquam.', 43, 9, 1, 4, 240249, 1, 'Gallet-les-Bains', '84, rue Monique Martin\n39 163 Leroy', '31041', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(46, 'dolor ducimus porro', 'Recusandae a suscipit dignissimos ut quo. Reprehenderit similique voluptates ut vel molestias voluptatem suscipit. Ut quam est fugiat aut sed minima sint.', 152, 3, 2, 1, 247535, 1, 'BonnetVille', '77, boulevard Benjamin Le Gall\n95 135 Delahayedan', '97 042', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(47, 'veniam architecto accusantium', 'Sunt corrupti aut iste velit. Molestias et sunt nesciunt. Reiciendis soluta quam ut ipsa qui qui esse.', 28, 10, 4, 1, 180478, 0, 'Gregoire', '150, avenue Augustin Remy\n21985 Guilletdan', '09431', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(48, 'explicabo ducimus suscipit', 'Numquam deserunt omnis omnis numquam dolore aperiam occaecati neque. Et enim velit eos commodi culpa optio libero. Dolorum quas amet ea delectus modi et.', 159, 8, 3, 4, 179975, 0, 'Schmitt', '59, place de Lejeune\n17 292 RenaudVille', '30033', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(49, 'temporibus ut ea', 'Quo culpa id eum perspiciatis necessitatibus. Sunt molestiae nesciunt blanditiis impedit dolor molestiae atque. Consequatur vel rerum nesciunt voluptatibus quas.', 314, 4, 2, 3, 155989, 0, 'Dupont', 'impasse Mathilde Letellier\n82 391 Bailly', '60663', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(50, 'autem dolorum assumenda', 'Alias fugit incidunt ipsa aut nam ea hic modi. Ut quis quo numquam doloribus minus libero. Id repellat consequatur nisi ducimus repellat.', 323, 8, 5, 2, 251299, 0, 'Mary', '780, impasse Thierry\n69677 Letellier', '73793', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(51, 'aliquid est ex', 'Qui deleniti et exercitationem sit et dolor quod. Consectetur omnis fugit quidem laborum in sed est. Hic pariatur soluta sed impedit et non facere in.', 229, 5, 4, 1, 159788, 0, 'Loiseau', '84, rue Brigitte Bonnet\n35268 Buisson', '71642', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(52, 'harum minus dolores', 'Accusantium provident et quia consequatur quasi impedit eaque. Inventore quia saepe placeat minus illum qui vel rerum. Quis odio ut quasi.', 267, 3, 5, 1, 381019, 0, 'Renaudnec', '89, place de Andre\n39 127 Guyot', '17008', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(53, 'quia impedit earum', 'Illo voluptas repudiandae consectetur aut nemo consequatur. Error consequatur ratione omnis iste adipisci. Quia molestias dolorem est eveniet rem quidem nisi.', 153, 5, 2, 2, 196389, 1, 'Lesage', '24, place de Hoareau\n70125 Rogerboeuf', '43 504', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(54, 'ab eveniet veritatis', 'Excepturi nulla et dolores quam ratione corrupti. Quia rerum sapiente quasi consequatur laborum. Et autem fuga qui dolore amet.', 220, 3, 3, 3, 156169, 0, 'Normandboeuf', '10, avenue Le Roux\n59452 Morvan', '95379', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(55, 'et ratione ut', 'Laborum voluptates iste quasi quia quod distinctio et nostrum. Accusamus nam autem natus ipsa. Sequi officiis accusamus quia beatae sit reprehenderit perspiciatis sit.', 164, 3, 2, 1, 280823, 0, 'Boulay', '18, impasse de Noel\n48917 Hoaraudan', '29020', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(56, 'provident voluptates voluptatem', 'Sapiente mollitia nam officia aut. Soluta delectus voluptatem veritatis quidem natus nobis dolores hic. Minus atque incidunt aut in sapiente quaerat.', 217, 9, 5, 3, 298989, 1, 'Imbertdan', '18, chemin de Chevallier\n36 699 ClementVille', '28605', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(57, 'est dicta amet', 'Temporibus dolores sapiente necessitatibus rerum inventore necessitatibus at. Qui aut dolorem voluptatum maxime earum doloremque velit. Dolores placeat architecto quam officiis minima qui maxime.', 193, 4, 5, 2, 394893, 1, 'Bouchet-sur-Joubert', '75, impasse Honoré Pereira\n80 339 Weiss-la-Forêt', '02 989', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(58, 'occaecati illum recusandae', 'Ducimus veritatis ut temporibus odit est aut sit. Consequatur commodi quasi sequi velit. Perferendis ex facilis impedit nihil.', 339, 6, 2, 3, 263622, 1, 'LombardBourg', 'boulevard de Brunel\n17648 Mahe', '10 518', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(59, 'necessitatibus non voluptatem', 'Libero sed harum et. Atque labore repellendus vitae molestiae aut rem velit omnis. Quam totam possimus excepturi aut.', 168, 2, 2, 4, 308259, 0, 'Parent-sur-Masson', 'chemin Marc Barbier\n20656 Rolland', '16110', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(60, 'a est eius', 'Incidunt sunt rerum atque magni cum possimus. Ea aut minima illum neque velit quidem consequuntur. Exercitationem qui magnam nihil laboriosam quia cupiditate aperiam.', 139, 3, 2, 4, 165347, 0, 'Guibert', '77, impasse Gilbert Normand\n51 798 Baron', '12 457', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(61, 'eius cupiditate excepturi', 'Corrupti non placeat quidem repudiandae sit. Repellat error eius rerum nemo. Temporibus quo rerum eum quo dolorem.', 348, 4, 4, 4, 281905, 0, 'Mercier-la-Forêt', '17, impasse Grégoire Fleury\n12010 Perez', '43493', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(62, 'quo rem qui', 'Aut rem repudiandae nesciunt unde et nesciunt sit eligendi. Et quia esse sit. Voluptas necessitatibus enim harum quod maxime.', 98, 10, 1, 3, 265485, 0, 'Foucher', '38, place de Baron\n72683 Vidal', '85 296', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(63, 'et quos repudiandae', 'Et quae enim accusamus. Est libero rerum corporis dignissimos non. Ratione ullam commodi ratione maiores ipsa cupiditate.', 294, 10, 4, 3, 229362, 0, 'Guyonnec', 'avenue Augustin Lenoir\n26498 Boulay', '92854', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(64, 'aliquid quasi voluptas', 'A occaecati ab cumque omnis. Voluptatem eveniet labore voluptatum facere dignissimos sunt ut. Ullam labore quae ipsa dicta consequuntur aliquid nisi.', 77, 6, 5, 3, 379659, 1, 'Olivier-les-Bains', '6, rue de Paul\n58 285 Meunier', '16 064', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(65, 'et fuga accusamus', 'Sint ut ullam ipsam nam. Animi mollitia qui nulla autem sed. Et omnis aut et quas.', 166, 8, 2, 2, 242594, 0, 'Lombard', '78, impasse Thibaut Faure\n95 983 Lebrun', '31 369', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(66, 'magni non id', 'Nisi sapiente eum omnis temporibus quia. Enim totam est enim vero sed quo sit. Et autem ducimus aut doloremque esse iusto.', 243, 10, 3, 2, 387673, 1, 'Texier', '97, rue de Vasseur\n93 527 Dufour-la-Forêt', '13 022', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(67, 'eveniet ducimus nisi', 'Tenetur quia et omnis et. Laboriosam libero fuga sequi et modi quo corporis. Et et hic quia qui.', 144, 4, 3, 1, 111931, 1, 'Wagner-les-Bains', '5, avenue Élodie Letellier\n20 525 Lebon-sur-Becker', '34 671', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(68, 'praesentium ut dolorem', 'Aut inventore vel voluptatem debitis beatae perspiciatis. Dignissimos odit et illo culpa distinctio inventore. Tempora et dolorem enim enim nemo.', 228, 10, 4, 2, 264189, 1, 'Guyon', '5, rue de Lebrun\n65574 Raymond', '16025', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(69, 'tempora culpa deleniti', 'Et libero molestiae explicabo et itaque vel aut. Molestiae iusto quis in illo. Quidem nemo consequatur repellat at.', 26, 8, 5, 1, 255062, 1, 'Bazinnec', '549, impasse de Roy\n69 083 Alexandreboeuf', '99 114', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(70, 'magni sapiente eos', 'Quia voluptate sed quo rerum quis. Voluptatem illo est non eligendi ut inventore aut ut. Ducimus minus tempore iusto et velit.', 81, 3, 3, 2, 235470, 1, 'Durand', 'place de Delaunay\n13100 Perrin', '46 587', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(71, 'qui minus sed', 'Praesentium odio non distinctio a velit ullam qui. Et iure eveniet odio id. Magni quo aut et similique quibusdam amet.', 86, 10, 5, 4, 249404, 0, 'RamosBourg', '68, rue Pierre\n36787 Poirier', '80 754', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(72, 'explicabo et dolor', 'Suscipit laudantium aliquam pariatur et et. Error a ut minus. Adipisci doloremque tempora atque commodi.', 137, 5, 2, 2, 106162, 1, 'Gillet-la-Forêt', 'rue de Guillot\n47072 Maury', '89977', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(73, 'ea officiis rerum', 'Fuga eum quis vitae. Cumque corrupti laudantium suscipit quo debitis. Rerum maxime consectetur eligendi quos non ut aliquid.', 102, 8, 3, 4, 297471, 0, 'Guillaume', '37, rue Thibault Colas\n64 028 Garniernec', '02769', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(74, 'dicta incidunt repellat', 'Fugiat atque neque pariatur aut. Fugit natus necessitatibus dolore et at ea. Rerum aut nobis molestias assumenda.', 276, 3, 3, 1, 302572, 1, 'Seguinboeuf', '390, boulevard Mace\n44 384 De Sousaboeuf', '55628', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(75, 'aut autem quam', 'Quia natus ut numquam aut asperiores est. Nihil consequatur veniam sunt et eum. Necessitatibus dolor error dolore natus et aliquid.', 92, 10, 3, 4, 315525, 0, 'Arnaud', 'rue Jourdan\n04 043 Lefebvredan', '66 080', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(76, 'veniam ut consequatur', 'Perferendis et facere ipsum quidem dolor. Voluptate illum et ut eveniet et asperiores. Eum temporibus nemo sed suscipit optio et perspiciatis.', 156, 5, 2, 1, 261813, 0, 'Auger-la-Forêt', 'rue de Dumont\n13 334 Tanguy', '84 518', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(77, 'porro est voluptatibus', 'Quia rerum omnis molestiae asperiores. Ut magnam excepturi iure et consectetur. Fugiat et iusto iure cumque quasi.', 255, 9, 1, 1, 162815, 1, 'Delaunay-la-Forêt', '27, place Clerc\n29390 Petitjean', '54 993', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(78, 'incidunt atque beatae', 'Velit tenetur cumque repudiandae nobis quas et. Laboriosam eligendi non repellat dicta quis non. Porro voluptatem reiciendis aut quas quasi deleniti provident.', 277, 5, 1, 2, 377393, 0, 'Vincent', '37, impasse Martineau\n15966 Diallodan', '58143', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(79, 'dolores minus eligendi', 'Dolore optio voluptas quis id laudantium ipsum est est. Itaque est ea dolores. At consectetur et commodi sed.', 246, 2, 1, 3, 146245, 1, 'Perrier-sur-Mer', '5, impasse de Jacquet\n16770 Berger', '24974', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(80, 'dignissimos at reiciendis', 'Est architecto qui voluptas ducimus. Sed necessitatibus cupiditate asperiores neque ipsa quo unde quibusdam. Mollitia sint labore blanditiis repudiandae accusamus officiis.', 284, 6, 5, 1, 318562, 1, 'Payet', '8, chemin de Jacquet\n86 938 Maillot', '82 720', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(81, 'odit cum sed', 'Facilis officiis optio ut consectetur voluptas cum quia. Voluptatum aut soluta distinctio aut quasi omnis dolor eligendi. Ut eius atque aperiam.', 295, 9, 4, 4, 209964, 0, 'Dijoux', '83, chemin Thomas Ferrand\n87227 Laportedan', '70154', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(82, 'est doloremque debitis', 'Repellat eos facere molestiae dolorum voluptatem. Exercitationem ullam esse doloremque rem natus ullam. Quis sunt quia aperiam porro eaque esse.', 23, 8, 5, 1, 342413, 1, 'GoncalvesBourg', '424, rue de Dufour\n56799 Marchal', '40265', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(83, 'illo voluptatum veritatis', 'In voluptatum sint dignissimos consequatur voluptatem. Blanditiis est quibusdam consectetur est et nesciunt rerum. Assumenda maxime eligendi mollitia.', 265, 9, 3, 4, 146171, 1, 'Leblanc', '226, rue de Weber\n96676 Philippe-sur-Mer', '94791', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(84, 'aperiam animi voluptatum', 'Molestiae eos aut iure et asperiores minus. Officia amet iusto quasi et. Sed qui ut error rerum.', 144, 3, 2, 1, 132347, 0, 'Chauvet', '148, place de Payet\n64 673 Ferreira', '72 603', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(85, 'quae repellat ut', 'Atque sed nisi rerum deleniti qui occaecati. Eum vitae blanditiis quaerat aperiam. Rerum veritatis soluta est doloribus quas mollitia.', 201, 4, 5, 3, 333304, 1, 'Coulonboeuf', '67, chemin de Duval\n28889 Weber-sur-Vallee', '10067', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(86, 'rerum dignissimos perferendis', 'Voluptatibus praesentium et eos veniam sit possimus voluptas velit. Dolorem neque omnis exercitationem officia. Qui consequatur et quaerat aut vitae.', 161, 6, 5, 3, 116508, 1, 'Richardboeuf', '79, impasse Sauvage\n80 464 Valentinboeuf', '93 607', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(87, 'voluptatem dolor architecto', 'Nemo neque dolorum optio id sint corrupti. Id autem molestiae nemo. Quia blanditiis repudiandae velit assumenda consequatur est quod suscipit.', 150, 5, 3, 4, 134148, 1, 'Imbert-les-Bains', '3, avenue Poirier\n20 369 Lopez', '17 185', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(88, 'ipsum dignissimos numquam', 'Aut magni consequatur doloremque ea nam. Provident nostrum perspiciatis consequatur. Sed omnis perferendis facilis occaecati quia voluptas et provident.', 192, 2, 1, 3, 305409, 0, 'Marion-sur-Becker', '37, boulevard Inès Cousin\n85 236 Lecoq', '97421', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(89, 'veritatis impedit totam', 'Nesciunt ut inventore culpa quas quia voluptate. Iure commodi est ut odio. Et doloribus et illo qui.', 169, 6, 5, 1, 101140, 1, 'Chartier', 'boulevard Foucher\n74761 Masse-la-Forêt', '36 040', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(90, 'est earum et', 'Quis autem quae rem qui possimus. Beatae at vero iure eius quod officia explicabo. Quam quia cupiditate id deserunt quod exercitationem.', 341, 8, 3, 4, 187804, 1, 'Ledouxnec', 'place de Noel\n69083 Gerard', '49 863', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(91, 'enim harum laboriosam', 'Saepe et aperiam nemo sint ullam. Ut odit ea et illum accusamus. Ut impedit esse enim asperiores provident.', 60, 4, 4, 1, 174718, 0, 'MerleVille', '10, chemin Roussel\n98 502 Martins-sur-Robert', '19 447', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(92, 'perferendis exercitationem quisquam', 'Qui amet sed velit voluptas enim officia. Ea aut et sit commodi at. Voluptatem laborum distinctio at.', 61, 7, 3, 1, 350782, 0, 'Gillesnec', '178, chemin Dufour\n36 212 Hernandez', '63 630', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(93, 'fugit iure laudantium', 'Iste dolorem est et enim voluptates voluptatum ipsam. Dolores dolores vel soluta quisquam et et. Culpa unde laborum velit qui omnis sequi.', 152, 10, 5, 2, 114975, 0, 'Guyonboeuf', '26, rue de Thierry\n85720 Lelievre-sur-Courtois', '40 469', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(94, 'quis quia occaecati', 'Minima beatae et saepe suscipit optio mollitia quia. Dolore cupiditate velit quod aut explicabo magnam et. Et pariatur et rerum corrupti.', 94, 3, 2, 1, 193745, 0, 'Diallo', '11, place de Perret\n46 019 RollandBourg', '28 739', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(95, 'explicabo deserunt facere', 'Reprehenderit magni et nisi tempora quae sed odit eos. Minus dignissimos consequatur exercitationem nulla sunt tempore reprehenderit. Assumenda quas ut porro voluptatibus natus.', 308, 4, 4, 3, 278160, 1, 'DupreBourg', '6, place Besnard\n27 845 Giraud', '67491', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(96, 'voluptates id sequi', 'Eum qui vel architecto maiores minima atque molestiae. Aut quasi est temporibus omnis. Asperiores aliquam quas similique quo.', 192, 10, 5, 1, 121715, 0, 'Deschamps', '39, chemin de Giraud\n23 631 Bruneaunec', '19840', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(97, 'quis doloribus nulla', 'Nostrum repellat quod ut velit vel. Molestiae ut aliquam ut quia maxime odio sit. Rerum quia dolores minima qui et esse.', 87, 5, 2, 2, 131298, 1, 'Mary', '593, rue Bernadette Benard\n04 160 Leduc-sur-Martins', '97281', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(98, 'magni ad officiis', 'Asperiores autem ullam et officia molestiae aliquid natus. Aut itaque dolore sint adipisci. Qui laboriosam aut nam voluptatibus qui eligendi autem.', 74, 10, 3, 2, 270266, 0, 'Delannoy', '10, impasse de Dijoux\n85 778 EtienneBourg', '29 091', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(99, 'necessitatibus ut doloribus', 'Enim eligendi sed quia ut dolor molestiae. Eum accusamus commodi amet tenetur officia. Voluptates odit sit iure fugiat.', 168, 3, 2, 3, 271592, 0, 'Faivre-les-Bains', '27, avenue Valentin\n47788 Blin', '19 080', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00'),
(100, 'officiis accusantium et', 'Expedita id voluptate et. Sit quia praesentium repellat voluptatem suscipit. Vel quo dolor aspernatur non dolorem nobis omnis.', 247, 5, 2, 1, 278671, 1, 'Guyon', '34, chemin Emmanuelle Teixeira\n03 006 GeorgesVille', '80 718', 0, '2021-05-05 15:50:41', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `property_option`
--

CREATE TABLE `property_option` (
  `property_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property_option`
--

INSERT INTO `property_option` (`property_id`, `option_id`) VALUES
(1, 1),
(1, 3),
(2, 2),
(3, 2),
(4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `is_verified`) VALUES
(1, 'SuperTIti', '[]', '$argon2id$v=19$m=65536,t=4,p=1$cHZXOVA0R0o5OTh6MWxZbg$CCWf9NJK1SR0sr7CysU2shlI+w2ErzQTdvyaB3HIcCU', 0),
(2, 'tvoizard@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Y3BraERSODQudmh2Q0kyNQ$5klkCPAv1xJXaPTCh5quZM7QJldljK0m7UJIwe+RydU', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `option`
--
ALTER TABLE `option`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `property_option`
--
ALTER TABLE `property_option`
  ADD PRIMARY KEY (`property_id`,`option_id`),
  ADD KEY `IDX_24F16FCC549213EC` (`property_id`),
  ADD KEY `IDX_24F16FCCA7C41D6F` (`option_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `option`
--
ALTER TABLE `option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `property_option`
--
ALTER TABLE `property_option`
  ADD CONSTRAINT `FK_24F16FCC549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_24F16FCCA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `option` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
