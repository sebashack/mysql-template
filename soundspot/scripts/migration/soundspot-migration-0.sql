-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema soundspot_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema soundspot_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `soundspot_db` ;
USE `soundspot_db` ;

-- -----------------------------------------------------
-- Table `soundspot_db`.`content_creator`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `soundspot_db`.`content_creator` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `nickname` VARCHAR(45) NOT NULL,
  `type` ENUM('Musician', 'Podcaster', 'Both') NOT NULL,
  `created_at` DATETIME NOT NULL,
  `preferred_language` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `birthdate` DATE NOT NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `nickname_UNIQUE` (`nickname` ASC) VISIBLE);


-- -----------------------------------------------------
-- Table `soundspot_db`.`show`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `soundspot_db`.`show` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(255) NULL,
  `content_creator_id` INT NOT NULL,
  `cover_image_link` VARCHAR(255) NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_show_content_creator_idx` (`content_creator_id` ASC) VISIBLE,
  CONSTRAINT `fk_show_content_creator`
    FOREIGN KEY (`content_creator_id`)
    REFERENCES `soundspot_db`.`content_creator` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `soundspot_db`.`album`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `soundspot_db`.`album` (
  `id` INT NOT NULL,
  `created_at` DATETIME NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `release_date` DATE NOT NULL,
  `content_creator_id` INT NOT NULL,
  `cover_image_link` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_album_content_creator1_idx` (`content_creator_id` ASC) VISIBLE,
  CONSTRAINT `fk_album_content_creator1`
    FOREIGN KEY (`content_creator_id`)
    REFERENCES `soundspot_db`.`content_creator` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `soundspot_db`.`podcast_episode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `soundspot_db`.`podcast_episode` (
  `id` INT NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  `show_id` INT NOT NULL,
  `is_free` TINYINT NOT NULL,
  `duration` INT NOT NULL,
  `description` VARCHAR(255) NULL,
  `is_child_friendly` TINYINT NOT NULL,
  `season_number` INT NOT NULL,
  `episode_number` INT NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_podcast_episode_show1_idx` (`show_id` ASC) VISIBLE,
  CONSTRAINT `fk_podcast_episode_show1`
    FOREIGN KEY (`show_id`)
    REFERENCES `soundspot_db`.`show` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `soundspot_db`.`musical_piece`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `soundspot_db`.`musical_piece` (
  `id` INT NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  `duration` INT NOT NULL,
  `album_id` INT NOT NULL,
  `cover_image_link` VARCHAR(255) NULL,
  `is_child_friendly` TINYINT NOT NULL,
  `is_free` TINYINT NOT NULL,
  `rights_owner` VARCHAR(45) NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_musical_piece_album1_idx` (`album_id` ASC) VISIBLE,
  CONSTRAINT `fk_musical_piece_album1`
    FOREIGN KEY (`album_id`)
    REFERENCES `soundspot_db`.`album` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `soundspot_db`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `soundspot_db`.`user` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `nickname` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `preferred_language` VARCHAR(45) NOT NULL,
  `payment_method` ENUM("DebitCard", "CreditCard") NULL,
  `is_premium` TINYINT NOT NULL,
  `birthdate` DATE NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `nickname_UNIQUE` (`nickname` ASC) VISIBLE);


-- -----------------------------------------------------
-- Table `soundspot_db`.`music_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `soundspot_db`.`music_list` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `user_id` INT NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_music_list_user1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_music_list_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `soundspot_db`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `soundspot_db`.`podcast_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `soundspot_db`.`podcast_list` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `user_id` INT NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_podcast_list_user1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_podcast_list_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `soundspot_db`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `soundspot_db`.`podcast_list_entry`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `soundspot_db`.`podcast_list_entry` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `podcast_list_id` INT NOT NULL,
  `podcast_episode_id` INT NOT NULL,
  `created_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_podcast_list_entry_podcast_list1_idx` (`podcast_list_id` ASC) VISIBLE,
  INDEX `fk_podcast_list_entry_podcast_episode1_idx` (`podcast_episode_id` ASC) VISIBLE,
  CONSTRAINT `fk_podcast_list_entry_podcast_list1`
    FOREIGN KEY (`podcast_list_id`)
    REFERENCES `soundspot_db`.`podcast_list` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_podcast_list_entry_podcast_episode1`
    FOREIGN KEY (`podcast_episode_id`)
    REFERENCES `soundspot_db`.`podcast_episode` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `soundspot_db`.`music_list_entry`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `soundspot_db`.`music_list_entry` (
  `id` INT NOT NULL,
  `musical_piece_id` INT NOT NULL,
  `music_list_id` INT NOT NULL,
  `created_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_music_list_entry_musical_piece1_idx` (`musical_piece_id` ASC) VISIBLE,
  INDEX `fk_music_list_entry_music_list1_idx` (`music_list_id` ASC) VISIBLE,
  CONSTRAINT `fk_music_list_entry_musical_piece1`
    FOREIGN KEY (`musical_piece_id`)
    REFERENCES `soundspot_db`.`musical_piece` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_music_list_entry_music_list1`
    FOREIGN KEY (`music_list_id`)
    REFERENCES `soundspot_db`.`music_list` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `soundspot_db`.`featuring_artist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `soundspot_db`.`featuring_artist` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `musical_piece_id` INT NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_featuring_artist_musical_piece1_idx` (`musical_piece_id` ASC) VISIBLE,
  CONSTRAINT `fk_featuring_artist_musical_piece1`
    FOREIGN KEY (`musical_piece_id`)
    REFERENCES `soundspot_db`.`musical_piece` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `soundspot_db`.`participant`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `soundspot_db`.`participant` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `podcast_episode_id` INT NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_participant_podcast_episode1_idx` (`podcast_episode_id` ASC) VISIBLE,
  CONSTRAINT `fk_participant_podcast_episode1`
    FOREIGN KEY (`podcast_episode_id`)
    REFERENCES `soundspot_db`.`podcast_episode` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `soundspot_db`.`music_like`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `soundspot_db`.`music_like` (
  `user_id` INT NOT NULL,
  `musical_piece_id` INT NOT NULL,
  `is_unliked` TINYINT NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  INDEX `fk_music_like_user1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_music_like_musical_piece1_idx` (`musical_piece_id` ASC) VISIBLE,
  CONSTRAINT `fk_music_like_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `soundspot_db`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_music_like_musical_piece1`
    FOREIGN KEY (`musical_piece_id`)
    REFERENCES `soundspot_db`.`musical_piece` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `soundspot_db`.`podcast_like`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `soundspot_db`.`podcast_like` (
  `user_id` INT NOT NULL,
  `podcast_episode_id` INT NOT NULL,
  `is_unliked` TINYINT NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  INDEX `fk_podcast_like_user1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_podcast_like_podcast_episode1_idx` (`podcast_episode_id` ASC) VISIBLE,
  CONSTRAINT `fk_podcast_like_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `soundspot_db`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_podcast_like_podcast_episode1`
    FOREIGN KEY (`podcast_episode_id`)
    REFERENCES `soundspot_db`.`podcast_episode` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `soundspot_db`.`reproduction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `soundspot_db`.`reproduction` (
  `user_id` INT NOT NULL,
  `musical_piece_id` INT NOT NULL,
  `created_at` DATETIME NOT NULL,
  INDEX `fk_user_reproduction_user1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_user_reproduction_musical_piece1_idx` (`musical_piece_id` ASC) VISIBLE,
  CONSTRAINT `fk_user_reproduction_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `soundspot_db`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_reproduction_musical_piece1`
    FOREIGN KEY (`musical_piece_id`)
    REFERENCES `soundspot_db`.`musical_piece` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
