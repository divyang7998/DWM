-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2019 at 07:05 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `Branch_Id` varchar(5) NOT NULL,
  `Branch_Name` varchar(15) NOT NULL,
  `Address` varchar(15) NOT NULL,
  `City` varchar(12) NOT NULL,
  `Pincode` int(11) NOT NULL,
  `State` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`Branch_Id`, `Branch_Name`, `Address`, `City`, `Pincode`, `State`) VALUES
('B01', 'Kolshet', 'Dhokali, Kolshe', 'Thane', 400607, 'Maharashtra'),
('B02', 'Kasarwadvali', 'GB Road', 'Thane', 400607, 'Maharashtra'),
('B03', 'Mulund', 'MG Road', 'Mulund', 400080, 'Maharashtra'),
('B04', 'Lalbaug', 'Dr. Ambedkar Ro', 'Lalbaug', 400008, 'Maharashtra');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_Id` varchar(8) NOT NULL,
  `First_Name` varchar(15) DEFAULT NULL,
  `Last_Name` varchar(15) DEFAULT NULL,
  `Street` varchar(15) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `State` varchar(15) DEFAULT NULL,
  `Zip` int(11) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_Id`, `First_Name`, `Last_Name`, `Street`, `City`, `State`, `Zip`, `Country`) VALUES
('C01', 'Divyang', 'Oza', 'Ghodbunder Road', 'Thane', 'Maharashtra', 400607, 'India'),
('C02', 'Dhruv', 'Padhiyar', 'LBS Road', 'Ghatkopar', 'Maharashra', 400086, 'India'),
('C03', 'Jimit', 'Mehta', 'Western Highway', 'Borivali', 'Maharashtra', 400068, 'India'),
('C04', 'Viraj', 'Doshi', 'Pandurang Wadi', 'Dombiwali', 'Maharashtra', 421201, 'India'),
('C05', 'Bhavya', 'Joshi', 'Bhojapara', 'Gondal', 'Gujarat', 360001, 'India'),
('C06', 'Champika', 'Khan', 'Ap #626-7991 Ma', 'Kohima', 'Nagaland', 869231, 'India'),
('C07', 'Poushali', 'Khan', 'P.O. Box 122, 5', 'Chandigarh', 'Chandigarh', 381255, 'India'),
('C08', 'Vanadurga', 'Ismail', 'P.O. Box 640, 1', 'Mandasor', 'Madhya Pradesh', 816023, 'India'),
('C09', 'Shubhada', 'Patel', '634-9732 Sagitt', 'Neyveli', 'Tamil Nadu', 811435, 'India'),
('C10', 'Punita', 'Raj', '5412 Imperdiet,', 'Vijayawada', 'Andhra Pradesh', 636975, 'India'),
('C11', 'Prasata', 'Jain', 'Ap #319-5966 Mo', 'Shimla', 'Himachal Prades', 571315, 'India'),
('C12', 'Etasha', 'Patel', '2831 Semper, Av', 'Bijapur', 'Karnataka', 222691, 'India'),
('C13', 'Karunashankar', 'Raj', '285-4151 Suspen', 'Kavaratti', 'Lakshadweep', 211075, 'India'),
('C14', 'Suren', 'Ismail', 'P.O. Box 149, 7', 'Pondicherry', 'Pondicherry', 859692, 'India'),
('C15', 'Gangadutt', 'Ismail', '3634 Quisque St', 'Panjim', 'Goa', 421027, 'India'),
('C16', 'Sumitra', 'Kumar', '987-1613 Purus.', 'Port Blair', 'Andaman and Nic', 107703, 'India'),
('C17', 'Rajdulari', 'Kumar', 'Ap #359-6146 Di', 'Panjim', 'Goa', 128895, 'India'),
('C18', 'Akroor', 'Khan', '726-493 Ac, Ave', 'Imphal', 'Manipur', 463007, 'India'),
('C19', 'Padman', 'Kumar', '967-2005 Sed St', 'Shimla', 'Himachal Prades', 632020, 'India'),
('C20', 'Aadesh', 'Ismail', '4529 Et Rd.', 'Veraval', 'Gujarat', 824770, 'India'),
('C21', 'Sohana', 'Kumar', ' 8976 Nascetur ', 'Midnapore', 'West Bengal', 293356, 'India'),
('C22', 'Naresh', 'Kumar', '5525 Donec Road', 'Kohima', 'Nagaland', 126205, 'India'),
('C23', 'Vinesh', 'Raj', 'Ap #190-4952 Ma', 'Sonipat', 'Haryana', 109348, 'India'),
('C24', 'Matangi', 'Raj', '8054 Mauris Roa', 'Silvassa', 'Dadra and Nagar', 260929, 'India'),
('C25', 'Fajyaz', 'Khan', 'P.O. Box 303, 2', 'Sambalpur', 'Odisha', 550130, 'India'),
('C26', 'Omala', 'Jain', 'Ap #882-7203 El', 'Jamshedpur', 'Jharkhand', 929517, 'India'),
('C27', 'Madhukar', 'Singh', 'Ap #926-6246 In', 'Itanagar', 'Arunachal Prade', 756160, 'India'),
('C28', 'Nabhitha', 'Khan', '927-1606 Lectus', 'Barasat', 'West Bengal', 341379, 'India'),
('C29', 'Nayan', 'Singh', '773-3546 Aenean', 'Varanasi', 'Uttar Pradesh', 648592, 'India'),
('C30', 'Eshanya', 'Singh', '766-181 Nisl Av', 'Port Blair', 'Andaman and Nic', 116249, 'India'),
('C31', 'Jatya', 'Singh', '853-6312 At Ave', 'Gangtok', 'Sikkim', 219768, 'India'),
('C32', 'Ilamurugu', 'Jain', '6933 Consectetu', 'Vejalpur', 'Gujarat', 644473, 'India'),
('C33', 'Ananda', 'Kumar', 'P.O. Box 586, 2', 'Guwahati', 'Assam', 882543, 'India'),
('C34', 'Kavan', 'Raj', '153-9534 Nullam', 'Ujjain', 'Madhya Pradesh', 395675, 'India'),
('C35', 'Hussain', 'Singh', 'P.O. Box 877, 8', 'Durgapur', 'West Bengal', 222869, 'India'),
('C36', 'Anchal', 'Patel', '2596 Duis Ave', 'Chandigarh', 'Chandigarh', 891653, 'India'),
('C37', 'Japesh', 'Singh', 'P.O. Box 193, 5', 'Bikaner', 'Rajasthan', 452424, 'India'),
('C38', 'Hindola', 'Ismail', 'P.O. Box 960, 8', 'Patan', 'Gujarat', 122051, 'India'),
('C39', 'Akhila', 'Patel', 'P.O. Box 635, 3', 'Korba', 'Chhattisgarh', 356024, 'India'),
('C40', 'Patmanjari', 'Singh', 'Ap #585-3064 Lu', 'Mango', 'Jharkhand', 197955, 'India'),
('C41', 'Gaganadipika', 'Khan', 'P.O. Box 132, 8', 'Dibrugarh', 'Assam', 999111, 'India'),
('C42', 'Paramita', 'Jain', 'Ap #963-3548 Na', 'Pondicherry', 'Pondicherry', 154208, 'India'),
('C43', 'Kaustubh', 'Ismail', '1580 Tincidunt ', 'Nagarcoil', 'Tamil Nadu', 170286, 'India'),
('C44', 'Abhilash', 'Kumar', 'P.O. Box 792, 6', 'Shillong', 'Meghalaya', 931320, 'India'),
('C45', 'Pugal', 'Raj', '189-2870 Auctor', 'Varanasi', 'Uttar Pradesh', 375116, 'India'),
('C46', 'Buddhadeva', 'Kumar', '3367 Quisque Av', 'Shillong', 'Meghalaya', 588491, 'India'),
('C47', 'Shatrunjay', 'Jain', '3418 Ipsum. Av.', 'Daman', 'Daman and Diu', 610207, 'India'),
('C48', 'Kailashchandra', 'Patel', '2264 Bibendum A', 'Chandigarh', 'Chandigarh', 864581, 'India'),
('C49', 'Kala', 'Raj', 'Ap #150-152 Urn', 'Jammu', 'Jammu and Kashm', 170291, 'India'),
('C50', 'Lalima', 'Kumar', 'P.O. Box 745, 6', 'Itanagar', 'Arunachal Prade', 175403, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_Id` varchar(11) NOT NULL,
  `Product_Name` varchar(30) DEFAULT NULL,
  `Manufacturer` varchar(15) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Category` varchar(28) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_Id`, `Product_Name`, `Manufacturer`, `Price`, `Category`) VALUES
('P01', 'Tata Sampann Besan', 'Tata', 81, 'Cooking & Baking Supplies'),
('P02', 'Organic Moong Dal', 'Tata', 125, 'Dals & Pulses'),
('P03', 'Fortune Besan', 'Fortune', 110, 'Cooking & Baking Supplies'),
('P04', 'Biryani Classic Basmati', 'Fortune', 210, 'Grocery & Gourmet Foods'),
('P05', 'Refined Sunflower Oil', 'Fortune', 140, 'Grocery & Gourmet Foods'),
('P06', 'Refined Soyabean Oil', 'Gemini', 97, 'Grocery & Gourmet Foods'),
('P07', 'Refined Soyabean Oil Jar', 'Gemini', 495, 'Grocery & Gourmet Foods'),
('P08', 'Pure and Hygienic Sugar', 'Madhur', 43, 'Cooking & Baking Supplies'),
('P09', 'Pure Sugar, 5kg Bag', 'Madhur', 495, 'Cooking & Baking Supplies'),
('P10', 'Atta, Multigrains, 5kg', 'Aashirvaad', 242, 'Cooking & Baking Supplies'),
('P11', 'Aloo Mutter', 'Aashirvaad', 95, 'Ready To Eat & Cook'),
('P12', 'Palak Paneer', 'Aashirvaad', 105, 'Ready To Eat & Cook'),
('P13', 'Mughlai Paneer', 'Aashirvaad', 125, 'Ready To Eat & Cook'),
('P14', 'Classic Tomato Soup', 'Knorr', 45, 'Ready To Eat & Cook'),
('P15', 'Hot and Sour Veg Soup Pou', 'Knorr', 45, 'Ready To Eat & Cook'),
('P16', 'Manchow Noodles Soup', 'Knorr', 65, 'Ready To Eat & Cook'),
('P17', 'BRU Instant Coffee, 100g ', 'BRU', 148, 'Coffee, Tea & Beverages'),
('P18', 'BRU Green Label Coffee', 'BRU', 165, 'Coffee, Tea & Beverages'),
('P19', 'Nescafé Classic Coffee', 'Nescafé', 119, 'Coffee, Tea & Beverages'),
('P20', 'Bru Gold Instant Coffee', 'BRU', 195, 'Coffee, Tea & Beverages'),
('P21', 'Pure & Sure Coffee', 'Pure & Sure', 105, 'Coffee, Tea & Beverages'),
('P22', 'Tata Tea Gold, 500g', 'Tata', 289, 'Coffee, Tea & Beverages'),
('P23', 'Red Label Natural Care Tea', 'Brooke Bond', 389, 'Coffee, Tea & Beverages'),
('P24', 'Tetley Green Tea, Lemon and Ho', 'Tetley', 319, 'Coffee, Tea & Beverages');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `Customer_Id` varchar(8) NOT NULL,
  `Product_Id` varchar(11) NOT NULL,
  `Date_Id` varchar(15) NOT NULL,
  `Store_Id` varchar(15) NOT NULL,
  `Units` int(11) NOT NULL,
  `TotalSales` int(11) NOT NULL,
  `TotalCost` int(11) NOT NULL,
  `Profit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`Customer_Id`, `Product_Id`, `Date_Id`, `Store_Id`, `Units`, `TotalSales`, `TotalCost`, `Profit`) VALUES
('C01', 'P06', 'D150119', 'S03', 3, 291, 270, 21),
('C07', 'P17', 'D250818', 'S01', 2, 296, 240, 56),
('C16', 'P24', 'D150119', 'S02', 1, 319, 250, 79),
('C47', 'P12', 'D220419', 'S04', 5, 525, 475, 50),
('C18', 'P05', 'D121118', 'S06', 2, 280, 240, 40),
('C11', 'P11', 'D220419', 'S06', 6, 570, 498, 72),
('C18', 'P18', 'D220419', 'S01', 10, 1650, 1400, 250),
('C07', 'P07', 'D150119', 'S06', 8, 3960, 3600, 360);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `Store_Id` varchar(15) NOT NULL,
  `Store_Name` varchar(20) DEFAULT NULL,
  `Branch_Id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`Store_Id`, `Store_Name`, `Branch_Id`) VALUES
('S01', 'DMart', 'B01'),
('S02', 'DMart', 'B02'),
('S03', 'DMart', 'B03'),
('S04', 'DMart', 'B04'),
('S05', 'More MegaStore', 'B03'),
('S06', 'Star Bazaar', 'B04');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `Date_Id` varchar(15) NOT NULL,
  `Date` date NOT NULL,
  `Day` varchar(5) NOT NULL,
  `Month` varchar(5) NOT NULL,
  `Quarter` varchar(5) NOT NULL,
  `Year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`Date_Id`, `Date`, `Day`, `Month`, `Quarter`, `Year`) VALUES
('D121118', '2018-11-12', 'MON', 'NOV', 'Q4', 2018),
('D150119', '2019-01-15', 'TUE', 'JAN', 'Q1', 2019),
('D220419', '2019-04-22', 'MON', 'APR', 'Q2', 2019),
('D250818', '2018-08-25', 'SAT', 'AUG', 'Q3', 2018);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`Branch_Id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_Id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_Id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD KEY `Store_Id` (`Store_Id`),
  ADD KEY `Product_Id` (`Product_Id`),
  ADD KEY `Customer_Id` (`Customer_Id`),
  ADD KEY `Date_Id` (`Date_Id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`Store_Id`),
  ADD KEY `Branch_Id` (`Branch_Id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`Date_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`Product_Id`) REFERENCES `product` (`Product_Id`),
  ADD CONSTRAINT `sales_ibfk_4` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`),
  ADD CONSTRAINT `sales_ibfk_6` FOREIGN KEY (`Date_Id`) REFERENCES `time` (`Date_Id`),
  ADD CONSTRAINT `sales_ibfk_7` FOREIGN KEY (`Store_Id`) REFERENCES `store` (`Store_Id`);

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`Branch_Id`) REFERENCES `branch` (`Branch_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
