SET AUTOCOMMIT = 0;
START TRANSACTION;

--
-- Database: `mvc`
--
CREATE DATABASE IF NOT EXISTS `mvc` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mvc`;

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`email` VARCHAR(255) NOT NULL UNIQUE,
	`first_name` VARCHAR(255) NOT NULL,
	`last_name` VARCHAR(255) NOT NULL,
	`password` CHAR(128) NOT NULL,
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table data for table `users`
--
INSERT INTO `users` (`email`, `first_name`, `last_name`, `password`)
VALUES
('john.doe@example.com', 'John', 'Doe', '8a09fc6c715ced898b1eda73b95687f101ed849bb52becdfaa4f03189eadf2b4c673ea61a6d199710d0fc95ecdb49f9dcb31b733188fe5ef62caefe151a34683'),
('jane.doe@example.com', 'Jane', 'Doe', '8a09fc6c715ced898b1eda73b95687f101ed849bb52becdfaa4f03189eadf2b4c673ea61a6d199710d0fc95ecdb49f9dcb31b733188fe5ef62caefe151a34683');

--
-- Table structure for table `tasks`
--
CREATE TABLE IF NOT EXISTS `tasks` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL UNIQUE,
	`description` TEXT NOT NULL,
	`author` INT(11) NOT NULL,
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

COMMIT;
