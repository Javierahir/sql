CREATE DATABASE  IF NOT EXISTS `bicicletas.caba` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bicicletas.caba`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: bicicletas.caba
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `costo bici`
--

DROP TABLE IF EXISTS `costo bici`;
/*!50001 DROP VIEW IF EXISTS `costo bici`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `costo bici` AS SELECT 
 1 AS `UsoTotal`,
 1 AS `Marca`,
 1 AS `costo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `generouso`
--

DROP TABLE IF EXISTS `generouso`;
/*!50001 DROP VIEW IF EXISTS `generouso`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `generouso` AS SELECT 
 1 AS `DuracionTotal`,
 1 AS `cantidad`,
 1 AS `Genero`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `recorridos.estacion`
--

DROP TABLE IF EXISTS `recorridos.estacion`;
/*!50001 DROP VIEW IF EXISTS `recorridos.estacion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `recorridos.estacion` AS SELECT 
 1 AS `Recorrido`,
 1 AS `Duracion`,
 1 AS `EstacionA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `estacion mas usada de salida`
--

DROP TABLE IF EXISTS `estacion mas usada de salida`;
/*!50001 DROP VIEW IF EXISTS `estacion mas usada de salida`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `estacion mas usada de salida` AS SELECT 
 1 AS `nombre estacion salida`,
 1 AS `direccion`,
 1 AS `id_esta`,
 1 AS `Conteo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `usuario costomant pago`
--

DROP TABLE IF EXISTS `usuario costomant pago`;
/*!50001 DROP VIEW IF EXISTS `usuario costomant pago`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usuario costomant pago` AS SELECT 
 1 AS `Id_Usu`,
 1 AS `Apellido`,
 1 AS `demorapago`,
 1 AS `cantrecorrido`,
 1 AS `BiciMarca`,
 1 AS `costo`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `costo bici`
--

/*!50001 DROP VIEW IF EXISTS `costo bici`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `costo bici` AS select sum(`recorrido`.`Dur`) AS `UsoTotal`,`bicicletas`.`Mca` AS `Marca`,sum(`mantenimiento`.`Cto`) AS `costo` from ((`recorrido` join `bicicletas` on((`bicicletas`.`id_Bic` = `recorrido`.`Id_Bic`))) join `mantenimiento` on((`bicicletas`.`id_Bic` = `mantenimiento`.`id_bic`))) where (`recorrido`.`Dur` > 30) group by `Marca` order by `Marca` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `generouso`
--

/*!50001 DROP VIEW IF EXISTS `generouso`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `generouso` AS select sum(`recorrido`.`Dur`) AS `DuracionTotal`,count(`recorrido`.`Dur`) AS `cantidad`,`genero`.`TDG` AS `Genero` from ((`recorrido` join `usuario`) join `genero`) where ((`recorrido`.`Id_Usu` = `usuario`.`Id_USU`) and (`usuario`.`Id_Genero` = `genero`.`id_Gro`)) group by `Genero` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `recorridos.estacion`
--

/*!50001 DROP VIEW IF EXISTS `recorridos.estacion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `recorridos.estacion` AS select `recorrido`.`id_Recor` AS `Recorrido`,`recorrido`.`Dur` AS `Duracion`,`estacion`.`Nbe` AS `EstacionA` from (`recorrido` join `estacion`) where (`recorrido`.`Id_EstA` = `estacion`.`id_Est`) order by `recorrido`.`Dur` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `estacion mas usada de salida`
--

/*!50001 DROP VIEW IF EXISTS `estacion mas usada de salida`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `estacion mas usada de salida` AS select `estacion`.`Nbe` AS `nombre estacion salida`,`estacion`.`Dir` AS `direccion`,`recorrido`.`Id_EstA` AS `id_esta`,count(`recorrido`.`id_Recor`) AS `Conteo` from (`recorrido` join `estacion` on((`estacion`.`id_Est` = `recorrido`.`Id_EstA`))) group by `estacion`.`Nbe`,`estacion`.`Dir`,`recorrido`.`Id_EstA` union select `estacion`.`Nbe` AS `nombre estacion llegada`,`estacion`.`Dir` AS `direccion`,`recorrido`.`Id_EstB` AS `id_estb`,count(`recorrido`.`id_Recor`) AS `Conteo` from (`recorrido` join `estacion` on((`estacion`.`id_Est` = `recorrido`.`Id_EstB`))) group by `estacion`.`Nbe`,`estacion`.`Dir`,`recorrido`.`Id_EstB` order by `Conteo` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usuario costomant pago`
--

/*!50001 DROP VIEW IF EXISTS `usuario costomant pago`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usuario costomant pago` AS select `usuario`.`Id_USU` AS `Id_Usu`,`usuario`.`Apellido` AS `Apellido`,`tipo_de_medio_de_pagos`.`DEMACRED` AS `demorapago`,count(`recorrido`.`id_Recor`) AS `cantrecorrido`,`bicicletas`.`Mca` AS `BiciMarca`,sum(`mantenimiento`.`Cto`) AS `costo` from (((((`tipo_de_medio_de_pagos` join `medio_de_pago` on((`tipo_de_medio_de_pagos`.`Id_TMP` = `medio_de_pago`.`id_TMP`))) join `usuario` on((`medio_de_pago`.`id_MDP` = `usuario`.`Id_MDPS`))) join `recorrido` on((`usuario`.`Id_USU` = `recorrido`.`Id_Usu`))) join `bicicletas` on((`bicicletas`.`id_Bic` = `recorrido`.`Id_Bic`))) join `mantenimiento` on((`bicicletas`.`id_Bic` = `mantenimiento`.`id_bic`))) group by `usuario`.`Apellido`,`usuario`.`Id_USU`,`demorapago`,`BiciMarca` order by `cantrecorrido` desc limit 100 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-26 14:59:56
