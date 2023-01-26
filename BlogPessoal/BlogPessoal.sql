-- MySQL Script generated by MySQL Workbench
-- Thu Jan 26 10:43:00 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_blog_pessoal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_blog_pessoal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_blog_pessoal` DEFAULT CHARACTER SET utf8 ;
USE `db_blog_pessoal` ;

-- -----------------------------------------------------
-- Table `db_blog_pessoal`.`tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blog_pessoal`.`tb_usuarios` (
  `id BIGINT` INT NOT NULL,
  `NOME` VARCHAR(255) NOT NULL,
  `USUARIO` VARCHAR(255) NOT NULL,
  `SENHA` VARCHAR(255) NOT NULL,
  `FOTO` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id BIGINT`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_blog_pessoal`.`tb_postagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blog_pessoal`.`tb_postagens` (
  `id BIGINT` INT NOT NULL AUTO_INCREMENT,
  `TITULO` VARCHAR(100) NOT NULL,
  `TEXTO` VARCHAR(100) NULL,
  `DATA` DATE NULL,
  `TEMA_ID BIGINT` INT NULL,
  `USUARIO ID_BIGINT` VARCHAR(45) NULL,
  PRIMARY KEY (`id BIGINT`),
  CONSTRAINT `postagens_FK_Usuarios`
    FOREIGN KEY (`id BIGINT`)
    REFERENCES `db_blog_pessoal`.`tb_usuarios` (`id BIGINT`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_blog_pessoal`.`tb_temas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blog_pessoal`.`tb_temas` (
  `id BIGINT` INT NOT NULL AUTO_INCREMENT,
  `DESCRICAO` VARCHAR(255) NULL,
  PRIMARY KEY (`id BIGINT`),
  CONSTRAINT `temas_FK_Postagens`
    FOREIGN KEY (`id BIGINT`)
    REFERENCES `db_blog_pessoal`.`tb_postagens` (`id BIGINT`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;