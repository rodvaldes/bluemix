-- MySQL dump 10.13  Distrib 5.1.73, for unknown-linux-gnu (x86_64)
--
-- Host: localhost    Database: realiscl_registro
-- ------------------------------------------------------
-- Server version	5.1.73-cll

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) DEFAULT NULL,
  `contenido` text,
  `autor` int(11) DEFAULT NULL,
  `categoria` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=194 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` (`id`, `titulo`, `contenido`, `autor`, `categoria`) VALUES (2,'prurebasd','asdfasasdzxlkvmxklbmxzkmvxkcvbmxzcmvxcl',2,0),(3,'laksmd','kasndakjnaskdjnasdnadfjnasdfkjnasdkfjnasdkjnfasjkld',2,0),(4,'dsacÃ±lasdkcÃ±sdlamc','almxlkasmxlasmxlkasmxklasxklmsxasdÃ±lamcsdÃ±kacmaÃ±dklsmcasdkmcdsac',2,0),(191,'fooo','<p>Recuerda limpiar las variables que recibes por GET y POST usando la funciÃƒÂ³n htmlspecialchars() que nos brinda PHP, esto lo que harÃƒÂ¡ es quitar caracteres especiales de HTML como son</p>',190,15),(193,'Prueba','Esto es una prueba! Hola :)',32,15);
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` (`id`, `categoria`) VALUES (1,'prueba categoria 1');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articulo` int(11) NOT NULL,
  `nombre` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `comentario` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` (`id`, `articulo`, `nombre`, `comentario`) VALUES (1,185,'123','123'),(2,185,'Marc','Comentari\r\n\r\n'),(3,185,'Marc','Esto es un comentario al artÃƒÂ­culo 185'),(4,183,'Marc','El primer comentario a esta entrada.'),(5,186,'<h1>Prueba otra ves','<h1>TEST\r\n'),(6,186,'LO VEN?','</h1> <-- Aqui cerre el H1'),(7,186,'PERO PUEDO ABRIRLO','Es mas ingresare mi imagen <img src=\"https://si0.twimg.com/profile_images/1950996879/kiske.jpg\"/>'),(8,186,'<h1>DEBEN REPARAR ESTO xD','<marquee><img src=\"https://si0.twimg.com/profile_images/1950996879/kiske.jpg\"/></marquee><br><h1>SALUDOS!!</h1>'),(9,190,'<h1>h1 en los titulos</h1','Igual en los titulos se puede modificar >.</ <h1>LOOL?</h1>y deben tener cuidado porque si usan un <script> o un <style> se les puede mover toda la pagina. Esto es un ataque XSS!'),(10,191,'sdfa','wghwhtgwt');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `contrasena` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `contrasena`, `email`) VALUES (2,'Rodrigo Serrano','rodrigo','e052450f29b2e0e9a53fd4eb389e25a9','r.serrano.rieloff@gmail.com'),(3,'Augusto','augusto','01e3b8ffd2576b280abb9ca96be29f55','agustiniano@prueba.cl'),(4,'Nicolas Farias Rabelo','Nico Farias','92ca5f3432eb4619219889462d92fbca','nicolasfariasr@gmail.com'),(5,'Carolina Velasco','cvelasco','e266cd3cd7e41f327b4a0b8cf70d4b21','cvelasco@jan.cl'),(6,'Carlos Morales Quiroz','cmoralesquiroz','ff2e377793378ab5799b50a74999a75f','carlos.morales2015@ensenachile.cl '),(7,'Ernesto Osses Santelices','eossessantelices','52c4a75577397c42c87f7821cb7beeb2','Eaosses@uc.cl'),(8,'Ignacia Rocuant','irocuant','3fa84d908a1a7ca14729e170446554a3','nacha.rocuant@gmail.com'),(9,'Juan Pino','jpino','034a7b4e9e56a167316aff40b45af884','juan.pino2014@ensenachile.cl'),(10,'Milena Navia Vargas','mnavia','9fe80f886784393c96e661f75fd900b9','milena.navia@gmail.com'),(11,'Natalia Ibarra CortÃ©s','nibarra','4ea8cb8981cd494a41c7c85bb4fcfa7d','natibarrac@gmail.com'),(12,'Nataly Ortega MuÃ±oz','nortega','8422346fcef73ee8153bdaaa1fe751f3','nataly.ortega.munoz@mail.com'),(13,'NicolÃ¡s Bustamante','nbustamante','0faa44ea4da07e8ebf498eced0c26aed','nicolas.bustamante2015@ensenachile.cl'),(14,'Nicolas FarÃ­as Rabelo','nfarias','cdcaf4cac3742ab78c8ba494e41e0e12','nicolasfariasr@gmail.com'),(15,'Pilar Olea','polea','5133b3fb1999ee76b3e36ed1a84f7b79','pdolea@gmail.com'),(16,'Renato Sandoval','rsandoval','04dbed2149392255326c001dd6f179cc','renato.sandovla@vidaoxl.cl'),(17,'Ronald Leal Montecinos','rleal','04dbed2149392255326c001dd6f179cc','renato.sandovla@vidaoxl.cl'),(18,'SebastiÃ¡n CÃ¡rdenas','scardenas','4ea6468ad55dbe1ca64ec22d63a491f5','s.cardenas.s@hotmail.com'),(19,'VÃ¨ronique Amiard','vamirad','08cf8e72a3a97122d2d46ea683fb9c90','veroamiard@hotmail.com'),(20,'Carolina Velasco','cvelasco','bedc4522b8ef717bcfe2cbba48a4eea7','cvelasco@jan.cl'),(21,'Constanza Villavicencio','cvillavicencio','6f41d9e2d9545498f67a15b406f0c6be','contanza.paz.v.a@gmail.com'),(22,'FabiÃ¡n Vidal','fvidal','95788bafad25971e0ae174bf7347b4f4','fabo.vidal.@gmail.com'),(23,'Giannina Molina','fmolina','f07c8aedb1af4b18587e4b6b0cea8ac6','gianninamolina.2015@gmail.com'),(24,'Giannina Molina','fmolina','f07c8aedb1af4b18587e4b6b0cea8ac6','gianninamolina.2015@gmail.com'),(25,'Gladys Marileo','gmarileo','bbf10820f554e1311c65e6b861b0f8e0','yayiva@gmail.com'),(26,'Jaime SepÃºlveda','jsepulveda','3f3857c8df7fcecce41c5720e959a88d','jaime.sepulveda@gmail.com'),(27,'Jessica Valenzuela ','jvalenzuela','32f65d005e2f94dbb98f01251af55804','svjj@hotmail.com'),(28,'JosÃ© Ramirez','jramirez','b17e22a82794abc82c32391b2eb2c384','jramirez@colegiosanmateosjpl.cl'),(29,'Karla Riquelme','kriquelme','13dd6cec68c034623eba961dd5454a5e','karlariquelme@gmail.com'),(30,'Katherine PeÃ±a','kpena','7cc66061210cc7981dff5ed4f319db2c','katherine.pera.moraga@gmail.com'),(31,'Luis Diaz','ldiaz','67bf2f142046752c3f7d351e9c33755b','luisdiaz@vtr.net'),(32,'Mirta Loyola','ldiaz','b57c2e911d366af746e85e09d0a3785a','mirta.loyola@encuentro.cl'),(33,'Roberto Ramos','rramos','8f311ef69fd283b4635c2e77b6b0dcd9','robertino25@gmail.com'),(34,'VerÃ³nica Mayne','vmayne','ebd7e3dbeac72b4e3c31b14b795b2a58','payantume72_4@hotmail.com'),(35,'Victoria Arredondo','varredondo','43f5ebc988cace7076f946cd3368e494','docentevictoria@gmail.com'),(36,'Maricarmen FernÃ¡ndez ','mimifernandeza','9c39419b6f5606b3c656920cbb183c01','maricarmen.mfernandez@gmail.com'),(37,'Carlo','C1','81dc9bdb52d04dc20036dbd8313ed055','c.caviedes.quintanilla@gmail.com'),(38,'carlos','carlos 1','81dc9bdb52d04dc20036dbd8313ed055','c.caviedes.quintanilla@gmail.com'),(39,'Susana Neira','Susana Neira','4d33fd1da665809bea02d5b573739a5f','neira.susana@gmail.com'),(40,'Susana Neira','Susana Neira','e266cd3cd7e41f327b4a0b8cf70d4b21','neira.susana@gmail.com'),(41,'Jorge Ignacio PÃ©rez CortÃ©s','JorgeP7','2ce7cabb4fea32042460c4a5b7c02df2','pullman001'),(42,'Jorge Ignacio PÃ©rez CortÃ©s','JorgeP7','2ce7cabb4fea32042460c4a5b7c02df2','f0rzer0@live.cl'),(43,'FABIÃN ZÃšÃ‘IGA LARENAS','fabpat04','d899e9ff7f0816925da7476eaf05b3e3','fabpat04@hotmail.com'),(44,'Gabriela Ulloa Arenas','gabrielaulloa','64ceb4f0eca45227b03c411517ca2994','gabriela.ulloaarenas@gmail.com'),(45,'Gabriela Ulloa Arenas','gabrielaulloa','64ceb4f0eca45227b03c411517ca2994','gabriela.ulloaarenas@gmail.com'),(46,'Gabriela Ulloa Arenas','gabrielaulloa','64ceb4f0eca45227b03c411517ca2994','gabriela.ulloaarenas@gmail.com'),(47,'Gabriela Ulloa Arenas','gabrielaulloa','64ceb4f0eca45227b03c411517ca2994','gabriela.ulloaarenas@gmail.com'),(48,'Jeannette Vilches','Jeannette','f5bc62fd85a9dc103ea59f3583ee5596','jeannettevilches@yahoo.es'),(49,'Jeannette Vilches','Jeannette','f5bc62fd85a9dc103ea59f3583ee5596','jeannettevilches@yahoo.es'),(50,'rodrigo castillo','rcastilloplaza','6880912b652af901837ad64dd3e720f7','rcastilloplaza@gmail.com'),(51,'Bruno Sanhueza ','Bruno Sanhueza','7ef37a0cf68b1c59cce63fbd48ba4a4c','brunosanhueza@gmail.com'),(52,'Bruno Sanhueza ','Bruno Sanhueza','58dc781068005868e6ee485fe6f8f25f','brunosanhueza@gmail.com'),(53,'Bruno Sanhueza ','Bruno Sanhueza','82acf6b4b500bfdf1df0081f17de50fb','brunosanhueza@gmail.com'),(54,'Bruno Sanhueza ','Bruno ','58dc781068005868e6ee485fe6f8f25f','brunosanhueza@gmail.com'),(55,'Bruno Sanhueza ','Bruno ','58dc781068005868e6ee485fe6f8f25f','brunosanhueza@gmail.com'),(56,'Patricia Chacon','pchacon','afe3fddee1ff502e6273c95015aaeb47','chaconpatricia@yahoo.es'),(57,'Patricia Chacon','pchacon','afe3fddee1ff502e6273c95015aaeb47','chaconpatricia@yahoo.es'),(58,'maria ines','mane','1819d5b8fcd25631ed6f890ec7686305','mariaines_astudillo@hotmail.com'),(59,'yohana','yohana','0940c31e522dfd786ec000ca5d11e3e4','benavides.yohana@gmail.com'),(60,'Macarena ','Makiiwiis','44d916cf90b0439e1a09da1490095441','macarena.olate.rioseco@gmail.com'),(61,'maria ines','manecita','1819d5b8fcd25631ed6f890ec7686305','mariaines_astudillo@hotmail.com'),(62,'MarÃ­a JosÃ© Jano','Cote','97d5fd3bf56eeaa5be21977e8fd384d3','cote_jn@hotmail.com'),(63,'HÃ©ctor Komori','hector.komori@gmail.com','ec710aab42c482f9c545028b82dde806','hector.komori@gmail.com'),(64,'HÃ©ctor Komori','heckomher','fbe89ebb4614aa6befccffdf5365f391','hector.komori@inacapmail.cl'),(65,'Johanna labra gonzalez','Johannalabra','2b46067605b56802b9105d628a19d2e4','johannalabra@gmail.com'),(66,'Johanna labra gonzalez','Johanna labra','2b46067605b56802b9105d628a19d2e4','johannalabra@gmail.com'),(67,'juanpino','juanito.jps','0c1c94fc7ef899e90135b38dc99b5cb1','juanit'),(68,'juanpino','juanito.jps','0c1c94fc7ef899e90135b38dc99b5cb1','juanito.jps@gmail.com'),(69,'Christian ','profesorbelmar','99831ec4140ba177faf0372ecaa1807f','belmargarate.chris@gmail.com'),(70,'alejandra contreras',' jaspee01','2a445991de7472bb33e497ecbe9c016f','jaspee01@hotmail.com'),(71,'andrea milla','andie','ccc26d6cade6193485bb99342f739054','amilla.brito@gmail.com'),(72,'andrea milla','andie','c78c347465f4775425c059ea101c131f','amilla.brito@gmail.com'),(73,'Ignacia Rocuant','Nachacha','d5d0b62ad39b5a4bf1cce27a9b3594af','NACHA.ROCUANT@GMAIL.COM'),(74,'victoria arredondo','docentevictoria@gmail.com','8f24dd735cb38d99a87a9409263714b7','docentevictoria@gmail.com'),(75,'Ernesto Osses Santelices','Ernesto','c443fa37cd2643855067d7ab5a76ab7c','eaosses'),(76,'Ernesto Osses Santelices','Ernesto','c443fa37cd2643855067d7ab5a76ab7c','eaosses@uc.cl'),(77,'Ernesto Osses Santelices','Ernst','c443fa37cd2643855067d7ab5a76ab7c','eaosses@uc.cl'),(78,'Ernesto Osses Santelices','ErnstOssSant','c443fa37cd2643855067d7ab5a76ab7c','eaosses@uc.cl'),(79,'Ernesto Osses Santelices','Ernst','c443fa37cd2643855067d7ab5a76ab7c','eaosses@uc.cl'),(80,'Rocio Quintriqueo','chio ','0573fba212e7edb3f3b1221445a32570','rociosaku88@gmail.com'),(81,'maria alejandra carvallo acosta','janucofer','e8e8bd9336c9df5d3bd0943037545666','janucofer@gmail.com'),(82,'Vania Pezoa ','vania ','00da767f2590620f97090a1915ff2a21','vpezoalarenas@gmail.com '),(83,'Andrea ','aycaceres','cf2b74fba7a0ef5c1258c4d21b4f9629','aycaceres.q@gmail.com'),(84,'isaura','isaura','81dc9bdb52d04dc20036dbd8313ed055','Isaura_tobar@hotmail.com'),(85,'Mabel','Alejandracr','84aa849c7a6f08a9958ba81f1fb0d57e','alejandra.aneley@gmail.com'),(86,'Mabel','Alejandracr','84aa849c7a6f08a9958ba81f1fb0d57e','alejandra.aneley@gmail.com'),(87,'Mabel','Alejandracrm','574980bd10fe1d2d7163dabeb07ecd50','alejandra.aneley@gmail.com'),(88,'Mabel','Alejandracr','2161d985de97c7530732d9b52ab8e8ba','alejandra.aneley@gmail.com'),(89,'Mabel','Aneleycr','84aa849c7a6f08a9958ba81f1fb0d57e','alejandra.aneley@gmail.com'),(90,'Mabel','Aneleycr','84aa849c7a6f08a9958ba81f1fb0d57e','alejandra.aneley@gmail.com'),(91,'lorena belmar','lorena','44e3de05ecf89d1eb42dd7af82457e14','lorebelmararriagada@gmail.com'),(92,'lorena belmar','lorena','44e3de05ecf89d1eb42dd7af82457e14','lorebelmararriagada@gmail.com'),(93,'Alejandra Solsona','alejandra','703daaa9a4f080cce97f2da7f9f7e028','asolsona@dsvaldivia.cl'),(94,'Carolina Espinosa','caroespinosa','880046d1c79228c7e122861028831e68','caritoespinosavillegas@hotmail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'realiscl_registro'
--

--
-- Dumping routines for database 'realiscl_registro'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-01 22:43:43
