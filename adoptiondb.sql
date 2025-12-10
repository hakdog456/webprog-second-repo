-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2025 at 06:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adoptiondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `likedpet`
--

CREATE TABLE `likedpet` (
  `likedPetId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `petId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likedpet`
--

INSERT INTO `likedpet` (`likedPetId`, `userId`, `petId`) VALUES
(5, 27, 69);

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `petID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `breed` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `price` double NOT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`details`)),
  `imageDirectory` varchar(255) NOT NULL,
  `adoptedById` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`petID`, `name`, `type`, `breed`, `age`, `price`, `details`, `imageDirectory`, `adoptedById`) VALUES
(1, 'Bark Twain', 'Dog', 'Beagle', 2, 15000, '{\"gender\":\"Male\",\"color\":\"Brown and White\",\"coat_length\":\"Short\",\"personality\":\"Bark Twain may have been dealt a rough hand—neglected, abandoned, and left tied to a tree at the illegal POGO Boss Mansion—but this gentle giant never let that define him. Despite everything, he still holds onto hope that kindness and love are still in the cards for him.\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Bark-Twaine-BEAGLE 1.webp', NULL),
(2, 'Anthony', 'Dog', 'Boxer', 3, 22000, '{\"gender\":\"Male\",\"color\":\"Fawn\",\"coat_length\":\"Short\",\"personality\":\"Anthony is a strong, muscular Boxer with boundless energy and a playful spirit. He loves running, playing fetch, and being part of an active family. Despite his tough appearance, he\'s gentle with children and incredibly loyal.\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Anthony-BOXER 1.webp', NULL),
(3, 'Blue', 'Dog', 'Border Collie', 2, 25000, '{\"gender\":\"Female\",\"color\":\"Black and White\",\"coat_length\":\"Medium\",\"personality\":\"Blue is an incredibly intelligent Border Collie who thrives on mental stimulation and physical activity. She\'s perfect for active families or individuals who enjoy hiking, running, or dog sports. Her herding instincts are strong, and she\'s always eager to learn new tricks.\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Blue-BORDER_COLLIE 1.webp', NULL),
(4, 'Box', 'Dog', 'Labrador Retriever', 4, 20000, '{\"gender\":\"Male\",\"color\":\"Yellow\",\"coat_length\":\"Short\",\"personality\":\"Box is a friendly and outgoing Labrador who loves everyone he meets. He\'s great with children, other pets, and strangers alike. His favorite activities include swimming, fetching balls, and cuddling on the couch after a day of play.\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Box-LABRADOR_RETRIEVER 1.webp', NULL),
(5, 'Hiroshima', 'Dog', 'Shiba Inu', 2, 28000, '{\"gender\":\"Male\",\"color\":\"Red\",\"coat_length\":\"Medium\",\"personality\":\"Hiroshima is a dignified and independent Shiba Inu with a bold personality. He\'s clean, quiet, and cat-like in his mannerisms. While independent, he forms strong bonds with his family and is fiercely loyal to those he trusts.\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Hiroshima-SHIBA_INU 1.webp', NULL),
(6, 'Iris', 'Dog', 'Corgi', 3, 26000, '{\"gender\":\"Female\",\"color\":\"Red and White\",\"coat_length\":\"Medium\",\"personality\":\"Iris is a cheerful Corgi with short legs and a big personality. She\'s affectionate, smart, and loves being the center of attention. Her herding background means she\'s alert and sometimes tries to herd family members—which is adorable!\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Iris-CORGI 1.webp', NULL),
(7, 'Joffrey', 'Dog', 'Maltese', 1, 18000, '{\"gender\":\"Male\",\"color\":\"White\",\"coat_length\":\"Long\",\"personality\":\"Joffrey is a small but mighty Maltese with a regal attitude. Don\'t let his size fool you—he thinks he\'s the king of the castle! He\'s affectionate with his chosen people and makes a wonderful lap dog for someone looking for a devoted companion.\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Joffrey-MALTESE 1.webp', NULL),
(8, 'Luiz', 'Dog', 'French Bulldog', 2, 35000, '{\"gender\":\"Male\",\"color\":\"Brindle\",\"coat_length\":\"Short\",\"personality\":\"Luiz is a charming French Bulldog with bat ears and a smooshed face that will melt your heart. He\'s easygoing, adaptable to apartment living, and loves spending time with his humans. His snores are legendary, but his cuddles make up for it!\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Luiz-FRENCH_BULLDOG 1.webp', NULL),
(9, 'Lunch', 'Dog', 'Bichon Frise', 1, 20000, '{\"gender\":\"Male\",\"color\":\"White\",\"coat_length\":\"Long\",\"personality\":\"Lunch is a playful and affectionate Bichon Frise who loves being the center of attention. He enjoys cuddles, playing fetch, and making new friends. His fluffy white coat requires regular grooming but his loving personality makes it all worthwhile.\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Lunch-BICHON_FRISE 1.webp', NULL),
(10, 'Niggel', 'Dog', 'Chihuahua', 2, 12000, '{\"gender\":\"Male\",\"color\":\"Tan\",\"coat_length\":\"Short\",\"personality\":\"Niggel is a tiny Chihuahua with a huge personality. He\'s sassy, confident, and loves being carried around in bags or cuddled in blankets. Perfect for someone looking for a portable companion who thinks he\'s a giant dog.\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Niggel-CHIHUAHUA 1.webp', NULL),
(11, 'Nina Tucker', 'Dog', 'German Shepherd', 3, 30000, '{\"gender\":\"Female\",\"color\":\"Black and Tan\",\"coat_length\":\"Medium\",\"personality\":\"Nina Tucker is a loyal and protective German Shepherd with excellent trainability. She\'s intelligent, obedient, and makes an excellent guard dog. Despite her serious work ethic, she\'s gentle and loving with her family.\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Nina-Tucker-GERMAN_SHEPHERD 1.webp', NULL),
(12, 'Olaf', 'Dog', 'Shih Tzu', 2, 19000, '{\"gender\":\"Male\",\"color\":\"White and Gold\",\"coat_length\":\"Long\",\"personality\":\"Olaf is a friendly Shih Tzu who loves warm hugs! He\'s affectionate, playful, and gets along with everyone. His long, flowing coat requires regular grooming, but his sweet temperament makes him a joy to care for.\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Olaf-SHIH_TZU 1.webp', NULL),
(13, 'Paul Atriedes', 'Dog', 'Siberian Husky', 3, 27000, '{\"gender\":\"Male\",\"color\":\"Gray and White\",\"coat_length\":\"Thick\",\"personality\":\"Paul Atriedes is a majestic Siberian Husky with striking blue eyes and a noble bearing. He\'s energetic, needs lots of exercise, and loves cold weather. His howling conversations and dramatic personality make him quite the character!\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Paul-Atriedes-SIBERIAN_HUSKY 1.webp', NULL),
(14, 'Salonpas', 'Dog', 'Boston Terrier', 2, 21000, '{\"gender\":\"Male\",\"color\":\"Black and White\",\"coat_length\":\"Short\",\"personality\":\"Salonpas is a lively Boston Terrier with a tuxedo-like coat pattern. He\'s friendly, bright, and amusing. Known as the American Gentleman, he\'s well-mannered yet full of energy. Perfect for active city dwellers!\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Salonpas-BOSTON_TERRIER 1.webp', NULL),
(15, 'Sir Waggington', 'Dog', 'Golden Retriever', 4, 24000, '{\"gender\":\"Male\",\"color\":\"Golden\",\"coat_length\":\"Long\",\"personality\":\"Sir Waggington is the epitome of a Golden Retriever—friendly, devoted, and always ready to play. He loves water, fetch, and making new friends. His tail never stops wagging, and his gentle nature makes him perfect for families with children.\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Sir-Waggington-GOLDEN_RETRIEVER 1.webp', NULL),
(16, 'Turing', 'Dog', 'Poodle', 2, 23000, '{\"gender\":\"Male\",\"color\":\"Black\",\"coat_length\":\"Curly\",\"personality\":\"Turing is a highly intelligent Standard Poodle who excels at problem-solving and learning tricks. He\'s athletic, elegant, and hypoallergenic. Perfect for active families who appreciate a smart, trainable companion.\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Turing-POODLE 1.webp', NULL),
(17, 'Wiener', 'Dog', 'Dachshund', 3, 17000, '{\"gender\":\"Male\",\"color\":\"Red\",\"coat_length\":\"Short\",\"personality\":\"Wiener is a long-bodied Dachshund with a big personality in a small package. He\'s brave, curious, and surprisingly good at digging. His short legs don\'t stop him from being adventurous and keeping up with larger dogs!\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Wiener-DASCHUND 1.webp', NULL),
(18, 'Gizmo', 'Dog', 'Papillon', 1, 18000, '{\"gender\":\"Male\",\"color\":\"White and Brown\",\"coat_length\":\"Long\",\"personality\":\"Gizmo is a smart and alert Papillon with distinctive butterfly-like ears. He\'s highly trainable, loves learning new tricks, and is great with older children. His elegant appearance and lively personality make him a wonderful companion.\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Gizmo-PAPILLON 1.webp', NULL),
(19, 'Adolf Kitler', 'Cat', 'Persian', 3, 15000, '{\"gender\":\"Male\",\"color\":\"Black and White\",\"coat_length\":\"Long\",\"personality\":\"Adolf Kitler is a distinguished Persian with a unique black mustache marking. Despite his stern appearance, he\'s gentle and loves lounging on soft cushions. He requires daily grooming but rewards you with purrs and affection.\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Adolf-Kitler-PERSIAN 1.webp', NULL),
(20, 'Biscuit', 'Cat', 'Maine Coon', 2, 18000, '{\"gender\":\"Male\",\"color\":\"Brown Tabby\",\"coat_length\":\"Long\",\"personality\":\"Biscuit is a large, gentle Maine Coon with tufted ears and a magnificent tail. He\'s friendly, sociable, and gets along with dogs and children. His dog-like personality makes him unique among cats—he even plays fetch!\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Biscuit-MAINE-COON 1.webp', NULL),
(21, 'Broccoli', 'Cat', 'Orange Tabby', 1, 8000, '{\"gender\":\"Male\",\"color\":\"Orange\",\"coat_length\":\"Short\",\"personality\":\"Broccoli is a vibrant orange tabby with a playful spirit. He\'s curious about everything, loves climbing, and has an adventurous streak. His ginger personality matches his coat—warm, friendly, and full of energy!\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Broccoli-ORANGE-TABBY 1.webp', NULL),
(22, 'Bucchi', 'Cat', 'Ragdoll', 2, 20000, '{\"gender\":\"Female\",\"color\":\"Seal Point\",\"coat_length\":\"Long\",\"personality\":\"Bucchi is a stunning Ragdoll who lives up to her breed\'s name—she goes limp and relaxed when picked up. She\'s docile, affectionate, and follows her humans around like a puppy. Her blue eyes are mesmerizing!\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Bucchi-RAGDOLL 1.webp', NULL),
(23, 'Cheddar', 'Cat', 'British Shorthair', 3, 16000, '{\"gender\":\"Male\",\"color\":\"Blue-Gray\",\"coat_length\":\"Short\",\"personality\":\"Cheddar is a dignified British Shorthair with a plush, teddy bear-like coat. He\'s calm, easygoing, and adapts well to indoor living. He enjoys observing the household from his favorite perch and occasional cuddle sessions.\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Cheddar-BRITISH-SHORTHAIR 1.webp', NULL),
(24, 'Cheetos', 'Cat', 'Bengal', 2, 25000, '{\"gender\":\"Male\",\"color\":\"Brown Spotted\",\"coat_length\":\"Short\",\"personality\":\"Cheetos is a wild-looking Bengal with leopard-like spots and boundless energy. He\'s athletic, intelligent, and loves interactive play. His exotic appearance and dog-like behavior make him a unique and entertaining companion.\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Cheetos-BENGAL 1.webp', NULL),
(25, 'Daisy', 'Cat', 'Ragdoll', 2, 20000, '{\"gender\":\"Female\",\"color\":\"Blue Point\",\"coat_length\":\"Long\",\"personality\":\"Daisy is a sweet-natured Ragdoll with striking blue eyes and a silky coat. She\'s gentle, tolerant, and perfect for families. She loves being held and will happily relax in your arms for hours.\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Daisy-RAGDOLL 1.webp', NULL),
(26, 'Dobby', 'Cat', 'Devon Rex', 1, 22000, '{\"gender\":\"Male\",\"color\":\"Gray\",\"coat_length\":\"Short/Curly\",\"personality\":\"Dobby is a free elf! This Devon Rex has large ears, a pixie-like face, and a wavy coat. He\'s mischievous, playful, and loves being the center of attention. His warmth-seeking behavior means he\'s always ready for cuddles.\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Dobby-DEVON-REX 1.webp', NULL),
(27, 'Loki', 'Cat', 'Norwegian Forest Cat', 3, 19000, '{\"gender\":\"Male\",\"color\":\"Brown Tabby\",\"coat_length\":\"Long\",\"personality\":\"Loki is a majestic Norwegian Forest Cat with a thick, water-resistant coat. He\'s independent yet affectionate, loves climbing, and has excellent hunting instincts. His Viking heritage shows in his robust build and adventurous spirit.\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Loki-NORWEGIAN-FOREST-CAT 1.webp', NULL),
(28, 'Lord Voldemort', 'Cat', 'Siamese', 2, 14000, '{\"gender\":\"Male\",\"color\":\"Seal Point\",\"coat_length\":\"Short\",\"personality\":\"Lord Voldemort is a vocal Siamese with piercing blue eyes. He\'s demanding, intelligent, and will tell you exactly what he thinks. Despite his dark name, he forms strong bonds with his chosen humans and can be quite affectionate.\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Lord-Voldemort-SIAMESE 1.webp', NULL),
(29, 'Luke', 'Cat', 'Maine Coon', 2, 18000, '{\"gender\":\"Male\",\"color\":\"Silver Tabby\",\"coat_length\":\"Long\",\"personality\":\"Luke uses the force of his personality to win hearts! This Maine Coon is friendly, intelligent, and loves being part of family activities. His impressive size and gentle nature make him a fantastic companion.\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Luke-MAINE-COON 1.webp', NULL),
(30, 'Luna', 'Cat', 'Siamese', 1, 14000, '{\"gender\":\"Female\",\"color\":\"Lilac Point\",\"coat_length\":\"Short\",\"personality\":\"Luna is a graceful Siamese with a melodious voice she uses frequently. She\'s social, curious, and demands attention. Her striking appearance and engaging personality make her impossible to ignore!\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Luna-SIAMESE 1.webp', NULL),
(31, 'Mr Sprinkles', 'Cat', 'Exotic Shorthair', 3, 17000, '{\"gender\":\"Male\",\"color\":\"White\",\"coat_length\":\"Short\",\"personality\":\"Mr. Sprinkles is an Exotic Shorthair with a flat face and round eyes that give him a perpetually surprised expression. He\'s laid-back, affectionate, and easier to groom than his Persian relatives.\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Mr-Sprinkles-EXOTIC-SHORTHAIR 1.webp', NULL),
(32, 'Noodles', 'Cat', 'Domestic Shorthair', 2, 7000, '{\"gender\":\"Female\",\"color\":\"Calico\",\"coat_length\":\"Short\",\"personality\":\"Noodles is a colorful Domestic Shorthair with a quirky personality. She\'s playful, independent, and has mastered the art of getting what she wants. Her random bursts of energy keep life interesting!\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Noodles-DOMESTIC-SHORTHAIR 1.webp', NULL),
(33, 'Pickles', 'Cat', 'Scottish Fold', 2, 21000, '{\"gender\":\"Male\",\"color\":\"Gray and White\",\"coat_length\":\"Short\",\"personality\":\"Pickles is an adorable Scottish Fold with folded ears that make him look like an owl. He\'s sweet-tempered, adaptable, and loves human company. His unique appearance and gentle nature make him irresistible.\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Pickles-SCOTTISH-FOLD 1.webp', NULL),
(34, 'Poppy', 'Cat', 'Persian', 3, 15000, '{\"gender\":\"Female\",\"color\":\"White\",\"coat_length\":\"Long\",\"personality\":\"Poppy is an elegant Persian with a luxurious coat and calm demeanor. She enjoys a peaceful environment and regular grooming sessions. Her serene presence and beautiful appearance make her a lovely companion.\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Poppy-PERSIAN 1.webp', NULL),
(35, 'Taco', 'Cat', 'Domestic Shorthair', 1, 7000, '{\"gender\":\"Male\",\"color\":\"Orange and White\",\"coat_length\":\"Short\",\"personality\":\"Taco is a spunky Domestic Shorthair who lives up to his name—small but packed with flavor! He\'s playful, curious, and has a talent for getting into mischief. His antics will keep you entertained daily.\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Taco-DOMESTIC-SHORTHAIR 1.webp', NULL),
(36, 'Tiramisu', 'Cat', 'Burmese', 2, 16000, '{\"gender\":\"Female\",\"color\":\"Sable\",\"coat_length\":\"Short\",\"personality\":\"Tiramisu is a sweet Burmese with a silky coat and golden eyes. She\'s affectionate, people-oriented, and follows her humans everywhere. Her dog-like devotion and playful nature make her a delightful pet.\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Tiramisu-BURMESE 1.webp', NULL),
(37, 'Andarna', 'Small Animal', 'Guinea Pig', 1, 2500, '{\"gender\":\"Male\",\"color\":\"Orange and White\",\"coat_length\":\"Short\",\"personality\":\"Andarna is a gentle and calm guinea pig who loves fresh vegetables and quiet environments. Perfect for families with children who want a low-maintenance, affectionate pet. His soft wheeks will brighten your day!\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Andarna-GUINEA_PIG 1.webp', NULL),
(38, 'Cheetos', 'Small Animal', 'Syrian Hamster', 1, 1500, '{\"gender\":\"Male\",\"color\":\"Golden\",\"coat_length\":\"Short\",\"personality\":\"Cheetos is an active and curious hamster who loves exploring tunnels and running on his wheel. He\'s nocturnal and enjoys late-night adventures. Great for someone looking for an entertaining pocket pet.\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Cheetos-SYRIAN_HAMSTER 1.webp', NULL),
(39, 'Cupcake', 'Small Animal', 'Guinea Pig Silkie', 1, 3000, '{\"gender\":\"Female\",\"color\":\"White and Caramel\",\"coat_length\":\"Long\",\"personality\":\"Cupcake is a fluffy Silkie guinea pig with long, flowing hair. She\'s gentle, social, and loves being groomed. Her long coat requires regular care, but her sweet nature makes it worthwhile. Perfect for dedicated pet parents!\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Cupcake-GUINEA_PIG_SILKIE 1.webp', NULL),
(40, 'Mozart', 'Small Animal', 'Guinea Pig Teddy', 1, 2800, '{\"gender\":\"Male\",\"color\":\"Brown\",\"coat_length\":\"Short/Wiry\",\"personality\":\"Mozart is a Teddy guinea pig with a dense, wiry coat that feels like a teddy bear. He\'s vocal, friendly, and loves music (hence the name!). His expressive wheeks and purrs make him a charming companion.\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Mozart-GUINEA_PIG_TEDDY 1.webp', NULL),
(41, 'Nuggets', 'Small Animal', 'Syrian Hamster', 1, 1500, '{\"gender\":\"Female\",\"color\":\"Cream\",\"coat_length\":\"Short\",\"personality\":\"Nuggets is a sweet Syrian hamster with soft cream-colored fur. She\'s less nocturnal than most hamsters and enjoys gentle handling. Perfect for someone wanting their first hamster experience!\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Nuggets-SYRIAN_HAMSTER 1.webp', NULL),
(42, 'Pebble', 'Small Animal', 'Guinea Pig American', 1, 2500, '{\"gender\":\"Male\",\"color\":\"Gray and White\",\"coat_length\":\"Short\",\"personality\":\"Pebble is an American guinea pig with a sleek, short coat. He\'s social, loves cuddles, and gets along well with other guinea pigs. His gentle temperament makes him great for first-time owners.\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Pebble-GUINEA_PIG_AMERICAN 1.webp', NULL),
(43, 'Piattos', 'Small Animal', 'Guinea Pig Peruvian', 2, 3500, '{\"gender\":\"Male\",\"color\":\"White and Brown\",\"coat_length\":\"Very Long\",\"personality\":\"Piattos is a stunning Peruvian guinea pig with incredibly long, flowing hair that requires daily grooming. He\'s calm, friendly, and loves being pampered. Perfect for someone who enjoys the grooming aspect of pet care.\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Piattos-GUINEA_PIG_PERUVIAN 1.webp', NULL),
(44, 'Pippin', 'Small Animal', 'Roborovski Hamster', 1, 1800, '{\"gender\":\"Male\",\"color\":\"Sandy Brown\",\"coat_length\":\"Short\",\"personality\":\"Pippin is the smallest and fastest hamster breed! This Roborovski is incredibly active, entertaining to watch, and doesn\'t require much handling. Perfect for someone who enjoys observing these tiny speedsters.\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Pippin-ROBOROVSKI_HAMSTER 1.webp', NULL),
(45, 'Tairn', 'Small Animal', 'Dwarf Hamster', 1, 1600, '{\"gender\":\"Male\",\"color\":\"Gray\",\"coat_length\":\"Short\",\"personality\":\"Tairn is a Winter White Dwarf hamster who\'s small but mighty. He\'s active, curious, and loves burrowing in deep bedding. His compact size makes him perfect for smaller living spaces.\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Tairn-DWARF_HAMSTER 1.webp', NULL),
(46, 'Tchaikovsky', 'Small Animal', 'Dwarf Hamster', 1, 1600, '{\"gender\":\"Male\",\"color\":\"Pearl White\",\"coat_length\":\"Short\",\"personality\":\"Tchaikovsky is a Campbell\'s Dwarf hamster with a musical soul. He\'s friendly, easy to handle, and enjoys creating elaborate nest structures. Perfect for appreciating the artistry of hamster behavior!\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Tchaikovsky-DWARF_HAMSTER 1.webp', NULL),
(47, 'Warhammer', 'Small Animal', 'Roborovski Hamster', 1, 1800, '{\"gender\":\"Male\",\"color\":\"Golden Brown\",\"coat_length\":\"Short\",\"personality\":\"Warhammer is a fierce little Roborovski who rules his cage with an iron paw. Despite his tough name, he\'s harmless and provides endless entertainment with his lightning-fast movements and territorial displays.\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Warhammer-ROBOROVSKI_HAMSTER 1.webp', NULL),
(48, 'Bob', 'Rabbit', 'Dutch Rabbit', 2, 4500, '{\"gender\":\"Male\",\"color\":\"Black and White\",\"coat_length\":\"Short\",\"personality\":\"Bob is a classic Dutch rabbit with distinctive markings. He\'s friendly, easygoing, and enjoys hopping around. His calm temperament makes him great for families and first-time rabbit owners.\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Bob-DUTCH_RABBIT 1.webp', NULL),
(49, 'Columbina', 'Rabbit', 'Mini Rex Rabbit', 1, 5000, '{\"gender\":\"Female\",\"color\":\"Blue\",\"coat_length\":\"Plush/Short\",\"personality\":\"Columbina is a Mini Rex with incredibly soft, velvety fur. She\'s gentle, intelligent, and enjoys being petted. Her plush coat feels like velvet, making her irresistible to cuddle!\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Columbina-MINI_REX_RABBIT 1.webp', NULL),
(50, 'Marshmallow', 'Rabbit', 'Holland Lop Rabbit', 1, 5500, '{\"gender\":\"Male\",\"color\":\"White\",\"coat_length\":\"Short\",\"personality\":\"Marshmallow is a Holland Lop with adorable floppy ears. He\'s sweet, docile, and loves attention. His compact size and friendly personality make him perfect for indoor living.\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Marshmallow-HOLLAND_LOP_RABBIT 1.webp', NULL),
(51, 'Rachmaninov', 'Rabbit', 'Mini Lop Rabbit', 2, 5200, '{\"gender\":\"Male\",\"color\":\"Brown\",\"coat_length\":\"Medium\",\"personality\":\"Rachmaninov is a Mini Lop with a dignified bearing and a love for classical music. He\'s calm, affectionate, and enjoys quiet companionship. His gentle nature makes him an excellent emotional support animal.\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Rachmaninov-MINI_LOP_RABBIT 1.webp', NULL),
(52, 'Smeagol', 'Rabbit', 'Netherland Dwarf Rabbit', 1, 4800, '{\"gender\":\"Male\",\"color\":\"Gray\",\"coat_length\":\"Short\",\"personality\":\"My precious! Smeagol is a tiny Netherland Dwarf with a big personality. He\'s energetic, curious, and loves his treats. Despite his small size, he\'s got plenty of character and spunk!\",\"vaccinated\":true,\"spayed_neutered\":false}', 'images/homeImages/petPics/Smeagol-NETHERLAND_DWARF_RABBIT 1.webp', NULL),
(53, 'Snowball', 'Rabbit', 'Lionhead Rabbit', 1, 5800, '{\"gender\":\"Female\",\"color\":\"White\",\"coat_length\":\"Long/Mane\",\"personality\":\"Snowball is a Lionhead rabbit with a magnificent mane of fur around her head. She\'s gentle, playful, and loves being groomed. Her lion-like appearance and sweet nature make her truly special.\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/Snowball-LIONHEAD_RABBIT 1.webp', NULL),
(54, 'The Rock', 'Rabbit', 'Dwarf Rabbit', 2, 4500, '{\"gender\":\"Male\",\"color\":\"Brown\",\"coat_length\":\"Short\",\"personality\":\"Can you smell what The Rock is cooking? This muscular dwarf rabbit is strong, confident, and surprisingly gentle. He\'s people-oriented and loves being the center of attention. The most electrifying rabbit in pet entertainment!\",\"vaccinated\":true,\"spayed_neutered\":true}', 'images/homeImages/petPics/The_Rock-DRAWF_RABBIT 1.webp', NULL),
(55, 'Coraline', 'Fish', 'Angelfish', 1, 1200, '{\"gender\":\"Unknown\",\"color\":\"Silver and Black\",\"tank_size\":\"30 gallons minimum\",\"personality\":\"Coraline is a graceful Angelfish with striking vertical stripes. She\'s peaceful with compatible tank mates and adds elegance to any aquarium. Requires stable water conditions and a tall tank.\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Coraline-ANGELFISH 1.webp', NULL),
(56, 'Dory', 'Fish', 'Blue Tang', 2, 8000, '{\"gender\":\"Female\",\"color\":\"Blue and Yellow\",\"tank_size\":\"100 gallons minimum\",\"personality\":\"Just keep swimming! Dory is a vibrant Blue Tang who\'s active and social. She needs a large tank with plenty of swimming space. Her bright colors and playful nature make her a favorite in marine aquariums.\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Dory-BLUE_TANG 1.webp', NULL),
(57, 'Fin Diesel', 'Fish', 'Betta', 1, 800, '{\"gender\":\"Male\",\"color\":\"Red and Blue\",\"tank_size\":\"5 gallons minimum\",\"personality\":\"Fin Diesel lives life a quarter mile at a time! This Betta is fast, furious, and fabulous with flowing fins. He\'s territorial with other males but makes a stunning display fish. Low maintenance and full of personality!\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Fin_Diesel-BETTA 1.webp', NULL),
(58, 'Gill', 'Fish', 'Moorish Idol', 2, 15000, '{\"gender\":\"Male\",\"color\":\"Black, White, and Yellow\",\"tank_size\":\"100 gallons minimum\",\"personality\":\"Gill is a striking Moorish Idol with distinctive markings. He\'s an advanced fish requiring expert care and pristine water conditions. His beauty is matched only by his finicky eating habits!\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Gill-MOORISH_IDOL 1.webp', NULL),
(59, 'Gillbert', 'Fish', 'Clown Pleco', 1, 1500, '{\"gender\":\"Male\",\"color\":\"Black and Yellow\",\"tank_size\":\"20 gallons minimum\",\"personality\":\"Gillbert is a hardworking Clown Pleco who keeps your tank clean. He\'s nocturnal, shy, and loves driftwood. His striking pattern and algae-eating abilities make him both beautiful and functional!\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Gillbert-CLOWN_PLECO 1.webp', 27),
(60, 'Gojo Satoru', 'Fish', 'Betta', 1, 1200, '{\"gender\":\"Male\",\"color\":\"White and Blue\",\"tank_size\":\"5 gallons minimum\",\"personality\":\"Gojo Satoru is the strongest Betta in existence! With his striking white and blue coloring, he\'s as beautiful as he is confident. He\'s territorial but mesmerizing to watch with his flowing fins.\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Gojo_Satoru-BETTA 1.webp', NULL),
(61, 'Goldeen', 'Fish', 'Goldfish Ranchu', 1, 2000, '{\"gender\":\"Female\",\"color\":\"Red and White\",\"tank_size\":\"20 gallons minimum\",\"personality\":\"Goldeen is a fancy Ranchu goldfish with a prominent head growth. She\'s peaceful, social, and enjoys planted tanks. Her unique appearance and gentle nature make her a prized goldfish variety.\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Goldeen-GOLDFISH_RANCHU 1.webp', NULL),
(62, 'Goldilocks', 'Fish', 'Goldfish', 1, 600, '{\"gender\":\"Female\",\"color\":\"Orange\",\"tank_size\":\"20 gallons minimum\",\"personality\":\"Goldilocks is a classic goldfish who\'s juuust right! She\'s hardy, social, and can live for years with proper care. Don\'t let her size fool you—goldfish need more space than most people think!\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Goldilocks-GOLDFISH 1.webp', NULL),
(63, 'Jamie Lannister', 'Fish', 'Lionfish', 2, 12000, '{\"gender\":\"Male\",\"color\":\"Red, White, and Black\",\"tank_size\":\"75 gallons minimum\",\"personality\":\"Jamie Lannister is a majestic Lionfish with venomous spines (handle with care!). He\'s a predator requiring live food and expert care. His stunning appearance and hunting behavior are captivating to watch.\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Jamie_Lannister-LION_FISH 1.webp', NULL),
(64, 'Javascript', 'Fish', 'Guppy', 1, 300, '{\"gender\":\"Male\",\"color\":\"Multicolor\",\"tank_size\":\"10 gallons minimum\",\"personality\":\"Javascript is a colorful Guppy who\'s easy to learn and beginner-friendly (unlike the programming language!). He\'s peaceful, active, and breeds readily. Perfect starter fish for community tanks!\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Javascript-GUPPY 1.webp', NULL),
(65, 'Magikarp', 'Fish', 'Zebra Danio', 1, 200, '{\"gender\":\"Male\",\"color\":\"Silver with Blue Stripes\",\"tank_size\":\"10 gallons minimum\",\"personality\":\"Magikarp may not evolve into Gyarados, but this Zebra Danio is hardy and active! He\'s perfect for beginners, peaceful in community tanks, and constantly swimming. A splash of energy in any aquarium!\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Magikarp-ZEBRA_DANIO 1.webp', NULL),
(66, 'Nemo', 'Fish', 'Clownfish', 1, 3500, '{\"gender\":\"Male\",\"color\":\"Orange and White\",\"tank_size\":\"20 gallons minimum\",\"personality\":\"Nemo is an adorable Clownfish looking for his forever home (and maybe an anemone friend!). He\'s hardy for a saltwater fish, peaceful, and recognizable. Perfect for marine aquarium beginners!\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Nemo-CLOWNFISH 1.webp', NULL),
(67, 'Pikachu', 'Fish', 'Koi', 2, 5000, '{\"gender\":\"Male\",\"color\":\"Yellow and Black\",\"tank_size\":\"Pond/500 gallons\",\"personality\":\"Pikachu is a stunning Koi with electric yellow and black coloring. He\'s peaceful, social, and can live for decades. Requires a large pond or tank and becomes quite tame, even eating from your hand!\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Pikachu-KOI 1.webp', NULL),
(69, 'Sardinas', 'Fish', 'Koi', 3, 6000, '{\"gender\":\"Female\",\"color\":\"Red and White\",\"tank_size\":\"Pond/500 gallons\",\"personality\":\"Sardinas is a graceful Koi with traditional red and white coloring. She\'s peaceful, social, and loves interacting with her caretakers. Her elegant swimming and beautiful patterns make her a pond centerpiece.\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Sardinas-KOI 1.webp', NULL),
(70, 'Sharkira', 'Fish', 'Bala Shark', 1, 2500, '{\"gender\":\"Female\",\"color\":\"Silver\",\"tank_size\":\"125 gallons minimum\",\"personality\":\"Sharkira\'s fins don\'t lie! This Bala Shark is active, peaceful, and grows quite large. She needs a big tank with plenty of swimming space. Despite the name, she\'s actually a peaceful community fish!\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Sharkira-BALA_SHARK 1.webp', 27),
(71, 'Syntax', 'Fish', 'Betta', 1, 900, '{\"gender\":\"Male\",\"color\":\"Purple and Green\",\"tank_size\":\"5 gallons minimum\",\"personality\":\"Syntax is a Betta with perfectly structured fins and vibrant coloring. He\'s easy to care for, has tons of personality, and makes an excellent desktop companion. Just keep him away from other male Bettas!\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Syntax-BETTA 1.webp', NULL),
(72, 'Totoro', 'Fish', 'Goldfish', 2, 800, '{\"gender\":\"Male\",\"color\":\"Gray\",\"tank_size\":\"30 gallons minimum\",\"personality\":\"Totoro is a rare gray goldfish who\'s as magical as his namesake. He\'s peaceful, hardy, and loves exploring his tank. His unique coloring and friendly personality make him stand out from typical goldfish!\",\"vaccinated\":false,\"spayed_neutered\":false}', 'images/homeImages/petPics/Totoro-GOLDFISH 1.webp', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transactionId` int(11) NOT NULL,
  `petId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userPayment` double NOT NULL,
  `dateTimeCreated` datetime NOT NULL DEFAULT current_timestamp(),
  `meetGreetDateTime` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `location` text NOT NULL,
  `evaluation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`evaluation`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transactionId`, `petId`, `userId`, `userPayment`, `dateTimeCreated`, `meetGreetDateTime`, `status`, `location`, `evaluation`) VALUES
(10, 59, 27, 1500, '2025-12-10 15:20:57', '2025-12-15 18:38:00', 'Adopted-Final', 'TSU san isidro', '{\"applicantInfo\":{\"firstName\":\"awfoi\",\"middleName\":\"on\",\"lastName\":\"ojb\",\"suffix\":\"job\",\"occupation\":\"ob\",\"employer\":\"job\",\"employerAddress\":\"job\",\"email\":\"joboj\",\"phone\":\"boj\",\"address\":\"b\"},\"homeEnvironment\":{\"housing\":\"\",\"rent\":\"\",\"landlordName\":\"\",\"landlordPhone\":\"\",\"adultsInHousehold\":\"\",\"childrenInHousehold\":\"\",\"otherPets\":\"\",\"previousPets\":\"\",\"averageAloneTime\":\"\"},\"petPreferences\":{\"reasons\":[],\"otherReasonDetail\":\"\",\"gift\":\"\",\"giftRecipientName\":\"\",\"giftRecipientPhone\":\"\",\"financialPrepared\":\"\"},\"agreement\":{\"understand\":false,\"certify\":false,\"signature\":\"\"},\"submittedAt\":\"2025-12-10T07:20:57.859Z\",\"meetAndGreet\":{\"date\":\"2025-12-15 18:38:00\",\"location\":\"TSU san isidro\",\"message\":\"hi this is the management, we are so pleased to meet you soon!\"},\"evaluation\":{\"Q1\":5,\"Q2\":5,\"Q3\":5,\"Q4\":5,\"Q5\":5,\"Q6\":5,\"Q7\":5,\"Q8\":5,\"evaluationAverage\":5},\"payment\":{\"total\":\"₱1500.00\",\"date\":\"2025-12-10T07:45:49+00:00\",\"status\":\"Paid\"}}'),
(12, 70, 27, 2500, '2025-12-10 21:12:39', '2025-12-11 21:13:00', 'Adopted-Final', 'awfasf', '{\"applicantInfo\":{\"firstName\":\"ihb\",\"middleName\":\"ib\",\"lastName\":\"ijb\",\"suffix\":\"ijb\",\"occupation\":\"ijb\",\"employer\":\"ib\",\"employerAddress\":\"ijb\",\"email\":\"jib\",\"phone\":\"ijb\",\"address\":\"jib\"},\"homeEnvironment\":{\"housing\":\"\",\"rent\":\"\",\"landlordName\":\"\",\"landlordPhone\":\"\",\"adultsInHousehold\":\"\",\"childrenInHousehold\":\"\",\"otherPets\":\"\",\"previousPets\":\"\",\"averageAloneTime\":\"\"},\"petPreferences\":{\"reasons\":[],\"otherReasonDetail\":\"\",\"gift\":\"\",\"giftRecipientName\":\"\",\"giftRecipientPhone\":\"\",\"financialPrepared\":\"\"},\"agreement\":{\"understand\":false,\"certify\":false,\"signature\":\"\"},\"submittedAt\":\"2025-12-10T13:12:38.969Z\",\"meetAndGreet\":{\"date\":\"2025-12-11 21:13:00\",\"location\":\"awfasf\",\"message\":\"awfasf\"},\"evaluation\":{\"Q1\":5,\"Q2\":5,\"Q3\":5,\"Q4\":5,\"Q5\":5,\"Q6\":5,\"Q7\":5,\"Q8\":5,\"evaluationAverage\":5},\"payment\":{\"total\":\"₱2500.00\",\"date\":\"2025-12-10T13:14:10+00:00\",\"status\":\"Paid\"}}'),
(13, 67, 27, 0, '2025-12-10 22:09:15', '2025-12-10 14:09:15', 'Application Rejected', '[Pending - to be set in meet & greet form]', '{\"applicantInfo\":{\"firstName\":\"jn\",\"middleName\":\"ojn\",\"lastName\":\"ojn\",\"suffix\":\"ojn\",\"occupation\":\"ojn\",\"employer\":\"ojnj\",\"employerAddress\":\"jn\",\"email\":\"jno\",\"phone\":\"ojn\",\"address\":\"ojn\"},\"homeEnvironment\":{\"housing\":\"\",\"rent\":\"\",\"landlordName\":\"\",\"landlordPhone\":\"\",\"adultsInHousehold\":\"\",\"childrenInHousehold\":\"\",\"otherPets\":\"\",\"previousPets\":\"\",\"averageAloneTime\":\"\"},\"petPreferences\":{\"reasons\":[],\"otherReasonDetail\":\"\",\"gift\":\"\",\"giftRecipientName\":\"\",\"giftRecipientPhone\":\"\",\"financialPrepared\":\"\"},\"agreement\":{\"understand\":false,\"certify\":false,\"signature\":\"\"},\"submittedAt\":\"2025-12-10T14:09:15.579Z\"}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `privilege` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `name`, `username`, `password`, `privilege`, `email`) VALUES
(27, 'dustin', 'hakdog', '$2y$10$aN5zrbrFUktU9rkG/UIiPeqDWwZ.bS/wfLE2jxEvmK1.oPc2LEsw.', 'admin', 'dustingualberto7@gmail.com'),
(28, 'kyran', 'kyky', '$2y$10$nVjpza/ERG5XdLRmH9VFyOriHOZHnvV4wRQqdSfYZYbmhOJ1qXyx2', 'admin', 'kyran@gmail.com'),
(29, 'mennard', 'nardy', '$2y$10$qHZNKZqJmPW0LBk56MZ6vusxGfcfEn.SelxkkDBnZF4ry1tCWzhcK', 'user', 'nardy@gmail.com'),
(32, 'chingchong', 'cheng', '$2y$10$daKG8dK6KjnMRZk.HLAAJeKz8ZheDIQRwmllGw1xyqWsoIyt01Pu2', 'user', 'cheng@gmail.com'),
(33, 'hope', 'lovejoyhope', '$2y$10$cB0qt3RNZDDYsY3niRE62eReXCdwOTjp.wiS/LO/rJkjbeuf3H6dO', 'user', 'hope@gmail.com'),
(34, 'carl', 'admin', '$2y$10$38VqNPl0mNcreQ6Hu0YbPuJP0AJj/7CsKuWg4ZKUNNAPLmQtCcUYS', 'user', 'carl@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `likedpet`
--
ALTER TABLE `likedpet`
  ADD PRIMARY KEY (`likedPetId`),
  ADD UNIQUE KEY `user_pet_unique` (`userId`,`petId`),
  ADD KEY `fk_likedpet_pet` (`petId`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`petID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transactionId`),
  ADD UNIQUE KEY `pet_user_unique` (`petId`,`userId`),
  ADD KEY `userId_to_transaction` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `likedpet`
--
ALTER TABLE `likedpet`
  MODIFY `likedPetId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `petID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `likedpet`
--
ALTER TABLE `likedpet`
  ADD CONSTRAINT `fk_likedpet_pet` FOREIGN KEY (`petId`) REFERENCES `pets` (`petID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_likedpet_user` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `fk_transaction_pet` FOREIGN KEY (`petId`) REFERENCES `pets` (`petID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_transaction_user` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
