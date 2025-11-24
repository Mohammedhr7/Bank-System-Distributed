-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 24 nov. 2025 à 20:48
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bank_management_system`
--

-- --------------------------------------------------------

--
-- Structure de la table `accounts`
--

CREATE TABLE `accounts` (
  `ssn` varchar(20) DEFAULT NULL,
  `balance` decimal(38,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `accounts`
--

INSERT INTO `accounts` (`ssn`, `balance`) VALUES
('1234', 30.00);

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `formno` varchar(20) DEFAULT NULL,
  `cardNumber` varchar(20) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `ssn` varchar(20) DEFAULT NULL,
  `passportNo` varchar(20) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mariatal` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `race` varchar(100) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `income` varchar(100) DEFAULT NULL,
  `education` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `seniorCitizen` varchar(10) DEFAULT NULL,
  `existAcnt` varchar(10) DEFAULT NULL,
  `acountType` varchar(30) DEFAULT NULL,
  `atmCard` varchar(2) DEFAULT NULL,
  `chequeBook` varchar(2) DEFAULT NULL,
  `internetBanking` varchar(2) DEFAULT NULL,
  `mobileBanking` varchar(2) DEFAULT NULL,
  `eStatement` varchar(2) DEFAULT NULL,
  `emailSMS` varchar(2) DEFAULT NULL,
  `acount_type` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`formno`, `cardNumber`, `pin`, `name`, `ssn`, `passportNo`, `fname`, `dob`, `gender`, `email`, `mariatal`, `address`, `city`, `state`, `zip`, `race`, `category`, `income`, `education`, `occupation`, `seniorCitizen`, `existAcnt`, `acountType`, `atmCard`, `chequeBook`, `internetBanking`, `mobileBanking`, `eStatement`, `emailSMS`, `acount_type`, `card_number`) VALUES
('5264', '8060599040927302', '4431', 'mohammed', '1234', 'awd', 'awd', 'Jul 7, 2003', 'Male', 'm.harrous9240@uca.ac.ma', 'Married', 'blax', 'agadirwa', 'imozane', '80000', 'Black or African American', 'Latino', 'Less than $52,200', 'Bachelors degree', 'Self Employeed', 'Yes', 'Yes', 'Savings Account', 'Y', 'N', 'Y', 'N', 'Y', 'Y', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `ssn` varchar(20) DEFAULT NULL,
  `cardNumber` varchar(20) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`ssn`, `cardNumber`, `pin`, `card_number`) VALUES
('1234', '8060599040927302', '4431', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `transactions`
--

CREATE TABLE `transactions` (
  `ssn` varchar(20) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `transactions`
--

INSERT INTO `transactions` (`ssn`, `amount`, `type`, `date`) VALUES
('1234', '100', 'Deposit', 'Wed Nov 05 21:16:30 WEST 2025'),
('1234', '50', 'Withdraw', 'Wed Nov 05 21:21:04 WEST 2025'),
('1234', '20', 'Withdraw', 'Wed Nov 19 11:56:24 WEST 2025');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
