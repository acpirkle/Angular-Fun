-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2018 at 02:06 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angular_training`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `name` varchar(75) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(14) CHARACTER SET utf8 NOT NULL,
  `state` varchar(2) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`name`, `phone`, `state`, `email`) VALUES
('Nato Cato', '(285) 195-4454', 'GA', 'natocato@aol.com'),
('Billy Malone', '(792) 463-8252', 'AZ', 'bmalone792@gmail.com'),
('Marissa Roach', '(396) 421-5124', 'MO', 'mroach@hotmail.com'),
('Barbera Strickland', '(296) 131-5481', 'MI', 'b-strick@yahoo.com'),
('Bethany Jones', '(284) 625-1474', 'CT', 'bbjones@gmail.com'),
('Michael Dupont', '(696) 534-7921', 'FL', 'michdupont@florida.edu'),
('Justin Long', '(812) 645-5525', 'IL', 'justlong@gmail.com'),
('Zeyna Dracoon', '(765) 234-8545', 'SC', 'zdracoon@yahoo.com'),
('Yulia Zegrev', '(461) 528-1651', 'CA', 'y_zeg_it_is@gmail.com'),
('Dr. Ferris Winestein', '(846) 259-1345', 'KS', 'fwinestein@winesteinortho.com'),
('Andrew Pirkle', '(229) 848-5648', 'GA', 'thepirkle@pirkle.com'),
('London Bridge', '(824) 645-4986', 'NE', 'london@england.uk'),
('Taylor Deese', '(164) 845-6151', 'GA', 'tdeese@deesenuts.net'),
('Ben McPherson', '(229) 846-5134', 'GA', 'benjammin@bennyboy.net'),
('Marcia Brimberry', '(229) 545-7151', 'GA', 'marshymarsh@marcia-mallow.uk'),
('Harsh Dhabhai', '(286) 468-5486', 'GA', 'harshdhabhaifromseniorlife@livelifelove.com'),
('Greg Preston', '(284) 664-8896', 'GA', 'greg@thatcanadianguy.ca'),
('Smitty Werbenjagermanjenson', '(645) 456-8453', 'CA', 'smitty@iamnumberone.org');

-- --------------------------------------------------------

--
-- Table structure for table `random_words`
--

CREATE TABLE `random_words` (
  `id` int(11) NOT NULL,
  `word` varchar(25) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `random_words`
--

INSERT INTO `random_words` (`id`, `word`) VALUES
(297, 'abased'),
(292, 'acarine'),
(465, 'acclaim'),
(480, 'accord'),
(8, 'activizing'),
(311, 'admetus'),
(501, 'afloat'),
(1, 'ages'),
(363, 'aglimmer'),
(110, 'ague'),
(333, 'agujon'),
(19, 'ais'),
(314, 'akvavit'),
(28, 'alameda'),
(320, 'alluded'),
(383, 'almelo'),
(387, 'alphonsus'),
(38, 'altamira'),
(145, 'alva'),
(259, 'alvine'),
(207, 'always'),
(271, 'amply'),
(39, 'ampyx'),
(126, 'antirent'),
(281, 'apaches'),
(42, 'applejack'),
(424, 'argyra'),
(286, 'arroyo'),
(218, 'arvid'),
(239, 'ashake'),
(6, 'asinine'),
(123, 'atlantal'),
(332, 'awe'),
(197, 'baconism'),
(80, 'bacteriologist'),
(242, 'barbary'),
(475, 'barefoot'),
(322, 'barrens'),
(517, 'beanpole'),
(483, 'beckmann'),
(238, 'beddable'),
(317, 'belmont'),
(294, 'bemaul'),
(161, 'benaming'),
(174, 'bertaud'),
(520, 'berwyn'),
(296, 'betoken'),
(477, 'betsey'),
(151, 'bialik'),
(351, 'billyo'),
(338, 'bist'),
(220, 'bistros'),
(328, 'blub'),
(264, 'bonn'),
(511, 'bordet'),
(266, 'born'),
(275, 'bosnia'),
(150, 'bothria'),
(200, 'boucl'),
(497, 'bowfin'),
(479, 'brambling'),
(25, 'brassage'),
(260, 'brinier'),
(523, 'bronxville'),
(535, 'brownie'),
(175, 'bullarium'),
(78, 'bullate'),
(167, 'buphagus'),
(468, 'burnsides'),
(502, 'bushlike'),
(471, 'bushpig'),
(324, 'buzzard'),
(113, 'cacqueteuse'),
(16, 'caddisworm'),
(357, 'cannula'),
(57, 'carcinomatoid'),
(48, 'centesimally'),
(205, 'charnel'),
(189, 'chastised'),
(379, 'cheerily'),
(180, 'childish'),
(262, 'chlamys'),
(319, 'circe'),
(361, 'clarify'),
(173, 'clemens'),
(265, 'cloelia'),
(375, 'clubwomen'),
(10, 'clytaemnesra'),
(284, 'cmf'),
(15, 'cnidocyst'),
(473, 'coastal'),
(431, 'colinette'),
(134, 'columbeion'),
(388, 'confidente'),
(348, 'conroy'),
(81, 'constabulary'),
(143, 'contemner'),
(157, 'contusing'),
(106, 'convection'),
(112, 'convolvuli'),
(358, 'cotangent'),
(347, 'cotter'),
(368, 'cotula'),
(374, 'counselor'),
(398, 'counterproof'),
(217, 'cowpea'),
(102, 'crayon'),
(77, 'crewe'),
(300, 'crewe'),
(489, 'crossbred'),
(307, 'crummy'),
(406, 'crystalling'),
(166, 'curragh'),
(136, 'currier'),
(298, 'cyrano'),
(486, 'danny'),
(327, 'dantean'),
(183, 'darraign'),
(142, 'dasyure'),
(149, 'datto'),
(444, 'davison'),
(43, 'deambulatory'),
(503, 'debit'),
(73, 'decencies'),
(226, 'deed'),
(70, 'defaceable'),
(75, 'defector'),
(58, 'defibrillating'),
(364, 'delightsome'),
(154, 'demonax'),
(191, 'descend'),
(179, 'despising'),
(412, 'directress'),
(172, 'discovery'),
(101, 'disencumber'),
(186, 'displume'),
(352, 'disputer'),
(65, 'dissolution'),
(254, 'dolor'),
(269, 'douay'),
(335, 'downs'),
(195, 'dozenth'),
(283, 'dozy'),
(549, 'dragon'),
(230, 'drone'),
(279, 'drossy'),
(530, 'durant'),
(487, 'earlship'),
(250, 'egress'),
(92, 'electroform'),
(446, 'embosom'),
(196, 'emitting'),
(247, 'enallage'),
(232, 'endrin'),
(103, 'ermentrude'),
(133, 'eupatridae'),
(432, 'evelynne'),
(505, 'eyestrain'),
(128, 'fatling'),
(209, 'favorer'),
(342, 'fawnia'),
(411, 'fellowman'),
(545, 'ferenc'),
(158, 'feudalist'),
(492, 'fireworks'),
(241, 'fixity'),
(182, 'flabby'),
(401, 'flammable'),
(87, 'floatable'),
(413, 'foggily'),
(436, 'foliaged'),
(146, 'fomorian'),
(159, 'forfeit'),
(162, 'formula'),
(459, 'franois'),
(548, 'friar'),
(469, 'friezing'),
(115, 'frisco'),
(321, 'fun'),
(86, 'gaithersburg'),
(460, 'gallstone'),
(270, 'gannet'),
(423, 'gassiest'),
(34, 'gauguin'),
(426, 'gazetteer'),
(114, 'gentile'),
(476, 'gibran'),
(305, 'girtin'),
(268, 'glass'),
(390, 'glumpily'),
(156, 'godwit'),
(334, 'goer'),
(418, 'gooseberry'),
(12, 'gramineousness'),
(222, 'gramme'),
(62, 'grapelike'),
(47, 'grecize'),
(528, 'greenish'),
(429, 'griseous'),
(215, 'grivation'),
(481, 'gruffly'),
(82, 'gummose'),
(532, 'gumwood'),
(253, 'gutsy'),
(543, 'gwydion'),
(430, 'hallowmass'),
(369, 'haringey'),
(95, 'hasa'),
(233, 'hayey'),
(227, 'headward'),
(280, 'heaume'),
(35, 'helvetii'),
(490, 'hepar'),
(440, 'himeros'),
(544, 'himmler'),
(478, 'homespun'),
(181, 'hopeful'),
(533, 'hopper'),
(389, 'horopter'),
(50, 'hospitalism'),
(451, 'hostel'),
(417, 'housefather'),
(295, 'hums'),
(359, 'hypethral'),
(272, 'idled'),
(416, 'ignorant'),
(93, 'illiberalising'),
(403, 'ilona'),
(445, 'imbruement'),
(164, 'impar'),
(248, 'impotence'),
(198, 'incline'),
(72, 'increment'),
(5, 'ineffectually'),
(97, 'inheritability'),
(214, 'initiator'),
(201, 'innerve'),
(263, 'innless'),
(391, 'inspector'),
(277, 'invent'),
(385, 'isogon'),
(24, 'iznik'),
(308, 'izzard'),
(88, 'jargonist'),
(515, 'jaspers'),
(437, 'jawlensky'),
(104, 'jeannette'),
(33, 'jezabel'),
(288, 'jibber'),
(344, 'jural'),
(223, 'kaolack'),
(290, 'kariba'),
(152, 'karynne'),
(85, 'keewatin'),
(257, 'kelter'),
(40, 'khaki'),
(472, 'kickshaws'),
(527, 'kursaal'),
(285, 'kwacha'),
(282, 'laches'),
(539, 'landscape'),
(461, 'lardlike'),
(234, 'leery'),
(193, 'legalize'),
(484, 'lesbos'),
(108, 'leucocythemia'),
(331, 'linch'),
(434, 'livery'),
(514, 'lizzie'),
(192, 'loch'),
(120, 'lofn'),
(309, 'lola'),
(547, 'longan'),
(144, 'loosestrife'),
(199, 'lovelier'),
(49, 'lucien'),
(219, 'luling'),
(343, 'lunes'),
(2, 'lunette'),
(521, 'mainstay'),
(176, 'malaguena'),
(177, 'manny'),
(373, 'martinville'),
(367, 'mashgichim'),
(130, 'mastopathy'),
(287, 'matt'),
(395, 'mccormick'),
(76, 'mckuen'),
(433, 'medalist'),
(99, 'meeter'),
(41, 'melinda'),
(330, 'mengtsu'),
(299, 'meter'),
(153, 'microcosm'),
(370, 'miladi'),
(168, 'minuteman'),
(365, 'miseno'),
(441, 'misspacing'),
(427, 'mizenmast'),
(415, 'mlaren'),
(267, 'modern'),
(482, 'monteux'),
(11, 'motherwort'),
(111, 'mouill'),
(518, 'mousebird'),
(211, 'murmurer'),
(470, 'mysore'),
(366, 'nasturtium'),
(493, 'nearby'),
(245, 'nebulous'),
(236, 'needier'),
(64, 'needless'),
(140, 'negator'),
(463, 'neighbor'),
(360, 'nervelessly'),
(261, 'nicely'),
(118, 'nickeliferous'),
(326, 'nigh'),
(187, 'nighty'),
(74, 'nittier'),
(148, 'nondiscursive'),
(402, 'nongestic'),
(138, 'nonincarnated'),
(27, 'nonmedicative'),
(7, 'nonviolative'),
(229, 'notturno'),
(131, 'nourisher'),
(464, 'novels'),
(256, 'nutcase'),
(453, 'nuthatch'),
(147, 'nutrient'),
(404, 'nyasa'),
(454, 'oakland'),
(137, 'oar'),
(508, 'obnounce'),
(491, 'ohone'),
(37, 'olympiadic'),
(407, 'omnirange'),
(419, 'oregon'),
(408, 'organised'),
(329, 'orono'),
(509, 'outbawl'),
(312, 'outfawn'),
(302, 'outsell'),
(467, 'outthrown'),
(208, 'outworker'),
(63, 'overdredged'),
(44, 'overgratified'),
(165, 'ozs'),
(30, 'pains'),
(537, 'pallette'),
(504, 'paoting'),
(84, 'paradelike'),
(278, 'park'),
(356, 'parsonlike'),
(203, 'perigeal'),
(216, 'petrogram'),
(355, 'pharsalus'),
(127, 'pierrette'),
(325, 'placebo'),
(341, 'plowboy'),
(443, 'plumbicon'),
(293, 'pluteus'),
(316, 'plywood'),
(94, 'poring'),
(46, 'potiche'),
(289, 'prakrit'),
(323, 'precopy'),
(22, 'prenotion'),
(107, 'preradio'),
(450, 'prestock'),
(306, 'prexies'),
(381, 'preyouthful'),
(51, 'proagreement'),
(237, 'prodigal'),
(291, 'projet'),
(31, 'proselytism'),
(531, 'prying'),
(516, 'pseudo'),
(488, 'psyllid'),
(66, 'pulsar'),
(428, 'pursily'),
(313, 'pyxidia'),
(393, 'quieter'),
(303, 'quinton'),
(498, 'rabic'),
(496, 'radish'),
(474, 'ravage'),
(235, 'ravc'),
(534, 'reaper'),
(202, 'rearwards'),
(251, 'recalk'),
(378, 'redeploy'),
(244, 'redismiss'),
(26, 'reeducating'),
(435, 'reexchanged'),
(349, 'refer'),
(513, 'regret'),
(184, 'regrowth'),
(340, 'reiving'),
(160, 'renter'),
(462, 'replete'),
(526, 'reprint'),
(410, 'resister'),
(213, 'retar'),
(56, 'retrobulbar'),
(228, 'rewrote'),
(89, 'rhizomorph'),
(362, 'rhodian'),
(52, 'rightism'),
(546, 'rillettes'),
(494, 'roald'),
(310, 'romberg'),
(350, 'rosalie'),
(336, 'rubefy'),
(354, 'rubicund'),
(163, 'ruthfully'),
(400, 'sablefish'),
(119, 'saionji'),
(507, 'sal'),
(382, 'salvarsan'),
(204, 'sanctuary'),
(125, 'sandarac'),
(249, 'sapid'),
(32, 'sayre'),
(188, 'scarab'),
(171, 'scripture'),
(124, 'scrub'),
(384, 'secession'),
(422, 'seediness'),
(100, 'seeland'),
(178, 'seeland'),
(169, 'selim'),
(376, 'semitone'),
(55, 'septicity'),
(79, 'sestertia'),
(252, 'seton'),
(538, 'shaded'),
(346, 'shaping'),
(536, 'sharen'),
(442, 'shunnable'),
(121, 'siciliano'),
(139, 'sightliread'),
(420, 'silliness'),
(190, 'siloing'),
(499, 'sipper'),
(20, 'slaton'),
(512, 'snapshot'),
(67, 'socialistic'),
(3, 'somite'),
(519, 'spearwort'),
(409, 'speediest'),
(105, 'sperone'),
(458, 'spieler'),
(457, 'spoilless'),
(98, 'standoffish'),
(59, 'stechhelm'),
(452, 'stirrup'),
(212, 'stowe'),
(421, 'streamlining'),
(258, 'stubbed'),
(397, 'submember'),
(372, 'submerging'),
(54, 'submind'),
(129, 'sudatoria'),
(425, 'sufficing'),
(13, 'superhearty'),
(96, 'supermanifest'),
(448, 'superstrain'),
(116, 'supposedly'),
(206, 'suzann'),
(345, 'swung'),
(246, 'tableful'),
(542, 'tactics'),
(524, 'talos'),
(18, 'tarentism'),
(353, 'tasseler'),
(405, 'teagarden'),
(83, 'teakwood'),
(438, 'tehillim'),
(500, 'testate'),
(122, 'tetrabasic'),
(339, 'thames'),
(240, 'thespius'),
(36, 'thessalonki'),
(225, 'thisbe'),
(540, 'threadlike'),
(399, 'threnody'),
(304, 'tibet'),
(255, 'timely'),
(541, 'tito'),
(194, 'tobol'),
(224, 'tournedos'),
(522, 'traceless'),
(377, 'transcendent'),
(276, 'trapes'),
(318, 'trigone'),
(243, 'tripody'),
(221, 'truckload'),
(9, 'tsar'),
(14, 'turbocar'),
(456, 'tussle'),
(337, 'twixt'),
(132, 'umbellate'),
(135, 'unanswering'),
(414, 'unapprised'),
(53, 'uncleaned'),
(447, 'unconverged'),
(117, 'underconsumed'),
(155, 'undersole'),
(506, 'undies'),
(394, 'undwindling'),
(386, 'unfestered'),
(4, 'unfussy'),
(23, 'unheavy'),
(371, 'unlaughing'),
(495, 'unnapped'),
(61, 'unround'),
(449, 'unscented'),
(141, 'unscrutinising'),
(60, 'unsnapping'),
(439, 'unswathing'),
(69, 'unswerving'),
(529, 'untimed'),
(71, 'untranslatable'),
(90, 'unwadable'),
(210, 'upcasting'),
(273, 'utahan'),
(392, 'vaudevillian'),
(17, 'vertebrata'),
(231, 'vicenary'),
(185, 'vigoroso'),
(21, 'vine'),
(45, 'virulency'),
(274, 'vis'),
(170, 'vivifying'),
(109, 'vomer'),
(525, 'voyeur'),
(301, 'wapatoo'),
(396, 'wetterhorn'),
(485, 'woggle'),
(380, 'wraparound'),
(510, 'wristband'),
(466, 'xerarch'),
(68, 'xiphosuran'),
(455, 'yankee'),
(91, 'yapper'),
(29, 'zakarias'),
(315, 'zamia');

-- --------------------------------------------------------

--
-- Table structure for table `usa_states`
--

CREATE TABLE `usa_states` (
  `Name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Abbreviation` varchar(2) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usa_states`
--

INSERT INTO `usa_states` (`Name`, `Abbreviation`) VALUES
('Alabama', 'AL'),
('Alaska', 'AK'),
('Arizona', 'AZ'),
('Arkansas', 'AR'),
('California', 'CA'),
('Colorado', 'CO'),
('Connecticut', 'CT'),
('Delaware', 'DE'),
('District Of Columbia', 'DC'),
('Florida', 'FL'),
('Georgia', 'GA'),
('Hawaii', 'HI'),
('Idaho', 'ID'),
('Illinois', 'IL'),
('Indiana', 'IN'),
('Iowa', 'IA'),
('Kansas', 'KS'),
('Kentucky', 'KY'),
('Louisiana', 'LA'),
('Maine', 'ME'),
('Maryland', 'MD'),
('Massachusetts', 'MA'),
('Michigan', 'MI'),
('Minnesota', 'MN'),
('Mississippi', 'MS'),
('Missouri', 'MO'),
('Montana', 'MT'),
('Nebraska', 'NE'),
('Nevada', 'NV'),
('New Hampshire', 'NH'),
('New Jersey', 'NJ'),
('New Mexico', 'NM'),
('New York', 'NY'),
('North Carolina', 'NC'),
('North Dakota', 'ND'),
('Ohio', 'OH'),
('Oklahoma', 'OK'),
('Oregon', 'OR'),
('Pennsylvania', 'PA'),
('Rhode Island', 'RI'),
('South Carolina', 'SC'),
('South Dakota', 'SD'),
('Tennessee', 'TN'),
('Texas', 'TX'),
('Utah', 'UT'),
('Vermont', 'VT'),
('Virginia', 'VA'),
('Washington', 'WA'),
('West Virginia', 'WV'),
('Wisconsin', 'WI'),
('Wyoming', 'WY');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `random_words`
--
ALTER TABLE `random_words`
  ADD PRIMARY KEY (`id`),
  ADD KEY `word` (`word`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `random_words`
--
ALTER TABLE `random_words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=550;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
