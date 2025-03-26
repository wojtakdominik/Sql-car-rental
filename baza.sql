-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Pojazdy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pojazdy` (
  `id_pojazdu` INT NOT NULL,
  `marka` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `rocznik` DATE NULL,
  `rezerwacja_poczatek` DATE NULL,
  `rezerwacja_koniec` DATE NULL,
  `pracownik_id` INT NULL,
  `cena` DECIMAL NULL,
  `kaucja` DECIMAL NULL,
  PRIMARY KEY (`id_pojazdu`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Miejsce`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Miejsce` (
  `id_miejsca` INT NOT NULL,
  `ulica` VARCHAR(45) NULL,
  `numer` INT NULL,
  `kod` CHAR(6) NULL,
  PRIMARY KEY (`id_miejsca`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pracownik`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pracownik` (
  `id_pracownika` INT NOT NULL,
  `imie` VARCHAR(45) NULL,
  `nazwisko` VARCHAR(45) NULL,
  `stanowisko` VARCHAR(45) NULL,
  `telefon` CHAR(12) NULL,
  `pensja` DECIMAL NULL,
  PRIMARY KEY (`id_pracownika`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Klient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Klient` (
  `id_klienta` INT NOT NULL,
  `imie` VARCHAR(45) NULL,
  `nazwisko` VARCHAR(45) NULL,
  `telefon` CHAR(12) NULL,
  `pesel` CHAR(11) NULL,
  PRIMARY KEY (`id_klienta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Wypozyczenia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Wypozyczenia` (
  `id_wypozyczenia` INT NOT NULL,
  `rezerwacja_poczatek` DATE NULL,
  `rezerwacja_koniec` DATE NULL,
  `suma` DECIMAL NULL,
  `Klient_id_klienta` INT NOT NULL,
  `Pracownik_id_pracownika` INT NOT NULL,
  `Pojazdy_id_pojazdu` INT NOT NULL,
  `Miejsce_id_miejsca` INT NOT NULL,
  `Miejsce_id_miejsca1` INT NOT NULL,
  `Pracownik_id_pracownika1` INT NOT NULL,
  PRIMARY KEY (`id_wypozyczenia`, `Klient_id_klienta`, `Pracownik_id_pracownika`, `Pojazdy_id_pojazdu`, `Miejsce_id_miejsca`, `Miejsce_id_miejsca1`, `Pracownik_id_pracownika1`),
  INDEX `fk_Wypożyczenia_Klient_idx` (`Klient_id_klienta` ASC) VISIBLE,
  INDEX `fk_Wypożyczenia_Pracownik1_idx` (`Pracownik_id_pracownika` ASC) VISIBLE,
  INDEX `fk_Wypożyczenia_Pojazdy1_idx` (`Pojazdy_id_pojazdu` ASC) VISIBLE,
  INDEX `fk_Wypożyczenia_Miejsce1_idx` (`Miejsce_id_miejsca` ASC) VISIBLE,
  INDEX `fk_Wypożyczenia_Miejsce2_idx` (`Miejsce_id_miejsca1` ASC) VISIBLE,
  INDEX `fk_Wypożyczenia_Pracownik2_idx` (`Pracownik_id_pracownika1` ASC) VISIBLE,
  CONSTRAINT `fk_Wypożyczenia_Klient`
    FOREIGN KEY (`Klient_id_klienta`)
    REFERENCES `mydb`.`Klient` (`id_klienta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Wypożyczenia_Pracownik1`
    FOREIGN KEY (`Pracownik_id_pracownika`)
    REFERENCES `mydb`.`Pracownik` (`id_pracownika`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Wypożyczenia_Pojazdy1`
    FOREIGN KEY (`Pojazdy_id_pojazdu`)
    REFERENCES `mydb`.`Pojazdy` (`id_pojazdu`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Wypożyczenia_Miejsce1`
    FOREIGN KEY (`Miejsce_id_miejsca`)
    REFERENCES `mydb`.`Miejsce` (`id_miejsca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Wypożyczenia_Miejsce2`
    FOREIGN KEY (`Miejsce_id_miejsca1`)
    REFERENCES `mydb`.`Miejsce` (`id_miejsca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Wypożyczenia_Pracownik2`
    FOREIGN KEY (`Pracownik_id_pracownika1`)
    REFERENCES `mydb`.`Pracownik` (`id_pracownika`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
