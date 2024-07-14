SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`team`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`team` (
  `team_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(15) NOT NULL,
  `motto` TEXT NULL,
  `established_year` INT NULL,
  `description` TEXT NULL,
  PRIMARY KEY (`team_id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`player`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`player` (
  `idplayer` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `height` INT NOT NULL,
  `weight` INT NOT NULL,
  `position` VARCHAR(15) NOT NULL,
  `skills` TEXT NULL,
  `biography` TEXT NULL,
  `description` TEXT NOT NULL,
  `team_id` INT NOT NULL,
  PRIMARY KEY (`idplayer`),
  INDEX `fk_player_team_idx` (`team_id` ASC) VISIBLE,
  CONSTRAINT `fk_player_team`
    FOREIGN KEY (`team_id`)
    REFERENCES `mydb`.`team` (`team_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`team_members`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`team_members` (
  `character_id` INT NOT NULL,
  `join_year` INT NOT NULL,
  `team_id` INT NOT NULL,
  PRIMARY KEY (`character_id`, `team_id`),
  INDEX `fk_team_members_team_idx` (`team_id` ASC) VISIBLE,
  INDEX `fk_team_members_character_idx` (`character_id` ASC) VISIBLE,
  CONSTRAINT `fk_team_members_team`
    FOREIGN KEY (`team_id`)
    REFERENCES `mydb`.`team` (`team_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_team_members_character`
    FOREIGN KEY (`character_id`)
    REFERENCES `mydb`.`player` (`idplayer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`match`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`match` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `team_a_id` INT NOT NULL,
  `team_b_id` INT NOT NULL,
  `date` DATE NULL,
  `score_team_a` INT NULL,
  `score_team_b` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_match_team_a_idx` (`team_a_id` ASC) VISIBLE,
  INDEX `fk_match_team_b_idx` (`team_b_id` ASC) VISIBLE,
  CONSTRAINT `fk_match_team_a`
    FOREIGN KEY (`team_a_id`)
    REFERENCES `mydb`.`team` (`team_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_match_team_b`
    FOREIGN KEY (`team_b_id`)
    REFERENCES `mydb`.`team` (`team_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`image`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`image` (
  `idimage` INT NOT NULL AUTO_INCREMENT,
  `image_data` BLOB NULL,
  `description` TEXT NULL,
  `player_id` INT NULL,
  `team_id` INT NULL,
  PRIMARY KEY (`idimage`),
  INDEX `fk_image_player1_idx` (`player_id` ASC) VISIBLE,
  INDEX `fk_image_team_idx` (`team_id` ASC) VISIBLE,
  CONSTRAINT `fk_image_player1`
    FOREIGN KEY (`player_id`)
    REFERENCES `mydb`.`player` (`idplayer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_image_team`
    FOREIGN KEY (`team_id`)
    REFERENCES `mydb`.`team` (`team_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
