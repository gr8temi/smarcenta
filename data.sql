-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Accounts_candidate`
--

DROP TABLE IF EXISTS `Accounts_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Accounts_candidate` (
  `id` varchar(0) DEFAULT NULL,
  `picture` varchar(0) DEFAULT NULL,
  `age` varchar(0) DEFAULT NULL,
  `availability` varchar(0) DEFAULT NULL,
  `charge_per_hour` varchar(0) DEFAULT NULL,
  `category_id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts_candidate`
--

LOCK TABLES `Accounts_candidate` WRITE;
/*!40000 ALTER TABLE `Accounts_candidate` DISABLE KEYS */;
/*!40000 ALTER TABLE `Accounts_candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Accounts_categories`
--

DROP TABLE IF EXISTS `Accounts_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Accounts_categories` (
  `id` tinyint(4) DEFAULT NULL,
  `category` varchar(26) DEFAULT NULL,
  `about` varchar(50) DEFAULT NULL,
  `image` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts_categories`
--

LOCK TABLES `Accounts_categories` WRITE;
/*!40000 ALTER TABLE `Accounts_categories` DISABLE KEYS */;
INSERT INTO `Accounts_categories` VALUES (1,'Academics','Academic related projects','categories/academics_aUEKokQ.jpg'),(2,'Business Content','Business related projects','categories/academics_2Tt5Nco.jpg'),(3,'Copywriting & Presentation','Presentation preparation and copy-writing projects','categories/academics_O4UdgO2.jpg'),(4,'Graphics Design','Graphic content creation','categories/academics_OrQPBuA.jpg'),(5,'Web Programming','Web development related projects','categories/academics.jpg');
/*!40000 ALTER TABLE `Accounts_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Accounts_customuser`
--

DROP TABLE IF EXISTS `Accounts_customuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Accounts_customuser` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(78) DEFAULT NULL,
  `last_login` varchar(10) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(8) DEFAULT NULL,
  `first_name` varchar(8) DEFAULT NULL,
  `last_name` varchar(4) DEFAULT NULL,
  `email` varchar(23) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(10) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `address` varchar(5) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `referal_code` varchar(8) DEFAULT NULL,
  `referal_point` tinyint(4) DEFAULT NULL,
  `reward_currency` varchar(3) DEFAULT NULL,
  `reward` tinyint(4) DEFAULT NULL,
  `profile_picture` varchar(37) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts_customuser`
--

LOCK TABLES `Accounts_customuser` WRITE;
/*!40000 ALTER TABLE `Accounts_customuser` DISABLE KEYS */;
INSERT INTO `Accounts_customuser` VALUES (1,'pbkdf2_sha256$150000$Kj2Q3PI03Y1E$Iep7kOsZDsgdjtfDwezC08ltKhBclubtjqqKWi0SI4Q=','2019-10-27',1,'gr8temi','','','adamstemii@gmail.com',1,'2019-09-21',1,'lagos',8000012345,'',0,'NGN',0,'empty.png'),(2,'pbkdf2_sha256$120000$NshhAcgu4tTX$xseuQzq2OonDqcnWwq3pSKHHrKofEZPc0vt70D0weMg=','',0,'ajoke','','','gr8temii@hotmail.com',0,'2019-09-21',0,'lagos',8000012345,'',0,'NGN',0,'empty.png'),(9,'pbkdf2_sha256$150000$tgRRzlNoaoZd$HHEglf0kOy7Rp7llWnZfXDxETBnmo9GoG7q5lgX4fjw=','2019-10-26',0,'ik','Ikechuku','Ukpa','sir_ik@yahoo.com',0,'',1,'lagos',8000012345,'oAypWQon',10,'NGN',0,'profile/WIN_20190805_15_48_48_Pro.jpg'),(10,'pbkdf2_sha256$120000$OMCMd7s5AdAy$rB2tst2h1cOcQmWDyGGqLix03igdHG7bTENCuXCpYlo=','2019-09-21',0,'johnson','','','gr8temi@gmail.com',0,'2019-09-21',1,'lagos',8000012345,'WkVKRqcs',0,'NGN',0,'empty.png'),(11,'pbkdf2_sha256$150000$mGA2wQbXdRrd$zmi5lSEYNVgjp2ntOFq0YT8fbSUKh2DneC6HbxRvEGc=','2019-09-22',0,'donarioo','','','dannon_daniel@yahoo.com',0,'2019-09-22',1,'lagos',8000012345,'1Mxs6U8t',0,'NGN',0,'empty.png');
/*!40000 ALTER TABLE `Accounts_customuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Accounts_customuser_groups`
--

DROP TABLE IF EXISTS `Accounts_customuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Accounts_customuser_groups` (
  `id` varchar(0) DEFAULT NULL,
  `customuser_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts_customuser_groups`
--

LOCK TABLES `Accounts_customuser_groups` WRITE;
/*!40000 ALTER TABLE `Accounts_customuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Accounts_customuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Accounts_customuser_user_permissions`
--

DROP TABLE IF EXISTS `Accounts_customuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Accounts_customuser_user_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `customuser_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts_customuser_user_permissions`
--

LOCK TABLES `Accounts_customuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `Accounts_customuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Accounts_customuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Accounts_finder`
--

DROP TABLE IF EXISTS `Accounts_finder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Accounts_finder` (
  `id` varchar(0) DEFAULT NULL,
  `company_name` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts_finder`
--

LOCK TABLES `Accounts_finder` WRITE;
/*!40000 ALTER TABLE `Accounts_finder` DISABLE KEYS */;
/*!40000 ALTER TABLE `Accounts_finder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Accounts_project_handlers`
--

DROP TABLE IF EXISTS `Accounts_project_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Accounts_project_handlers` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(7) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `availability` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts_project_handlers`
--

LOCK TABLES `Accounts_project_handlers` WRITE;
/*!40000 ALTER TABLE `Accounts_project_handlers` DISABLE KEYS */;
INSERT INTO `Accounts_project_handlers` VALUES (1,'Jubril','gr8temii@hotmail.com',1),(2,'johnson','gr8temi@gmail.com',1);
/*!40000 ALTER TABLE `Accounts_project_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Accounts_project_managers`
--

DROP TABLE IF EXISTS `Accounts_project_managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Accounts_project_managers` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `email` varchar(27) DEFAULT NULL,
  `availability` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts_project_managers`
--

LOCK TABLES `Accounts_project_managers` WRITE;
/*!40000 ALTER TABLE `Accounts_project_managers` DISABLE KEYS */;
INSERT INTO `Accounts_project_managers` VALUES (1,'Daniel Dannon','Smartcentanigeria@gmail.com',0),(2,'Adams Temidire A','gr8temi@gmail.com',1);
/*!40000 ALTER TABLE `Accounts_project_managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Accounts_terms`
--

DROP TABLE IF EXISTS `Accounts_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Accounts_terms` (
  `id` tinyint(4) DEFAULT NULL,
  `terms_condition` text,
  `name` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts_terms`
--

LOCK TABLES `Accounts_terms` WRITE;
/*!40000 ALTER TABLE `Accounts_terms` DISABLE KEYS */;
INSERT INTO `Accounts_terms` VALUES (1,'<p style=\"text-align:justify\"><u><u>Welcome to Smartcenta.com.</u></u></p>\r\n\r\n<p style=\"text-align:justify\">The following terms of service (these &quot;Terms of Service&quot;) govern your access to and use of the Smartcenta website, including any content, functionality, and services offered on or through www.smartcenta.com (the &quot;Site&quot;) by Smartcenta Enterprises.</p>\r\n\r\n<p style=\"text-align:justify\">Please read the Terms of Service carefully before you start to use the Site. By using the Site, opening an account or by clicking to accept or agree to the Terms of Service when this option is made available to you, you accept and agree to be bound and abide by these Terms of Service and our Privacy Policy, found here, incorporated herein by reference. If you do not want to agree to these Terms of Service or the Privacy Policy, you must not access or use the Site. For more detailed policies surrounding the activity and usage on the Site, please access the designated articles herein.</p>\r\n\r\n<p style=\"text-align:justify\">This Site is offered and available to users who are 18 years of age or older. If you are under 18 you may not use this Site or the Smartcenta services. By using this Site, you represent and warrant that you are of legal age to form a binding contract and meet all of the foregoing eligibility requirements. If you do not meet all of these requirements, you must not access or use the Site.</p>\r\n\r\n<p style=\"text-align:justify\">Our Customer Support team is available 24/7 if you have any questions regarding the Site or Terms of Service. Contacting our Customer Support team can be performed by initiating a chat with the chat feature on the website.</p>\r\n\r\n<p style=\"text-align:justify\"><u><u>Key Terms</u></u></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><strong><strong>Buyers</strong></strong>&nbsp;are users who purchase services on Smartcenta.</li>\r\n	<li style=\"text-align:justify\"><strong><strong>Custom Orders</strong></strong>&nbsp;are exclusive orders that a buyer can create according to specific requirements tailored towards his/her needs.</li>\r\n	<li style=\"text-align:justify\"><strong><strong>Disputes</strong></strong>&nbsp;are disagreements experienced during an order.</li>\r\n	<li style=\"text-align:justify\"><strong><strong>Smartcenta Credits</strong></strong>&nbsp;are credits that Smartcenta may provide users to be used only for purchases on Smartcenta, subject to these Terms of Service or any other applicable laws and/or terms.</li>\r\n	<li style=\"text-align:justify\"><strong><strong>Gig Extras</strong></strong>&nbsp;are additional services offered on top of the normal services for an additional price defined by smartcenta.</li>\r\n	<li style=\"text-align:justify\"><strong><strong>Gig / Gigs</strong></strong>&nbsp;are services offered on Smartcenta.</li>\r\n	<li style=\"text-align:justify\"><strong><strong>Orders</strong></strong>&nbsp;are the formal agreement between a Buyer and Smartcenta after a purchase was made.</li>\r\n	<li style=\"text-align:justify\"><strong><strong>Payment Services Provider(s)</strong></strong>&nbsp;are service providers that provide payment services to Buyers in connection with the Smartcenta platform, including with respect to the collection of funds from Buyers in connection with the purchase of Gigs, and currency exchange services in connection with payments in local currencies.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><u><u>Main terms</u></u></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">Only registered users are protected and are bound by Smartcenta terms and conditions. Registration is free.</li>\r\n	<li style=\"text-align:justify\">Buyers pay Smartcenta in advance to create an order.</li>\r\n	<li style=\"text-align:justify\">Orders are purchased through the Order button found on a Seller&rsquo;s Gig page or through a Custom Offer.</li>\r\n	<li style=\"text-align:justify\">Users may not offer or accept payments using any method other than placing an order through smartcenta.com.</li>\r\n	<li style=\"text-align:justify\">Buyers are granted all rights for the delivered work, unless otherwise specified. Note: some Gigs charge additional payments (through Gig Extras) for Commercial Use License.</li>\r\n	<li style=\"text-align:justify\">Smartcenta retains the right to use all published delivered works for Fiverr marketing and promotion purposes.</li>\r\n	<li style=\"text-align:justify\">Smartcenta reserves the right to put any account on hold or permanently disable accounts due to breach of these Terms of Service or due to any illegal or inappropriate use of the Site or services.</li>\r\n	<li style=\"text-align:justify\">Violation of Smartcenta&rsquo;s Terms of Service may get your account disabled permanently.</li>\r\n	<li style=\"text-align:justify\">Users with disabled accounts will not be able to buy on Smartcenta.</li>\r\n	<li style=\"text-align:justify\">Users who have violated our Terms of Service and had their account disabled may contact our Customer Support team for more information surrounding the violation and status of the account.</li>\r\n	<li style=\"text-align:justify\">Users must be able to verify their account ownership through Customer Support by providing materials that prove ownership of that account.</li>\r\n	<li style=\"text-align:justify\">Disputes should be handled by contacting Smartcenta Customer Support.</li>\r\n	<li style=\"text-align:justify\">Smartcenta may make changes to its Terms of Service from time to time. When these changes are made, Smartcenta will make a new copy of the terms of service available on this page.</li>\r\n	<li style=\"text-align:justify\">You understand and agree that if you use Smartcenta after the date on which the Terms of Service have changed, Smartcenta will treat your use as acceptance of the updated Terms of Service.</li>\r\n</ul>\r\n\r\n<p style=\"margin-left:38px; text-align:justify\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">Filing a transaction dispute or reversing a payment through your payment provider or your bank is a violation of these Terms of Service. Doing so may get your account temporarily or permanently disabled.</li>\r\n	<li style=\"text-align:justify\">Smartcenta, through its Payment Services Providers, reserves the right to cancel orders or place funds on hold for any suspected fraudulent transactions made on the Site.</li>\r\n	<li style=\"text-align:justify\">All transfer of intellectual property to the Buyer shall be subject to full payment for the Gig and the delivery may not be used if payment is canceled for any reason.</li>\r\n	<li style=\"text-align:justify\">If an order is canceled (for any reason), the funds paid will be returned to the Buyer&rsquo;s Smartcenta Credit.</li>\r\n	<li style=\"text-align:justify\">Revisions to deliveries can be performed by Smartcenta based on a determined amount of revisions offered to Buyers in a task, including no revisions.</li>\r\n	<li style=\"text-align:justify\">Requests for revisions can be performed by sending an mail to the customer care after delivery of gig.</li>\r\n	<li style=\"text-align:justify\">Requesting to gain more services beyond the agreed requirements by sending a request for revision is not allowed.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><u><u>Refunds</u></u></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">Smartcenta does not automatically refund payments made for canceled orders back to your payment provider. Funds from order cancellations are returned to the Buyer&#39;s smartcenta Credit and are available for future purchases on Smartcenta.</li>\r\n	<li style=\"text-align:justify\">Deposit refunds (i.e. refunds directly to your payment provider) can be performed by our Customer Support team, based on the Order&rsquo;s original payment amount and currency. To prevent fraud and abuse, we limit the total amount of times users can request a payment provider refund, which is subject to review by our Customer Support team. Such refunds may be subject to an additional fee.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><u><u>Limitation on Liability</u></u></p>\r\n\r\n<p style=\"text-align:justify\">IN NO EVENT WILL SMARTCENTA, ITS AFFILIATES, SERVICE PROVIDERS, EMPLOYEES, AGENTS, OFFICERS OR DIRECTORS BE LIABLE FOR DAMAGES OF ANY KIND, UNDER ANY LEGAL THEORY, ARISING OUT OF OR IN CONNECTION WITH YOUR USE, OR INABILITY TO USE, THE WEBSITE, ANY WEBSITES LINKED TO IT, ANY CONTENT ON THE WEBSITE OR SUCH OTHER WEBSITES OR ANY SERVICES OR ITEMS OBTAINED THROUGH THE WEBSITE OR SUCH OTHER WEBSITES, INCLUDING ANY DIRECT, INDIRECT, SPECIAL, INCIDENTAL, CONSEQUENTIAL OR PUNITIVE DAMAGES, INCLUDING BUT NOT LIMITED TO, PERSONAL INJURY, PAIN AND SUFFERING, EMOTIONAL DISTRESS, LOSS OF REVENUE, LOSS OF PROFITS, LOSS OF BUSINESS OR ANTICIPATED SAVINGS, LOSS OF USE, LOSS OF GOODWILL, LOSS OF DATA, AND WHETHER CAUSED BY TORT (INCLUDING NEGLIGENCE), BREACH OF CONTRACT OR OTHERWISE, EVEN IF FORESEEABLE.</p>\r\n\r\n<p style=\"text-align:justify\">THE FOREGOING DOES NOT AFFECT ANY LIABILITY WHICH CANNOT BE EXCLUDED OR LIMITED UNDER APPLICABLE LAW.</p>\r\n\r\n<p style=\"text-align:justify\">The term &ldquo;Affiliate&rdquo; referred to herein, is an entity that, directly or indirectly, controls, or is under the control of, or is under common control with Smartcenta, where control means having more than fifty percent (50%) voting stock or other ownership interest or the majority of voting rights of such entity.</p>\r\n\r\n<p style=\"text-align:justify\"><u><u>Privacy</u></u></p>\r\n\r\n<p style=\"text-align:justify\">At Smartcenta we care about your privacy. We do not sell or rent your personal information to third parties for their direct marketing purposes without your explicit consent. We do not disclose it to others except as disclosed in this Policy or required to provide you with the services of the Site and its related sites, applications, services and goods (collectively, the &ldquo;Site&rdquo;), meaning - to allow you to buy, share the information you want to share on the Site; to contribute on the forum; pay for products; post reviews and so on; or where we have a legal obligation to do so.</p>\r\n\r\n<p style=\"text-align:justify\">We collect information that you provide us or voluntarily share with other users, and also some general technical information that is automatically gathered by our systems, such as IP address, browser information, and cookies to enable you to have a better user experience and a more personalized browsing experience.</p>\r\n\r\n<p style=\"text-align:justify\">We will not share information that you provide us in the process of the registration - including your contact information - except as described in this Policy.</p>\r\n\r\n<p style=\"text-align:justify\">Technical information that is gathered by our systems, or third party systems, automatically may be used for Site operation, optimization, analytics, content promotion and enhancement of user experience. In accordance with applicable local law, we may use your information to contact you - to provide notices related to your activities or offer you promotions and general updates, but we will not let any other person, including sellers and buyers, contact you, other than through your user profile on the Site.</p>\r\n\r\n<p style=\"text-align:justify\">Your personal information may be stored in systems based around the world and maybe processed by third-party service providers acting on our behalf. These providers may be based in countries that do not provide an equivalent level of protection for privacy as they enjoyed in the country in which you live. In that case, we will provide for adequate safeguards to protect your personal information.</p>\r\n\r\n<p style=\"text-align:justify\">You can exercise your rights over your personal information, by contacting a Customer Support Officer.</p>','Terms and condition');
/*!40000 ALTER TABLE `Accounts_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs_customize`
--

DROP TABLE IF EXISTS `Jobs_customize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs_customize` (
  `id` tinyint(4) DEFAULT NULL,
  `title` varchar(8) DEFAULT NULL,
  `name` varchar(8) DEFAULT NULL,
  `email` varchar(16) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `description` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs_customize`
--

LOCK TABLES `Jobs_customize` WRITE;
/*!40000 ALTER TABLE `Jobs_customize` DISABLE KEYS */;
INSERT INTO `Jobs_customize` VALUES (1,'job hunt','Ikechuku','sir_ik@yahoo.com',8000012345,'<p>adsdw</p>'),(2,'job hunt','Ikechuku','sir_ik@yahoo.com',8000012345,'<p>adsdw</p>'),(3,'job hunt','Ikechuku','sir_ik@yahoo.com',8000012345,'<p>adsdw</p>'),(4,'job hunt','Ikechuku','sir_ik@yahoo.com',8000012345,'<p>adsdw</p>');
/*!40000 ALTER TABLE `Jobs_customize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs_deadline`
--

DROP TABLE IF EXISTS `Jobs_deadline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs_deadline` (
  `id` tinyint(4) DEFAULT NULL,
  `deadline` varchar(9) DEFAULT NULL,
  `category_id` tinyint(4) DEFAULT NULL,
  `price_currency` varchar(3) DEFAULT NULL,
  `price` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs_deadline`
--

LOCK TABLES `Jobs_deadline` WRITE;
/*!40000 ALTER TABLE `Jobs_deadline` DISABLE KEYS */;
INSERT INTO `Jobs_deadline` VALUES (1,'10-14days',1,'NGN',3000),(2,'15-30days',1,'NGN',1500),(3,'10-14days',2,'NGN',3000),(4,'15-30',2,'NGN',1500),(5,'1 month',27,'NGN',25000),(6,'2 month',27,'NGN',15000),(7,'3 month',27,'NGN',7000),(8,'10-14days',22,'NGN',1000);
/*!40000 ALTER TABLE `Jobs_deadline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs_jobs`
--

DROP TABLE IF EXISTS `Jobs_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs_jobs` (
  `id` varchar(0) DEFAULT NULL,
  `job_title` varchar(0) DEFAULT NULL,
  `category_id` varchar(0) DEFAULT NULL,
  `company_id` varchar(0) DEFAULT NULL,
  `payment` varchar(0) DEFAULT NULL,
  `description` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs_jobs`
--

LOCK TABLES `Jobs_jobs` WRITE;
/*!40000 ALTER TABLE `Jobs_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Jobs_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs_order`
--

DROP TABLE IF EXISTS `Jobs_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs_order` (
  `id` tinyint(4) DEFAULT NULL,
  `title` varchar(12) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `category` varchar(15) DEFAULT NULL,
  `sub_cat` varchar(19) DEFAULT NULL,
  `deadlines` varchar(19) DEFAULT NULL,
  `total_currency` varchar(3) DEFAULT NULL,
  `total` mediumint(9) DEFAULT NULL,
  `email` varchar(19) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `reference` varchar(16) DEFAULT NULL,
  `description` varchar(51) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `abbr` varchar(3) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs_order`
--

LOCK TABLES `Jobs_order` WRITE;
/*!40000 ALTER TABLE `Jobs_order` DISABLE KEYS */;
INSERT INTO `Jobs_order` VALUES (4,'Web Design','Ikechuku','Web Programming','Web App Development','3 month ₦7,000.00','NGN',67000,'gr8temi@gmail.com',8000012345,'T198051367626783','<p>Puma web design</p>',9,'WD',2),(5,'Research','Ikechuku','Academics','Research','10-14days ₦3,000.00','NGN',4000,'sir_ik@yahoo.com',8000012345,'T231689876106875','<p>Following are the requirement</p>\r\n',9,'R',1),(6,'Work on This','Adams Temidire A','Academics','0','0','NGN',0,'adamstemi@gmail.com',8093615224,'quote','<ol>\r\n	<li>Responsive</li>\r\n	<li>Colorful</li>\r\n</o',0,'WoT',1),(7,'Work on This','Adams Temidire A','Academics','Quote Trial','undefined','NGN',0,'adamstemi@gmail.com',8093615224,'quote','<ol>\r\n	<li>good design</li>\r\n</ol>\r\n',0,'WoT',1),(8,'Work on This','Adams Temidire A','Academics','Quote Trial','undefined','NGN',0,'adamstemi@gmail.com',8093615224,'quote','',0,'WoT',1);
/*!40000 ALTER TABLE `Jobs_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs_stage`
--

DROP TABLE IF EXISTS `Jobs_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs_stage` (
  `id` tinyint(4) DEFAULT NULL,
  `stage_name` varchar(16) DEFAULT NULL,
  `stage` tinyint(4) DEFAULT NULL,
  `status` varchar(7) DEFAULT NULL,
  `category_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs_stage`
--

LOCK TABLES `Jobs_stage` WRITE;
/*!40000 ALTER TABLE `Jobs_stage` DISABLE KEYS */;
INSERT INTO `Jobs_stage` VALUES (1,'Receive work',1,'Waiting',1),(2,'Validate Payment',2,'Waiting',1),(3,'Assign Task',3,'Waiting',1),(4,'Review work',4,'Waiting',1),(5,'Deliver Work',5,'Waiting',1),(6,'Receive work',1,'Waiting',2),(7,'Validate Payment',2,'Waiting',2),(8,'Assign Task',4,'Waiting',2),(9,'Review work',4,'Waiting',2),(10,'Deliver Work',5,'Waiting',2),(11,'Receive work',1,'Waiting',3),(12,'Validate Payment',2,'Waiting',3),(13,'Assign Task',3,'Waiting',3),(14,'Review work',4,'Waiting',3),(15,'Deliver Work',5,'Waiting',3),(18,'Receive work',1,'Waiting',27),(19,'Validate Payment',2,'Waiting',27),(20,'Assign Task',3,'Waiting',27),(21,'Review work',4,'Waiting',27),(22,'Deliver Work',5,'Waiting',27);
/*!40000 ALTER TABLE `Jobs_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs_subcategory`
--

DROP TABLE IF EXISTS `Jobs_subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs_subcategory` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `pricing_currency` varchar(3) DEFAULT NULL,
  `pricing` mediumint(9) DEFAULT NULL,
  `category_id` tinyint(4) DEFAULT NULL,
  `min_date` tinyint(4) DEFAULT NULL,
  `cost_per_day_currency` varchar(3) DEFAULT NULL,
  `cost_per_day` smallint(6) DEFAULT NULL,
  `quote` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs_subcategory`
--

LOCK TABLES `Jobs_subcategory` WRITE;
/*!40000 ALTER TABLE `Jobs_subcategory` DISABLE KEYS */;
INSERT INTO `Jobs_subcategory` VALUES (1,'Research','NGN',1000,1,3,'NGN',500,0),(2,'Research Analysis','NGN',950,1,3,'NGN',0,0),(3,'Term Papers','NGN',900,1,3,'NGN',0,0),(4,'Literature Review','NGN',800,1,3,'NGN',0,0),(5,'Articles','NGN',800,1,3,'NGN',0,0),(6,'Book Summary','NGN',1000,1,3,'NGN',0,0),(7,'Business Plans and Proposals','NGN',1000,2,3,'NGN',0,0),(8,'Feasibility Studies','NGN',2000,2,3,'NGN',0,0),(9,'Articles','NGN',2000,2,3,'NGN',0,0),(10,'Website content','NGN',2000,3,3,'NGN',0,0),(11,'Fliers & Posters Content','NGN',2000,3,3,'NGN',0,0),(12,'Power Point presentation','NGN',2000,3,3,'NGN',0,0),(13,'Pitch Deck','NGN',2000,3,3,'NGN',0,0),(14,'Logo Design','NGN',2000,4,3,'NGN',0,0),(15,'Letter heads','NGN',2000,4,3,'NGN',0,0),(16,'Business Card','NGN',2000,4,3,'NGN',0,0),(17,'Compliment slips','NGN',2000,4,3,'NGN',0,0),(18,'Web Graphics (Social Media Apps)','NGN',2000,4,3,'NGN',0,0),(19,'A5/A4 Flyer','NGN',2000,4,3,'NGN',0,0),(20,'A4 Brochure','NGN',2000,4,3,'NGN',0,0),(21,'Poster','NGN',2000,4,3,'NGN',0,0),(22,'Book Cover','NGN',200,4,3,'NGN',0,0),(23,'Twitter or Facebook cover','NGN',2000,4,3,'NGN',0,0),(24,'Magazine Advert','NGN',2000,4,3,'NGN',0,0),(25,'CD Artwork','NGN',2000,4,3,'NGN',0,0),(26,'Website design','NGN',5000,5,3,'NGN',0,0),(27,'Web App Development','NGN',60000,5,3,'NGN',500,0),(28,'Quote Trial','NGN',0,1,3,'NGN',0,1);
/*!40000 ALTER TABLE `Jobs_subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs_workload`
--

DROP TABLE IF EXISTS `Jobs_workload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs_workload` (
  `id` tinyint(4) DEFAULT NULL,
  `status_code` tinyint(4) DEFAULT NULL,
  `project_manager` varchar(16) DEFAULT NULL,
  `project_handler` varchar(7) DEFAULT NULL,
  `project_id_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs_workload`
--

LOCK TABLES `Jobs_workload` WRITE;
/*!40000 ALTER TABLE `Jobs_workload` DISABLE KEYS */;
INSERT INTO `Jobs_workload` VALUES (5,3,'Daniel Dannon','johnson',4),(6,3,'Daniel Dannon','Jubril',4),(7,3,'Adams Temidire A','Jubril',4),(8,3,'Daniel Dannon','johnson',4),(9,3,'Adams Temidire A','johnson',4),(10,3,'Adams Temidire A','johnson',4),(11,3,'Adams Temidire A','johnson',4),(12,3,'Adams Temidire A','johnson',4),(13,3,'Adams Temidire A','Jubril',4),(14,3,'Adams Temidire A','johnson',4),(15,3,'Adams Temidire A','Jubril',4),(16,3,'Adams Temidire A','johnson',4),(17,3,'Adams Temidire A','johnson',4),(18,3,'Adams Temidire A','johnson',4),(19,3,'Adams Temidire A','johnson',4),(20,3,'Adams Temidire A','Jubril',4),(21,3,'Adams Temidire A','Jubril',4),(22,3,'Adams Temidire A','Jubril',4),(23,3,'Adams Temidire A','Jubril',4);
/*!40000 ALTER TABLE `Jobs_workload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_emailaddress`
--

DROP TABLE IF EXISTS `account_emailaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_emailaddress` (
  `id` tinyint(4) DEFAULT NULL,
  `verified` tinyint(4) DEFAULT NULL,
  `primary` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `email` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_emailaddress`
--

LOCK TABLES `account_emailaddress` WRITE;
/*!40000 ALTER TABLE `account_emailaddress` DISABLE KEYS */;
INSERT INTO `account_emailaddress` VALUES (1,0,1,2,'gr8temii@hotmail.com'),(9,0,1,9,'sir_ik@yahoo.com'),(10,0,1,10,'gr8temi@gmail.com'),(11,0,1,11,'dannon_daniel@yahoo.com');
/*!40000 ALTER TABLE `account_emailaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_emailconfirmation`
--

DROP TABLE IF EXISTS `account_emailconfirmation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_emailconfirmation` (
  `id` varchar(0) DEFAULT NULL,
  `created` varchar(0) DEFAULT NULL,
  `sent` varchar(0) DEFAULT NULL,
  `key` varchar(0) DEFAULT NULL,
  `email_address_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_emailconfirmation`
--

LOCK TABLES `account_emailconfirmation` WRITE;
/*!40000 ALTER TABLE `account_emailconfirmation` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_emailconfirmation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` smallint(6) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(24) DEFAULT NULL,
  `name` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_contenttype','Can add content type'),(14,4,'change_contenttype','Can change content type'),(15,4,'delete_contenttype','Can delete content type'),(16,4,'view_contenttype','Can view content type'),(17,5,'add_session','Can add session'),(18,5,'change_session','Can change session'),(19,5,'delete_session','Can delete session'),(20,5,'view_session','Can view session'),(21,6,'add_site','Can add site'),(22,6,'change_site','Can change site'),(23,6,'delete_site','Can delete site'),(24,6,'view_site','Can view site'),(25,7,'add_dashboard','Can add dashboard'),(26,7,'change_dashboard','Can change dashboard'),(27,7,'delete_dashboard','Can delete dashboard'),(28,7,'view_dashboard','Can view dashboard'),(29,8,'add_candidate','Can add candidate'),(30,8,'change_candidate','Can change candidate'),(31,8,'delete_candidate','Can delete candidate'),(32,8,'view_candidate','Can view candidate'),(33,9,'add_categories','Can add categories'),(34,9,'change_categories','Can change categories'),(35,9,'delete_categories','Can delete categories'),(36,9,'view_categories','Can view categories'),(37,10,'add_finder','Can add finder'),(38,10,'change_finder','Can change finder'),(39,10,'delete_finder','Can delete finder'),(40,10,'view_finder','Can view finder'),(41,11,'add_customuser','Can add user'),(42,11,'change_customuser','Can change user'),(43,11,'delete_customuser','Can delete user'),(44,11,'view_customuser','Can view user'),(45,12,'add_jobs','Can add jobs'),(46,12,'change_jobs','Can change jobs'),(47,12,'delete_jobs','Can delete jobs'),(48,12,'view_jobs','Can view jobs'),(49,13,'add_deadline','Can add deadline'),(50,13,'change_deadline','Can change deadline'),(51,13,'delete_deadline','Can delete deadline'),(52,13,'view_deadline','Can view deadline'),(53,14,'add_subcategory','Can add subcategory'),(54,14,'change_subcategory','Can change subcategory'),(55,14,'delete_subcategory','Can delete subcategory'),(56,14,'view_subcategory','Can view subcategory'),(57,15,'add_order','Can add order'),(58,15,'change_order','Can change order'),(59,15,'delete_order','Can delete order'),(60,15,'view_order','Can view order'),(61,16,'add_workload','Can add workload'),(62,16,'change_workload','Can change workload'),(63,16,'delete_workload','Can delete workload'),(64,16,'view_workload','Can view workload'),(65,17,'add_stage','Can add stage'),(66,17,'change_stage','Can change stage'),(67,17,'delete_stage','Can delete stage'),(68,17,'view_stage','Can view stage'),(69,18,'add_emailaddress','Can add email address'),(70,18,'change_emailaddress','Can change email address'),(71,18,'delete_emailaddress','Can delete email address'),(72,18,'view_emailaddress','Can view email address'),(73,19,'add_emailconfirmation','Can add email confirmation'),(74,19,'change_emailconfirmation','Can change email confirmation'),(75,19,'delete_emailconfirmation','Can delete email confirmation'),(76,19,'view_emailconfirmation','Can view email confirmation'),(77,20,'add_socialaccount','Can add social account'),(78,20,'change_socialaccount','Can change social account'),(79,20,'delete_socialaccount','Can delete social account'),(80,20,'view_socialaccount','Can view social account'),(81,21,'add_socialapp','Can add social application'),(82,21,'change_socialapp','Can change social application'),(83,21,'delete_socialapp','Can delete social application'),(84,21,'view_socialapp','Can view social application'),(85,22,'add_socialtoken','Can add social application token'),(86,22,'change_socialtoken','Can change social application token'),(87,22,'delete_socialtoken','Can delete social application token'),(88,22,'view_socialtoken','Can view social application token'),(89,23,'add_openidnonce','Can add open id nonce'),(90,23,'change_openidnonce','Can change open id nonce'),(91,23,'delete_openidnonce','Can delete open id nonce'),(92,23,'view_openidnonce','Can view open id nonce'),(93,24,'add_openidstore','Can add open id store'),(94,24,'change_openidstore','Can change open id store'),(95,24,'delete_openidstore','Can delete open id store'),(96,24,'view_openidstore','Can view open id store'),(97,25,'add_project_handlers','Can add project_handlers'),(98,25,'change_project_handlers','Can change project_handlers'),(99,25,'delete_project_handlers','Can delete project_handlers'),(100,25,'view_project_handlers','Can view project_handlers'),(101,26,'add_project_managers','Can add project_managers'),(102,26,'change_project_managers','Can change project_managers'),(103,26,'delete_project_managers','Can delete project_managers'),(104,26,'view_project_managers','Can view project_managers'),(105,27,'add_customize','Can add customize'),(106,27,'change_customize','Can change customize'),(107,27,'delete_customize','Can delete customize'),(108,27,'view_customize','Can view customize'),(109,28,'add_terms','Can add terms'),(110,28,'change_terms','Can change terms'),(111,28,'delete_terms','Can delete terms'),(112,28,'view_terms','Can view terms');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` smallint(6) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(50) DEFAULT NULL,
  `change_message` varchar(52) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-09-21',3,'gr8temi@gmail.com','',11,1,3),(2,'2019-09-21',4,'ike@gmail.com','',11,1,3),(3,'2019-09-21',6,'wunmiolajumoke@gmail.com','',11,1,3),(4,'2019-09-21',5,'ike@gmail.com','',11,1,3),(5,'2019-09-21',7,'ik@gmail.com','',11,1,3),(6,'2019-09-21',8,'ik@gmail.com','',11,1,3),(7,'2019-09-21',3,'gr8temi@gmail.com','',11,1,3),(8,'2019-09-21',1,'Academics','[{\"added\": {}}]',9,1,1),(9,'2019-09-21',2,'Business Content','[{\"added\": {}}]',9,1,1),(10,'2019-09-21',3,'Copywriting & Presentation','[{\"added\": {}}]',9,1,1),(11,'2019-09-21',4,'Graphics Design','[{\"added\": {}}]',9,1,1),(12,'2019-09-21',5,'Web Programming','[{\"added\": {}}]',9,1,1),(13,'2019-09-21',1,'Research','[{\"added\": {}}]',14,1,1),(14,'2019-09-21',2,'Research Analysis','[{\"added\": {}}]',14,1,1),(15,'2019-09-21',3,'Term Papers','[{\"added\": {}}]',14,1,1),(16,'2019-09-21',4,'Literature Review','[{\"added\": {}}]',14,1,1),(17,'2019-09-21',5,'Articles','[{\"added\": {}}]',14,1,1),(18,'2019-09-21',6,'Book Summary','[{\"added\": {}}]',14,1,1),(19,'2019-09-21',7,'Business Plans and Proposals','[{\"added\": {}}]',14,1,1),(20,'2019-09-21',8,'Feasibility Studies','[{\"added\": {}}]',14,1,1),(21,'2019-09-21',9,'Articles','[{\"added\": {}}]',14,1,1),(22,'2019-09-21',10,'Website content','[{\"added\": {}}]',14,1,1),(23,'2019-09-21',11,'Fliers & Posters Content','[{\"added\": {}}]',14,1,1),(24,'2019-09-21',12,'Power Point presentation','[{\"added\": {}}]',14,1,1),(25,'2019-09-21',13,'Pitch Deck','[{\"added\": {}}]',14,1,1),(26,'2019-09-21',14,'Logo Design','[{\"added\": {}}]',14,1,1),(27,'2019-09-21',15,'Letter heads','[{\"added\": {}}]',14,1,1),(28,'2019-09-21',16,'Business Card','[{\"added\": {}}]',14,1,1),(29,'2019-09-21',17,'Compliment slips','[{\"added\": {}}]',14,1,1),(30,'2019-09-21',18,'Web Graphics (Social Media Apps)','[{\"added\": {}}]',14,1,1),(31,'2019-09-21',19,'A5/A4 Flyer','[{\"added\": {}}]',14,1,1),(32,'2019-09-21',20,'A4 Brochure','[{\"added\": {}}]',14,1,1),(33,'2019-09-21',21,'Poster','[{\"added\": {}}]',14,1,1),(34,'2019-09-21',22,'Book Cover','[{\"added\": {}}]',14,1,1),(35,'2019-09-21',23,'Twitter or Facebook cover','[{\"added\": {}}]',14,1,1),(36,'2019-09-21',24,'Magazine Advert','[{\"added\": {}}]',14,1,1),(37,'2019-09-21',24,'Magazine Advert','[{\"changed\": {\"fields\": [\"pricing\"]}}]',14,1,2),(38,'2019-09-21',25,'CD Artwork','[{\"added\": {}}]',14,1,1),(39,'2019-09-21',26,'Website design','[{\"added\": {}}]',14,1,1),(40,'2019-09-21',27,'Web App Development','[{\"added\": {}}]',14,1,1),(41,'2019-09-21',1,'10-14days Research','[{\"added\": {}}]',13,1,1),(42,'2019-09-21',2,'15-30days Research','[{\"added\": {}}]',13,1,1),(43,'2019-09-21',3,'10-14days Research Analysis','[{\"added\": {}}]',13,1,1),(44,'2019-09-21',4,'15-30 Research Analysis','[{\"added\": {}}]',13,1,1),(45,'2019-09-21',5,'1 month Web App Development','[{\"added\": {}}]',13,1,1),(46,'2019-09-21',6,'2 month Web App Development','[{\"added\": {}}]',13,1,1),(47,'2019-09-21',7,'3 month Web App Development','[{\"added\": {}}]',13,1,1),(48,'2019-09-21',8,'10-14days Book Cover','[{\"added\": {}}]',13,1,1),(49,'2019-09-21',9,'sir_ik@yahoo.com (ik@gmail.com)','[{\"changed\": {\"fields\": [\"email\"]}}]',18,1,2),(50,'2019-09-21',9,'sir_ik@yahoo.com','[{\"changed\": {\"fields\": [\"email\"]}}]',11,1,2),(51,'2019-09-21',3,'Web design','',15,1,3),(52,'2019-09-21',2,'acaemics','',15,1,3),(53,'2019-09-21',1,'Bioinformatics','',15,1,3),(54,'2019-09-22',1,'Receive work','[{\"added\": {}}]',17,1,1),(55,'2019-09-22',1,'Validate Payment','[{\"changed\": {\"fields\": [\"stage_name\"]}}]',17,1,2),(56,'2019-09-22',1,'Receive work','[{\"changed\": {\"fields\": [\"stage_name\"]}}]',17,1,2),(57,'2019-09-22',2,'Validate Payment','[{\"added\": {}}]',17,1,1),(58,'2019-09-22',3,'Assign Task','[{\"added\": {}}]',17,1,1),(59,'2019-09-22',4,'Review work','[{\"added\": {}}]',17,1,1),(60,'2019-09-22',5,'Deliver Work','[{\"added\": {}}]',17,1,1),(61,'2019-09-22',6,'Receive work','[{\"added\": {}}]',17,1,1),(62,'2019-09-22',7,'Validate Payment','[{\"added\": {}}]',17,1,1),(63,'2019-09-22',8,'Assign Task','[{\"added\": {}}]',17,1,1),(64,'2019-09-22',9,'Review work','[{\"added\": {}}]',17,1,1),(65,'2019-09-22',10,'Deliver Work','[{\"added\": {}}]',17,1,1),(66,'2019-09-22',11,'Receive work','[{\"added\": {}}]',17,1,1),(67,'2019-09-22',12,'Validate Payment','[{\"added\": {}}]',17,1,1),(68,'2019-09-22',13,'Assign Task','[{\"added\": {}}]',17,1,1),(69,'2019-09-22',14,'Review work','[{\"added\": {}}]',17,1,1),(70,'2019-09-22',15,'Deliver Work','[{\"added\": {}}]',17,1,1),(71,'2019-09-22',16,'Receive work','[{\"added\": {}}]',17,1,1),(72,'2019-09-22',17,'Validate Payment','[{\"added\": {}}]',17,1,1),(73,'2019-09-22',18,'Receive work','[{\"added\": {}}]',17,1,1),(74,'2019-09-22',19,'Validate Payment','[{\"added\": {}}]',17,1,1),(75,'2019-09-22',20,'Assign Task','[{\"added\": {}}]',17,1,1),(76,'2019-09-22',21,'Review work','[{\"added\": {}}]',17,1,1),(77,'2019-09-22',21,'Review work','[{\"changed\": {\"fields\": [\"stage\"]}}]',17,1,2),(78,'2019-09-22',22,'Deliver Work','[{\"added\": {}}]',17,1,1),(79,'2019-09-22',16,'Receive work','[{\"changed\": {\"fields\": [\"category\"]}}]',17,1,2),(80,'2019-09-22',17,'Validate Payment','',17,1,3),(81,'2019-09-22',16,'Receive work','',17,1,3),(82,'2019-09-25',1,'Jubril','[{\"added\": {}}]',25,1,1),(83,'2019-09-25',2,'johnson','[{\"added\": {}}]',25,1,1),(84,'2019-09-25',1,'Daniel Dannon','[{\"added\": {}}]',26,1,1),(85,'2019-09-26',2,'Web Design','',16,1,3),(86,'2019-09-26',1,'Web Design','',16,1,3),(87,'2019-09-26',1,'Daniel Dannon','[{\"changed\": {\"fields\": [\"availability\"]}}]',26,1,2),(88,'2019-09-26',2,'johnson','[{\"changed\": {\"fields\": [\"availability\"]}}]',25,1,2),(89,'2019-09-26',4,'Web Design','',16,1,3),(90,'2019-09-26',3,'Web Design','',16,1,3),(91,'2019-09-26',1,'Daniel Dannon','[{\"changed\": {\"fields\": [\"availability\"]}}]',26,1,2),(92,'2019-09-26',2,'johnson','[{\"changed\": {\"fields\": [\"availability\"]}}]',25,1,2),(93,'2019-09-26',2,'johnson','[{\"changed\": {\"fields\": [\"availability\"]}}]',25,1,2),(94,'2019-09-26',1,'Daniel Dannon','[{\"changed\": {\"fields\": [\"availability\"]}}]',26,1,2),(95,'2019-09-26',1,'Daniel Dannon','[{\"changed\": {\"fields\": [\"availability\"]}}]',26,1,2),(96,'2019-09-26',1,'Jubril','[{\"changed\": {\"fields\": [\"availability\"]}}]',25,1,2),(97,'2019-09-26',2,'Adams Temidire A','[{\"added\": {}}]',26,1,1),(98,'2019-09-26',2,'Adams Temidire A','[{\"changed\": {\"fields\": [\"email\"]}}]',26,1,2),(99,'2019-09-26',2,'Adams Temidire A','[{\"changed\": {\"fields\": [\"email\"]}}]',26,1,2),(100,'2019-09-26',2,'Adams Temidire A','[{\"changed\": {\"fields\": [\"availability\"]}}]',26,1,2),(101,'2019-09-26',2,'johnson','[{\"changed\": {\"fields\": [\"availability\"]}}]',25,1,2),(102,'2019-09-26',2,'johnson','[{\"changed\": {\"fields\": [\"availability\"]}}]',25,1,2),(103,'2019-09-26',2,'Adams Temidire A','[{\"changed\": {\"fields\": [\"availability\"]}}]',26,1,2),(104,'2019-09-26',2,'Adams Temidire A','[{\"changed\": {\"fields\": [\"availability\"]}}]',26,1,2),(105,'2019-09-26',2,'johnson','[{\"changed\": {\"fields\": [\"availability\"]}}]',25,1,2),(106,'2019-09-26',2,'johnson','[{\"changed\": {\"fields\": [\"availability\"]}}]',25,1,2),(107,'2019-09-26',1,'Jubril','[{\"changed\": {\"fields\": [\"availability\"]}}]',25,1,2),(108,'2019-09-26',2,'Adams Temidire A','[{\"changed\": {\"fields\": [\"availability\"]}}]',26,1,2),(109,'2019-09-26',2,'Adams Temidire A','[{\"changed\": {\"fields\": [\"availability\"]}}]',26,1,2),(110,'2019-09-26',2,'Adams Temidire A','[{\"changed\": {\"fields\": [\"availability\"]}}]',26,1,2),(111,'2019-09-26',2,'johnson','[{\"changed\": {\"fields\": [\"availability\"]}}]',25,1,2),(112,'2019-09-26',1,'Jubril','[{\"changed\": {\"fields\": [\"availability\"]}}]',25,1,2),(113,'2019-09-26',2,'johnson','[{\"changed\": {\"fields\": [\"availability\"]}}]',25,1,2),(114,'2019-09-26',2,'Adams Temidire A','[{\"changed\": {\"fields\": [\"availability\"]}}]',26,1,2),(115,'2019-09-26',2,'Adams Temidire A','[{\"changed\": {\"fields\": [\"availability\"]}}]',26,1,2),(116,'2019-09-26',2,'Adams Temidire A','[{\"changed\": {\"fields\": [\"availability\"]}}]',26,1,2),(117,'2019-09-26',2,'johnson','[{\"changed\": {\"fields\": [\"availability\"]}}]',25,1,2),(118,'2019-09-26',2,'johnson','[{\"changed\": {\"fields\": [\"availability\"]}}]',25,1,2),(119,'2019-09-26',2,'Adams Temidire A','[{\"changed\": {\"fields\": [\"availability\"]}}]',26,1,2),(120,'2019-09-26',2,'Adams Temidire A','[{\"changed\": {\"fields\": [\"availability\"]}}]',26,1,2),(121,'2019-09-26',2,'johnson','[{\"changed\": {\"fields\": [\"availability\"]}}]',25,1,2),(122,'2019-09-27',2,'johnson','[{\"changed\": {\"fields\": [\"availability\"]}}]',25,1,2),(123,'2019-09-27',1,'Jubril','[{\"changed\": {\"fields\": [\"availability\"]}}]',25,1,2),(124,'2019-09-27',2,'Adams Temidire A','[{\"changed\": {\"fields\": [\"availability\"]}}]',26,1,2),(125,'2019-09-29',4,'Web Design','[{\"changed\": {\"fields\": [\"description\", \"status\"]}}]',15,1,2),(126,'2019-09-29',4,'Web Design','[{\"changed\": {\"fields\": [\"email\"]}}]',15,1,2),(127,'2019-09-29',4,'Web Design','[{\"changed\": {\"fields\": [\"status\"]}}]',15,1,2),(128,'2019-09-29',4,'Web Design','[{\"changed\": {\"fields\": [\"status\"]}}]',15,1,2),(129,'2019-09-29',4,'Web Design','[{\"changed\": {\"fields\": [\"status\"]}}]',15,1,2),(130,'2019-09-29',4,'Web Design','[{\"changed\": {\"fields\": [\"status\"]}}]',15,1,2),(131,'2019-09-29',4,'Web Design','[{\"changed\": {\"fields\": [\"status\"]}}]',15,1,2),(132,'2019-10-19',12,'sir_ik@yahoo.com','',11,1,3),(133,'2019-10-20',27,'Web App Development','[{\"changed\": {\"fields\": [\"cost_per_day\"]}}]',14,1,2),(134,'2019-10-20',1,'Research','[{\"changed\": {\"fields\": [\"cost_per_day\"]}}]',14,1,2),(135,'2019-10-26',28,'Quote Trial','[{\"added\": {}}]',14,1,1),(136,'2019-10-27',5,'Web Programming','[{\"changed\": {\"fields\": [\"image\"]}}]',9,1,2),(137,'2019-10-27',4,'Graphics Design','[{\"changed\": {\"fields\": [\"image\"]}}]',9,1,2),(138,'2019-10-27',3,'Copywriting & Presentation','[{\"changed\": {\"fields\": [\"image\"]}}]',9,1,2),(139,'2019-10-27',2,'Business Content','[{\"changed\": {\"fields\": [\"image\"]}}]',9,1,2),(140,'2019-10-27',1,'Academics','[{\"changed\": {\"fields\": [\"image\"]}}]',9,1,2),(141,'2019-10-27',1,'<p style=\"text-align:justify\"><u><u>Welcome to Sma','[{\"added\": {}}]',28,1,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(13) DEFAULT NULL,
  `model` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (8,'Accounts','candidate'),(9,'Accounts','categories'),(11,'Accounts','customuser'),(10,'Accounts','finder'),(25,'Accounts','project_handlers'),(26,'Accounts','project_managers'),(28,'Accounts','terms'),(27,'Jobs','customize'),(13,'Jobs','deadline'),(12,'Jobs','jobs'),(15,'Jobs','order'),(17,'Jobs','stage'),(14,'Jobs','subcategory'),(16,'Jobs','workload'),(18,'account','emailaddress'),(19,'account','emailconfirmation'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(7,'home','dashboard'),(23,'openid','openidnonce'),(24,'openid','openidstore'),(5,'sessions','session'),(6,'sites','site'),(20,'socialaccount','socialaccount'),(21,'socialaccount','socialapp'),(22,'socialaccount','socialtoken');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(13) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-09-21'),(2,'contenttypes','0002_remove_content_type_name','2019-09-21'),(3,'auth','0001_initial','2019-09-21'),(4,'auth','0002_alter_permission_name_max_length','2019-09-21'),(5,'auth','0003_alter_user_email_max_length','2019-09-21'),(6,'auth','0004_alter_user_username_opts','2019-09-21'),(7,'auth','0005_alter_user_last_login_null','2019-09-21'),(8,'auth','0006_require_contenttypes_0002','2019-09-21'),(9,'auth','0007_alter_validators_add_error_messages','2019-09-21'),(10,'auth','0008_alter_user_username_max_length','2019-09-21'),(11,'auth','0009_alter_user_last_name_max_length','2019-09-21'),(12,'Accounts','0001_initial','2019-09-21'),(13,'Accounts','0002_categories_about','2019-09-21'),(14,'Jobs','0001_initial','2019-09-21'),(15,'Jobs','0002_auto_20190822_1207','2019-09-21'),(16,'Jobs','0003_auto_20190823_1727','2019-09-21'),(17,'Jobs','0004_deadline','2019-09-21'),(18,'Jobs','0005_auto_20190824_1918','2019-09-21'),(19,'Jobs','0006_subcategory','2019-09-21'),(20,'Jobs','0007_auto_20190901_1737','2019-09-21'),(21,'Jobs','0008_auto_20190901_1738','2019-09-21'),(22,'Jobs','0009_subcategory','2019-09-21'),(23,'Jobs','0010_auto_20190901_2043','2019-09-21'),(24,'Jobs','0011_auto_20190901_2123','2019-09-21'),(25,'Jobs','0012_order_workload','2019-09-21'),(26,'Jobs','0013_auto_20190917_0921','2019-09-21'),(27,'Jobs','0014_order_workload','2019-09-21'),(28,'Jobs','0015_auto_20190917_0934','2019-09-21'),(29,'Jobs','0016_order_workload','2019-09-21'),(30,'Jobs','0017_auto_20190917_0937','2019-09-21'),(31,'Jobs','0018_order_user_id','2019-09-21'),(32,'Jobs','0019_stage','2019-09-21'),(33,'account','0001_initial','2019-09-21'),(34,'account','0002_email_max_length','2019-09-21'),(35,'admin','0001_initial','2019-09-21'),(36,'admin','0002_logentry_remove_auto_add','2019-09-21'),(37,'admin','0003_logentry_add_action_flag_choices','2019-09-21'),(38,'openid','0001_initial','2019-09-21'),(39,'sessions','0001_initial','2019-09-21'),(40,'sites','0001_initial','2019-09-21'),(41,'sites','0002_alter_domain_unique','2019-09-21'),(42,'socialaccount','0001_initial','2019-09-21'),(43,'socialaccount','0002_token_max_lengths','2019-09-21'),(44,'socialaccount','0003_extra_data_default_dict','2019-09-21'),(45,'Accounts','0003_customuser_referal_code','2019-09-21'),(46,'Accounts','0004_customuser_referal_point','2019-09-21'),(47,'Accounts','0005_remove_customuser_candidate','2019-09-21'),(48,'Jobs','0020_order_abbr','2019-09-21'),(49,'auth','0010_alter_group_name_max_length','2019-09-22'),(50,'auth','0011_update_proxy_permissions','2019-09-22'),(51,'Accounts','0006_project_handlers_project_managers','2019-09-25'),(52,'Jobs','0021_order_status','2019-09-28'),(53,'Accounts','0007_auto_20190930_0015','2019-09-29'),(54,'Accounts','0008_customuser_profile_picture','2019-10-19'),(55,'Jobs','0022_subcategory_min_date','2019-10-20'),(56,'Jobs','0023_auto_20191020_1134','2019-10-20'),(57,'Jobs','0024_auto_20191020_1134','2019-10-20'),(58,'Jobs','0025_customize','2019-10-20'),(59,'Jobs','0026_subcategory_quote','2019-10-26'),(60,'Accounts','0009_categories_image','2019-10-27'),(61,'Accounts','0010_terms','2019-10-27'),(62,'Accounts','0011_auto_20191027_1106','2019-10-27'),(63,'Accounts','0012_terms_name','2019-10-27');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` text,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('p65qbjnykt9lpjlp7gcr6k4zb5mgkynb','MGMwOTg3ZGE4MTc2YTI1ODVmMWE2MGFkYzAxNjY4ZmFlOGFmM2QwZDp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMjBkZWIyMDNiZjc5NjY0MGZmZWViYTVjMGYxZDY5YzI5MmQzNTM4IiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2019-10-05'),('yr81kj6fxbwoz5phqsdqb5c9k4c8eu6j','ZDljNzI5NWUwZmUxM2UzMTQ3OGUzOGUwNmQxODIxMGM0NzhkYTU4NTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNjFkMTgzNWIxNDQ3ZDc5YzdhNTNmOGQ5Y2E1NWVhMjdlYzM3NWNkIiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2019-10-19'),('zup8g209v45v3j8il4y0mddvx3pd2wy0','MWIyYzNkZWQxYjFjZGU3OWU0ZWY2N2E1OGU1N2E5MzZmMWEzNjI0Njp7ImNhdGVnb3J5IjoiQWNhZGVtaWNzIiwidG90YWwiOjI1MDAuMCwic3ViY2F0ZWdvcnkiOiJSZXNlYXJjaCIsInN1Yl9wcmljaW5nIjoiXHUyMGE2MSwwMDAuMDAiLCJzdWJfcHJpY2UiOjEwMDAuMCwiZGVhZF9hbW91bnQiOiJcdTIwYTYxLDUwMC4wMCIsImFtb3VudCI6MTUwMC4wLCJkZWFkbGluZXMiOiIxNS0zMGRheXMiLCJfYXV0aF91c2VyX2lkIjoiOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDYxZDE4MzViMTQ0N2Q3OWM3YTUzZjhkOWNhNTVlYTI3ZWMzNzVjZCIsIl9zZXNzaW9uX2V4cGlyeSI6MH0=','2019-10-28'),('ldpmbkhgjt2qyuj1qtyx2v83naht632s','OGIzZGE2MjczMGI4NjhkMjhiYWE4MjViZTc0MzM4NGU3MTUwMGFiNjp7ImNhdGVnb3J5IjoiQnVzaW5lc3MgQ29udGVudCIsInRvdGFsIjowLCJzdWJjYXRlZ29yeSI6IkJ1c2luZXNzIFBsYW5zIGFuZCBQcm9wb3NhbHMiLCJzdWJfcHJpY2luZyI6Ilx1MjBhNjEsMDAwLjAwIiwic3ViX3ByaWNlIjoxMDAwLjAsIl9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNjFkMTgzNWIxNDQ3ZDc5YzdhNTNmOGQ5Y2E1NWVhMjdlYzM3NWNkIiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2019-10-28'),('011i8mrvmpe53x5m6i07leubfl2zv38o','ZDljNzI5NWUwZmUxM2UzMTQ3OGUzOGUwNmQxODIxMGM0NzhkYTU4NTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNjFkMTgzNWIxNDQ3ZDc5YzdhNTNmOGQ5Y2E1NWVhMjdlYzM3NWNkIiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2019-10-29'),('hk96ustodcsx4n5fyofeb2jokwisqd6u','OTlhNTA0OGMzOTRjZmU2YjZmNDQzNjI3ODljMjk2NGI1MDE3ZTYzYjp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNjFkMTgzNWIxNDQ3ZDc5YzdhNTNmOGQ5Y2E1NWVhMjdlYzM3NWNkIiwiX3Nlc3Npb25fZXhwaXJ5IjowLCJjYXRlZ29yeSI6IkJ1c2luZXNzIENvbnRlbnQiLCJ0b3RhbCI6MCwic3ViY2F0ZWdvcnkiOiJCdXNpbmVzcyBQbGFucyBhbmQgUHJvcG9zYWxzIiwic3ViX3ByaWNpbmciOiJcdTIwYTYxLDAwMC4wMCIsInN1Yl9wcmljZSI6MTAwMC4wLCJkZWFkX2Ftb3VudCI6Ilx1MjBhNjMsMDAwLjAwIiwiYW1vdW50IjozMDAwLjAsImRlYWRsaW5lcyI6IjEwLTE0ZGF5cyJ9','2019-11-03'),('le2bygw09dq3mfoo2ka76vfg8806uou3','NzVhODJkNTAyYjc1Yjg1NjNkMjBlNTY2MWY5Yzg4M2I5NTIwYzhlYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNjFkMTgzNWIxNDQ3ZDc5YzdhNTNmOGQ5Y2E1NWVhMjdlYzM3NWNkIiwiX3Nlc3Npb25fZXhwaXJ5IjowLCJjYXRlZ29yeSI6IkFjYWRlbWljcyIsInRvdGFsIjowLCJzdWJjYXRlZ29yeSI6IlJlc2VhcmNoIiwic3ViX3ByaWNpbmciOiJcdTIwYTYxLDAwMC4wMCIsInN1Yl9wcmljZSI6MTAwMC4wfQ==','2019-11-03'),('wt9y6i8210fpfp8psibzlylvyku45yut','ZDczZThjZDgxMWQ2MzdhZDIzNDAyMzVhNjYwYzVjN2EzNjhhYzBhYjp7InN1YmNhdGVnb3J5IjoiUmVzZWFyY2giLCJzdWJfcHJpY2luZyI6Ilx1MjBhNjEsMDAwLjAwIiwic3ViX3ByaWNlIjoxMDAwLjAsImRlYWRfYW1vdW50IjoiXHUyMGE2Miw1MDAuMDAiLCJhbW91bnQiOjI1MDAuMCwiZGVhZGxpbmVzIjoiNSBkYXlzIEAiLCJ0b3RhbCI6MzUwMC4wLCJjYXRlZ29yeSI6IkFjYWRlbWljcyIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MGVkZGVjYWNjNzdjYWRmY2M5NWRjMTY2NDVkODUxNDllYzI5M2U5In0=','2019-11-10');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(11) DEFAULT NULL,
  `domain` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openid_openidnonce`
--

DROP TABLE IF EXISTS `openid_openidnonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openid_openidnonce` (
  `id` varchar(0) DEFAULT NULL,
  `server_url` varchar(0) DEFAULT NULL,
  `timestamp` varchar(0) DEFAULT NULL,
  `salt` varchar(0) DEFAULT NULL,
  `date_created` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openid_openidnonce`
--

LOCK TABLES `openid_openidnonce` WRITE;
/*!40000 ALTER TABLE `openid_openidnonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `openid_openidnonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openid_openidstore`
--

DROP TABLE IF EXISTS `openid_openidstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openid_openidstore` (
  `id` varchar(0) DEFAULT NULL,
  `server_url` varchar(0) DEFAULT NULL,
  `handle` varchar(0) DEFAULT NULL,
  `secret` varchar(0) DEFAULT NULL,
  `issued` varchar(0) DEFAULT NULL,
  `lifetime` varchar(0) DEFAULT NULL,
  `assoc_type` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openid_openidstore`
--

LOCK TABLES `openid_openidstore` WRITE;
/*!40000 ALTER TABLE `openid_openidstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `openid_openidstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialaccount_socialaccount`
--

DROP TABLE IF EXISTS `socialaccount_socialaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialaccount_socialaccount` (
  `id` varchar(0) DEFAULT NULL,
  `provider` varchar(0) DEFAULT NULL,
  `uid` varchar(0) DEFAULT NULL,
  `last_login` varchar(0) DEFAULT NULL,
  `date_joined` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `extra_data` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialaccount_socialaccount`
--

LOCK TABLES `socialaccount_socialaccount` WRITE;
/*!40000 ALTER TABLE `socialaccount_socialaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialaccount_socialaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialaccount_socialapp`
--

DROP TABLE IF EXISTS `socialaccount_socialapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialaccount_socialapp` (
  `id` varchar(0) DEFAULT NULL,
  `provider` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL,
  `client_id` varchar(0) DEFAULT NULL,
  `key` varchar(0) DEFAULT NULL,
  `secret` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialaccount_socialapp`
--

LOCK TABLES `socialaccount_socialapp` WRITE;
/*!40000 ALTER TABLE `socialaccount_socialapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialaccount_socialapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialaccount_socialapp_sites`
--

DROP TABLE IF EXISTS `socialaccount_socialapp_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialaccount_socialapp_sites` (
  `id` varchar(0) DEFAULT NULL,
  `socialapp_id` varchar(0) DEFAULT NULL,
  `site_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialaccount_socialapp_sites`
--

LOCK TABLES `socialaccount_socialapp_sites` WRITE;
/*!40000 ALTER TABLE `socialaccount_socialapp_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialaccount_socialapp_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialaccount_socialtoken`
--

DROP TABLE IF EXISTS `socialaccount_socialtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialaccount_socialtoken` (
  `id` varchar(0) DEFAULT NULL,
  `token` varchar(0) DEFAULT NULL,
  `token_secret` varchar(0) DEFAULT NULL,
  `expires_at` varchar(0) DEFAULT NULL,
  `account_id` varchar(0) DEFAULT NULL,
  `app_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialaccount_socialtoken`
--

LOCK TABLES `socialaccount_socialtoken` WRITE;
/*!40000 ALTER TABLE `socialaccount_socialtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialaccount_socialtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(27) DEFAULT NULL,
  `seq` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',63),('django_content_type',28),('auth_permission',112),('Accounts_finder',0),('Accounts_candidate',0),('Jobs_jobs',0),('Jobs_deadline',8),('account_emailaddress',11),('django_admin_log',141),('django_site',1),('socialaccount_socialapp',0),('socialaccount_socialaccount',0),('auth_group',0),('Jobs_stage',22),('Accounts_project_handlers',2),('Accounts_project_managers',2),('Jobs_workload',23),('Jobs_order',8),('Accounts_customuser',12),('Jobs_customize',4),('Jobs_subcategory',28),('Accounts_categories',5),('Accounts_terms',1);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:20:34
