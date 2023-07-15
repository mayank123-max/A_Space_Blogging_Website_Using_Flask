-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2023 at 01:43 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone_num` text NOT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'first', 'first@email.com', '1212121212', 'first is first.', '2022-09-21 00:52:38'),
(2, 'second', 'second@email.com', '4545454545', 'second is second best.', '2022-09-21 00:59:04'),
(3, 'third', 'third@email.com', '+91 9145786950', 'genache is best to learn blockchain.', '2022-09-21 01:00:17'),
(4, 'fourth', 'fourth@email.com', '7878787878', 'fourth is fastt and superfast.', '2022-09-21 01:07:10'),
(5, 'fifth', 'fifth@email.com', '7474747474', 'fifth the girls ghuting..', '2022-09-21 01:21:06'),
(6, 'sixth', 'sixth@email.com', '7878787878', 'sixth is sixth best.', '2022-09-22 14:05:15'),
(7, 'Solidity', 'solidity@email.com', '5656565656', 'solidity is honable.', '2022-09-22 14:07:34'),
(8, 'eight', 'eight@email.com', '+91 9245678598', 'eight is eighth best.', '2022-09-22 14:09:05'),
(9, 'nine', 'nine@email.com', '+91 9758469856', 'nine is nine best.', '2022-09-23 09:59:15'),
(10, 'ss', 'sds@email.com', '5454545', 'sdsadsad', '2022-09-23 10:15:47'),
(11, 'ss', 'sds@email.com', '5454545', 'sdsadsad', '2022-09-23 10:16:09'),
(12, 'piyumsh', 'piyumsh@email.com', '+91 954865486', 'i m piyumsh.', '2022-09-23 11:10:05'),
(13, 'yamshashvi(yashi)', 'ysmshashvi@email.com', '+91 954865486', 'i m piyumsh.', '2022-09-23 11:10:59'),
(14, 'prachi', 'prachi@email.com', '+91 4584584585', 'i m prachi mayanks girlfriend.', '2022-09-23 11:12:23'),
(15, 'Solidity', 'solidity@email.com', '+91 9568568546', 'solidity is best for blockchain.', '2022-09-24 15:25:25'),
(16, 'second', 'fourth@email.com', '7878787878', '', '2022-09-26 22:01:44'),
(17, 'seventeenth', 'seventeenth@email.com', '7878787878', 'sdsdsdsdsds', '2023-07-08 22:46:15'),
(18, 'seventeenth', 'seventeenth@email.com', '7878787878', 'sdsdsdsdsds', '2023-07-08 22:50:03'),
(19, 'second', 'first@email.com', '7878787878', 'ddd', '2023-07-08 22:50:16'),
(20, 'first', 'first@email.com', '7878787878', 'dsdasds', '2023-07-14 21:52:03'),
(21, 'second', 'second@email.com', '4545454545', 'jjjj', '2023-07-15 13:42:05'),
(22, 'sdsds', 'sds@email.com', 'ssdsdsds', 'sd', '2023-07-15 17:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Lets Learn About Black Holes. ', 'A supermassive Creature.', 'black-hole', 'A black hole is a region of spacetime where gravity is so strong that nothing – no particles or even electromagnetic radiation such as light – can escape from it.[2] The theory of general relativity predicts that a sufficiently compact mass can deform spacetime to form a black hole.[3][4] The boundary of no escape is called the event horizon. Although it has a great effect on the fate and circumstances of an object crossing it, it has no locally detectable features according to general relativity.[5] In many ways, a black hole acts like an ideal black body, as it reflects no light.[6][7] Moreover, quantum field theory in curved spacetime predicts that event horizons emit Hawking radiation, with the same spectrum as a black body of a temperature inversely proportional to its mass. This temperature is of the order of billionths of a kelvin for stellar black holes, making it essentially impossible to observe directly.', 'black-holes.jpg', '2023-07-15 15:11:20'),
(2, 'Something About The Quasars.', 'Another Mysterious and unpredictable Wonder in the universe.', 'quasar', 'A quasar also known as a quasi-stellar object, abbreviated QSO) is an extremely luminous active galactic nucleus (AGN), powered by a supermassive black hole, with mass ranging from millions to tens of billions of solar masses, surrounded by a gaseous accretion disc. Gas in the disc falling towards the black hole heats up because of friction and releases energy in the form of electromagnetic radiation. The radiant energy of quasars is enormous; the most powerful quasars have luminosities thousands of times greater than that of a galaxy such as the Milky Way.[2][3] Usually, quasars are categorized as a subclass of the more general category of AGN. The redshifts of quasars are of cosmological origin.[4]\r\n\r\nThe term quasar originated as a contraction of \"quasi-stellar [star-like] radio source\"—because quasars were first identified during the 1950s as sources of radio-wave emission of unknown physical origin—and when identified in photographic images at visible wavelengths, they resembled faint, star-like points of light. High-resolution images of quasars, particularly from the Hubble Space Telescope, have demonstrated that quasars occur in the centers of galaxies, and that some host galaxies are strongly interacting or merging galaxies.[5] As with other categories of AGN, the observed properties of a quasar depend on many factors, including the mass of the black hole, the rate of gas accretion, the orientation of the accretion disc relative to the observer, the presence or absence of a jet, and the degree of obscuration by gas and dust within the host galaxy.', 'quasar.jpg', '2022-10-06 22:01:06'),
(3, 'All About White Hole.', 'Another Giant.', 'white-hole', 'In general relativity, a white hole is a theoretical region of spacetime and singularity that cannot be entered from the outside, although energy-matter, light and information can escape from it. In this sense, it is the reverse of a black hole, which can be entered only from the outside and from which energy-matter, light and information cannot escape. White holes appear in the theory of eternal black holes. In addition to a black hole region in the future, such a solution of the Einstein field equations has a white hole region in its past.[1] This region does not exist for black holes that have formed through gravitational collapse, however, nor are there any observed physical processes through which a white hole could be formed.\r\n\r\nSupermassive black holes (SBHs) are theoretically predicted to be at the center of every galaxy and that possibly, a galaxy cannot form without one. Stephen Hawking[2] and others have proposed that these supermassive black holes spawn a supermassive white hole.[3]', 'white-hole.jpg', '2022-09-30 20:45:12'),
(4, 'A Neutron Star.', 'Truth is ever to be found in simplicity, and not in the multiplicity', 'neutron-star', 'A neutron star is the collapsed core of a massive supergiant star, which had a total mass of between 10 and 25 solar masses, possibly more if the star was especially metal-rich.[1] Except for black holes and some hypothetical objects (e.g. white holes, quark stars, and strange stars), neutron stars are the smallest and densest currently known class of stellar objects.[2] Neutron stars have a radius on the order of 10 kilometres (6 mi) and a mass of about 1.4 solar masses.[3] They result from the supernova explosion of a massive star, combined with gravitational collapse, that compresses the core past white dwarf star density to that of atomic nuclei.\r\n\r\nOnce formed, they no longer actively generate heat, and cool over time; however, they may still evolve further through collision or accretion. Most of the basic models for these objects imply that neutron stars are composed almost entirely of neutrons (subatomic particles with no net electrical charge and with slightly larger mass than protons); the electrons and protons present in normal matter combine to produce neutrons at the conditions in a neutron star. Neutron stars are partially supported against further collapse by neutron degeneracy pressure, a phenomenon described by the Pauli exclusion principle, just as white dwarfs are supported against collapse by electron degeneracy pressure. However, neutron degeneracy pressure is not by itself sufficient to hold up an object beyond 0.7 M☉[4][5] and repulsive nuclear forces play a larger role in supporting more massive neutron stars.[6][7] If the remnant star has a mass exceeding the Tolman–Oppenheimer–Volkoff limit of around 2 solar masses, the combination of degeneracy pressure and nuclear forces is insufficient to support the neutron star and it continues collapsing to form a black hole. The most massive neutron star detected so far, PSR J0952–0607, is estimated to be 2.35±0.17 solar masses.[8]', '', '2023-07-15 16:36:14'),
(18, 'Lets Learn About Black Holes.', 'A supermassive Creature.', 'black-hole', 'A black hole is a region of spacetime where gravity is so strong that nothing – no particles or even electromagnetic radiation such as light – can escape from it.[2] The theory of general relativity predicts that a sufficiently compact mass can deform spacetime to form a black hole.[3][4] The boundary of no escape is called the event horizon. Although it has a great effect on the fate and circumstances of an object crossing it, it has no locally detectable features according to general relativity.[5] In many ways, a black hole acts like an ideal black body, as it reflects no light.[6][7] Moreover, quantum field theory in curved spacetime predicts that event horizons emit Hawking radiation, with the same spectrum as a black body of a temperature inversely proportional to its mass. This temperature is of the order of billionths of a kelvin for stellar black holes, making it essentially impossible to observe directly.', 'black-holes.jpg', '2022-09-24 20:02:02'),
(19, 'Something About The Quasars.', 'Another Mysterious and unpredictable Wonder in the universe.', 'quasar', 'A quasar also known as a quasi-stellar object, abbreviated QSO) is an extremely luminous active galactic nucleus (AGN), powered by a supermassive black hole, with mass ranging from millions to tens of billions of solar masses, surrounded by a gaseous accretion disc. Gas in the disc falling towards the black hole heats up because of friction and releases energy in the form of electromagnetic radiation. The radiant energy of quasars is enormous; the most powerful quasars have luminosities thousands of times greater than that of a galaxy such as the Milky Way.[2][3] Usually, quasars are categorized as a subclass of the more general category of AGN. The redshifts of quasars are of cosmological origin.[4]\r\n\r\nThe term quasar originated as a contraction of \"quasi-stellar [star-like] radio source\"—because quasars were first identified during the 1950s as sources of radio-wave emission of unknown physical origin—and when identified in photographic images at visible wavelengths, they resembled faint, star-like points of light. High-resolution images of quasars, particularly from the Hubble Space Telescope, have demonstrated that quasars occur in the centers of galaxies, and that some host galaxies are strongly interacting or merging galaxies.[5] As with other categories of AGN, the observed properties of a quasar depend on many factors, including the mass of the black hole, the rate of gas accretion, the orientation of the accretion disc relative to the observer, the presence or absence of a jet, and the degree of obscuration by gas and dust within the host galaxy.', 'quasar.jpg', '2022-10-06 22:01:06'),
(20, 'All About White Hole.', 'Another Giant.', 'white-hole', 'In general relativity, a white hole is a theoretical region of spacetime and singularity that cannot be entered from the outside, although energy-matter, light and information can escape from it. In this sense, it is the reverse of a black hole, which can be entered only from the outside and from which energy-matter, light and information cannot escape. White holes appear in the theory of eternal black holes. In addition to a black hole region in the future, such a solution of the Einstein field equations has a white hole region in its past.[1] This region does not exist for black holes that have formed through gravitational collapse, however, nor are there any observed physical processes through which a white hole could be formed.\r\n\r\nSupermassive black holes (SBHs) are theoretically predicted to be at the center of every galaxy and that possibly, a galaxy cannot form without one. Stephen Hawking[2] and others have proposed that these supermassive black holes spawn a supermassive white hole.[3]', 'white-hole.jpg', '2022-09-30 20:45:12'),
(21, 'A Neutron Star.', 'Truth is ever to be found in simplicity, and not in the multiplicity', 'neutron-star', 'A neutron star is the collapsed core of a massive supergiant star, which had a total mass of between 10 and 25 solar masses, possibly more if the star was especially metal-rich.[1] Except for black holes and some hypothetical objects (e.g. white holes, quark stars, and strange stars), neutron stars are the smallest and densest currently known class of stellar objects.[2] Neutron stars have a radius on the order of 10 kilometres (6 mi) and a mass of about 1.4 solar masses.[3] They result from the supernova explosion of a massive star, combined with gravitational collapse, that compresses the core past white dwarf star density to that of atomic nuclei.\r\n\r\nOnce formed, they no longer actively generate heat, and cool over time; however, they may still evolve further through collision or accretion. Most of the basic models for these objects imply that neutron stars are composed almost entirely of neutrons (subatomic particles with no net electrical charge and with slightly larger mass than protons); the electrons and protons present in normal matter combine to produce neutrons at the conditions in a neutron star. Neutron stars are partially supported against further collapse by neutron degeneracy pressure, a phenomenon described by the Pauli exclusion principle, just as white dwarfs are supported against collapse by electron degeneracy pressure. However, neutron degeneracy pressure is not by itself sufficient to hold up an object beyond 0.7 M☉[4][5] and repulsive nuclear forces play a larger role in supporting more massive neutron stars.[6][7] If the remnant star has a mass exceeding the Tolman–Oppenheimer–Volkoff limit of around 2 solar masses, the combination of degeneracy pressure and nuclear forces is insufficient to support the neutron star and it continues collapsing to form a black hole. The most massive neutron star detected so far, PSR J0952–0607, is estimated to be 2.35±0.17 solar masses.[8]', 'neutron-star.jpg', '2022-09-25 14:14:43'),
(22, 'Lets Learn About Black Holes.', 'A supermassive Creature.', 'black-hole', 'A black hole is a region of spacetime where gravity is so strong that nothing – no particles or even electromagnetic radiation such as light – can escape from it.[2] The theory of general relativity predicts that a sufficiently compact mass can deform spacetime to form a black hole.[3][4] The boundary of no escape is called the event horizon. Although it has a great effect on the fate and circumstances of an object crossing it, it has no locally detectable features according to general relativity.[5] In many ways, a black hole acts like an ideal black body, as it reflects no light.[6][7] Moreover, quantum field theory in curved spacetime predicts that event horizons emit Hawking radiation, with the same spectrum as a black body of a temperature inversely proportional to its mass. This temperature is of the order of billionths of a kelvin for stellar black holes, making it essentially impossible to observe directly.', 'black-holes.jpg', '2022-09-24 20:02:02'),
(23, 'Something About The Quasars.', 'Another Mysterious and unpredictable Wonder in the universe.', 'quasar', 'A quasar also known as a quasi-stellar object, abbreviated QSO) is an extremely luminous active galactic nucleus (AGN), powered by a supermassive black hole, with mass ranging from millions to tens of billions of solar masses, surrounded by a gaseous accretion disc. Gas in the disc falling towards the black hole heats up because of friction and releases energy in the form of electromagnetic radiation. The radiant energy of quasars is enormous; the most powerful quasars have luminosities thousands of times greater than that of a galaxy such as the Milky Way.[2][3] Usually, quasars are categorized as a subclass of the more general category of AGN. The redshifts of quasars are of cosmological origin.[4]\r\n\r\nThe term quasar originated as a contraction of \"quasi-stellar [star-like] radio source\"—because quasars were first identified during the 1950s as sources of radio-wave emission of unknown physical origin—and when identified in photographic images at visible wavelengths, they resembled faint, star-like points of light. High-resolution images of quasars, particularly from the Hubble Space Telescope, have demonstrated that quasars occur in the centers of galaxies, and that some host galaxies are strongly interacting or merging galaxies.[5] As with other categories of AGN, the observed properties of a quasar depend on many factors, including the mass of the black hole, the rate of gas accretion, the orientation of the accretion disc relative to the observer, the presence or absence of a jet, and the degree of obscuration by gas and dust within the host galaxy.', 'quasar.jpg', '2022-10-06 22:01:06'),
(24, 'All About White Hole.', 'Another Giant.', 'white-hole', 'In general relativity, a white hole is a theoretical region of spacetime and singularity that cannot be entered from the outside, although energy-matter, light and information can escape from it. In this sense, it is the reverse of a black hole, which can be entered only from the outside and from which energy-matter, light and information cannot escape. White holes appear in the theory of eternal black holes. In addition to a black hole region in the future, such a solution of the Einstein field equations has a white hole region in its past.[1] This region does not exist for black holes that have formed through gravitational collapse, however, nor are there any observed physical processes through which a white hole could be formed.\r\n\r\nSupermassive black holes (SBHs) are theoretically predicted to be at the center of every galaxy and that possibly, a galaxy cannot form without one. Stephen Hawking[2] and others have proposed that these supermassive black holes spawn a supermassive white hole.[3]', 'white-hole.jpg', '2022-09-30 20:45:12'),
(25, 'A Neutron Star.', 'Truth is ever to be found in simplicity, and not in the multiplicity', 'neutron-star', 'A neutron star is the collapsed core of a massive supergiant star, which had a total mass of between 10 and 25 solar masses, possibly more if the star was especially metal-rich.[1] Except for black holes and some hypothetical objects (e.g. white holes, quark stars, and strange stars), neutron stars are the smallest and densest currently known class of stellar objects.[2] Neutron stars have a radius on the order of 10 kilometres (6 mi) and a mass of about 1.4 solar masses.[3] They result from the supernova explosion of a massive star, combined with gravitational collapse, that compresses the core past white dwarf star density to that of atomic nuclei.\r\n\r\nOnce formed, they no longer actively generate heat, and cool over time; however, they may still evolve further through collision or accretion. Most of the basic models for these objects imply that neutron stars are composed almost entirely of neutrons (subatomic particles with no net electrical charge and with slightly larger mass than protons); the electrons and protons present in normal matter combine to produce neutrons at the conditions in a neutron star. Neutron stars are partially supported against further collapse by neutron degeneracy pressure, a phenomenon described by the Pauli exclusion principle, just as white dwarfs are supported against collapse by electron degeneracy pressure. However, neutron degeneracy pressure is not by itself sufficient to hold up an object beyond 0.7 M☉[4][5] and repulsive nuclear forces play a larger role in supporting more massive neutron stars.[6][7] If the remnant star has a mass exceeding the Tolman–Oppenheimer–Volkoff limit of around 2 solar masses, the combination of degeneracy pressure and nuclear forces is insufficient to support the neutron star and it continues collapsing to form a black hole. The most massive neutron star detected so far, PSR J0952–0607, is estimated to be 2.35±0.17 solar masses.[8]', 'neutron-star.jpg', '2022-09-25 14:14:43'),
(26, 'Lets Learn About Black Holes.', 'A supermassive Creature.', 'black-hole', 'A black hole is a region of spacetime where gravity is so strong that nothing – no particles or even electromagnetic radiation such as light – can escape from it.[2] The theory of general relativity predicts that a sufficiently compact mass can deform spacetime to form a black hole.[3][4] The boundary of no escape is called the event horizon. Although it has a great effect on the fate and circumstances of an object crossing it, it has no locally detectable features according to general relativity.[5] In many ways, a black hole acts like an ideal black body, as it reflects no light.[6][7] Moreover, quantum field theory in curved spacetime predicts that event horizons emit Hawking radiation, with the same spectrum as a black body of a temperature inversely proportional to its mass. This temperature is of the order of billionths of a kelvin for stellar black holes, making it essentially impossible to observe directly.', 'black-holes.jpg', '2022-09-24 20:02:02'),
(27, 'Something About The Quasars.', 'Another Mysterious and unpredictable Wonder in the universe.', 'quasar', 'A quasar also known as a quasi-stellar object, abbreviated QSO) is an extremely luminous active galactic nucleus (AGN), powered by a supermassive black hole, with mass ranging from millions to tens of billions of solar masses, surrounded by a gaseous accretion disc. Gas in the disc falling towards the black hole heats up because of friction and releases energy in the form of electromagnetic radiation. The radiant energy of quasars is enormous; the most powerful quasars have luminosities thousands of times greater than that of a galaxy such as the Milky Way.[2][3] Usually, quasars are categorized as a subclass of the more general category of AGN. The redshifts of quasars are of cosmological origin.[4]\r\n\r\nThe term quasar originated as a contraction of \"quasi-stellar [star-like] radio source\"—because quasars were first identified during the 1950s as sources of radio-wave emission of unknown physical origin—and when identified in photographic images at visible wavelengths, they resembled faint, star-like points of light. High-resolution images of quasars, particularly from the Hubble Space Telescope, have demonstrated that quasars occur in the centers of galaxies, and that some host galaxies are strongly interacting or merging galaxies.[5] As with other categories of AGN, the observed properties of a quasar depend on many factors, including the mass of the black hole, the rate of gas accretion, the orientation of the accretion disc relative to the observer, the presence or absence of a jet, and the degree of obscuration by gas and dust within the host galaxy.', 'quasar.jpg', '2022-10-06 22:01:06'),
(31, 'ddd', 'dddd', 'ddd', 'ddd', 'Doraemon_character.png', '2023-07-15 17:02:07'),
(32, 'Doraemon', 'chutki supari', 'dd', 'fdfd', '', '2023-07-15 17:09:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
