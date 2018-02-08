-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.6.17 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para dompdf
CREATE DATABASE IF NOT EXISTS `dompdf` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dompdf`;

-- Volcando estructura para tabla dompdf.login
CREATE TABLE IF NOT EXISTS `login` (
  `idU` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `pswd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idU`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dompdf.login: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT IGNORE INTO `login` (`idU`, `username`, `pswd`) VALUES
	(1, 'marman', '123456'),
	(2, 'jperez', 'qwertyui'),
	(3, 'ppablo', '1q2w3e4r');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;

-- Volcando estructura para tabla dompdf.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `edad` tinyint(2) NOT NULL,
  `sexo` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dompdf.usuarios: ~82 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT IGNORE INTO `usuarios` (`id`, `nombre`, `email`, `telefono`, `edad`, `sexo`) VALUES
	(1, 'Hugo Martínez Gutiérrez', 'ringhugos@gmail.com', '51512525', 85, 'M'),
	(2, 'Araceli Morales', 'araceli@gono.com', '3562635', 22, 'F'),
	(3, 'Antonio Molina', 'anton.gmail.com', '58967485', 33, 'M'),
	(4, 'Mario Medina', 'mario@gmail.com', '1599631', 26, 'M'),
	(5, 'María de los Ángeles', 'mariagfd@hotmail.com', '14785230', 24, 'F'),
	(6, 'Mónica benavides', 'monica_123@yahoo.com.mx', '10529630', 32, 'F'),
	(7, 'Luis carvajal', 'luis_m@hotmail.com', '1478998', 29, 'M'),
	(8, 'Karla Sánchez', 'karla_1999@aol.com', '20102010', 26, 'F'),
	(9, 'Hugo Martínez Gutiérrez', 'ringhugos@gmail.com', '51512525', 85, 'M'),
	(10, 'Araceli Morales', 'araceli@gono.com', '3562635', 22, 'F'),
	(11, 'Antonio Molina', 'anton.gmail.com', '58967485', 33, 'M'),
	(12, 'Mario Medina', 'mario@gmail.com', '1599631', 26, 'M'),
	(13, 'María de los Ángeles', 'mariagfd@hotmail.com', '14785230', 24, 'F'),
	(14, 'Mónica benavides', 'monica_123@yahoo.com.mx', '10529630', 32, 'F'),
	(15, 'Luis carvajal', 'luis_m@hotmail.com', '1478998', 29, 'M'),
	(16, 'Karla Sánchez', 'karla_1999@aol.com', '20102010', 26, 'F'),
	(17, 'Hugo Martínez Gutiérrez', 'ringhugos@gmail.com', '51512525', 85, 'M'),
	(18, 'Araceli Morales', 'araceli@gono.com', '3562635', 22, 'F'),
	(19, 'Antonio Molina', 'anton.gmail.com', '58967485', 33, 'M'),
	(20, 'Mario Medina', 'mario@gmail.com', '1599631', 26, 'M'),
	(21, 'María de los Ángeles', 'mariagfd@hotmail.com', '14785230', 24, 'F'),
	(22, 'Mónica benavides', 'monica_123@yahoo.com.mx', '10529630', 32, 'F'),
	(23, 'Luis carvajal', 'luis_m@hotmail.com', '1478998', 29, 'M'),
	(24, 'Karla Sánchez', 'karla_1999@aol.com', '20102010', 26, 'F'),
	(25, 'Hugo Martínez Gutiérrez', 'ringhugos@gmail.com', '51512525', 85, 'M'),
	(26, 'Araceli Morales', 'araceli@gono.com', '3562635', 22, 'F'),
	(27, 'Antonio Molina', 'anton.gmail.com', '58967485', 33, 'M'),
	(28, 'Mario Medina', 'mario@gmail.com', '1599631', 26, 'M'),
	(29, 'María de los Ángeles', 'mariagfd@hotmail.com', '14785230', 24, 'F'),
	(30, 'Mónica benavides', 'monica_123@yahoo.com.mx', '10529630', 32, 'F'),
	(31, 'Luis carvajal', 'luis_m@hotmail.com', '1478998', 29, 'M'),
	(32, 'Karla Sánchez', 'karla_1999@aol.com', '20102010', 26, 'F'),
	(33, 'Hugo Martínez Gutiérrez', 'ringhugos@gmail.com', '51512525', 85, 'M'),
	(34, 'Araceli Morales', 'araceli@gono.com', '3562635', 22, 'F'),
	(35, 'Antonio Molina', 'anton.gmail.com', '58967485', 33, 'M'),
	(36, 'Mario Medina', 'mario@gmail.com', '1599631', 26, 'M'),
	(37, 'María de los Ángeles', 'mariagfd@hotmail.com', '14785230', 24, 'F'),
	(38, 'Mónica benavides', 'monica_123@yahoo.com.mx', '10529630', 32, 'F'),
	(39, 'Luis carvajal', 'luis_m@hotmail.com', '1478998', 29, 'M'),
	(40, 'Karla Sánchez', 'karla_1999@aol.com', '20102010', 26, 'F'),
	(41, 'Hugo Martínez Gutiérrez', 'ringhugos@gmail.com', '51512525', 85, 'M'),
	(42, 'Araceli Morales', 'araceli@gono.com', '3562635', 22, 'F'),
	(43, 'Antonio Molina', 'anton.gmail.com', '58967485', 33, 'M'),
	(44, 'Mario Medina', 'mario@gmail.com', '1599631', 26, 'M'),
	(45, 'María de los Ángeles', 'mariagfd@hotmail.com', '14785230', 24, 'F'),
	(46, 'Mónica benavides', 'monica_123@yahoo.com.mx', '10529630', 32, 'F'),
	(47, 'Luis carvajal', 'luis_m@hotmail.com', '1478998', 29, 'M'),
	(48, 'Karla Sánchez', 'karla_1999@aol.com', '20102010', 26, 'F'),
	(49, 'Hugo Martínez Gutiérrez', 'ringhugos@gmail.com', '51512525', 85, 'M'),
	(50, 'Araceli Morales', 'araceli@gono.com', '3562635', 22, 'F'),
	(51, 'Antonio Molina', 'anton.gmail.com', '58967485', 33, 'M'),
	(52, 'Mario Medina', 'mario@gmail.com', '1599631', 26, 'M'),
	(53, 'María de los Ángeles', 'mariagfd@hotmail.com', '14785230', 24, 'F'),
	(54, 'Mónica benavides', 'monica_123@yahoo.com.mx', '10529630', 32, 'F'),
	(55, 'Luis carvajal', 'luis_m@hotmail.com', '1478998', 29, 'M'),
	(56, 'Karla Sánchez', 'karla_1999@aol.com', '20102010', 26, 'F'),
	(57, 'Hugo Martínez Gutiérrez', 'ringhugos@gmail.com', '51512525', 85, 'M'),
	(58, 'Hugo Martínez Gutiérrez', 'ringhugos@gmail.com', '51512525', 85, 'M'),
	(59, 'Araceli Morales', 'araceli@gono.com', '3562635', 22, 'F'),
	(60, 'Antonio Molina', 'anton.gmail.com', '58967485', 33, 'M'),
	(61, 'Mario Medina', 'mario@gmail.com', '1599631', 26, 'M'),
	(62, 'María de los Ángeles', 'mariagfd@hotmail.com', '14785230', 24, 'F'),
	(63, 'Mónica benavides', 'monica_123@yahoo.com.mx', '10529630', 32, 'F'),
	(64, 'Luis carvajal', 'luis_m@hotmail.com', '1478998', 29, 'M'),
	(65, 'Karla Sánchez', 'karla_1999@aol.com', '20102010', 26, 'F'),
	(66, 'Hugo Martínez Gutiérrez', 'ringhugos@gmail.com', '51512525', 85, 'M'),
	(67, 'Araceli Morales', 'araceli@gono.com', '3562635', 22, 'F'),
	(68, 'Antonio Molina', 'anton.gmail.com', '58967485', 33, 'M'),
	(69, 'Mario Medina', 'mario@gmail.com', '1599631', 26, 'M'),
	(70, 'María de los Ángeles', 'mariagfd@hotmail.com', '14785230', 24, 'F'),
	(71, 'Mónica benavides', 'monica_123@yahoo.com.mx', '10529630', 32, 'F'),
	(72, 'Luis carvajal', 'luis_m@hotmail.com', '1478998', 29, 'M'),
	(73, 'Karla Sánchez', 'karla_1999@aol.com', '20102010', 26, 'F'),
	(74, 'Hugo Martínez Gutiérrez', 'ringhugos@gmail.com', '51512525', 85, 'M'),
	(75, 'Araceli Morales', 'araceli@gono.com', '3562635', 22, 'F'),
	(76, 'Antonio Molina', 'anton.gmail.com', '58967485', 33, 'M'),
	(77, 'Mario Medina', 'mario@gmail.com', '1599631', 26, 'M'),
	(78, 'María de los Ángeles', 'mariagfd@hotmail.com', '14785230', 24, 'F'),
	(79, 'Mónica benavides', 'monica_123@yahoo.com.mx', '10529630', 32, 'F'),
	(80, 'Luis carvajal', 'luis_m@hotmail.com', '1478998', 29, 'M'),
	(81, 'Karla Sánchez', 'karla_1999@aol.com', '20102010', 26, 'F'),
	(82, 'Hugo Martínez Gutiérrez', 'ringhugos@gmail.com', '51512525', 85, 'M');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
