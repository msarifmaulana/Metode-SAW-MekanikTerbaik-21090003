/*
SQLyog Ultimate v9.50 
MySQL - 5.5.5-10.4.22-MariaDB : Database - saw_laravel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`saw_laravel` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `saw_laravel`;

/*Table structure for table `tb_alternatif` */

DROP TABLE IF EXISTS `tb_alternatif`;

CREATE TABLE `tb_alternatif` (
  `kode_alternatif` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_alternatif` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` double DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_alternatif`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_alternatif` */

insert  into `tb_alternatif`(`kode_alternatif`,`nama_alternatif`,`keterangan`,`total`,`rank`,`created_at`,`updated_at`) values ('A01','Alternatif 1','-',0.52777777777778,8,'2022-05-11 04:20:42','2022-05-15 00:56:08'),('A02','Alternatif 2','-',0.60555555555556,4,'2022-05-11 04:20:42','2022-05-15 00:56:08'),('A03','Alternatif 3','-',0.57222222222222,5,'2022-05-11 04:20:42','2022-05-15 00:56:08'),('A04','Alternatif 4','-',0.52962962962963,7,'2022-05-11 04:20:42','2022-05-15 00:56:08'),('A05','Alternatif 5','-',0.76666666666667,1,'2022-05-11 04:20:42','2022-05-15 00:56:08'),('A06','Alternatif 6','-',0.56296296296296,6,'2022-05-11 04:20:42','2022-05-15 00:56:08'),('A07','Alternatif 7','-',0.62777777777778,3,'2022-05-11 04:20:42','2022-05-15 00:56:08'),('A08','Alternatif 8','-',0.72777777777778,2,'2022-05-11 04:20:43','2022-05-15 00:56:08');

/*Table structure for table `tb_crisp` */

DROP TABLE IF EXISTS `tb_crisp`;

CREATE TABLE `tb_crisp` (
  `id_crisp` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode_kriteria` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_crisp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_crisp`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_crisp` */

insert  into `tb_crisp`(`id_crisp`,`kode_kriteria`,`nama_crisp`,`nilai`,`created_at`,`updated_at`) values (1,'C01','Sangat Rendah',1,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(2,'C01','Rendah',2,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(3,'C01','Cukup',3,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(4,'C01','Tinggi',4,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(5,'C01','Sangat Tinggi',5,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(6,'C02','Sangat Rendah',1,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(7,'C02','Rendah',2,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(8,'C02','Cukup',3,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(9,'C02','Tinggi',4,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(10,'C02','Sangat Tinggi',5,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(11,'C03','Sangat Rendah',1,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(12,'C03','Rendah',2,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(13,'C03','Cukup',3,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(14,'C03','Tinggi',4,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(15,'C03','Sangat Tinggi',5,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(16,'C04','Sangat Rendah',1,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(17,'C04','Rendah',2,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(18,'C04','Cukup',3,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(19,'C04','Tinggi',4,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(20,'C04','Sangat Tinggi',5,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(21,'C05','Sangat Rendah',1,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(22,'C05','Rendah',2,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(23,'C05','Cukup',3,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(24,'C05','Tinggi',4,'2022-05-11 04:20:42','2022-05-11 04:20:42'),(25,'C05','Sangat Tinggi',5,'2022-05-11 04:20:42','2022-05-11 04:20:42');

/*Table structure for table `tb_kriteria` */

DROP TABLE IF EXISTS `tb_kriteria`;

CREATE TABLE `tb_kriteria` (
  `kode_kriteria` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kriteria` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atribut` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bobot` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode_kriteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_kriteria` */

insert  into `tb_kriteria`(`kode_kriteria`,`nama_kriteria`,`atribut`,`bobot`,`created_at`,`updated_at`) values ('C01','Kriteria 1','cost',2,'2022-05-11 04:20:42','2022-05-15 00:50:40'),('C02','Kriteria 2','benefit',3,'2022-05-11 04:20:42','2022-05-11 04:20:42'),('C03','Kriteria 3','benefit',1,'2022-05-11 04:20:42','2022-05-11 04:20:42'),('C04','Kriteria 4','benefit',2,'2022-05-11 04:20:42','2022-05-11 04:20:42'),('C05','Kriteria 5','benefit',1,'2022-05-11 04:20:42','2022-05-11 04:20:42');

/*Table structure for table `tb_rel_alternatif` */

DROP TABLE IF EXISTS `tb_rel_alternatif`;

CREATE TABLE `tb_rel_alternatif` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode_alternatif` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_kriteria` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_crisp` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_rel_alternatif` */

insert  into `tb_rel_alternatif`(`ID`,`kode_alternatif`,`kode_kriteria`,`id_crisp`,`created_at`,`updated_at`) values (1,'A01','C01',5,NULL,NULL),(2,'A01','C02',7,NULL,NULL),(3,'A01','C03',12,NULL,NULL),(4,'A01','C04',20,NULL,NULL),(5,'A01','C05',23,NULL,NULL),(6,'A02','C01',1,NULL,NULL),(7,'A02','C02',9,NULL,NULL),(8,'A02','C03',12,NULL,NULL),(9,'A02','C04',16,NULL,NULL),(10,'A02','C05',21,NULL,NULL),(11,'A03','C01',2,NULL,NULL),(12,'A03','C02',7,NULL,NULL),(13,'A03','C03',15,NULL,NULL),(14,'A03','C04',18,NULL,NULL),(15,'A03','C05',23,NULL,NULL),(16,'A04','C01',3,NULL,NULL),(17,'A04','C02',7,NULL,NULL),(18,'A04','C03',14,NULL,NULL),(19,'A04','C04',19,NULL,NULL),(20,'A04','C05',22,NULL,NULL),(21,'A05','C01',2,NULL,NULL),(22,'A05','C02',10,NULL,NULL),(23,'A05','C03',14,NULL,NULL),(24,'A05','C04',19,NULL,NULL),(25,'A05','C05',22,NULL,NULL),(26,'A06','C01',3,NULL,NULL),(27,'A06','C02',9,NULL,NULL),(28,'A06','C03',11,NULL,NULL),(29,'A06','C04',17,NULL,NULL),(30,'A06','C05',24,NULL,NULL),(31,'A07','C01',2,NULL,NULL),(32,'A07','C02',10,NULL,NULL),(33,'A07','C03',13,NULL,NULL),(34,'A07','C04',17,NULL,NULL),(35,'A07','C05',21,NULL,NULL),(36,'A08','C01',1,NULL,NULL),(37,'A08','C02',9,NULL,NULL),(38,'A08','C03',13,NULL,NULL),(39,'A08','C04',17,NULL,NULL),(40,'A08','C05',23,NULL,NULL);

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id_user` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_user` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id_user`,`nama_user`,`username`,`password`,`level`,`status_user`,`created_at`,`updated_at`) values (1,'Administrator','admin','$2y$10$/yUoYaW2wKyxfX3/1THiGuSyZoZaMdlZ5KjjxDzM6b0LLU7VQE3IW','admin',1,NULL,NULL),(2,'User','user','$2y$10$lqiL4pyahF30e.AO/RL9ReEbZuf9gVQFTFTuGhpbaFKu/kN2l18k.','user',1,NULL,NULL),(3,'herdi','herdi','$2y$10$/A1L2wigoLJZtrG45LjB9.J56aeakCJfTNQKpAbJXb1iC36t2CFKy','user',1,'2022-07-09 12:42:48','2022-07-09 12:42:48');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
