-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 25, 2020 at 05:01 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sksbv_parentsday`
--

-- --------------------------------------------------------

--
-- Table structure for table `pd_participants`
--

CREATE TABLE `pd_participants` (
  `id` int(11) NOT NULL,
  `username` varchar(21) NOT NULL,
  `name` varchar(63) NOT NULL,
  `mad_no` int(11) NOT NULL,
  `range_no` int(11) NOT NULL,
  `range_name` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `task` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pd_participants`
--

INSERT INTO `pd_participants` (`id`, `username`, `name`, `mad_no`, `range_no`, `range_name`, `district`, `task`) VALUES
(1, 'sksbv_5f1b9c481c2cc', 'Ajwad Juman PC', 9072, 86, 'ELETTIL', 'KOZHIKODE', 11);

-- --------------------------------------------------------

--
-- Table structure for table `pd_tasks`
--

CREATE TABLE `pd_tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1023) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pd_tasks`
--

INSERT INTO `pd_tasks` (`id`, `title`, `description`) VALUES
(1, 'Thank You Card', 'ഉപ്പയോടും ഉമ്മയോടും അവർ നൽകുന്ന അളവറ്റ സ്നേഹത്തെ കുറിച്ച് കൊണ്ട് താങ്ക്യൂ കാർഡുകൾ നിർമിക്കാം . നിങ്ങളുടെ ക്രയേറ്റിവിറ്റി അനുസരിച്ചു ചിത്രങ്ങളും, കവിതകളും ഒക്കെ ഉൾപ്പെടുത്താം '),
(2, 'Play With Family', 'കുടുംബത്തിലെ എല്ലാവരെയും ഉൾപ്പെടുത്തി കളിക്കാൻ കഴിയുന്ന ഗെയിമുകൾ കണ്ടെത്താം. കണ്ണുകെട്ടി കളി , ഒളിച്ചു കളി ഇങ്ങനെ രസകരമായ കളികളിൽ പങ്കെടുക്കാൻ വീട്ടുകാരെയും ക്ഷണിക്കുക '),
(3, 'Memory Book', 'നിങ്ങൾ നടത്തിയ യാത്രകൾ, പങ്കെടുത്ത പരിപാടികൾ, പ്രതിസന്ധികളിൽ ഉപ്പയും ഉമ്മയും താങ്ങായി നിന്നതു.., ഇങ്ങനെ ജീവിതത്തിലെ മറക്കാനാവാത്ത ഓർമകൾ എഴുതി അവർക്കു നൽകാം. ആദ്യ പേജുകളിൽ നിങ്ങള്ക്ക് ഓർമയില്ല നിങ്ങളുടെ കുട്ടിക്കാലത്തെ കുസൃതികൾ അവരോടു ചോദിച്ചു എഴുതി വെക്കാം .'),
(4, 'Volunteering', 'അടുക്കളയിൽ ഉമ്മ ഒറ്റക്ക് പണി എടുക്കുമ്പോ കൂടെ ചെന്ന് സഹായിച്ചാലോ.., ഉപ്പ മുറ്റത്തു പുല്ലു വെട്ടുമ്പോ അരികിൽ നിന്ന് സഹകരിച്ചാലോ.., ഇങ്ങനെ വീട്ടിലെ ചെറിയ പണികളിൽ അവർക്കൊപ്പം കൂടി അവരോടൊപ്പം ഒരു ദിനം ചിലവഴിക്കാം '),
(5, 'Thank You Poem', 'ഉപ്പക്കും ഉമ്മക്കും സ്നേഹോഷ്മളമായ നന്ദി അറിയിച്ചു ചെറിയ പാട്ടുകൾ കവിതകൾ ഒക്കെ ചൊല്ലി കേൾപ്പിക്കാം. അവരോടും നല്ല പാട്ടുകൾ പാടാൻ നിർബന്ധിച്ചു ഒഴിവു സമയം രസകരമാകാം '),
(6, 'Morning Kiss', 'രാവിലെ ഉപ്പയും ഉമ്മയും  എഴുന്നേൽക്കും മുന്നേ ഓടി ചെന്ന് കെട്ടിപിടിച്ചു ഒരു ഉമ്മ നൽകിയാലോ , സുബ്ഹിക്ക് എല്ലാവരും ഒന്നിച്ചു ജമാഅത് ആയി നിസ്കരിക്കാനും മറക്കരുത് '),
(9, 'Family Tree Making', 'നമ്മുടെ വലിപ്പയുടെയും വല്ലിമ്മയുടെയും ഒക്കെ പരമ്പരകൾ നമുക്ക് അറിയുമോ.., കണ്ടെത്താൻ കഴിയുന്ന അത്ര നീളമുള്ള പരമ്പര ബന്ധം കണ്ടെത്തി നമുക്ക് ഒരു ഫാമിലി ട്രീ ഉണ്ടാക്കാം.'),
(10, 'മൻഖൂസ് മൗലിദ് പാരായണം', 'മഗ്‌രിബ് കഴിഞ്ഞു ഒന്നിച്ചിരുന്നു മൗലിദ് പാരായണം ചെയ്യാൻ അവരെ ക്ഷണിക്കാം . കൂട്ടുകാരെ നിങ്ങൾ വേണം ഇന്ന് നേതൃത്വം കൊടുക്കാൻ. നല്ല ഈണത്തിൽ ഉച്ചത്തിൽ ബൈത്തുകൾ പാടി ഒടുവിൽ നിങ്ങൾ തന്നെ ദുആ ചെയ്തു നോക്കു .\r\n'),
(11, 'മുഹ്യുദ്ധീൻ മാല പാരായണം ', 'മഗ്‌രിബ് കഴിഞ്ഞു ഒന്നിച്ചിരുന്നു മാല പാരായണം ചെയ്യാൻ അവരെ ക്ഷണിക്കാം . കൂട്ടുകാരെ നിങ്ങൾ വേണം ഇന്ന് നേതൃത്വം കൊടുക്കാൻ. നല്ല ഈണത്തിൽ ഉച്ചത്തിൽ ബൈത്തുകൾ പാടി ഒടുവിൽ നിങ്ങൾ തന്നെ ദുആ ചെയ്തു നോക്കു .'),
(12, 'ഫാമിലി ജമാഅത് ', 'ഇന്ന് സുബ്ഹി മുതൽ ഇശാ വരെ നിങ്ങൾ നിങ്ങളുടെ രക്ഷിതാക്കൾക്കൊപ്പം ജമാഅത് ആയി നിസ്കരിച്ചു നോക്കണം. മഗ്‌രിബിന്‌  നിങ്ങൾ തന്നെ ഇമാം ആയി നിൽക്കു . എത്ര തിരക്കുകളും മാറ്റി വെച്ച് ഇന്നൊരു ദിനം ഒരു വഖ്ത്ത് എങ്കിലും ബാങ്ക് വിളിച്ച ഉടനെഒന്നിച്ചു നിസ്കരിക്കാൻ വീട്ടുകാരെ ക്ഷണിക്കാം .\r\n'),
(13, 'മജ്‌ലിസ് സൽക്കാരം.', 'ഉമ്മയോടൊപ്പം കൂടി അത്താഴത്തിനു നല്ല ഭക്ഷണം ഉണ്ടാക്കാൻ സഹായിക്കാം. ആൺകുട്ടികൾക്കും  അടുക്കളയിൽ കയറാം കേട്ടോ. മഗ്‌രിബ് കഴിഞ്ഞു യാസീൻ ഒക്കെ ഊതി എല്ലാവരും വലിയ തളികയിൽ ഭക്ഷണം വിളമ്പി വെച്ച് നിലത്തൊരു മുസല്ലയോ, പായയോ ഒക്കെ വിരിച്ചു വട്ടത്തിൽ കൂടി ഇരുന്നു.ബിസ്മി ചൊല്ലി ഒരു പാത്രത്തിൽ നിന്ന് കഴിച്ചു നോക്കു .. റാഹത്തായിരിക്കും');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pd_participants`
--
ALTER TABLE `pd_participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `tasks_fk` (`task`);

--
-- Indexes for table `pd_tasks`
--
ALTER TABLE `pd_tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pd_participants`
--
ALTER TABLE `pd_participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pd_tasks`
--
ALTER TABLE `pd_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pd_participants`
--
ALTER TABLE `pd_participants`
  ADD CONSTRAINT `tasks_fk` FOREIGN KEY (`task`) REFERENCES `pd_tasks` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
