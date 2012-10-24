



-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Users'
-- 
-- ---

DROP TABLE IF EXISTS `Users`;
		
CREATE TABLE Users (
  id INTEGER PRIMARY KEY,
  email VARCHAR(64),
  password VARCHAR(64),
  name VARCHAR (64)
  );

-- ---
-- Table 'Tasks'
-- 
-- ---

DROP TABLE IF EXISTS `Tasks`;
		
CREATE TABLE Tasks (
  id INTEGER PRIMARY KEY,
  title VARCHAR(64),
  created_at DATETIME,
  completed_at DATETIME,
  user_id INTEGER
  );

-- ---
-- Foreign Keys 
-- ---

-- ---
-- Table Properties
-- ---


-- ---
-- Test Data
-- ---

-- INSERT INTO `Users` (`id`,`email`,`password`,`name`) VALUES
-- ('','','','');
-- INSERT INTO `Tasks` (`id`,`title`,`created_at`,`completed_at`,`user_id`) VALUES
-- ('','','','','');

