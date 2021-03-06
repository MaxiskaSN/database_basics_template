-- MySQL Script generated by MySQL Workbench
-- Sun Jan 17 23:03:16 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`User` ;

CREATE TABLE IF NOT EXISTS `mydb`.`User` (
  `login` VARCHAR(30) NOT NULL,
  `email` VARCHAR(30) NOT NULL,
  `password` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`login`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Support`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Support` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Support` (
  `theme` VARCHAR(45) NOT NULL,
  `question` VARCHAR(2000) NOT NULL,
  `TicketID` INT NOT NULL,
  `User_login` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`theme`),
  INDEX `fk_Support_User_idx` (`User_login` ASC) VISIBLE,
  CONSTRAINT `fk_Support_User`
    FOREIGN KEY (`User_login`)
    REFERENCES `mydb`.`User` (`login`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Role` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Role` (
  `type` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`type`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Category` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Category` (
  `Name` INT NOT NULL,
  `ID` VARCHAR(45) NULL,
  PRIMARY KEY (`Name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Timelapse`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Timelapse` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Timelapse` (
  `From` INT NOT NULL,
  `To` INT NOT NULL,
  PRIMARY KEY (`From`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Dataset`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Dataset` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Dataset` (
  `GUID` INT NOT NULL,
  `Category_Name` INT NOT NULL,
  `Timelapse_From` INT NOT NULL,
  PRIMARY KEY (`GUID`),
  INDEX `fk_Dataset_Category1_idx` (`Category_Name` ASC) VISIBLE,
  INDEX `fk_Dataset_Timelapse1_idx` (`Timelapse_From` ASC) VISIBLE,
  CONSTRAINT `fk_Dataset_Category1`
    FOREIGN KEY (`Category_Name`)
    REFERENCES `mydb`.`Category` (`Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Dataset_Timelapse1`
    FOREIGN KEY (`Timelapse_From`)
    REFERENCES `mydb`.`Timelapse` (`From`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Access`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Access` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Access` (
  `Role_type` VARCHAR(30) NOT NULL,
  `User_login` VARCHAR(30) NOT NULL,
  `Dataset_GUID` INT NOT NULL,
  INDEX `fk_Access_Role1_idx` (`Role_type` ASC) VISIBLE,
  INDEX `fk_Access_User1_idx` (`User_login` ASC) VISIBLE,
  INDEX `fk_Access_Dataset1_idx` (`Dataset_GUID` ASC) VISIBLE,
  CONSTRAINT `fk_Access_Role1`
    FOREIGN KEY (`Role_type`)
    REFERENCES `mydb`.`Role` (`type`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Access_User1`
    FOREIGN KEY (`User_login`)
    REFERENCES `mydb`.`User` (`login`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Access_Dataset1`
    FOREIGN KEY (`Dataset_GUID`)
    REFERENCES `mydb`.`Dataset` (`GUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Datafile`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Datafile` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Datafile` (
  `text` INT NOT NULL,
  `path` LONGTEXT NULL,
  `mimeTime` LONGTEXT NULL,
  `Dataset_GUID` INT NOT NULL,
  PRIMARY KEY (`text`),
  INDEX `fk_Datafile_Dataset1_idx` (`Dataset_GUID` ASC) VISIBLE,
  CONSTRAINT `fk_Datafile_Dataset1`
    FOREIGN KEY (`Dataset_GUID`)
    REFERENCES `mydb`.`Dataset` (`GUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Comment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Comment` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Comment` (
  `author` VARCHAR(45) NOT NULL,
  `parent` VARCHAR(45) NOT NULL,
  `body` VARCHAR(10000) NOT NULL,
  `Dataset_GUID` INT NOT NULL,
  PRIMARY KEY (`author`),
  INDEX `fk_Comment_Dataset1_idx` (`Dataset_GUID` ASC) VISIBLE,
  CONSTRAINT `fk_Comment_Dataset1`
    FOREIGN KEY (`Dataset_GUID`)
    REFERENCES `mydb`.`Dataset` (`GUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Metadata`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Metadata` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Metadata` (
  `Key` VARCHAR(45) NOT NULL,
  `Value` VARCHAR(45) NULL,
  `Dataset_GUID` INT NOT NULL,
  PRIMARY KEY (`Key`),
  INDEX `fk_Metadata_Dataset1_idx` (`Dataset_GUID` ASC) VISIBLE,
  CONSTRAINT `fk_Metadata_Dataset1`
    FOREIGN KEY (`Dataset_GUID`)
    REFERENCES `mydb`.`Dataset` (`GUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
