-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2023 at 07:09 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `division` text NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `image_address` varchar(255) NOT NULL,
  `availability` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`id`, `title`, `description`, `price`, `location`, `division`, `phone_number`, `image_address`, `availability`, `user_id`) VALUES
(1, 'Tractor\r\n', 'How is the tractor described?\r\nTractor | Definition, History, Types, Examples, & Facts ...\r\ntractor, high-power, low-speed traction vehicle and power unit mechanically similar to an automobile or truck but designed for use off the road. The two main types', 300, 'Ahmedabad,Gandhinagar,Rajkot', 'Ahmedabad', '9510874427', './images/equipments/download.jpeg', 0, 1),
(2, 'Crop Cutter', 'This machine is compact and can cut up to two rows of wheat, millet, jowar crops. It has cutting blades which cut the crop in a scissoring type of motion. It runs on petrol engine, this power from engine, is provided through shaft, pulley and belt drive a', 800, 'Wankaner,Amreli,Ahmedabad,Rajkot', 'Rajkot', '9658422585', './images/equipments/2', 0, 1),
(3, 'Harvester', 'A harvester is a machine which cuts and often collects crops such as wheat, maize, or vegetables.', 1000, 'Ahmedabad,Mehsana,Anand', 'Ahmedabad', '9587104427', './images/equipments/Harvester.jpg', 0, 1),
(4, 'Tractor\r\n', 'How is the tractor described?\r\nTractor | Definition, History, Types, Examples, & Facts ...\r\ntractor, high-power, low-speed traction vehicle and power unit mechanically similar to an automobile or truck but designed for use off the road. The two main types', 300, 'Ahmedabad,Gandhinagar,Rajkot', 'Gandhinagar', '9510874427', './images/equipments/download.jpeg', 1, 1),
(5, 'Tractor\r\n', 'How is the tractor described?\r\nTractor | Definition, History, Types, Examples, & Facts ...\r\ntractor, high-power, low-speed traction vehicle and power unit mechanically similar to an automobile or truck but designed for use off the road. The two main types', 300, 'Ahmedabad,Gandhinagar,Rajkot', 'Rajkot', '9510874427', './images/equipments/download.jpeg', 0, 1),
(6, 'Crop Cutter', 'This machine is compact and can cut up to two rows of wheat, millet, jowar crops. It has cutting blades which cut the crop in a scissoring type of motion. It runs on petrol engine, this power from engine, is provided through shaft, pulley and belt drive a', 800, 'Wankaner,Amreli,Ahmedabad,Rajkot', 'Wankaner', '9658422585', './images/equipments/2', 1, 1),
(7, 'Crop Cutter', 'This machine is compact and can cut up to two rows of wheat, millet, jowar crops. It has cutting blades which cut the crop in a scissoring type of motion. It runs on petrol engine, this power from engine, is provided through shaft, pulley and belt drive a', 800, 'Wankaner,Amreli,Ahmedabad,Rajkot', 'Amreli', '9658422585', './images/equipments/2', 0, 1),
(8, 'Crop Cutter', 'This machine is compact and can cut up to two rows of wheat, millet, jowar crops. It has cutting blades which cut the crop in a scissoring type of motion. It runs on petrol engine, this power from engine, is provided through shaft, pulley and belt drive a', 800, 'Wankaner,Amreli,Ahmedabad,Rajkot', 'Ahmedabad', '9658422585', './images/equipments/2', 0, 1),
(10, 'Harvester', 'A harvester is a machine which cuts and often collects crops such as wheat, maize, or vegetables.', 1000, 'Ahmedabad,Mehsana,Anand', 'Mehsana', '9587104427', './images/equipments/Harvester.jpg', 1, 1),
(11, 'Harvester', 'A harvester is a machine which cuts and often collects crops such as wheat, maize, or vegetables.', 1000, 'Ahmedabad,Mehsana,Anand', 'Anand', '9587104427', './images/equipments/Harvester.jpg', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `id` int(4) NOT NULL,
  `username` varchar(20) NOT NULL,
  `phone_number` int(10) NOT NULL,
  `location` varchar(40) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `adminship` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`id`, `username`, `phone_number`, `location`, `email`, `password`, `adminship`) VALUES
(0, 'chirag', 2147483647, 'ahmedabad', 'ajayt0496@gmail.com', 'e10adc3949', 0);

-- --------------------------------------------------------

--
-- Table structure for table `preservation_centers`
--

CREATE TABLE `preservation_centers` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `location` text NOT NULL,
  `description` text NOT NULL,
  `contact` text NOT NULL,
  `website` text NOT NULL,
  `ob` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `preservation_centers`
--

INSERT INTO `preservation_centers` (`id`, `name`, `location`, `description`, `contact`, `website`, `ob`) VALUES
(1, 'Agro Cold Storage', 'Ahmedabad,Rajkot,Amreli\r\n', 'All type of crops,\r\nRate: Negotiable,\r\nOpening time: Everyday,24 hours', '9524866552', 'www.agrocoldstorage.com\r\n\r\n', 2),
(2, 'Cam Cold Storage', 'Wankaner, Gandhinagar, Anand', 'All type of crops,\r\nRate: Negotiable,\r\nOpening time: Every day, 24 hours.', '6355040996', 'www.camcoldstorage.com', 0),
(3, 'New Cold Storage ', 'Mehsana,Ahmedabad', 'All type of crops,\r\nRate: Negotiable,\r\nOpening time: Every day, 24 hours.', '9587104426', 'www.newcoldstorage.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` varchar(20) NOT NULL,
  `price` text NOT NULL,
  `phone_number` text NOT NULL,
  `location` text NOT NULL,
  `negotiable` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `division` varchar(20) NOT NULL,
  `availability` int(11) NOT NULL,
  `image_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `phone_number`, `location`, `negotiable`, `category`, `division`, `availability`, `image_address`) VALUES
(1, 'Strawberry', 'A strawberry is both', '400', '6254655412', 'Wankaner,Mehsana,Ahmedabad.', 'yes', '2', 'Wankaner', 1, './images/products/1'),
(2, 'Strawberry Seeds', 'Strawberry Seeds', '600', '9510874427', 'Anand,Rajkot,Gandhinagar.', 'no', '3', 'Anand', 1, './images/products/2'),
(4, 'Mini tractor', 'Lorem ipsum dolor si', '15000', '6325145689', 'Anand,Amreli,Rajkot.', 'yes', '1', 'Anand', 1, './images/products/4'),
(5, 'Ghee', 'Lorem ipsum dolor si', '600\r\n', '6521456985', 'Rajkot,Ahmedabab,Amreli.', 'no', '4', 'Rajkot', 1, './images/products/5'),
(6, 'Tomato Plants ', 'Lorem ipsum dolor si', '560', '01762865786', 'Mehsana,Anand,wankaner.', 'no', '3', 'Mehsana', 1, './images/products/6'),
(7, 'Capsicum', 'Lorem ipsum dolor si', '900', '9658741236', 'Rajkot,Gandhinagar,Wankaner.', 'yes', '2', 'Rajkot', 1, './images/products/7'),
(8, 'Maize', 'Lorem ipsum dolor si', '50', '6523145698', 'Ahmedabad,Gandhinagar,Anand.', 'yes', '2', 'Ahmedabad', 1, './images/products/8'),
(9, 'peas', 'Lorem ipsum dolor si', '100', '9652314569', 'Ahmedabad,Wankaner,Amreli.', 'no', '2', 'Ahmedabad', 1, './images/products/9'),
(10, 'Rice', 'Lorem ipsum dolor si', '45', '9510874444', 'Wankaner,Anand,Mehsana.', 'no', '4', 'Wankaner', 1, './images/products/10'),
(14, 'Strawberry', 'A strawberry is both', '400', '6254655412', 'Wankaner,Mehsana,Ahmedabad.', 'yes', '0', 'Mehsana', 0, './images/products/1'),
(15, 'Strawberry', 'A strawberry is both', '400', '6254655412', 'Wankaner,Mehsana,Ahmedabad.', 'yes', '0', 'Ahmedabad', 0, './images/products/1'),
(16, 'Strawberry Seeds', 'Strawberry Seeds', '600', '9510874427', 'Anand,Rajkot,Gandhinagar.', 'no', '0', 'Rajkot', 0, './images/products/2'),
(17, 'Strawberry Seeds', 'Strawberry Seeds', '600', '9510874427', 'Anand,Rajkot,Gandhinagar.', 'no', '0', 'Gandhinagar', 0, './images/products/2'),
(18, 'Mini tractor', 'Lorem ipsum dolor si', '15000', '6325145689', 'Anand,Amreli,Rajkot.', 'yes', '0', 'Amreli', 0, './images/products/4'),
(19, 'Mini tractor', 'Lorem ipsum dolor si', '15000', '6325145689', 'Anand,Amreli,Rajkot.', 'yes', '0', 'Rajkot', 0, './images/products/4'),
(20, 'Ghee', 'Lorem ipsum dolor si', '600', '6521456985', 'Rajkot,Ahmedabab,Amreli.', 'no', '0', 'Ahmedabad', 0, './images/products/5'),
(21, 'Ghee', 'Lorem ipsum dolor si', '600', '6521456985', 'Rajkot,Ahmedabab,Amreli.', 'no', '0', 'Amreli', 0, './images/products/5'),
(22, 'Tomato Plants ', 'Lorem ipsum dolor si', '560', '01762865786', 'Mehsana,Anand,wankaner.', 'no', '0', 'Anand', 0, './images/products/6'),
(23, 'Tomato Plants ', 'Lorem ipsum dolor si', '560', '01762865786', 'Mehsana,Anand,wankaner.', 'no', '0', 'Wankaner', 0, './images/products/6'),
(24, 'Capsicum', 'Lorem ipsum dolor si', '900', '9658741236', 'Rajkot,Gandhinagar,Wankaner.', 'yes', '0', 'Gandhinagar', 0, './images/products/7'),
(25, 'Capsicum', 'Lorem ipsum dolor si', '900', '9658741236', 'Rajkot,Gandhinagar,Wankaner.', 'yes', '0', 'Wankaner', 0, './images/products/7'),
(26, 'Maize', 'Lorem ipsum dolor si', '50', '6523145698', 'Ahmedabad,Gandhinagar,Anand.', 'yes', '0', 'Gandhinagar', 0, './images/products/8'),
(27, 'Maize', 'Lorem ipsum dolor si', '50', '6523145698', 'Ahmedabad,Gandhinagar,Anand.', 'yes', '0', 'Anand', 0, './images/products/8'),
(28, 'peas', 'Lorem ipsum dolor si', '100', '9652314569', 'Ahmedabad,Wankaner,Amreli.', 'no', '0', 'Wankaner', 0, './images/products/9'),
(29, 'peas', 'Lorem ipsum dolor si', '100', '9652314569', 'Ahmedabad,Wankaner,Amreli.', 'no', '0', 'Amreli', 0, './images/products/9'),
(30, 'Rice', 'Lorem ipsum dolor si', '45', '9510874444', 'Wankaner,Anand,Mehsana.', 'no', '0', 'Anand', 0, './images/products/10'),
(31, 'Rice', 'Lorem ipsum dolor si', '45', '9510874444', 'Wankaner,Anand,Mehsana.', 'no', '0', 'Mehsana', 0, './images/products/10');

-- --------------------------------------------------------

--
-- Table structure for table `qa`
--

CREATE TABLE `qa` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `qa`
--

INSERT INTO `qa` (`id`, `question`, `answer`, `user_id`) VALUES
(1, 'first question here ?', 'Answer of the first question here.', 2),
(2, 'Second Question here ?', 'Answer of the second question here.', 0),
(9, 'is this the real life? is this just fantasy ? ', 'no escape ', 9),
(13, 'ssss', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(4) NOT NULL,
  `username` varchar(20) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `location` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(11) NOT NULL,
  `adminship` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `username`, `phone_number`, `location`, `email`, `password`, `adminship`) VALUES
(0, 'chirag0408', '7698408648', 'ahmedabad', 'gundariyachirag@gmail.com', 'e10adc3949b', 0),
(0, '', '', '', '', 'd41d8cd98f0', 0),
(0, 'dhruvan', '9510874427', 'ahmedabad', 'dhruvanvora1606@gmail.com', 'e10adc3949b', 0),
(0, 'dhruvan', '9510874427', 'ahmedabad', 'dhruvanvora1606@gmail.com', 'e10adc3949b', 0),
(0, 'chirag', '5689524325', 'ahmedabad', 'ajayt0496@gmail.com', 'e10adc3949b', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `location` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `adminship` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `phone_number`, `location`, `email`, `password`, `adminship`) VALUES
(11, 'gundariya', '123', 'ahmedabad', 'gundariyachirag@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
(12, '', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', 0),
(13, 'dhruvan', '9510874427', 'ahmedabad', 'dhruvanvora1606@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
(14, 'chirag', '5689524325', 'ahmedabad', 'ajayt0496@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preservation_centers`
--
ALTER TABLE `preservation_centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qa`
--
ALTER TABLE `qa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `preservation_centers`
--
ALTER TABLE `preservation_centers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `qa`
--
ALTER TABLE `qa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
