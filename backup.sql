-- MySQL dump 10.13  Distrib 5.7.38, for Linux (x86_64)
--
-- Host: localhost    Database: xtream_iptvpro
-- ------------------------------------------------------
-- Server version	5.7.38-0ubuntu0.18.04.1

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
-- Table structure for table `access_output`
--

DROP TABLE IF EXISTS `access_output`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_output` (
  `access_output_id` int(11) NOT NULL AUTO_INCREMENT,
  `output_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `output_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `output_ext` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`access_output_id`),
  KEY `output_key` (`output_key`),
  KEY `output_ext` (`output_ext`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_output`
--

LOCK TABLES `access_output` WRITE;
/*!40000 ALTER TABLE `access_output` DISABLE KEYS */;
INSERT INTO `access_output` (`access_output_id`, `output_name`, `output_key`, `output_ext`) VALUES (1,'HLS','m3u8','m3u8'),(2,'MPEGTS','ts','ts'),(3,'RTMP','rtmp','');
/*!40000 ALTER TABLE `access_output` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_settings`
--

DROP TABLE IF EXISTS `admin_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_settings` (
  `type` varchar(128) NOT NULL DEFAULT '',
  `value` varchar(4096) NOT NULL DEFAULT '',
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_settings`
--

LOCK TABLES `admin_settings` WRITE;
/*!40000 ALTER TABLE `admin_settings` DISABLE KEYS */;
INSERT INTO `admin_settings` (`type`, `value`) VALUES ('admin_password',''),('admin_username',''),('alternate_scandir',''),('automatic_backups','off'),('auto_refresh','1'),('backups_to_keep','0'),('cc_time','1663710841'),('change_own_dns',''),('change_own_email',''),('change_own_password',''),('change_usernames',''),('dark_mode','0'),('dark_mode_login','1'),('dashboard_stats',''),('dashboard_stats_frequency','600'),('default_entries','10'),('disable_trial',''),('download_images',''),('expanded_sidebar','0'),('google_2factor',''),('ip_logout',''),('local_api',''),('login_flood','0'),('pass_length','0'),('recaptcha_enable',''),('recaptcha_v2_secret_key',''),('recaptcha_v2_site_key',''),('release_parser','python'),('reseller_restrictions',''),('stats_pid','3615'),('tmdb_language',''),('tmdb_pid','3617'),('watch_pid','3619');
/*!40000 ALTER TABLE `admin_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocked_ips`
--

DROP TABLE IF EXISTS `blocked_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocked_ips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL,
  `notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  `attempts_blocked` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip_2` (`ip`),
  UNIQUE KEY `ip_3` (`ip`),
  KEY `ip` (`ip`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocked_ips`
--

LOCK TABLES `blocked_ips` WRITE;
/*!40000 ALTER TABLE `blocked_ips` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocked_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocked_user_agents`
--

DROP TABLE IF EXISTS `blocked_user_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocked_user_agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exact_match` int(11) NOT NULL DEFAULT '0',
  `attempts_blocked` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `exact_match` (`exact_match`),
  KEY `user_agent` (`user_agent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocked_user_agents`
--

LOCK TABLES `blocked_user_agents` WRITE;
/*!40000 ALTER TABLE `blocked_user_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocked_user_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bouquets`
--

DROP TABLE IF EXISTS `bouquets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bouquets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bouquet_name` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `bouquet_channels` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `bouquet_series` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `bouquet_order` int(16) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bouquets`
--

LOCK TABLES `bouquets` WRITE;
/*!40000 ALTER TABLE `bouquets` DISABLE KEYS */;
INSERT INTO `bouquets` (`id`, `bouquet_name`, `bouquet_channels`, `bouquet_series`, `bouquet_order`) VALUES (2,'CHILE OFICIAL','[274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,333,334,335,336,337,338,342,343,344,346,347,348,349,350,352,353,355,356,345,351,354,357,370,375]','[]',0),(3,'test','[358,359,360,361,362,363,364,365,366,367,368,369,370,372,373,371]','[]',0);
/*!40000 ALTER TABLE `bouquets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `created`
--

DROP TABLE IF EXISTS `created`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `created` (
  `id` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `category_id` tinyint(4) NOT NULL,
  `stream_display_name` tinyint(4) NOT NULL,
  `stream_source` tinyint(4) NOT NULL,
  `stream_icon` tinyint(4) NOT NULL,
  `notes` tinyint(4) NOT NULL,
  `created_channel_location` tinyint(4) NOT NULL,
  `enable_transcode` tinyint(4) NOT NULL,
  `transcode_attributes` tinyint(4) NOT NULL,
  `custom_ffmpeg` tinyint(4) NOT NULL,
  `movie_propeties` tinyint(4) NOT NULL,
  `movie_subtitles` tinyint(4) NOT NULL,
  `read_native` tinyint(4) NOT NULL,
  `target_container` tinyint(4) NOT NULL,
  `stream_all` tinyint(4) NOT NULL,
  `remove_subtitles` tinyint(4) NOT NULL,
  `custom_sid` tinyint(4) NOT NULL,
  `epg_id` tinyint(4) NOT NULL,
  `channel_id` tinyint(4) NOT NULL,
  `epg_lang` tinyint(4) NOT NULL,
  `order` tinyint(4) NOT NULL,
  `auto_restart` tinyint(4) NOT NULL,
  `transcode_profile_id` tinyint(4) NOT NULL,
  `pids_create_channel` tinyint(4) NOT NULL,
  `cchannel_rsources` tinyint(4) NOT NULL,
  `gen_timestamps` tinyint(4) NOT NULL,
  `added` tinyint(4) NOT NULL,
  `series_no` tinyint(4) NOT NULL,
  `direct_source` tinyint(4) NOT NULL,
  `tv_archive_duration` tinyint(4) NOT NULL,
  `tv_archive_server_id` tinyint(4) NOT NULL,
  `tv_archive_pid` tinyint(4) NOT NULL,
  `movie_symlink` tinyint(4) NOT NULL,
  `redirect_stream` tinyint(4) NOT NULL,
  `rtmp_output` tinyint(4) NOT NULL,
  `number` tinyint(4) NOT NULL,
  `allow_record` tinyint(4) NOT NULL,
  `probesize_ondemand` tinyint(4) NOT NULL,
  `custom_map` tinyint(4) NOT NULL,
  `external_push` tinyint(4) NOT NULL,
  `delay_minutes` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `created`
--

LOCK TABLES `created` WRITE;
/*!40000 ALTER TABLE `created` DISABLE KEYS */;
/*!40000 ALTER TABLE `created` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credits_log`
--

DROP TABLE IF EXISTS `credits_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credits_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `date` int(11) NOT NULL,
  `reason` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `target_id` (`target_id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credits_log`
--

LOCK TABLES `credits_log` WRITE;
/*!40000 ALTER TABLE `credits_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `credits_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronjobs`
--

DROP TABLE IF EXISTS `cronjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cronjobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `run_per_mins` int(11) NOT NULL DEFAULT '1',
  `run_per_hours` int(11) NOT NULL DEFAULT '0',
  `enabled` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enabled` (`enabled`),
  KEY `filename` (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronjobs`
--

LOCK TABLES `cronjobs` WRITE;
/*!40000 ALTER TABLE `cronjobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cronjobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_statistics`
--

DROP TABLE IF EXISTS `dashboard_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) NOT NULL DEFAULT '',
  `time` int(16) NOT NULL DEFAULT '0',
  `count` int(16) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_statistics`
--

LOCK TABLES `dashboard_statistics` WRITE;
/*!40000 ALTER TABLE `dashboard_statistics` DISABLE KEYS */;
INSERT INTO `dashboard_statistics` (`id`, `type`, `time`, `count`) VALUES (1,'conns',1658635507,0),(2,'users',1658635507,0);
/*!40000 ALTER TABLE `dashboard_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices` (
  `device_id` int(11) NOT NULL AUTO_INCREMENT,
  `device_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_header` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `device_conf` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `device_footer` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `default_output` int(11) NOT NULL DEFAULT '0',
  `copy_text` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`device_id`),
  KEY `device_key` (`device_key`),
  KEY `default_output` (`default_output`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` (`device_id`, `device_name`, `device_key`, `device_filename`, `device_header`, `device_conf`, `device_footer`, `default_output`, `copy_text`) VALUES (1,'GigaBlue','gigablue','userbouquet.favourites.tv','#NAME {BOUQUET_NAME}','#SERVICE 4097:0:1:0:0:0:0:0:0:0:{URL#:}\r\n#DESCRIPTION {CHANNEL_NAME}','',2,NULL),(2,'Enigma 2 OE 1.6','enigma16','userbouquet.favourites.tv','#NAME {BOUQUET_NAME}','#SERVICE 4097{SID}{URL#:}\r\n#DESCRIPTION {CHANNEL_NAME}','',2,NULL),(3,'DreamBox OE 2.0','dreambox','userbouquet.favourites.tv','#NAME {BOUQUET_NAME}','#SERVICE {ESR_ID}{SID}{URL#:}\r\n#DESCRIPTION {CHANNEL_NAME}','',2,NULL),(4,'m3u','m3u','tv_channels_{USERNAME}.m3u','#EXTM3U','#EXTINF:-1,{CHANNEL_NAME}\r\n{URL}','',2,NULL),(5,'Simple List','simple','simple_{USERNAME}.txt','','{URL} #Name: {CHANNEL_NAME}','',2,NULL),(6,'Octagon','octagon','internettv.feed','','[TITLE]\r\n{CHANNEL_NAME}\r\n[URL]\r\n{URL}\r\n[DESCRIPTION]\r\nIPTV\r\n[TYPE]\r\nLive','',2,NULL),(7,'Starlive v3/StarSat HD6060/AZclass','starlivev3','iptvlist.txt','','{CHANNEL_NAME},{URL}','',2,NULL),(8,'MediaStar / StarLive v4','mediastar','tvlist.txt','','{CHANNEL_NAME} {URL}','',2,NULL),(9,'Enigma 2 OE 1.6 Auto Script','enigma216_script','iptv.sh','USERNAME=\"{USERNAME}\";PASSWORD=\"{PASSWORD}\";bouquet=\"{BOUQUET_NAME}\";directory=\"/etc/enigma2/iptv.sh\";url=\"{SERVER_URL}get.php?username=$USERNAME&password=$PASSWORD&type=enigma16&output={OUTPUT_KEY}\";rm /etc/enigma2/userbouquet.\"$bouquet\"__tv_.tv;wget -O /etc/enigma2/userbouquet.\"$bouquet\"__tv_.tv $url;if ! cat /etc/enigma2/bouquets.tv | grep -v grep | grep -c $bouquet > /dev/null;then echo \"[+]Creating Folder for iptv and rehashing...\";cat /etc/enigma2/bouquets.tv | sed -n 1p > /etc/enigma2/new_bouquets.tv;echo \'#SERVICE 1:7:1:0:0:0:0:0:0:0:FROM BOUQUET \"userbouquet.\'$bouquet\'__tv_.tv\" ORDER BY bouquet\' >> /etc/enigma2/new_bouquets.tv; cat /etc/enigma2/bouquets.tv | sed -n \'2,$p\' >> /etc/enigma2/new_bouquets.tv;rm /etc/enigma2/bouquets.tv;mv /etc/enigma2/new_bouquets.tv /etc/enigma2/bouquets.tv;fi;rm /usr/bin/enigma2_pre_start.sh;echo \"writing to the file.. NO NEED FOR REBOOT\";echo \"/bin/sh \"$directory\" > /dev/null 2>&1 &\" > /usr/bin/enigma2_pre_start.sh;chmod 777 /usr/bin/enigma2_pre_start.sh;wget -qO - \"http://127.0.0.1/web/servicelistreload?mode=2\";wget -qO - \"http://127.0.0.1/web/servicelistreload?mode=2\";','','',2,'wget -O /etc/enigma2/iptv.sh {DEVICE_LINK} && chmod 777 /etc/enigma2/iptv.sh && /etc/enigma2/iptv.sh'),(10,'Enigma 2 OE 2.0 Auto Script','enigma22_script','iptv.sh','USERNAME=\"{USERNAME}\";PASSWORD=\"{PASSWORD}\";bouquet=\"{BOUQUET_NAME}\";directory=\"/etc/enigma2/iptv.sh\";url=\"{SERVER_URL}get.php?username=$USERNAME&password=$PASSWORD&type=dreambox&output={OUTPUT_KEY}\";rm /etc/enigma2/userbouquet.\"$bouquet\"__tv_.tv;wget -O /etc/enigma2/userbouquet.\"$bouquet\"__tv_.tv $url;if ! cat /etc/enigma2/bouquets.tv | grep -v grep | grep -c $bouquet > /dev/null;then echo \"[+]Creating Folder for iptv and rehashing...\";cat /etc/enigma2/bouquets.tv | sed -n 1p > /etc/enigma2/new_bouquets.tv;echo \'#SERVICE 1:7:1:0:0:0:0:0:0:0:FROM BOUQUET \"userbouquet.\'$bouquet\'__tv_.tv\" ORDER BY bouquet\' >> /etc/enigma2/new_bouquets.tv; cat /etc/enigma2/bouquets.tv | sed -n \'2,$p\' >> /etc/enigma2/new_bouquets.tv;rm /etc/enigma2/bouquets.tv;mv /etc/enigma2/new_bouquets.tv /etc/enigma2/bouquets.tv;fi;rm /usr/bin/enigma2_pre_start.sh;echo \"writing to the file.. NO NEED FOR REBOOT\";echo \"/bin/sh \"$directory\" > /dev/null 2>&1 &\" > /usr/bin/enigma2_pre_start.sh;chmod 777 /usr/bin/enigma2_pre_start.sh;wget -qO - \"http://127.0.0.1/web/servicelistreload?mode=2\";wget -qO - \"http://127.0.0.1/web/servicelistreload?mode=2\";','','',2,'wget -O /etc/enigma2/iptv.sh {DEVICE_LINK} && chmod 777 /etc/enigma2/iptv.sh && /etc/enigma2/iptv.sh'),(13,'m3u With Options','m3u_plus','tv_channels_{USERNAME}_plus.m3u','#EXTM3U','#EXTINF:-1 tvg-id=\"{CHANNEL_ID}\" tvg-name=\"{CHANNEL_NAME}\" tvg-logo=\"{CHANNEL_ICON}\" group-title=\"{CATEGORY}\",{CHANNEL_NAME}\r\n{URL}','',2,NULL),(14,'StarLive v5','starlivev5','channel.jason','','','',2,NULL),(15,'WebTV List','webtvlist','webtv list.txt','','Channel name:{CHANNEL_NAME}\r\nURL:{URL}','[Webtv channel END]',2,NULL),(16,'Octagon Auto Script','octagon_script','iptv','USERNAME=\"{USERNAME}\";PASSWORD=\"{PASSWORD}\";url=\"{SERVER_URL}get.php?username=$USERNAME&password=$PASSWORD&type=octagon&output={OUTPUT_KEY}\";rm /var/freetvplus/internettv.feed;wget -O /var/freetvplus/internettv.feed1 $url;chmod 777 /var/freetvplus/internettv.feed1;awk -v BINMODE=3 -v RS=\'(\\r\\n|\\n)\' -v ORS=\'\\n\' \'{ print }\' /var/freetvplus/internettv.feed1 > /var/freetvplus/internettv.feed;rm /var/freetvplus/internettv.feed1','','',2,'wget -qO /var/bin/iptv {DEVICE_LINK}'),(18,'Ariva','ariva','ariva_{USERNAME}.txt','','{CHANNEL_NAME},{URL}','',2,NULL),(19,'Spark','spark','webtv_usr.xml','<?xml version=\"1.0\"?>\r\n<webtvs>','<webtv title=\"{CHANNEL_NAME}\" urlkey=\"0\" url=\"{URL}\" description=\"\" iconsrc=\"{CHANNEL_ICON}\" iconsrc_b=\"\" group=\"0\" type=\"0\" />','</webtvs>',2,NULL),(20,'Geant/Starsat/Tiger/Qmax/Hyper/Royal','gst','{USERNAME}_list.txt','','I: {URL} {CHANNEL_NAME}','',2,NULL),(21,'Fortec999/Prifix9400/Starport','fps','Royal.cfg','','IPTV: { {CHANNEL_NAME} } { {URL} }','',2,NULL),(22,'Revolution 60/60 | Sunplus','revosun','network_iptv.cfg','','IPTV: { {CHANNEL_NAME} } { {URL} }','',2,NULL),(23,'Zorro','zorro','iptv.cfg','<NETDBS_TXT_VER_1>','IPTV: { {CHANNEL_NAME} } { {URL} } -HIDE_URL','',2,NULL);
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enigma2_actions`
--

DROP TABLE IF EXISTS `enigma2_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enigma2_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` int(11) NOT NULL,
  `type` text NOT NULL,
  `key` text NOT NULL,
  `command` text NOT NULL,
  `command2` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enigma2_actions`
--

LOCK TABLES `enigma2_actions` WRITE;
/*!40000 ALTER TABLE `enigma2_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `enigma2_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enigma2_devices`
--

DROP TABLE IF EXISTS `enigma2_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enigma2_devices` (
  `device_id` int(12) NOT NULL AUTO_INCREMENT,
  `mac` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `modem_mac` varchar(255) NOT NULL,
  `local_ip` varchar(255) NOT NULL,
  `public_ip` varchar(255) NOT NULL,
  `key_auth` varchar(255) NOT NULL,
  `enigma_version` varchar(255) NOT NULL,
  `cpu` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `lversion` text NOT NULL,
  `token` varchar(32) NOT NULL,
  `last_updated` int(11) NOT NULL,
  `watchdog_timeout` int(11) NOT NULL,
  `lock_device` tinyint(4) NOT NULL DEFAULT '0',
  `telnet_enable` tinyint(4) NOT NULL DEFAULT '1',
  `ftp_enable` tinyint(4) NOT NULL DEFAULT '1',
  `ssh_enable` tinyint(4) NOT NULL DEFAULT '1',
  `dns` varchar(255) NOT NULL,
  `original_mac` varchar(255) NOT NULL,
  `rc` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`device_id`),
  KEY `mac` (`mac`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enigma2_devices`
--

LOCK TABLES `enigma2_devices` WRITE;
/*!40000 ALTER TABLE `enigma2_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `enigma2_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enigma2_failed`
--

DROP TABLE IF EXISTS `enigma2_failed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enigma2_failed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `original_mac` varchar(255) NOT NULL,
  `virtual_mac` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `original_mac` (`original_mac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enigma2_failed`
--

LOCK TABLES `enigma2_failed` WRITE;
/*!40000 ALTER TABLE `enigma2_failed` DISABLE KEYS */;
/*!40000 ALTER TABLE `enigma2_failed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epg`
--

DROP TABLE IF EXISTS `epg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epg_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `epg_file` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `integrity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_updated` int(11) DEFAULT NULL,
  `days_keep` int(11) NOT NULL DEFAULT '7',
  `data` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epg`
--

LOCK TABLES `epg` WRITE;
/*!40000 ALTER TABLE `epg` DISABLE KEYS */;
/*!40000 ALTER TABLE `epg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `isp_addon`
--

DROP TABLE IF EXISTS `isp_addon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isp_addon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isp` text NOT NULL,
  `blocked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isp_addon`
--

LOCK TABLES `isp_addon` WRITE;
/*!40000 ALTER TABLE `isp_addon` DISABLE KEYS */;
/*!40000 ALTER TABLE `isp_addon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licence`
--

DROP TABLE IF EXISTS `licence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `licence_key` varchar(29) COLLATE utf8_unicode_ci NOT NULL,
  `show_message` tinyint(4) NOT NULL,
  `update_available` int(11) NOT NULL DEFAULT '0',
  `reshare_deny_addon` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licence`
--

LOCK TABLES `licence` WRITE;
/*!40000 ALTER TABLE `licence` DISABLE KEYS */;
/*!40000 ALTER TABLE `licence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_flood`
--

DROP TABLE IF EXISTS `login_flood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_flood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_flood`
--

LOCK TABLES `login_flood` WRITE;
/*!40000 ALTER TABLE `login_flood` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_flood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_logs`
--

DROP TABLE IF EXISTS `login_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `login_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_logs`
--

LOCK TABLES `login_logs` WRITE;
/*!40000 ALTER TABLE `login_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mag_claims`
--

DROP TABLE IF EXISTS `mag_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mag_claims` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mag_id` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `real_type` varchar(10) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mag_id` (`mag_id`),
  KEY `stream_id` (`stream_id`),
  KEY `real_type` (`real_type`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mag_claims`
--

LOCK TABLES `mag_claims` WRITE;
/*!40000 ALTER TABLE `mag_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `mag_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mag_devices`
--

DROP TABLE IF EXISTS `mag_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mag_devices` (
  `mag_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bright` int(10) NOT NULL DEFAULT '200',
  `contrast` int(10) NOT NULL DEFAULT '127',
  `saturation` int(10) NOT NULL DEFAULT '127',
  `aspect` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `video_out` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'rca',
  `volume` int(5) NOT NULL DEFAULT '50',
  `playback_buffer_bytes` int(50) NOT NULL DEFAULT '0',
  `playback_buffer_size` int(50) NOT NULL DEFAULT '0',
  `audio_out` int(5) NOT NULL DEFAULT '1',
  `mac` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ls` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ver` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en_GB.utf8',
  `city_id` int(11) DEFAULT '0',
  `hd` int(10) NOT NULL DEFAULT '1',
  `main_notify` int(5) NOT NULL DEFAULT '1',
  `fav_itv_on` int(5) NOT NULL DEFAULT '0',
  `now_playing_start` int(50) DEFAULT NULL,
  `now_playing_type` int(11) NOT NULL DEFAULT '0',
  `now_playing_content` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_last_play_tv` int(50) DEFAULT NULL,
  `time_last_play_video` int(50) DEFAULT NULL,
  `hd_content` int(11) NOT NULL DEFAULT '1',
  `image_version` varchar(350) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_change_status` int(11) DEFAULT NULL,
  `last_start` int(11) DEFAULT NULL,
  `last_active` int(11) DEFAULT NULL,
  `keep_alive` int(11) DEFAULT NULL,
  `playback_limit` int(11) NOT NULL DEFAULT '3',
  `screensaver_delay` int(11) NOT NULL DEFAULT '10',
  `stb_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_watchdog` int(50) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `country` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plasma_saving` int(11) NOT NULL DEFAULT '0',
  `ts_enabled` int(11) DEFAULT '0',
  `ts_enable_icon` int(11) NOT NULL DEFAULT '1',
  `ts_path` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ts_max_length` int(11) NOT NULL DEFAULT '3600',
  `ts_buffer_use` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'cyclic',
  `ts_action_on_exit` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no_save',
  `ts_delay` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on_pause',
  `video_clock` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Off',
  `rtsp_type` int(11) NOT NULL DEFAULT '4',
  `rtsp_flags` int(11) NOT NULL DEFAULT '0',
  `stb_lang` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `display_menu_after_loading` int(11) NOT NULL DEFAULT '1',
  `record_max_length` int(11) NOT NULL DEFAULT '180',
  `plasma_saving_timeout` int(11) NOT NULL DEFAULT '600',
  `now_playing_link_id` int(11) DEFAULT NULL,
  `now_playing_streamer_id` int(11) DEFAULT NULL,
  `device_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_id2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hw_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0000',
  `spdif_mode` int(11) NOT NULL DEFAULT '1',
  `show_after_loading` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'main_menu',
  `play_in_preview_by_ok` int(11) NOT NULL DEFAULT '1',
  `hdmi_event_reaction` int(11) NOT NULL DEFAULT '1',
  `mag_player` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'ffmpeg',
  `play_in_preview_only_by_ok` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'true',
  `watchdog_timeout` int(11) NOT NULL,
  `fav_channels` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `tv_archive_continued` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `tv_channel_default_aspect` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fit',
  `last_itv_id` int(11) NOT NULL DEFAULT '0',
  `units` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'metric',
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `lock_device` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mag_id`),
  KEY `user_id` (`user_id`),
  KEY `mac` (`mac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mag_devices`
--

LOCK TABLES `mag_devices` WRITE;
/*!40000 ALTER TABLE `mag_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `mag_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mag_events`
--

DROP TABLE IF EXISTS `mag_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mag_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `mag_device_id` int(11) NOT NULL,
  `event` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `need_confirm` tinyint(3) NOT NULL DEFAULT '0',
  `msg` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `reboot_after_ok` tinyint(3) NOT NULL DEFAULT '0',
  `auto_hide_timeout` tinyint(3) DEFAULT '0',
  `send_time` int(50) NOT NULL,
  `additional_services_on` tinyint(3) NOT NULL DEFAULT '1',
  `anec` tinyint(3) NOT NULL DEFAULT '0',
  `vclub` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `mag_device_id` (`mag_device_id`),
  KEY `event` (`event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mag_events`
--

LOCK TABLES `mag_events` WRITE;
/*!40000 ALTER TABLE `mag_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `mag_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mag_logs`
--

DROP TABLE IF EXISTS `mag_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mag_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mag_id` int(11) DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mag_id` (`mag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mag_logs`
--

LOCK TABLES `mag_logs` WRITE;
/*!40000 ALTER TABLE `mag_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mag_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_groups`
--

DROP TABLE IF EXISTS `member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `group_color` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#000000',
  `is_banned` tinyint(4) NOT NULL DEFAULT '0',
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `is_reseller` tinyint(4) NOT NULL,
  `total_allowed_gen_trials` int(11) NOT NULL DEFAULT '0',
  `total_allowed_gen_in` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delete_users` tinyint(4) NOT NULL DEFAULT '0',
  `allowed_pages` text COLLATE utf8_unicode_ci NOT NULL,
  `can_delete` tinyint(4) NOT NULL DEFAULT '1',
  `reseller_force_server` tinyint(4) NOT NULL DEFAULT '0',
  `create_sub_resellers_price` float NOT NULL DEFAULT '0',
  `create_sub_resellers` tinyint(4) NOT NULL DEFAULT '0',
  `alter_packages_ids` tinyint(4) NOT NULL DEFAULT '0',
  `alter_packages_prices` tinyint(4) NOT NULL DEFAULT '0',
  `reseller_client_connection_logs` tinyint(4) NOT NULL DEFAULT '0',
  `reseller_assign_pass` tinyint(4) NOT NULL DEFAULT '0',
  `allow_change_pass` tinyint(4) NOT NULL DEFAULT '0',
  `allow_import` tinyint(4) NOT NULL DEFAULT '0',
  `allow_export` tinyint(4) NOT NULL DEFAULT '0',
  `reseller_trial_credit_allow` int(11) NOT NULL DEFAULT '0',
  `edit_mac` tinyint(4) NOT NULL DEFAULT '0',
  `edit_isplock` tinyint(4) NOT NULL DEFAULT '0',
  `reset_stb_data` tinyint(4) NOT NULL DEFAULT '0',
  `reseller_bonus_package_inc` tinyint(4) NOT NULL DEFAULT '0',
  `allow_download` tinyint(4) NOT NULL DEFAULT '1',
  `minimum_trial_credits` int(16) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`),
  KEY `is_admin` (`is_admin`),
  KEY `is_banned` (`is_banned`),
  KEY `is_reseller` (`is_reseller`),
  KEY `can_delete` (`can_delete`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_groups`
--

LOCK TABLES `member_groups` WRITE;
/*!40000 ALTER TABLE `member_groups` DISABLE KEYS */;
INSERT INTO `member_groups` (`group_id`, `group_name`, `group_color`, `is_banned`, `is_admin`, `is_reseller`, `total_allowed_gen_trials`, `total_allowed_gen_in`, `delete_users`, `allowed_pages`, `can_delete`, `reseller_force_server`, `create_sub_resellers_price`, `create_sub_resellers`, `alter_packages_ids`, `alter_packages_prices`, `reseller_client_connection_logs`, `reseller_assign_pass`, `allow_change_pass`, `allow_import`, `allow_export`, `reseller_trial_credit_allow`, `edit_mac`, `edit_isplock`, `reset_stb_data`, `reseller_bonus_package_inc`, `allow_download`, `minimum_trial_credits`) VALUES (1,'Channel Admin','#FF0000',0,1,0,0,'day',0,'[\"add_stream\",\"edit_stream\",\"streams\",\"archive\",\"add_movie\",\"edit_movie\",\"import_movies\",\"filexplorer\",\"movies\",\"add_series\",\"series_list\",\"edit_series\",\"add_episode\",\"edit_episode\",\"import_episodes\",\"series\",\"add_radio\",\"edit_radio\",\"radio\",\"create_channel\",\"edit_cchannel\",\"manage_cchannels\",\"mass_sedits\",\"mass_sedits_vod\",\"epg\",\"epg_edit\",\"tprofiles\",\"categories\",\"edit_cat\",\"stream_tools\",\"add_bouquet\",\"edit_bouquet\",\"bouquets\"]',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0),(2,'Registered Users','#66FF66',0,0,0,0,'',0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0),(3,'Banned','#194775',1,0,0,0,'',0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0),(4,'Resellers','#FF9933',0,0,1,100000,'month',0,'[]',0,0,0,1,1,0,1,1,1,1,0,1,1,1,1,0,1,0);
/*!40000 ALTER TABLE `member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_containers`
--

DROP TABLE IF EXISTS `movie_containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_containers` (
  `container_id` int(11) NOT NULL AUTO_INCREMENT,
  `container_extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `container_header` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`container_id`),
  KEY `container_extension` (`container_extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_containers`
--

LOCK TABLES `movie_containers` WRITE;
/*!40000 ALTER TABLE `movie_containers` DISABLE KEYS */;
/*!40000 ALTER TABLE `movie_containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_trial` tinyint(4) NOT NULL,
  `is_official` tinyint(4) NOT NULL,
  `trial_credits` float NOT NULL,
  `official_credits` float NOT NULL,
  `trial_duration` int(11) NOT NULL,
  `trial_duration_in` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `official_duration` int(11) NOT NULL,
  `official_duration_in` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `groups` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `bouquets` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `can_gen_mag` tinyint(4) NOT NULL DEFAULT '0',
  `only_mag` tinyint(4) NOT NULL DEFAULT '0',
  `output_formats` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `is_isplock` tinyint(4) NOT NULL DEFAULT '0',
  `max_connections` int(11) NOT NULL DEFAULT '1',
  `is_restreamer` tinyint(4) NOT NULL DEFAULT '0',
  `force_server_id` int(11) NOT NULL DEFAULT '0',
  `can_gen_e2` tinyint(4) NOT NULL DEFAULT '0',
  `only_e2` tinyint(4) NOT NULL DEFAULT '0',
  `forced_country` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `lock_device` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `is_trial` (`is_trial`),
  KEY `is_official` (`is_official`),
  KEY `can_gen_mag` (`can_gen_mag`),
  KEY `can_gen_e2` (`can_gen_e2`),
  KEY `only_e2` (`only_e2`),
  KEY `only_mag` (`only_mag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_userlog`
--

DROP TABLE IF EXISTS `reg_userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL,
  `username` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `password` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date` int(30) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_userlog`
--

LOCK TABLES `reg_userlog` WRITE;
/*!40000 ALTER TABLE `reg_userlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `reg_userlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_users`
--

DROP TABLE IF EXISTS `reg_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_registered` int(11) NOT NULL,
  `verify_key` mediumtext COLLATE utf8_unicode_ci,
  `last_login` int(11) DEFAULT NULL,
  `member_group_id` int(11) NOT NULL,
  `verified` int(11) NOT NULL DEFAULT '0',
  `credits` float NOT NULL DEFAULT '0',
  `notes` mediumtext COLLATE utf8_unicode_ci,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `default_lang` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `reseller_dns` text COLLATE utf8_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `override_packages` text COLLATE utf8_unicode_ci,
  `google_2fa_sec` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dark_mode` int(1) NOT NULL DEFAULT '0',
  `sidebar` int(1) NOT NULL DEFAULT '0',
  `expanded_sidebar` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `member_group_id` (`member_group_id`),
  KEY `username` (`username`),
  KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_users`
--

LOCK TABLES `reg_users` WRITE;
/*!40000 ALTER TABLE `reg_users` DISABLE KEYS */;
INSERT INTO `reg_users` (`id`, `username`, `password`, `email`, `ip`, `date_registered`, `verify_key`, `last_login`, `member_group_id`, `verified`, `credits`, `notes`, `status`, `default_lang`, `reseller_dns`, `owner_id`, `override_packages`, `google_2fa_sec`, `dark_mode`, `sidebar`, `expanded_sidebar`) VALUES (1,'admin','$6$rounds=20000$xtreamcodes$UOJ0wjI3aGHXQ0mmKePPT7M6puVJ/akEhoSxnkaYvZvFaWcuxaKP9FFEi91CzAWhVllGG2xsZcQbp1OAisRAC1','admin@website.com','186.78.89.109',0,NULL,1663714241,1,1,0,NULL,1,'','tv.tvgol.xyz',2,'[]','',0,0,0),(2,'tvgp2022','$6$rounds=20000$xtreamcodes$1k2HniJWpa1mQQ9/cuxDanTQmw14cnTZ04TpuKGwLskcV8VvqPcCdd16IAaD0TICuV9ogyoeaLeAQwRVmRkaj1','ppppppp@gmail.com','179.8.2.172',0,NULL,1663692965,1,0,1,'',1,'','',1,'[]','',0,0,0),(4,'emir5320','$6$rounds=20000$xtreamcodes$G6hkiPQ2aSzK00D7CGCMWQoSlWyAdU5wxPtANk81.gNhcIFrtEC2RMct.uU3JKtL/sQgSxs35io4t5jFk80qU.','ppppappa@gmail.com','179.1.48.40',0,NULL,1663590320,1,0,0,'',1,'','',1,'[]','',0,0,0);
/*!40000 ALTER TABLE `reg_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reseller_imex`
--

DROP TABLE IF EXISTS `reseller_imex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reseller_imex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_id` int(11) NOT NULL,
  `header` longtext NOT NULL,
  `data` longtext NOT NULL,
  `accepted` tinyint(4) NOT NULL DEFAULT '0',
  `finished` tinyint(4) NOT NULL DEFAULT '0',
  `bouquet_ids` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reg_id` (`reg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reseller_imex`
--

LOCK TABLES `reseller_imex` WRITE;
/*!40000 ALTER TABLE `reseller_imex` DISABLE KEYS */;
/*!40000 ALTER TABLE `reseller_imex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rtmp_ips`
--

DROP TABLE IF EXISTS `rtmp_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rtmp_ips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rtmp_ips`
--

LOCK TABLES `rtmp_ips` WRITE;
/*!40000 ALTER TABLE `rtmp_ips` DISABLE KEYS */;
INSERT INTO `rtmp_ips` (`id`, `ip`, `notes`) VALUES (3,'186.78.89.109','0'),(4,'179.1.48.40','0');
/*!40000 ALTER TABLE `rtmp_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `cover` varchar(255) NOT NULL,
  `cover_big` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `plot` text NOT NULL,
  `cast` text NOT NULL,
  `rating` int(11) NOT NULL,
  `director` varchar(255) NOT NULL,
  `releaseDate` varchar(255) NOT NULL,
  `last_modified` int(11) NOT NULL,
  `tmdb_id` int(11) NOT NULL,
  `seasons` mediumtext NOT NULL,
  `episode_run_time` int(11) NOT NULL DEFAULT '0',
  `backdrop_path` text NOT NULL,
  `youtube_trailer` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `last_modified` (`last_modified`),
  KEY `tmdb_id` (`tmdb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series_episodes`
--

DROP TABLE IF EXISTS `series_episodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `series_episodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `season_num` int(11) NOT NULL,
  `series_id` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `season_num` (`season_num`),
  KEY `series_id` (`series_id`),
  KEY `stream_id` (`stream_id`),
  KEY `sort` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series_episodes`
--

LOCK TABLES `series_episodes` WRITE;
/*!40000 ALTER TABLE `series_episodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `series_episodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_activity`
--

DROP TABLE IF EXISTS `server_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_server_id` int(11) NOT NULL,
  `dest_server_id` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `bandwidth` int(11) NOT NULL DEFAULT '0',
  `date_start` int(11) NOT NULL,
  `date_end` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `source_server_id` (`source_server_id`),
  KEY `dest_server_id` (`dest_server_id`),
  KEY `stream_id` (`stream_id`),
  KEY `pid` (`pid`),
  KEY `date_end` (`date_end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_activity`
--

LOCK TABLES `server_activity` WRITE;
/*!40000 ALTER TABLE `server_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `bouquet_name` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `live_streaming_pass` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `email_verify_sub` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `email_verify_cont` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `email_forgot_sub` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `email_forgot_cont` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `mail_from` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `smtp_host` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `min_password` int(11) NOT NULL DEFAULT '5',
  `username_strlen` int(11) NOT NULL DEFAULT '15',
  `username_alpha` int(11) NOT NULL DEFAULT '1',
  `allow_multiple_accs` int(11) NOT NULL DEFAULT '0',
  `allow_registrations` int(11) NOT NULL DEFAULT '0',
  `server_name` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `smtp_username` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `smtp_password` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `email_new_pass_sub` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `logo_url` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `email_new_pass_cont` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `smtp_from_name` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_email` int(11) NOT NULL,
  `smtp_encryption` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `unique_id` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `copyrights_removed` tinyint(4) NOT NULL,
  `copyrights_text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `default_timezone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Europe/Athens',
  `default_locale` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en_GB.utf8',
  `allowed_stb_types` text COLLATE utf8_unicode_ci NOT NULL,
  `client_prebuffer` int(11) NOT NULL,
  `split_clients` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stream_max_analyze` int(11) NOT NULL DEFAULT '30',
  `show_not_on_air_video` tinyint(4) NOT NULL,
  `not_on_air_video_path` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `show_banned_video` tinyint(4) NOT NULL,
  `banned_video_path` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `show_expired_video` tinyint(4) NOT NULL,
  `expired_video_path` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `mag_container` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `probesize` int(11) NOT NULL DEFAULT '5000000',
  `allowed_ips_admin` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `block_svp` tinyint(4) NOT NULL DEFAULT '0',
  `allow_countries` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `user_auto_kick_hours` int(11) NOT NULL DEFAULT '0',
  `show_in_red_online` int(11) NOT NULL DEFAULT '0',
  `disallow_empty_user_agents` tinyint(4) DEFAULT '0',
  `show_all_category_mag` tinyint(4) NOT NULL DEFAULT '1',
  `default_lang` mediumtext COLLATE utf8_unicode_ci,
  `autobackup_status` int(11) NOT NULL DEFAULT '0',
  `autobackup_pass` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `flood_limit` int(11) NOT NULL DEFAULT '0',
  `flood_ips_exclude` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `reshare_deny_addon` tinyint(4) NOT NULL DEFAULT '0',
  `restart_http` tinyint(4) NOT NULL DEFAULT '0',
  `css_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flood_seconds` int(11) NOT NULL DEFAULT '5',
  `flood_max_attempts` int(11) NOT NULL DEFAULT '1',
  `flood_apply_clients` int(11) NOT NULL DEFAULT '1',
  `flood_apply_restreamers` int(11) NOT NULL DEFAULT '0',
  `backup_source_all` int(11) NOT NULL DEFAULT '0',
  `flood_get_block` int(11) NOT NULL DEFAULT '0',
  `portal_block` int(11) NOT NULL DEFAULT '0',
  `streaming_block` int(11) NOT NULL DEFAULT '0',
  `stream_start_delay` int(11) NOT NULL DEFAULT '20000',
  `hash_lb` tinyint(4) NOT NULL DEFAULT '1',
  `vod_bitrate_plus` int(11) NOT NULL DEFAULT '60',
  `read_buffer_size` int(11) NOT NULL DEFAULT '8192',
  `tv_channel_default_aspect` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fit',
  `playback_limit` int(11) NOT NULL DEFAULT '3',
  `show_tv_channel_logo` tinyint(4) NOT NULL DEFAULT '1',
  `show_channel_logo_in_preview` tinyint(4) NOT NULL DEFAULT '1',
  `enable_connection_problem_indication` tinyint(4) NOT NULL DEFAULT '1',
  `enable_pseudo_hls` tinyint(4) NOT NULL DEFAULT '1',
  `vod_limit_at` int(11) NOT NULL DEFAULT '0',
  `client_area_plugin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'flow',
  `persistent_connections` tinyint(4) NOT NULL DEFAULT '0',
  `record_max_length` int(11) NOT NULL DEFAULT '180',
  `total_records_length` int(11) NOT NULL DEFAULT '600',
  `max_local_recordings` int(11) NOT NULL DEFAULT '10',
  `allowed_stb_types_for_local_recording` text COLLATE utf8_unicode_ci NOT NULL,
  `allowed_stb_types_rec` text COLLATE utf8_unicode_ci NOT NULL,
  `show_captcha` int(11) NOT NULL DEFAULT '1',
  `dynamic_timezone` tinyint(4) NOT NULL DEFAULT '1',
  `stalker_theme` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'digital',
  `rtmp_random` tinyint(4) NOT NULL DEFAULT '1',
  `api_ips` text COLLATE utf8_unicode_ci NOT NULL,
  `crypt_load_balancing` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `use_buffer` tinyint(4) NOT NULL DEFAULT '0',
  `restreamer_prebuffer` tinyint(4) NOT NULL DEFAULT '0',
  `audio_restart_loss` tinyint(4) NOT NULL DEFAULT '0',
  `stalker_lock_images` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `channel_number_type` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'bouquet',
  `stb_change_pass` tinyint(4) NOT NULL DEFAULT '0',
  `enable_debug_stalker` tinyint(4) NOT NULL DEFAULT '0',
  `online_capacity_interval` smallint(6) NOT NULL DEFAULT '10',
  `always_enabled_subtitles` tinyint(4) NOT NULL DEFAULT '1',
  `test_download_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `xc_support_allow` tinyint(4) NOT NULL DEFAULT '1',
  `e2_arm7a` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `e2_mipsel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `e2_mips32el` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `e2_sh4` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `e2_arm` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `api_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message_of_day` text COLLATE utf8_unicode_ci NOT NULL,
  `double_auth` tinyint(4) NOT NULL DEFAULT '0',
  `mysql_remote_sec` tinyint(4) NOT NULL DEFAULT '0',
  `enable_isp_lock` tinyint(4) NOT NULL DEFAULT '0',
  `show_isps` tinyint(4) NOT NULL DEFAULT '1',
  `userpanel_mainpage` longtext COLLATE utf8_unicode_ci NOT NULL,
  `save_closed_connection` tinyint(4) NOT NULL DEFAULT '1',
  `client_logs_save` tinyint(4) NOT NULL DEFAULT '1',
  `get_real_ip_client` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `case_sensitive_line` tinyint(4) NOT NULL DEFAULT '1',
  `county_override_1st` tinyint(4) NOT NULL DEFAULT '0',
  `disallow_2nd_ip_con` tinyint(4) NOT NULL DEFAULT '0',
  `firewall` tinyint(4) NOT NULL DEFAULT '0',
  `new_sorting_bouquet` tinyint(4) NOT NULL DEFAULT '1',
  `split_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'con',
  `use_mdomain_in_lists` tinyint(4) NOT NULL DEFAULT '0',
  `use_https` text COLLATE utf8_unicode_ci NOT NULL,
  `priority_backup` tinyint(4) NOT NULL DEFAULT '0',
  `use_buffer_table` tinyint(4) NOT NULL DEFAULT '0',
  `tmdb_api_key` text COLLATE utf8_unicode_ci NOT NULL,
  `toggle_menu` tinyint(4) NOT NULL DEFAULT '0',
  `mobile_apps` tinyint(4) NOT NULL DEFAULT '0',
  `stalker_container_priority` text COLLATE utf8_unicode_ci NOT NULL,
  `gen_container_priority` text COLLATE utf8_unicode_ci NOT NULL,
  `tmdb_default` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `series_custom_name` tinyint(4) NOT NULL DEFAULT '0',
  `mag_security` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `bouquet_name`, `live_streaming_pass`, `email_verify_sub`, `email_verify_cont`, `email_forgot_sub`, `email_forgot_cont`, `mail_from`, `smtp_host`, `smtp_port`, `min_password`, `username_strlen`, `username_alpha`, `allow_multiple_accs`, `allow_registrations`, `server_name`, `smtp_username`, `smtp_password`, `email_new_pass_sub`, `logo_url`, `email_new_pass_cont`, `smtp_from_name`, `confirmation_email`, `smtp_encryption`, `unique_id`, `copyrights_removed`, `copyrights_text`, `default_timezone`, `default_locale`, `allowed_stb_types`, `client_prebuffer`, `split_clients`, `stream_max_analyze`, `show_not_on_air_video`, `not_on_air_video_path`, `show_banned_video`, `banned_video_path`, `show_expired_video`, `expired_video_path`, `mag_container`, `probesize`, `allowed_ips_admin`, `block_svp`, `allow_countries`, `user_auto_kick_hours`, `show_in_red_online`, `disallow_empty_user_agents`, `show_all_category_mag`, `default_lang`, `autobackup_status`, `autobackup_pass`, `flood_limit`, `flood_ips_exclude`, `reshare_deny_addon`, `restart_http`, `css_layout`, `flood_seconds`, `flood_max_attempts`, `flood_apply_clients`, `flood_apply_restreamers`, `backup_source_all`, `flood_get_block`, `portal_block`, `streaming_block`, `stream_start_delay`, `hash_lb`, `vod_bitrate_plus`, `read_buffer_size`, `tv_channel_default_aspect`, `playback_limit`, `show_tv_channel_logo`, `show_channel_logo_in_preview`, `enable_connection_problem_indication`, `enable_pseudo_hls`, `vod_limit_at`, `client_area_plugin`, `persistent_connections`, `record_max_length`, `total_records_length`, `max_local_recordings`, `allowed_stb_types_for_local_recording`, `allowed_stb_types_rec`, `show_captcha`, `dynamic_timezone`, `stalker_theme`, `rtmp_random`, `api_ips`, `crypt_load_balancing`, `use_buffer`, `restreamer_prebuffer`, `audio_restart_loss`, `stalker_lock_images`, `channel_number_type`, `stb_change_pass`, `enable_debug_stalker`, `online_capacity_interval`, `always_enabled_subtitles`, `test_download_url`, `xc_support_allow`, `e2_arm7a`, `e2_mipsel`, `e2_mips32el`, `e2_sh4`, `e2_arm`, `api_pass`, `message_of_day`, `double_auth`, `mysql_remote_sec`, `enable_isp_lock`, `show_isps`, `userpanel_mainpage`, `save_closed_connection`, `client_logs_save`, `get_real_ip_client`, `case_sensitive_line`, `county_override_1st`, `disallow_2nd_ip_con`, `firewall`, `new_sorting_bouquet`, `split_by`, `use_mdomain_in_lists`, `use_https`, `priority_backup`, `use_buffer_table`, `tmdb_api_key`, `toggle_menu`, `mobile_apps`, `stalker_container_priority`, `gen_container_priority`, `tmdb_default`, `series_custom_name`, `mag_security`) VALUES (1,'Xtream Codes','QRz5DtAstXLBD3mns8UU','Verify Registration @ {SERVER_NAME}','Hello,<p><br /></p><p>Please Click at the following URL to activate your account {VERIFY_LINK}</p><p><br /></p><p>{SERVER_NAME} Team</p><p>Thank you</p>','Forgot Password @ {SERVER_NAME}','Hello,<p><br /></p><p>Someone requested new password @  {SERVER_NAME} . To verify this request please click at the following link: {FORGOT_LINK}<br /></p><p><br /></p><p>{SERVER_NAME} Team</p><p>Thank you</p>','support@website.com','mail.website.com',0,5,15,0,1,0,'Xtream Codes','support@website.com','','Your New Password @ {SERVER_NAME}','','Hello,<p><br /></p><p>Your New Password is: {NEW_PASSWORD}<br /></p><p><br /></p><p>{SERVER_NAME} Team</p><p>Thank you</p>','Support',0,'no','Qh4h0th61b',0,'Xtream Codes','America/Havana','en_GB.utf8','[\"AuraHD\",\"AuraHD2\",\"AuraHD3\",\"AuraHD4\",\"AuraHD5\",\"AuraHD6\",\"AuraHD7\",\"AuraHD8\",\"AuraHD9\",\"MAG200\",\"MAG245\",\"MAG245D\",\"MAG250\",\"MAG254\",\"MAG255\",\"MAG256\",\"MAG257\",\"MAG260\",\"MAG270\",\"MAG275\",\"MAG322\",\"MAG323\",\"MAG324\",\"MAG325\",\"MAG349\",\"MAG350\",\"MAG351\",\"MAG352\",\"WR320\"]',20,'equal',5000000,0,'',0,'',0,'','ts',5000000,'',0,'[\"ALL\",\"A1\",\"A2\",\"O1\",\"AF\",\"AX\",\"AL\",\"DZ\",\"AS\",\"AD\",\"AO\",\"AI\",\"AQ\",\"AG\",\"AR\",\"AM\",\"AW\",\"AU\",\"AT\",\"AZ\",\"BS\",\"BH\",\"BD\",\"BB\",\"BY\",\"BE\",\"BZ\",\"BJ\",\"BM\",\"BT\",\"BO\",\"BA\",\"BW\",\"BV\",\"BQ\",\"BR\",\"IO\",\"BN\",\"BG\",\"BF\",\"BI\",\"KH\",\"CM\",\"CA\",\"CV\",\"KY\",\"CF\",\"TD\",\"CL\",\"CN\",\"CX\",\"CC\",\"CO\",\"KM\",\"CG\",\"CD\",\"CK\",\"CR\",\"CI\",\"HR\",\"CU\",\"CW\",\"CY\",\"CZ\",\"DK\",\"DJ\",\"DM\",\"DO\",\"EC\",\"EG\",\"SV\",\"GQ\",\"ER\",\"EE\",\"ET\",\"EU\",\"FK\",\"FO\",\"FJ\",\"FI\",\"FR\",\"GF\",\"PF\",\"TF\",\"MK\",\"GA\",\"GM\",\"GE\",\"DE\",\"GH\",\"GI\",\"GR\",\"GL\",\"GD\",\"GP\",\"GU\",\"GT\",\"GG\",\"GN\",\"GW\",\"GY\",\"HT\",\"HM\",\"VA\",\"HN\",\"HK\",\"HU\",\"IS\",\"IN\",\"ID\",\"IR\",\"IQ\",\"IE\",\"IM\",\"IL\",\"IT\",\"JM\",\"JP\",\"JE\",\"JO\",\"KZ\",\"KE\",\"KI\",\"KR\",\"KV\",\"KW\",\"KG\",\"LA\",\"LV\",\"LB\",\"LS\",\"LR\",\"LY\",\"LI\",\"LT\",\"LU\",\"MO\",\"MG\",\"MW\",\"MY\",\"MV\",\"ML\",\"MT\",\"MH\",\"MQ\",\"MR\",\"MU\",\"YT\",\"MX\",\"FM\",\"MD\",\"MC\",\"MN\",\"ME\",\"MS\",\"MA\",\"MZ\",\"MM\",\"NA\",\"NR\",\"NP\",\"NL\",\"AN\",\"NC\",\"NZ\",\"NI\",\"NE\",\"NG\",\"NU\",\"NF\",\"MP\",\"NO\",\"OM\",\"PK\",\"PW\",\"PS\",\"PA\",\"PG\",\"PY\",\"PE\",\"PH\",\"PN\",\"PL\",\"PT\",\"PR\",\"QA\",\"RE\",\"RO\",\"RU\",\"RW\",\"BL\",\"SH\",\"KN\",\"LC\",\"MF\",\"PM\",\"VC\",\"WS\",\"SM\",\"ST\",\"SA\",\"SN\",\"RS\",\"SC\",\"SL\",\"SG\",\"SK\",\"SI\",\"SB\",\"SO\",\"ZA\",\"GS\",\"ES\",\"LK\",\"SD\",\"SR\",\"SJ\",\"SZ\",\"SE\",\"SX\",\"CH\",\"SY\",\"TW\",\"TJ\",\"TZ\",\"TH\",\"TL\",\"TG\",\"TK\",\"TO\",\"TT\",\"TN\",\"TR\",\"TM\",\"TC\",\"TV\",\"UG\",\"UA\",\"AE\",\"GB\",\"US\",\"UM\",\"UY\",\"UZ\",\"VU\",\"VE\",\"VN\",\"VG\",\"VI\",\"WF\",\"EH\",\"YE\",\"ZM\",\"ZW\"]',3,2,0,1,'English',0,'',40,'',0,0,'light',2,3,0,0,0,0,0,0,0,0,200,8192,'fit',3,1,1,1,1,0,'flow',1,180,600,10,'[\"MAG255\",\"MAG256\",\"MAG257\"]','',1,1,'default',1,'','5VQPAS8OkZMOAXKlmODE',0,0,0,'','bouquet',1,0,10,0,'',0,'','','','','','','Welcome to Xtream Codes Reborn',1,0,0,1,'[]',1,1,'',1,0,0,1,1,'conn',0,'',0,0,'',0,0,'[\"mp4\",\"mkv\",\"avi\"]','[\"mp4\",\"mkv\",\"avi\"]','en',0,1);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signals`
--

DROP TABLE IF EXISTS `signals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signals` (
  `signal_id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `rtmp` tinyint(4) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`signal_id`),
  KEY `server_id` (`server_id`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signals`
--

LOCK TABLES `signals` WRITE;
/*!40000 ALTER TABLE `signals` DISABLE KEYS */;
/*!40000 ALTER TABLE `signals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stream_categories`
--

DROP TABLE IF EXISTS `stream_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stream_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `category_type` (`category_type`),
  KEY `cat_order` (`cat_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stream_categories`
--

LOCK TABLES `stream_categories` WRITE;
/*!40000 ALTER TABLE `stream_categories` DISABLE KEYS */;
INSERT INTO `stream_categories` (`id`, `category_type`, `category_name`, `parent_id`, `cat_order`) VALUES (1,'live','CHILE!',0,1);
/*!40000 ALTER TABLE `stream_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stream_subcategories`
--

DROP TABLE IF EXISTS `stream_subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stream_subcategories` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sub_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stream_subcategories`
--

LOCK TABLES `stream_subcategories` WRITE;
/*!40000 ALTER TABLE `stream_subcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `stream_subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streaming_servers`
--

DROP TABLE IF EXISTS `streaming_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streaming_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `domain_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `server_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vpn_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ssh_password` mediumtext COLLATE utf8_unicode_ci,
  `ssh_port` int(11) DEFAULT NULL,
  `diff_time_main` int(11) NOT NULL DEFAULT '0',
  `http_broadcast_port` int(11) NOT NULL,
  `total_clients` int(11) NOT NULL DEFAULT '0',
  `system_os` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `network_interface` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latency` float NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '-1',
  `enable_geoip` int(11) NOT NULL DEFAULT '0',
  `geoip_countries` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `last_check_ago` int(11) NOT NULL DEFAULT '0',
  `can_delete` tinyint(4) NOT NULL DEFAULT '1',
  `server_hardware` text COLLATE utf8_unicode_ci NOT NULL,
  `total_services` int(11) NOT NULL DEFAULT '3',
  `persistent_connections` tinyint(4) NOT NULL DEFAULT '0',
  `rtmp_port` int(11) NOT NULL DEFAULT '8001',
  `geoip_type` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'low_priority',
  `isp_names` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `isp_type` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'low_priority',
  `enable_isp` tinyint(4) NOT NULL DEFAULT '0',
  `boost_fpm` tinyint(4) NOT NULL DEFAULT '0',
  `http_ports_add` text COLLATE utf8_unicode_ci NOT NULL,
  `network_guaranteed_speed` int(11) NOT NULL DEFAULT '0',
  `https_broadcast_port` int(11) NOT NULL DEFAULT '25463',
  `https_ports_add` text COLLATE utf8_unicode_ci NOT NULL,
  `whitelist_ips` text COLLATE utf8_unicode_ci NOT NULL,
  `watchdog_data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `timeshift_only` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `server_ip` (`server_ip`,`http_broadcast_port`),
  KEY `total_clients` (`total_clients`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streaming_servers`
--

LOCK TABLES `streaming_servers` WRITE;
/*!40000 ALTER TABLE `streaming_servers` DISABLE KEYS */;
INSERT INTO `streaming_servers` (`id`, `server_name`, `domain_name`, `server_ip`, `vpn_ip`, `ssh_password`, `ssh_port`, `diff_time_main`, `http_broadcast_port`, `total_clients`, `system_os`, `network_interface`, `latency`, `status`, `enable_geoip`, `geoip_countries`, `last_check_ago`, `can_delete`, `server_hardware`, `total_services`, `persistent_connections`, `rtmp_port`, `geoip_type`, `isp_names`, `isp_type`, `enable_isp`, `boost_fpm`, `http_ports_add`, `network_guaranteed_speed`, `https_broadcast_port`, `https_ports_add`, `whitelist_ips`, `watchdog_data`, `timeshift_only`) VALUES (1,'Main Server','','37.143.129.131','',NULL,NULL,0,25461,1000,'Ubuntu 18.04 LTS','eth0',0,1,0,'',0,0,'{\"total_ram\":8168240,\"total_used\":1486052,\"cores\":0,\"threads\":2,\"kernel\":\"4.15.0-22-generic\",\"total_running_streams\":\"0\\n\",\"cpu_name\":\"Intel(R) Xeon(R) Gold 6240L CPU @ 2.60GHz\",\"cpu_usage\":2,\"network_speed\":\"-1\\n\",\"bytes_sent\":0.87,\"bytes_received\":1.23}',3,0,25462,'low_priority','','low_priority',0,1,'',1000,25463,'','[\"127.0.0.1\",\"37.143.129.131\",\"\"]','{\"cpu\":2,\"cpu_cores\":2,\"cpu_avg\":10,\"total_mem\":8168240,\"total_mem_free\":6751580,\"total_mem_used\":1416660,\"total_mem_used_percent\":17.343515861434042,\"total_disk_space\":131601813504,\"uptime\":\"5m 2s\",\"total_running_streams\":\"0\\n\",\"bytes_sent\":0.08,\"bytes_received\":0.57,\"cpu_load_average\":0.2}',0),(2,'LB','','89.163.148.211','',NULL,NULL,0,25461,1000,'Ubuntu 14.04.5 LTS','eth0',0.009,1,0,'[]',1663714323,1,'{\"total_ram\":65836208,\"total_used\":1917028,\"cores\":0,\"threads\":12,\"kernel\":\"4.15.0-189-generic\",\"cpu_name\":\"Intel(R) Core(TM) i7-5820K CPU @ 3.30GHz\",\"total_running_streams\":\"5\\n\",\"cpu_usage\":0.4166666666666667,\"network_speed\":false,\"bytes_sent\":0,\"bytes_received\":0}',3,0,25462,'high_priority','[]','low_priority',0,0,'',1000,25463,'','[\"127.0.0.1\",\"89.163.148.211\",\"\"]','{\"cpu\":0,\"cpu_cores\":12,\"cpu_avg\":0,\"total_mem\":65836208,\"total_mem_free\":63983436,\"total_mem_used\":1852772,\"total_mem_used_percent\":2.8142143302056524,\"total_disk_space\":235922489344,\"uptime\":\"16d 5h 35m 31s\",\"total_running_streams\":\"5\\n\",\"bytes_sent\":0,\"bytes_received\":0,\"cpu_load_average\":0.08}',0),(5,'LB2','','217.79.189.226','',NULL,NULL,0,25461,1000,'','inet',0.005,1,0,'[]',1663714323,1,'{\"total_ram\":65863580,\"total_used\":5802024,\"cores\":0,\"threads\":16,\"kernel\":\"4.15.0-192-generic\",\"cpu_name\":\"Intel(R) Xeon(R) CPU D-1540 @ 2.00GHz\",\"total_running_streams\":\"80\\n\",\"cpu_usage\":5.4375,\"network_speed\":false,\"bytes_sent\":0,\"bytes_received\":0}',3,0,25462,'low_priority','','low_priority',0,0,'',1000,25463,'','[\"127.0.0.1\",\"217.79.189.226\",\"\"]','{\"cpu\":5,\"cpu_cores\":16,\"cpu_avg\":6,\"total_mem\":65863580,\"total_mem_free\":59941988,\"total_mem_used\":5921592,\"total_mem_used_percent\":8.990692580026776,\"total_disk_space\":1958773313536,\"uptime\":\"9m 34s\",\"total_running_streams\":\"80\\n\",\"bytes_sent\":0,\"bytes_received\":0,\"cpu_load_average\":1.11}',0);
/*!40000 ALTER TABLE `streaming_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streams`
--

DROP TABLE IF EXISTS `streams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `stream_display_name` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `stream_source` mediumtext COLLATE utf8_unicode_ci,
  `stream_icon` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `notes` mediumtext COLLATE utf8_unicode_ci,
  `created_channel_location` int(11) DEFAULT NULL,
  `enable_transcode` tinyint(4) NOT NULL DEFAULT '0',
  `transcode_attributes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom_ffmpeg` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `movie_propeties` mediumtext COLLATE utf8_unicode_ci,
  `movie_subtitles` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `read_native` tinyint(4) NOT NULL DEFAULT '1',
  `target_container` text COLLATE utf8_unicode_ci,
  `stream_all` tinyint(4) NOT NULL DEFAULT '0',
  `remove_subtitles` tinyint(4) NOT NULL DEFAULT '0',
  `custom_sid` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `epg_id` int(11) DEFAULT NULL,
  `channel_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `epg_lang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `auto_restart` text COLLATE utf8_unicode_ci NOT NULL,
  `transcode_profile_id` int(11) NOT NULL DEFAULT '0',
  `pids_create_channel` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `cchannel_rsources` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `gen_timestamps` tinyint(4) NOT NULL DEFAULT '1',
  `added` int(11) NOT NULL,
  `series_no` int(11) NOT NULL DEFAULT '0',
  `direct_source` tinyint(4) NOT NULL DEFAULT '0',
  `tv_archive_duration` int(11) NOT NULL DEFAULT '0',
  `tv_archive_server_id` int(11) NOT NULL DEFAULT '0',
  `tv_archive_pid` int(11) NOT NULL DEFAULT '0',
  `movie_symlink` tinyint(4) NOT NULL DEFAULT '0',
  `redirect_stream` tinyint(4) NOT NULL DEFAULT '0',
  `rtmp_output` tinyint(4) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL,
  `allow_record` tinyint(4) NOT NULL DEFAULT '0',
  `probesize_ondemand` int(11) NOT NULL DEFAULT '128000',
  `custom_map` text COLLATE utf8_unicode_ci NOT NULL,
  `external_push` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `delay_minutes` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `category_id` (`category_id`),
  KEY `created_channel_location` (`created_channel_location`),
  KEY `enable_transcode` (`enable_transcode`),
  KEY `read_native` (`read_native`),
  KEY `epg_id` (`epg_id`),
  KEY `channel_id` (`channel_id`),
  KEY `transcode_profile_id` (`transcode_profile_id`),
  KEY `order` (`order`),
  KEY `direct_source` (`direct_source`),
  KEY `rtmp_output` (`rtmp_output`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streams`
--

LOCK TABLES `streams` WRITE;
/*!40000 ALTER TABLE `streams` DISABLE KEYS */;
INSERT INTO `streams` (`id`, `type`, `category_id`, `stream_display_name`, `stream_source`, `stream_icon`, `notes`, `created_channel_location`, `enable_transcode`, `transcode_attributes`, `custom_ffmpeg`, `movie_propeties`, `movie_subtitles`, `read_native`, `target_container`, `stream_all`, `remove_subtitles`, `custom_sid`, `epg_id`, `channel_id`, `epg_lang`, `order`, `auto_restart`, `transcode_profile_id`, `pids_create_channel`, `cchannel_rsources`, `gen_timestamps`, `added`, `series_no`, `direct_source`, `tv_archive_duration`, `tv_archive_server_id`, `tv_archive_pid`, `movie_symlink`, `redirect_stream`, `rtmp_output`, `number`, `allow_record`, `probesize_ondemand`, `custom_map`, `external_push`, `delay_minutes`) VALUES (274,1,1,'CL: Mega SD (VIP)','[\"http:\\/\\/erco2022.ddns.me:9000\\/ect15.ts\"]','','',NULL,0,'[]','',NULL,'',0,NULL,1,0,'',0,NULL,'',626,'',0,'','',1,1661745380,0,0,0,0,0,0,1,0,0,1,128000,'','[]',0),(275,1,1,'CL: Mega HD (VIP)','[\"http:\\/\\/erco2022.ddns.me:9000\\/ect14.ts\"]','','',NULL,0,'[]','',NULL,'',0,NULL,1,0,'',0,NULL,'',625,'',0,'','',1,1661745932,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(276,1,1,'CL: TVN SD (VIP)','[\"http:\\/\\/erco2022.ddns.me:9000\\/ect13.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',624,'',0,'','',1,1661746511,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(277,1,1,'CL: TVN HD (VIP)','[\"http:\\/\\/erco2022.ddns.me:9000\\/ect12.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',623,'',0,'','',1,1661746567,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(278,1,1,'CL: Chilevision SD (VIP)','[\"http:\\/\\/erco2022.ddns.me:9000\\/ect11.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',622,'',0,'','',1,1661882723,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(279,1,1,'CL: Chilevision  HD (VIP)','[\"http:\\/\\/erco2022.ddns.me:9000\\/ect10.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',621,'',0,'','',1,1661882794,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(280,1,1,'CL: La Red SD (VIP)','[\"http:\\/\\/erco2022.ddns.me:9000\\/ect9.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',620,'',0,'','',1,1661882923,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(281,1,1,'CL: La Red HD (VIP)','[\"http:\\/\\/erco2022.ddns.me:9000\\/ect8.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',618,'',0,'','',1,1661882973,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(282,1,1,'CL: Fox Sports 2 HD (VIP)','[\"http:\\/\\/erco2022.ddns.me:9000\\/ect3.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',617,'',0,'','',1,1661883772,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(283,1,1,'CL: Fox Sports 2 FHD (VIP)','[\"http:\\/\\/erco2022.ddns.me:9000\\/ect2.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',616,'',0,'','',1,1661883824,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(284,1,1,'CL: Fox Sports 1 HD (VIP)','[\"http:\\/\\/erco2022.ddns.me:9000\\/ect1.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',615,'',0,'','',1,1661885097,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(285,1,1,'CL: Fox Sports 1 FHD (VIP)','[\"http:\\/\\/erco2022.ddns.me:9000\\/ect0.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',614,'',0,'','',1,1661886328,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(286,1,1,'CL: Eventos Deportes CHILE (VIP)','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/tomb\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',573,'',0,'','',1,1661891287,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(287,1,1,'CL: TNT Sports FHD (H265) 60fps (VIP)','[\"http:\\/\\/erco2022.ddns.me:9020\\/ect0.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',627,'',0,'','',1,1661893948,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(288,1,1,'Cl: TNT Sports HD (VIP)','[\"http:\\/\\/erco2022.ddns.me:9020\\/ect1.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',639,'',0,'','',1,1661895538,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(289,1,1,'CL: TNT Sports HQ (VIP)','[\"http:\\/\\/erco2022.ddns.me:9020\\/etc2.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',629,'',0,'','',1,1661896109,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(290,1,1,'CL: TNT Sports SD  (VIP)','[\"http:\\/\\/erco2022.ddns.me:9020\\/ect3.ts\"]','','',NULL,0,'[]','',NULL,'',0,NULL,0,0,'',0,NULL,'',630,'',0,'','',1,1661896789,0,0,0,0,0,0,1,0,0,1,128000,'','[]',0),(291,1,1,'CL: Telecanal SD (VIP)','[\"http:\\/\\/erco2022.ddns.me:9000\\/ect7.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',631,'',0,'','',1,1661901181,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(292,1,1,'CL: Telecanal HD (VIP)','[\"http:\\/\\/erco2022.ddns.me:9000\\/ect6.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',632,'',0,'','',1,1661901250,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(293,1,1,'CL: CNN Chile FHD (VIP)','[\"http:\\/\\/erco2022.ddns.me:9000\\/ect4.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',633,'',0,'','',1,1662003168,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(294,1,1,'CL: CNN Chile HD (VIP)','[\"http:\\/\\/erco2022.ddns.me:9000\\/ect5.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',634,'',0,'','',1,1662003298,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(295,1,1,'SP: CL: Directv Chile FHD (H265) (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:7000\\/stream01\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',582,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(296,1,1,'SP: CL: Directv Chile HD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:7000\\/stream02\"]','','',NULL,0,'[]','',NULL,'',0,NULL,0,0,'',0,NULL,'',583,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,1,128000,'','[]',0),(297,1,1,'SP: CL: CDO Premiun HD (H265) (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:7000\\/stream03\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',584,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(298,1,1,'SP: CL: CDO Premiun HD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:7000\\/stream04\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',585,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(299,1,1,'SP: UY: VTV FHD (H265) (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:7000\\/stream05\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',586,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(300,1,1,'SP: UY: VTV HD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:7000\\/stream06\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',587,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(301,1,1,'SP: UY: VTV Plus HD (H265) (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:7000\\/stream07\"]','','',NULL,0,'[]','',NULL,'',0,NULL,0,0,'',0,NULL,'',588,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,1,128000,'','[]',0),(302,1,1,'SP: UY: VTV Plus HD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:7000\\/stream08\"]','','',NULL,0,'[]','',NULL,'',0,NULL,0,0,'',0,NULL,'',589,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,1,128000,'','[]',0),(303,1,1,'SP: CL: TNT Sports 2 HD (H265) (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:7001\\/stream01\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',590,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(304,1,1,'SP: CL: TNT Sports 2 SD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:7001\\/stream02\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',591,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(305,1,1,'SP: CL: ESPN Chile FHD (H265) (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:7001\\/stream03\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',592,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(306,1,1,'SP: CL: ESPN Chile HD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:7001\\/stream04\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',593,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(307,1,1,'SP: CL: TNT Sports 3 HD (H265) (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:7001\\/stream05\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',594,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(308,1,1,'SP: CL: TNT Sports 3 HD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:7001\\/stream06\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',595,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(309,1,1,'SP: CL: ESPN 2 FHD (H265) (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:7001\\/stream07\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',596,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,1,128000,'','[]',0),(310,1,1,'SP: CL: ESPN 2 HD  (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:7001\\/stream08\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',597,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(311,1,1,'LAT: Smithsonian Channel HD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:9000\\/0.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',598,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(312,1,1,'LAT: Smithsonian Channel SD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:9000\\/1.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',599,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(313,1,1,'CL: Via X 2 HD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:9000\\/2.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',600,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(314,1,1,'CL: Via X 2 SD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:9000\\/3.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',601,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(315,1,1,'LAT: Love Nature HD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:9000\\/4.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',602,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(316,1,1,'LAT: Love Nature SD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:9000\\/5.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',603,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(317,1,1,'CL: Via X HD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:9000\\/6.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',604,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(318,1,1,'CL: Via X SD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:9000\\/7.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',605,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(319,1,1,'CL: Nexoplay HD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:9000\\/8.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',606,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(320,1,1,'CL: Nexoplay SD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:9000\\/9.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',607,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(321,1,1,'CL: Via X Esports HD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:9000\\/10.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',608,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(322,1,1,'CL: Via X Esports SD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:9000\\/11.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',609,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(323,1,1,'CL: TV+ 2 HD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:9000\\/12.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',610,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(324,1,1,'CL: TV+ 2 SD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:9000\\/13.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',611,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(325,1,1,'Infantil: LollyKids HD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:9000\\/14.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',612,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(326,1,1,'Infantil: LollyKids SD (VIP)','[\"http:\\/\\/vapersecurity.ddns.me:9000\\/15.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',613,'',0,'','',1,1662008936,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(327,1,1,'Music: Concert FHD (VIP)','[\"http:\\/\\/gdc0001.damnserver.com:9000\\/gdc1.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',510,'',0,'','',1,1662013759,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(333,1,1,'CL: Canal 13 FHD (VIP)','[\"http:\\/\\/gdc0001.damnserver.com:9000\\/gdc3.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',503,'',0,'','',1,1662013759,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(334,1,1,'CL: Canal 13 HD (VIP)','[\"http:\\/\\/gdc0001.damnserver.com:9000\\/gdc3a.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',502,'',0,'','',1,1662013759,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(335,1,1,'CL: Canal 13 SD (VIP)','[\"http:\\/\\/gdc0001.damnserver.com:9000\\/gdc3b.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',501,'',0,'','',1,1662013759,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(336,1,1,'CL: Mega+ FHD (VIP)','[\"http:\\/\\/gdc0001.damnserver.com:9000\\/gdc4.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',500,'',0,'','',1,1662013759,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(337,1,1,'CL: Mega+ HD (VIP)','[\"http:\\/\\/gdc0001.damnserver.com:9000\\/gdc4a.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',559,'',0,'','',1,1662013759,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(338,1,1,'CL: Mega+ SD (VIP)','[\"http:\\/\\/gdc0001.damnserver.com:9000\\/gdc4b.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',558,'',0,'','',1,1662013759,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(342,1,1,'emir1 HD','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi0\"]','','',NULL,0,'[]','',NULL,'',0,NULL,0,0,'',0,NULL,'',640,'',0,'','',1,1662852567,0,0,0,0,0,0,1,0,0,1,128000,'','[]',0),(343,1,1,'emir1 SD','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi1\"]','','',NULL,0,'[]','',NULL,'',0,NULL,0,0,'',0,NULL,'',641,'',0,'','',1,1663209468,0,0,0,0,0,0,1,0,0,1,128000,'','[]',0),(344,1,1,'emir 2 hd','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi2\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',642,'',0,'','',1,1663210340,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(345,1,1,'emir2 sd','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi3\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',666,'',0,'','',1,1663210526,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(346,1,1,'emir 3 hd','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi4\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',644,'',0,'','',1,1663210567,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(347,1,1,'emir 3 SD','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi5\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',667,'',0,'','',1,1663210635,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(348,1,1,'emir4 hd','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi6\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',646,'',0,'','',1,1663211293,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(349,1,1,'4sd','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi7\"]','','',NULL,0,'[]','',NULL,'',0,NULL,0,0,'',0,NULL,'',665,'',0,'','',1,1663211325,0,0,0,0,0,0,1,0,0,1,128000,'','[]',0),(350,1,1,'5 hd','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi8\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',648,'',0,'','',1,1663211394,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(351,1,1,'5sd','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi9\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',668,'',0,'','',1,1663211431,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(352,1,1,'6hd','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi10\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',650,'',0,'','',1,1663211468,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(353,1,1,'6sd','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi11\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',669,'',0,'','',1,1663211505,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(354,1,1,'7hd','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi12\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',663,'',0,'','',1,1663211645,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(355,1,1,'7sd','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi13\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',653,'',0,'','',1,1663211689,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(356,1,1,'8hd','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi14\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',654,'',0,'','',1,1663211724,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(357,1,1,'8sd','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi15\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',664,'',0,'','',1,1663211759,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(358,1,1,'1 FHD','[\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc1.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',671,'',0,'','',1,1663379287,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(359,1,1,'2 FHD','[\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc2.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',673,'',0,'','',1,1663379704,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(360,1,1,'3 FHD','[\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc3.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',674,'',0,'','',1,1663381509,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(361,1,1,'4 FHD','[\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc4.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',675,'',0,'','',1,1663381538,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(362,1,1,'5 FHD','[\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc5.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',676,'',0,'','',1,1663381577,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(363,1,1,'6 FHD','[\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc6.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',677,'',0,'','',1,1663381610,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(364,1,1,'7 FHD','[\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc7.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',678,'',0,'','',1,1663381643,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(365,1,1,'8 FHD','[\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc8.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',679,'',0,'','',1,1663381675,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(366,1,1,'1 HD','[\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc1a.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',680,'',0,'','',1,1663381720,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(367,1,1,'2 HD','[\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc2a.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',681,'',0,'','',1,1663381791,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(368,1,1,'3 HD','[\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc3a.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',683,'',0,'','',1,1663381825,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(369,1,1,'4 HD','[\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc4a.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',685,'',0,'','',1,1663381897,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(370,1,1,'6 HD','[\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdcT6a.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',687,'',0,'','',1,1663382000,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(371,1,1,'7 HD','[\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc7a.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',688,'',0,'','',1,1663382187,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(372,1,1,'8 HD','[\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc8a.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',689,'',0,'','',1,1663382219,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(373,1,1,'5 HD.','[\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc5a.ts\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',690,'',0,'','',1,1663382274,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(374,1,1,'CL: Eventos Deportes Chile FHD (VIP)','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/tom2\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',692,'',0,'','',1,1663517857,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0),(375,1,1,'CL: Eventos Deportes Chile SD (VIP)','[\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/tom3\"]','','',NULL,0,'[]','',NULL,'',1,NULL,1,0,'',0,NULL,'',694,'',0,'','',1,1663518867,0,0,0,0,0,0,1,0,0,0,128000,'','[]',0);
/*!40000 ALTER TABLE `streams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streams_arguments`
--

DROP TABLE IF EXISTS `streams_arguments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streams_arguments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `argument_cat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `argument_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `argument_description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `argument_wprotocol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `argument_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `argument_cmd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `argument_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `argument_default_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streams_arguments`
--

LOCK TABLES `streams_arguments` WRITE;
/*!40000 ALTER TABLE `streams_arguments` DISABLE KEYS */;
INSERT INTO `streams_arguments` (`id`, `argument_cat`, `argument_name`, `argument_description`, `argument_wprotocol`, `argument_key`, `argument_cmd`, `argument_type`, `argument_default_value`) VALUES (1,'fetch','User Agent','Set a Custom User Agent','http','user_agent','-user-agent \"%s\"','text','Xtream-Codes IPTV Panel Pro'),(2,'fetch','HTTP Proxy','Set an HTTP Proxy in this format: ip:port','http','proxy','-http_proxy \"%s\"','text',NULL),(3,'transcode','Average Video Bit Rate','With this you can change the bitrate of the target video. It is very useful in case you want your video to be playable on slow internet connections',NULL,'bitrate','-b:v %dk','text',NULL),(4,'transcode','Average Audio Bitrate','Change Audio Bitrate',NULL,'audio_bitrate','-b:a %dk','text',NULL),(5,'transcode','Minimum Bitrate Tolerance','-minrate FFmpeg argument. Specify the minimum bitrate tolerance here. Specify in kbps. Enter INT number.',NULL,'minimum_bitrate','-minrate %dk','text',NULL),(6,'transcode','Maximum Bitrate Tolerance','-maxrate FFmpeg argument. Specify the maximum bitrate tolerance here.Specify in kbps. Enter INT number. ',NULL,'maximum_bitrate','-maxrate %dk','text',NULL),(7,'transcode','Buffer Size','-bufsize is the rate control buffer. Basically it is assumed that the receiver/end player will buffer that much data so its ok to fluctuate within that much. Specify in kbps. Enter INT number.',NULL,'bufsize','-bufsize %dk','text',NULL),(8,'transcode','CRF Value','The range of the quantizer scale is 0-51: where 0 is lossless, 23 is default, and 51 is worst possible. A lower value is a higher quality and a subjectively sane range is 18-28. Consider 18 to be visually lossless or nearly so: it should look the same or ',NULL,'crf','-crf %d','text',NULL),(9,'transcode','Scaling','Change the Width & Height of the target Video. (Eg. 320:240 ) .  If we\'d like to keep the aspect ratio, we need to specify only one component, either width or height, and set the other component to -1. (eg 320:-1)',NULL,'scaling','-filter_complex \"scale=%s\"','text',NULL),(10,'transcode','Aspect','Change the target Video Aspect. (eg 16:9)',NULL,'aspect','-aspect %s','text',NULL),(11,'transcode','Target Video FrameRate','Set the frame rate',NULL,'video_frame_rate','-r %d','text',NULL),(12,'transcode','Audio Sample Rate','Set the Audio Sample rate in Hz',NULL,'audio_sample_rate','-ar %d','text',NULL),(13,'transcode','Audio Channels','Specify Audio Channels',NULL,'audio_channels','-ac %d','text',NULL),(14,'transcode','Remove Sensitive Parts (delogo filter)','With this filter you can remove sensitive parts in your video. You will just specifiy the x & y pixels where there is a sensitive area and the width and height that will be removed. Example Use: x=0:y=0:w=100:h=77:band=10 ',NULL,'delogo','-filter_complex \"delogo=%s\"','text',NULL),(15,'transcode','Threads','Specify the number of threads you want to use for the transcoding process. Entering 0 as value will make FFmpeg to choose the most optimal settings',NULL,'threads','-threads %d','text',NULL),(16,'transcode','Logo Path','Add your Own Logo to the stream. The logo will be placed in the upper left. Please be sure that you have selected H.264 as codec otherwise this option won\'t work. Note that adding your own logo will consume A LOT of cpu power',NULL,'logo','-i \"%s\" -filter_complex \"overlay\"','text',NULL),(17,'fetch','Cookie','Set an HTTP Cookie that might be useful to fetch your INPUT Source.','http','cookie','-cookies \'%s\'','text',NULL),(18,'transcode','DeInterlacing Filter','It check pixels of previous, current and next frames to re-create the missed field by some local adaptive method (edge-directed interpolation) and uses spatial check to prevent most artifacts. ',NULL,'','-filter_complex \"yadif\"','radio','0'),(19,'fetch','Headers','Set Custom Headers','http','headers','-headers \"%s\"','text',NULL);
/*!40000 ALTER TABLE `streams_arguments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streams_options`
--

DROP TABLE IF EXISTS `streams_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streams_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_id` int(11) NOT NULL,
  `argument_id` int(11) NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `stream_id` (`stream_id`),
  KEY `argument_id` (`argument_id`)
) ENGINE=InnoDB AUTO_INCREMENT=740 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streams_options`
--

LOCK TABLES `streams_options` WRITE;
/*!40000 ALTER TABLE `streams_options` DISABLE KEYS */;
INSERT INTO `streams_options` (`id`, `stream_id`, `argument_id`, `value`) VALUES (3,2,1,'Xtream-Codes IPTV Panel Pro'),(4,3,1,'Xtream-Codes IPTV Panel Pro'),(5,4,1,'Xtream-Codes IPTV Panel Pro'),(6,5,1,'Xtream-Codes IPTV Panel Pro'),(7,6,1,'Xtream-Codes IPTV Panel Pro'),(8,7,1,'Xtream-Codes IPTV Panel Pro'),(9,8,1,'Xtream-Codes IPTV Panel Pro'),(10,9,1,'Xtream-Codes IPTV Panel Pro'),(11,10,1,'Xtream-Codes IPTV Panel Pro'),(12,11,1,'Xtream-Codes IPTV Panel Pro'),(13,12,1,'Xtream-Codes IPTV Panel Pro'),(14,13,1,'Xtream-Codes IPTV Panel Pro'),(15,14,1,'Xtream-Codes IPTV Panel Pro'),(16,15,1,'Xtream-Codes IPTV Panel Pro'),(17,16,1,'Xtream-Codes IPTV Panel Pro'),(18,17,1,'Xtream-Codes IPTV Panel Pro'),(19,18,1,'Xtream-Codes IPTV Panel Pro'),(20,19,1,'Xtream-Codes IPTV Panel Pro'),(21,20,1,'Xtream-Codes IPTV Panel Pro'),(22,21,1,'Xtream-Codes IPTV Panel Pro'),(23,22,1,'Xtream-Codes IPTV Panel Pro'),(24,23,1,'Xtream-Codes IPTV Panel Pro'),(25,24,1,'Xtream-Codes IPTV Panel Pro'),(26,25,1,'Xtream-Codes IPTV Panel Pro'),(27,26,1,'Xtream-Codes IPTV Panel Pro'),(28,27,1,'Xtream-Codes IPTV Panel Pro'),(29,28,1,'Xtream-Codes IPTV Panel Pro'),(30,29,1,'Xtream-Codes IPTV Panel Pro'),(31,30,1,'Xtream-Codes IPTV Panel Pro'),(32,31,1,'Xtream-Codes IPTV Panel Pro'),(33,32,1,'Xtream-Codes IPTV Panel Pro'),(34,33,1,'Xtream-Codes IPTV Panel Pro'),(35,34,1,'Xtream-Codes IPTV Panel Pro'),(36,35,1,'Xtream-Codes IPTV Panel Pro'),(37,36,1,'Xtream-Codes IPTV Panel Pro'),(38,37,1,'Xtream-Codes IPTV Panel Pro'),(39,38,1,'Xtream-Codes IPTV Panel Pro'),(40,39,1,'Xtream-Codes IPTV Panel Pro'),(41,40,1,'Xtream-Codes IPTV Panel Pro'),(42,41,1,'Xtream-Codes IPTV Panel Pro'),(43,42,1,'Xtream-Codes IPTV Panel Pro'),(44,43,1,'Xtream-Codes IPTV Panel Pro'),(45,44,1,'Xtream-Codes IPTV Panel Pro'),(46,45,1,'Xtream-Codes IPTV Panel Pro'),(47,46,1,'Xtream-Codes IPTV Panel Pro'),(48,47,1,'Xtream-Codes IPTV Panel Pro'),(49,48,1,'Xtream-Codes IPTV Panel Pro'),(50,49,1,'Xtream-Codes IPTV Panel Pro'),(51,50,1,'Xtream-Codes IPTV Panel Pro'),(52,51,1,'Xtream-Codes IPTV Panel Pro'),(53,52,1,'Xtream-Codes IPTV Panel Pro'),(54,53,1,'Xtream-Codes IPTV Panel Pro'),(55,54,1,'Xtream-Codes IPTV Panel Pro'),(56,55,1,'Xtream-Codes IPTV Panel Pro'),(57,56,1,'Xtream-Codes IPTV Panel Pro'),(58,57,1,'Xtream-Codes IPTV Panel Pro'),(59,58,1,'Xtream-Codes IPTV Panel Pro'),(60,59,1,'Xtream-Codes IPTV Panel Pro'),(61,60,1,'Xtream-Codes IPTV Panel Pro'),(62,61,1,'Xtream-Codes IPTV Panel Pro'),(63,62,1,'Xtream-Codes IPTV Panel Pro'),(64,63,1,'Xtream-Codes IPTV Panel Pro'),(65,64,1,'Xtream-Codes IPTV Panel Pro'),(66,65,1,'Xtream-Codes IPTV Panel Pro'),(67,66,1,'Xtream-Codes IPTV Panel Pro'),(68,67,1,'Xtream-Codes IPTV Panel Pro'),(69,68,1,'Xtream-Codes IPTV Panel Pro'),(70,69,1,'Xtream-Codes IPTV Panel Pro'),(71,70,1,'Xtream-Codes IPTV Panel Pro'),(72,71,1,'Xtream-Codes IPTV Panel Pro'),(73,72,1,'Xtream-Codes IPTV Panel Pro'),(74,73,1,'Xtream-Codes IPTV Panel Pro'),(75,74,1,'Xtream-Codes IPTV Panel Pro'),(76,75,1,'Xtream-Codes IPTV Panel Pro'),(77,76,1,'Xtream-Codes IPTV Panel Pro'),(78,77,1,'Xtream-Codes IPTV Panel Pro'),(79,78,1,'Xtream-Codes IPTV Panel Pro'),(80,79,1,'Xtream-Codes IPTV Panel Pro'),(81,80,1,'Xtream-Codes IPTV Panel Pro'),(82,81,1,'Xtream-Codes IPTV Panel Pro'),(83,82,1,'Xtream-Codes IPTV Panel Pro'),(84,83,1,'Xtream-Codes IPTV Panel Pro'),(85,84,1,'Xtream-Codes IPTV Panel Pro'),(86,85,1,'Xtream-Codes IPTV Panel Pro'),(87,86,1,'Xtream-Codes IPTV Panel Pro'),(88,87,1,'Xtream-Codes IPTV Panel Pro'),(89,88,1,'Xtream-Codes IPTV Panel Pro'),(90,89,1,'Xtream-Codes IPTV Panel Pro'),(91,90,1,'Xtream-Codes IPTV Panel Pro'),(92,91,1,'Xtream-Codes IPTV Panel Pro'),(93,92,1,'Xtream-Codes IPTV Panel Pro'),(94,93,1,'Xtream-Codes IPTV Panel Pro'),(95,94,1,'Xtream-Codes IPTV Panel Pro'),(96,95,1,'Xtream-Codes IPTV Panel Pro'),(97,96,1,'Xtream-Codes IPTV Panel Pro'),(98,97,1,'Xtream-Codes IPTV Panel Pro'),(99,98,1,'Xtream-Codes IPTV Panel Pro'),(100,99,1,'Xtream-Codes IPTV Panel Pro'),(101,100,1,'Xtream-Codes IPTV Panel Pro'),(102,101,1,'Xtream-Codes IPTV Panel Pro'),(103,102,1,'Xtream-Codes IPTV Panel Pro'),(104,103,1,'Xtream-Codes IPTV Panel Pro'),(105,104,1,'Xtream-Codes IPTV Panel Pro'),(106,105,1,'Xtream-Codes IPTV Panel Pro'),(107,106,1,'Xtream-Codes IPTV Panel Pro'),(108,107,1,'Xtream-Codes IPTV Panel Pro'),(109,108,1,'Xtream-Codes IPTV Panel Pro'),(110,109,1,'Xtream-Codes IPTV Panel Pro'),(111,110,1,'Xtream-Codes IPTV Panel Pro'),(112,111,1,'Xtream-Codes IPTV Panel Pro'),(113,112,1,'Xtream-Codes IPTV Panel Pro'),(114,113,1,'Xtream-Codes IPTV Panel Pro'),(115,114,1,'Xtream-Codes IPTV Panel Pro'),(116,115,1,'Xtream-Codes IPTV Panel Pro'),(117,116,1,'Xtream-Codes IPTV Panel Pro'),(118,117,1,'Xtream-Codes IPTV Panel Pro'),(119,118,1,'Xtream-Codes IPTV Panel Pro'),(120,119,1,'Xtream-Codes IPTV Panel Pro'),(121,120,1,'Xtream-Codes IPTV Panel Pro'),(122,121,1,'Xtream-Codes IPTV Panel Pro'),(123,122,1,'Xtream-Codes IPTV Panel Pro'),(124,123,1,'Xtream-Codes IPTV Panel Pro'),(125,124,1,'Xtream-Codes IPTV Panel Pro'),(126,125,1,'Xtream-Codes IPTV Panel Pro'),(127,126,1,'Xtream-Codes IPTV Panel Pro'),(128,127,1,'Xtream-Codes IPTV Panel Pro'),(129,128,1,'Xtream-Codes IPTV Panel Pro'),(130,129,1,'Xtream-Codes IPTV Panel Pro'),(131,130,1,'Xtream-Codes IPTV Panel Pro'),(132,131,1,'Xtream-Codes IPTV Panel Pro'),(133,132,1,'Xtream-Codes IPTV Panel Pro'),(134,133,1,'Xtream-Codes IPTV Panel Pro'),(135,134,1,'Xtream-Codes IPTV Panel Pro'),(136,135,1,'Xtream-Codes IPTV Panel Pro'),(137,136,1,'Xtream-Codes IPTV Panel Pro'),(138,137,1,'Xtream-Codes IPTV Panel Pro'),(139,138,1,'Xtream-Codes IPTV Panel Pro'),(140,139,1,'Xtream-Codes IPTV Panel Pro'),(141,140,1,'Xtream-Codes IPTV Panel Pro'),(142,141,1,'Xtream-Codes IPTV Panel Pro'),(143,142,1,'Xtream-Codes IPTV Panel Pro'),(144,143,1,'Xtream-Codes IPTV Panel Pro'),(145,144,1,'Xtream-Codes IPTV Panel Pro'),(146,145,1,'Xtream-Codes IPTV Panel Pro'),(147,146,1,'Xtream-Codes IPTV Panel Pro'),(148,147,1,'Xtream-Codes IPTV Panel Pro'),(149,148,1,'Xtream-Codes IPTV Panel Pro'),(150,149,1,'Xtream-Codes IPTV Panel Pro'),(151,150,1,'Xtream-Codes IPTV Panel Pro'),(152,151,1,'Xtream-Codes IPTV Panel Pro'),(153,152,1,'Xtream-Codes IPTV Panel Pro'),(154,153,1,'Xtream-Codes IPTV Panel Pro'),(155,154,1,'Xtream-Codes IPTV Panel Pro'),(156,155,1,'Xtream-Codes IPTV Panel Pro'),(157,156,1,'Xtream-Codes IPTV Panel Pro'),(158,157,1,'Xtream-Codes IPTV Panel Pro'),(159,158,1,'Xtream-Codes IPTV Panel Pro'),(160,159,1,'Xtream-Codes IPTV Panel Pro'),(161,160,1,'Xtream-Codes IPTV Panel Pro'),(162,161,1,'Xtream-Codes IPTV Panel Pro'),(163,162,1,'Xtream-Codes IPTV Panel Pro'),(164,163,1,'Xtream-Codes IPTV Panel Pro'),(165,164,1,'Xtream-Codes IPTV Panel Pro'),(166,165,1,'Xtream-Codes IPTV Panel Pro'),(167,166,1,'Xtream-Codes IPTV Panel Pro'),(168,167,1,'Xtream-Codes IPTV Panel Pro'),(169,168,1,'Xtream-Codes IPTV Panel Pro'),(170,169,1,'Xtream-Codes IPTV Panel Pro'),(171,170,1,'Xtream-Codes IPTV Panel Pro'),(172,171,1,'Xtream-Codes IPTV Panel Pro'),(173,172,1,'Xtream-Codes IPTV Panel Pro'),(174,173,1,'Xtream-Codes IPTV Panel Pro'),(175,174,1,'Xtream-Codes IPTV Panel Pro'),(176,175,1,'Xtream-Codes IPTV Panel Pro'),(177,176,1,'Xtream-Codes IPTV Panel Pro'),(178,177,1,'Xtream-Codes IPTV Panel Pro'),(179,178,1,'Xtream-Codes IPTV Panel Pro'),(180,179,1,'Xtream-Codes IPTV Panel Pro'),(181,180,1,'Xtream-Codes IPTV Panel Pro'),(182,181,1,'Xtream-Codes IPTV Panel Pro'),(183,182,1,'Xtream-Codes IPTV Panel Pro'),(184,183,1,'Xtream-Codes IPTV Panel Pro'),(185,184,1,'Xtream-Codes IPTV Panel Pro'),(186,185,1,'Xtream-Codes IPTV Panel Pro'),(187,186,1,'Xtream-Codes IPTV Panel Pro'),(188,187,1,'Xtream-Codes IPTV Panel Pro'),(189,188,1,'Xtream-Codes IPTV Panel Pro'),(190,189,1,'Xtream-Codes IPTV Panel Pro'),(191,190,1,'Xtream-Codes IPTV Panel Pro'),(192,191,1,'Xtream-Codes IPTV Panel Pro'),(193,192,1,'Xtream-Codes IPTV Panel Pro'),(194,193,1,'Xtream-Codes IPTV Panel Pro'),(207,1,1,'Xtream-Codes IPTV Panel Pro'),(216,196,1,'Xtream-Codes IPTV Panel Pro'),(217,195,1,'Xtream-Codes IPTV Panel Pro'),(221,199,1,'Xtream-Codes IPTV Panel Pro'),(228,200,1,'Xtream-Codes IPTV Panel Pro'),(233,194,1,'Xtream-Codes IPTV Panel Pro'),(234,201,1,'Xtream-Codes IPTV Panel Pro'),(238,204,1,'Xtream-Codes IPTV Panel Pro'),(240,205,1,'Xtream-Codes IPTV Panel Pro'),(245,209,1,'Xtream-Codes IPTV Panel Pro'),(250,208,1,'Xtream-Codes IPTV Panel Pro'),(269,226,1,'Xtream-Codes IPTV Panel Pro'),(270,227,1,'Xtream-Codes IPTV Panel Pro'),(271,228,1,'Xtream-Codes IPTV Panel Pro'),(272,229,1,'Xtream-Codes IPTV Panel Pro'),(273,230,1,'Xtream-Codes IPTV Panel Pro'),(274,231,1,'Xtream-Codes IPTV Panel Pro'),(275,232,1,'Xtream-Codes IPTV Panel Pro'),(276,233,1,'Xtream-Codes IPTV Panel Pro'),(278,235,1,'Xtream-Codes IPTV Panel Pro'),(279,236,1,'Xtream-Codes IPTV Panel Pro'),(280,237,1,'Xtream-Codes IPTV Panel Pro'),(281,238,1,'Xtream-Codes IPTV Panel Pro'),(282,239,1,'Xtream-Codes IPTV Panel Pro'),(283,240,1,'Xtream-Codes IPTV Panel Pro'),(284,241,1,'Xtream-Codes IPTV Panel Pro'),(285,234,1,'Xtream-Codes IPTV Panel Pro'),(293,247,1,'Xtream-Codes IPTV Panel Pro'),(299,248,1,'Xtream-Codes IPTV Panel Pro'),(304,210,1,'Xtream-Codes IPTV Panel Pro'),(306,212,1,'Xtream-Codes IPTV Panel Pro'),(308,211,1,'Xtream-Codes IPTV Panel Pro'),(309,213,1,'Xtream-Codes IPTV Panel Pro'),(310,214,1,'Xtream-Codes IPTV Panel Pro'),(311,215,1,'Xtream-Codes IPTV Panel Pro'),(312,216,1,'Xtream-Codes IPTV Panel Pro'),(313,217,1,'Xtream-Codes IPTV Panel Pro'),(314,219,1,'Xtream-Codes IPTV Panel Pro'),(315,218,1,'Xtream-Codes IPTV Panel Pro'),(317,221,1,'Xtream-Codes IPTV Panel Pro'),(318,220,1,'Xtream-Codes IPTV Panel Pro'),(320,223,1,'Xtream-Codes IPTV Panel Pro'),(321,222,1,'Xtream-Codes IPTV Panel Pro'),(322,225,1,'Xtream-Codes IPTV Panel Pro'),(323,224,1,'Xtream-Codes IPTV Panel Pro'),(324,250,1,'Xtream-Codes IPTV Panel Pro'),(325,251,1,'Xtream-Codes IPTV Panel Pro'),(326,246,1,'Xtream-Codes IPTV Panel Pro'),(327,249,1,'Xtream-Codes IPTV Panel Pro'),(328,242,1,'Xtream-Codes IPTV Panel Pro'),(329,243,1,'Xtream-Codes IPTV Panel Pro'),(332,245,1,'Xtream-Codes IPTV Panel Pro'),(333,244,1,'Xtream-Codes IPTV Panel Pro'),(334,197,1,'Xtream-Codes IPTV Panel Pro'),(335,198,1,'Xtream-Codes IPTV Panel Pro'),(337,202,1,'Xtream-Codes IPTV Panel Pro'),(338,203,1,'Xtream-Codes IPTV Panel Pro'),(339,206,1,'Xtream-Codes IPTV Panel Pro'),(340,207,1,'Xtream-Codes IPTV Panel Pro'),(341,252,1,'Xtream-Codes IPTV Panel Pro'),(342,253,1,'Xtream-Codes IPTV Panel Pro'),(343,254,1,'Xtream-Codes IPTV Panel Pro'),(344,255,1,'Xtream-Codes IPTV Panel Pro'),(345,256,1,'Xtream-Codes IPTV Panel Pro'),(346,257,1,'Xtream-Codes IPTV Panel Pro'),(347,258,1,'Xtream-Codes IPTV Panel Pro'),(348,259,1,'Xtream-Codes IPTV Panel Pro'),(349,260,1,'Xtream-Codes IPTV Panel Pro'),(350,261,1,'Xtream-Codes IPTV Panel Pro'),(351,262,1,'Xtream-Codes IPTV Panel Pro'),(352,263,1,'Xtream-Codes IPTV Panel Pro'),(353,264,1,'Xtream-Codes IPTV Panel Pro'),(354,265,1,'Xtream-Codes IPTV Panel Pro'),(355,266,1,'Xtream-Codes IPTV Panel Pro'),(356,267,1,'Xtream-Codes IPTV Panel Pro'),(357,268,1,'Xtream-Codes IPTV Panel Pro'),(358,269,1,'Xtream-Codes IPTV Panel Pro'),(359,270,1,'Xtream-Codes IPTV Panel Pro'),(360,271,1,'Xtream-Codes IPTV Panel Pro'),(361,272,1,'Xtream-Codes IPTV Panel Pro'),(362,273,1,'Xtream-Codes IPTV Panel Pro'),(542,336,1,'Xtream-Codes IPTV Panel Pro'),(543,335,1,'Xtream-Codes IPTV Panel Pro'),(544,334,1,'Xtream-Codes IPTV Panel Pro'),(545,333,1,'Xtream-Codes IPTV Panel Pro'),(546,332,1,'Xtream-Codes IPTV Panel Pro'),(547,331,1,'Xtream-Codes IPTV Panel Pro'),(549,329,1,'Xtream-Codes IPTV Panel Pro'),(551,328,1,'Xtream-Codes IPTV Panel Pro'),(552,327,1,'Xtream-Codes IPTV Panel Pro'),(592,339,1,'Xtream-Codes IPTV Panel Pro'),(598,340,1,'Xtream-Codes IPTV Panel Pro'),(602,338,1,'Xtream-Codes IPTV Panel Pro'),(603,337,1,'Xtream-Codes IPTV Panel Pro'),(604,330,1,'Xtream-Codes IPTV Panel Pro'),(617,286,1,'Xtream-Codes IPTV Panel Pro'),(626,295,1,'Xtream-Codes IPTV Panel Pro'),(627,296,1,'Xtream-Codes IPTV Panel Pro'),(628,297,1,'Xtream-Codes IPTV Panel Pro'),(629,298,1,'Xtream-Codes IPTV Panel Pro'),(630,299,1,'Xtream-Codes IPTV Panel Pro'),(631,300,1,'Xtream-Codes IPTV Panel Pro'),(632,301,1,'Xtream-Codes IPTV Panel Pro'),(633,302,1,'Xtream-Codes IPTV Panel Pro'),(634,303,1,'Xtream-Codes IPTV Panel Pro'),(635,304,1,'Xtream-Codes IPTV Panel Pro'),(636,305,1,'Xtream-Codes IPTV Panel Pro'),(637,306,1,'Xtream-Codes IPTV Panel Pro'),(638,307,1,'Xtream-Codes IPTV Panel Pro'),(639,308,1,'Xtream-Codes IPTV Panel Pro'),(640,309,1,'Xtream-Codes IPTV Panel Pro'),(641,310,1,'Xtream-Codes IPTV Panel Pro'),(642,311,1,'Xtream-Codes IPTV Panel Pro'),(643,312,1,'Xtream-Codes IPTV Panel Pro'),(644,313,1,'Xtream-Codes IPTV Panel Pro'),(645,314,1,'Xtream-Codes IPTV Panel Pro'),(646,315,1,'Xtream-Codes IPTV Panel Pro'),(647,316,1,'Xtream-Codes IPTV Panel Pro'),(648,317,1,'Xtream-Codes IPTV Panel Pro'),(649,318,1,'Xtream-Codes IPTV Panel Pro'),(650,319,1,'Xtream-Codes IPTV Panel Pro'),(651,320,1,'Xtream-Codes IPTV Panel Pro'),(652,321,1,'Xtream-Codes IPTV Panel Pro'),(653,322,1,'Xtream-Codes IPTV Panel Pro'),(654,323,1,'Xtream-Codes IPTV Panel Pro'),(655,324,1,'Xtream-Codes IPTV Panel Pro'),(656,325,1,'Xtream-Codes IPTV Panel Pro'),(657,326,1,'Xtream-Codes IPTV Panel Pro'),(658,285,1,'Xtream-Codes IPTV Panel Pro'),(659,284,1,'Xtream-Codes IPTV Panel Pro'),(660,283,1,'Xtream-Codes IPTV Panel Pro'),(661,282,1,'Xtream-Codes IPTV Panel Pro'),(662,281,1,'Xtream-Codes IPTV Panel Pro'),(664,280,1,'Xtream-Codes IPTV Panel Pro'),(665,279,1,'Xtream-Codes IPTV Panel Pro'),(666,278,1,'Xtream-Codes IPTV Panel Pro'),(667,277,1,'Xtream-Codes IPTV Panel Pro'),(668,276,1,'Xtream-Codes IPTV Panel Pro'),(669,275,1,'Xtream-Codes IPTV Panel Pro'),(670,274,1,'Xtream-Codes IPTV Panel Pro'),(671,341,1,'Xtream-Codes IPTV Panel Pro'),(672,287,1,'Xtream-Codes IPTV Panel Pro'),(674,289,1,'Xtream-Codes IPTV Panel Pro'),(675,290,1,'Xtream-Codes IPTV Panel Pro'),(676,291,1,'Xtream-Codes IPTV Panel Pro'),(677,292,1,'Xtream-Codes IPTV Panel Pro'),(678,293,1,'Xtream-Codes IPTV Panel Pro'),(679,294,1,'Xtream-Codes IPTV Panel Pro'),(684,288,1,'Xtream-Codes IPTV Panel Pro'),(685,342,1,'Xtream-Codes IPTV Panel Pro'),(686,343,1,'Xtream-Codes IPTV Panel Pro'),(687,344,1,'Xtream-Codes IPTV Panel Pro'),(689,346,1,'Xtream-Codes IPTV Panel Pro'),(691,348,1,'Xtream-Codes IPTV Panel Pro'),(693,350,1,'Xtream-Codes IPTV Panel Pro'),(695,352,1,'Xtream-Codes IPTV Panel Pro'),(698,355,1,'Xtream-Codes IPTV Panel Pro'),(699,356,1,'Xtream-Codes IPTV Panel Pro'),(708,354,1,'Xtream-Codes IPTV Panel Pro'),(709,357,1,'Xtream-Codes IPTV Panel Pro'),(710,349,1,'Xtream-Codes IPTV Panel Pro'),(711,345,1,'Xtream-Codes IPTV Panel Pro'),(712,347,1,'Xtream-Codes IPTV Panel Pro'),(713,351,1,'Xtream-Codes IPTV Panel Pro'),(714,353,1,'Xtream-Codes IPTV Panel Pro'),(716,358,1,'Xtream-Codes IPTV Panel Pro'),(718,359,1,'Xtream-Codes IPTV Panel Pro'),(719,360,1,'Xtream-Codes IPTV Panel Pro'),(720,361,1,'Xtream-Codes IPTV Panel Pro'),(721,362,1,'Xtream-Codes IPTV Panel Pro'),(722,363,1,'Xtream-Codes IPTV Panel Pro'),(723,364,1,'Xtream-Codes IPTV Panel Pro'),(724,365,1,'Xtream-Codes IPTV Panel Pro'),(725,366,1,'Xtream-Codes IPTV Panel Pro'),(726,367,1,'Xtream-Codes IPTV Panel Pro'),(728,368,1,'Xtream-Codes IPTV Panel Pro'),(730,369,1,'Xtream-Codes IPTV Panel Pro'),(732,370,1,'Xtream-Codes IPTV Panel Pro'),(733,371,1,'Xtream-Codes IPTV Panel Pro'),(734,372,1,'Xtream-Codes IPTV Panel Pro'),(735,373,1,'Xtream-Codes IPTV Panel Pro'),(737,374,1,'Xtream-Codes IPTV Panel Pro'),(739,375,1,'Xtream-Codes IPTV Panel Pro');
/*!40000 ALTER TABLE `streams_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streams_seasons`
--

DROP TABLE IF EXISTS `streams_seasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streams_seasons` (
  `season_id` int(11) NOT NULL AUTO_INCREMENT,
  `season_name` varchar(255) NOT NULL,
  `stream_id` int(11) NOT NULL,
  PRIMARY KEY (`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streams_seasons`
--

LOCK TABLES `streams_seasons` WRITE;
/*!40000 ALTER TABLE `streams_seasons` DISABLE KEYS */;
/*!40000 ALTER TABLE `streams_seasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streams_sys`
--

DROP TABLE IF EXISTS `streams_sys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streams_sys` (
  `server_stream_id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_id` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `to_analyze` tinyint(4) NOT NULL DEFAULT '0',
  `stream_status` int(11) NOT NULL DEFAULT '0',
  `stream_started` int(11) DEFAULT NULL,
  `stream_info` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `monitor_pid` int(11) DEFAULT NULL,
  `current_source` mediumtext COLLATE utf8_unicode_ci,
  `bitrate` int(11) DEFAULT NULL,
  `progress_info` text COLLATE utf8_unicode_ci NOT NULL,
  `on_demand` tinyint(4) NOT NULL DEFAULT '0',
  `delay_pid` int(11) DEFAULT NULL,
  `delay_available_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`server_stream_id`),
  UNIQUE KEY `stream_id_2` (`stream_id`,`server_id`),
  KEY `stream_id` (`stream_id`),
  KEY `pid` (`pid`),
  KEY `server_id` (`server_id`),
  KEY `stream_status` (`stream_status`),
  KEY `stream_started` (`stream_started`),
  KEY `parent_id` (`parent_id`),
  KEY `to_analyze` (`to_analyze`)
) ENGINE=InnoDB AUTO_INCREMENT=447 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streams_sys`
--

LOCK TABLES `streams_sys` WRITE;
/*!40000 ALTER TABLE `streams_sys` DISABLE KEYS */;
INSERT INTO `streams_sys` (`server_stream_id`, `stream_id`, `server_id`, `parent_id`, `pid`, `to_analyze`, `stream_status`, `stream_started`, `stream_info`, `monitor_pid`, `current_source`, `bitrate`, `progress_info`, `on_demand`, `delay_pid`, `delay_available_at`) VALUES (327,327,2,NULL,NULL,0,0,NULL,'',NULL,NULL,NULL,'{\"frame\":\"708484\",\"fps\":\"59.94\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"11820338456\",\"out_time_ms\":\"11820338456\",\"out_time\":\"03:17:00.338456\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(333,333,2,NULL,17752,0,0,1663697555,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1088,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":42,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x1e1\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":141868,\"start_time\":\"1.576311\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x1e2\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":54064,\"start_time\":\"0.600711\",\"bit_rate\":\"146081\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:9000\\/gdc3.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1985,'http://gdc0001.damnserver.com:9000/gdc3.ts',8913,'{\"frame\":\"594701\",\"fps\":\"35.52\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"16740772456\",\"out_time_ms\":\"16740772456\",\"out_time\":\"04:39:00.772456\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(334,334,2,NULL,-1,0,1,1663623130,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x1e1\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":825770,\"start_time\":\"9.175222\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x1e2\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":818954,\"start_time\":\"9.099489\",\"bit_rate\":\"146081\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:9000\\/gdc3a.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',28275,'http://gdc0001.damnserver.com:9000/gdc3a.ts',5794,'',0,NULL,0),(335,335,2,NULL,22318,0,0,1663713662,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":720,\"height\":404,\"coded_width\":720,\"coded_height\":416,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"180:101\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x1e1\",\"r_frame_rate\":\"60000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":508743,\"start_time\":\"5.652700\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x1e2\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":61917,\"start_time\":\"0.687967\",\"bit_rate\":\"146081\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:9000\\/gdc3b.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2009,'http://gdc0001.damnserver.com:9000/gdc3b.ts',1603,'{\"frame\":\"20124\",\"fps\":\"31.92\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"630459544\",\"out_time_ms\":\"630459544\",\"out_time\":\"00:10:30.459544\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(336,336,2,NULL,17817,0,0,1663697558,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1088,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":42,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x1e1\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":361969,\"start_time\":\"4.021878\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x1e2\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":54184,\"start_time\":\"0.602044\",\"bit_rate\":\"146081\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:9000\\/gdc4.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',15079,'http://gdc0001.damnserver.com:9000/gdc4.ts',3680,'{\"frame\":\"501065\",\"fps\":\"29.93\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"16728570200\",\"out_time_ms\":\"16728570200\",\"out_time\":\"04:38:48.570200\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"0.999x\",\"progress\":\"continue\"}',0,NULL,0),(355,338,2,NULL,22608,0,0,1663713683,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":720,\"height\":404,\"coded_width\":720,\"coded_height\":416,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"180:101\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x1e1\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":924866,\"start_time\":\"10.276289\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x1e2\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":917687,\"start_time\":\"10.196522\",\"bit_rate\":\"146081\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:9000\\/gdc4b.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',15046,'http://gdc0001.damnserver.com:9000/gdc4b.ts',1622,'{\"frame\":\"18898\",\"fps\":\"29.97\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"630604500\",\"out_time_ms\":\"630604500\",\"out_time\":\"00:10:30.604500\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(356,337,2,NULL,22361,0,0,1663713663,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x1e1\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":54185,\"start_time\":\"0.602056\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x1e2\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":54000,\"start_time\":\"0.600000\",\"bit_rate\":\"134711\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:9000\\/gdc4a.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',20753,'http://gdc0001.damnserver.com:9000/gdc4a.ts',2556,'{\"frame\":\"18895\",\"fps\":\"29.95\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"630866911\",\"out_time_ms\":\"630866911\",\"out_time\":\"00:10:30.866911\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(358,274,5,NULL,2774,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/40\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":720,\"height\":480,\"coded_width\":720,\"coded_height\":480,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"3:2\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"20\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":7416547653,\"start_time\":\"82406.085033\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":7416530088,\"start_time\":\"82405.889867\",\"bit_rate\":\"130577\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9000\\/ect15.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',890,'http://erco2022.ddns.me:9000/ect15.ts',2152,'{\"frame\":\"9094\",\"fps\":\"20.19\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"455461500\",\"out_time_ms\":\"455461500\",\"out_time\":\"00:07:35.461500\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1.01x\",\"progress\":\"continue\"}',0,NULL,0),(359,275,5,NULL,2782,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":7416541647,\"start_time\":\"82406.018300\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":7416530088,\"start_time\":\"82405.889867\",\"bit_rate\":\"130577\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9000\\/ect14.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',898,'http://erco2022.ddns.me:9000/ect14.ts',4424,'{\"frame\":\"13644\",\"fps\":\"30.30\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"455361400\",\"out_time_ms\":\"455361400\",\"out_time\":\"00:07:35.361400\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1.01x\",\"progress\":\"continue\"}',0,NULL,0),(360,276,5,NULL,2772,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/40\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":720,\"height\":480,\"coded_width\":720,\"coded_height\":480,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"3:2\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"20\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":7416545664,\"start_time\":\"82406.062933\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":7416528060,\"start_time\":\"82405.867333\",\"bit_rate\":\"130232\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9000\\/ect13.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',906,'http://erco2022.ddns.me:9000/ect13.ts',2571,'{\"frame\":\"9009\",\"fps\":\"19.99\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450715856\",\"out_time_ms\":\"450715856\",\"out_time\":\"00:07:30.715856\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(361,277,5,NULL,2878,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":7416548674,\"start_time\":\"82406.096378\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":7416542688,\"start_time\":\"82406.029867\",\"bit_rate\":\"123686\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9000\\/ect12.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',914,'http://erco2022.ddns.me:9000/ect12.ts',3838,'{\"frame\":\"13493\",\"fps\":\"29.96\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450351022\",\"out_time_ms\":\"450351022\",\"out_time\":\"00:07:30.351022\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(362,278,5,NULL,2786,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":720,\"height\":480,\"coded_width\":720,\"coded_height\":480,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"3:2\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":7416551248,\"start_time\":\"82406.124978\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":7416536570,\"start_time\":\"82405.961889\",\"bit_rate\":\"130232\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9000\\/ect11.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',925,'http://erco2022.ddns.me:9000/ect11.ts',2772,'{\"frame\":\"13498\",\"fps\":\"29.98\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450281367\",\"out_time_ms\":\"450281367\",\"out_time\":\"00:07:30.281367\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(363,279,5,NULL,2884,0,0,1663713853,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":7416548119,\"start_time\":\"82406.090211\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":7416536570,\"start_time\":\"82405.961889\",\"bit_rate\":\"130232\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9000\\/ect10.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',935,'http://erco2022.ddns.me:9000/ect10.ts',3908,'{\"frame\":\"13483\",\"fps\":\"29.96\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450118833\",\"out_time_ms\":\"450118833\",\"out_time\":\"00:07:30.118833\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(364,280,5,NULL,2788,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":720,\"height\":480,\"coded_width\":720,\"coded_height\":480,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"3:2\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":5765951658,\"start_time\":\"64066.129533\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":5765935093,\"start_time\":\"64065.945478\",\"bit_rate\":\"130232\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9000\\/ect9.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',945,'http://erco2022.ddns.me:9000/ect9.ts',1556,'{\"frame\":\"13496\",\"fps\":\"29.95\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450647189\",\"out_time_ms\":\"450647189\",\"out_time\":\"00:07:30.647189\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(365,281,5,NULL,2781,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":5765951658,\"start_time\":\"64066.129533\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":5765935093,\"start_time\":\"64065.945478\",\"bit_rate\":\"130232\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9000\\/ect8.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',949,'http://erco2022.ddns.me:9000/ect8.ts',2630,'{\"frame\":\"13485\",\"fps\":\"29.94\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450446978\",\"out_time_ms\":\"450446978\",\"out_time\":\"00:07:30.446978\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(366,282,5,NULL,2794,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":5775686722,\"start_time\":\"64174.296911\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":5775670664,\"start_time\":\"64174.118489\",\"bit_rate\":\"130232\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9000\\/ect3.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',953,'http://erco2022.ddns.me:9000/ect3.ts',2792,'{\"frame\":\"13472\",\"fps\":\"29.94\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450031778\",\"out_time_ms\":\"450031778\",\"out_time\":\"00:07:30.031778\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(367,283,5,NULL,2882,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1088,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":42,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":5775683719,\"start_time\":\"64174.263544\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":5775670664,\"start_time\":\"64174.118489\",\"bit_rate\":\"130232\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9000\\/ect2.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',975,'http://erco2022.ddns.me:9000/ect2.ts',3922,'{\"frame\":\"13486\",\"fps\":\"29.95\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450332067\",\"out_time_ms\":\"450332067\",\"out_time\":\"00:07:30.332067\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(368,284,5,NULL,2826,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":5735207483,\"start_time\":\"63724.527589\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":5735199968,\"start_time\":\"63724.444089\",\"bit_rate\":\"130232\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9000\\/ect1.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',990,'http://erco2022.ddns.me:9000/ect1.ts',2816,'{\"frame\":\"13505\",\"fps\":\"29.95\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450977956\",\"out_time_ms\":\"450977956\",\"out_time\":\"00:07:30.977956\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(369,285,5,NULL,2814,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1088,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":42,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":5735207483,\"start_time\":\"63724.527589\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":5735199968,\"start_time\":\"63724.444089\",\"bit_rate\":\"130232\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9000\\/ect0.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1005,'http://erco2022.ddns.me:9000/ect0.ts',3968,'{\"frame\":\"13485\",\"fps\":\"29.95\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450260156\",\"out_time_ms\":\"450260156\",\"out_time\":\"00:07:30.260156\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(370,286,5,NULL,3145,0,0,1663713867,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Constrained Baseline\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/58\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"29\\/1\",\"time_base\":\"1\\/1000\",\"start_pts\":17084,\"start_time\":\"17.084000\",\"bit_rate\":\"1499136\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":17085,\"start_time\":\"17.085000\",\"bit_rate\":\"95232\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"live_flv\",\"filename\":\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/tomb live=1 timeout=10\",\"bitrate\":null,\"of_duration\":\"0.000000\",\"duration\":\"00:00:00\"}',1019,'rtmp://127.0.0.1:25462/live/tomb',301,'{\"frame\":\"13513\",\"fps\":\"29.97\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450863500\",\"out_time_ms\":\"450863500\",\"out_time\":\"00:07:30.863500\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(371,287,5,NULL,2834,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"hevc\",\"codec_long_name\":\"H.265 \\/ HEVC (High Efficiency Video Coding)\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/25\",\"codec_tag_string\":\"[36][0][0][0]\",\"codec_tag\":\"0x0024\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1080,\"has_b_frames\":0,\"pix_fmt\":\"yuv420p\",\"level\":123,\"color_range\":\"tv\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"refs\":1,\"id\":\"0x1e1\",\"r_frame_rate\":\"25\\/1\",\"avg_frame_rate\":\"25\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1953693638,\"start_time\":\"21707.707089\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x1e2\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1953687768,\"start_time\":\"21707.641867\",\"bit_rate\":\"130875\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9020\\/ect0.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1033,'http://erco2022.ddns.me:9020/ect0.ts',3637,'{\"frame\":\"11229\",\"fps\":\"24.93\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450343400\",\"out_time_ms\":\"450343400\",\"out_time\":\"00:07:30.343400\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(372,288,5,NULL,2832,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"hevc\",\"codec_long_name\":\"H.265 \\/ HEVC (High Efficiency Video Coding)\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/25\",\"codec_tag_string\":\"[36][0][0][0]\",\"codec_tag\":\"0x0024\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"pix_fmt\":\"yuv420p\",\"level\":93,\"color_range\":\"tv\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"refs\":1,\"id\":\"0x1eb\",\"r_frame_rate\":\"25\\/1\",\"avg_frame_rate\":\"25\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1953690038,\"start_time\":\"21707.667089\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x1ec\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1953687768,\"start_time\":\"21707.641867\",\"bit_rate\":\"130875\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9020\\/ect1.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1041,'http://erco2022.ddns.me:9020/ect1.ts',2156,'{\"frame\":\"11241\",\"fps\":\"24.94\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450823422\",\"out_time_ms\":\"450823422\",\"out_time\":\"00:07:30.823422\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(373,289,5,NULL,2842,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"hevc\",\"codec_long_name\":\"H.265 \\/ HEVC (High Efficiency Video Coding)\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/25\",\"codec_tag_string\":\"[36][0][0][0]\",\"codec_tag\":\"0x0024\",\"width\":720,\"height\":480,\"coded_width\":720,\"coded_height\":480,\"has_b_frames\":0,\"pix_fmt\":\"yuv420p\",\"level\":90,\"color_range\":\"tv\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"refs\":1,\"id\":\"0x1f5\",\"r_frame_rate\":\"25\\/1\",\"avg_frame_rate\":\"25\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1953996038,\"start_time\":\"21711.067089\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x1f6\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1953993768,\"start_time\":\"21711.041867\",\"bit_rate\":\"130875\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9020\\/etc2.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1050,'http://erco2022.ddns.me:9020/etc2.ts',2754,'{\"frame\":\"11221\",\"fps\":\"24.93\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450090667\",\"out_time_ms\":\"450090667\",\"out_time\":\"00:07:30.090667\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(374,290,5,NULL,2838,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"hevc\",\"codec_long_name\":\"H.265 \\/ HEVC (High Efficiency Video Coding)\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/25\",\"codec_tag_string\":\"[36][0][0][0]\",\"codec_tag\":\"0x0024\",\"width\":640,\"height\":480,\"coded_width\":640,\"coded_height\":480,\"has_b_frames\":0,\"pix_fmt\":\"yuv420p\",\"level\":90,\"color_range\":\"tv\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"refs\":1,\"id\":\"0x1ff\",\"r_frame_rate\":\"25\\/1\",\"avg_frame_rate\":\"25\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1953690038,\"start_time\":\"21707.667089\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x200\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1953687768,\"start_time\":\"21707.641867\",\"bit_rate\":\"130875\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9020\\/ect3.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1069,'http://erco2022.ddns.me:9020/ect3.ts',3348,'{\"frame\":\"11374\",\"fps\":\"25.22\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"456143689\",\"out_time_ms\":\"456143689\",\"out_time\":\"00:07:36.143689\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1.01x\",\"progress\":\"continue\"}',0,NULL,0),(375,291,5,NULL,2839,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":720,\"height\":480,\"coded_width\":720,\"coded_height\":480,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"3:2\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":7416543601,\"start_time\":\"82406.040011\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":7416542689,\"start_time\":\"82406.029878\",\"bit_rate\":\"130577\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9000\\/ect7.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1079,'http://erco2022.ddns.me:9000/ect7.ts',444,'{\"frame\":\"10079\",\"fps\":\"22.35\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450861856\",\"out_time_ms\":\"450861856\",\"out_time\":\"00:07:30.861856\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(376,292,5,NULL,2868,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":7416543601,\"start_time\":\"82406.040011\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":7416542689,\"start_time\":\"82406.029878\",\"bit_rate\":\"130577\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9000\\/ect6.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1101,'http://erco2022.ddns.me:9000/ect6.ts',465,'{\"frame\":\"10075\",\"fps\":\"22.35\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450891478\",\"out_time_ms\":\"450891478\",\"out_time\":\"00:07:30.891478\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(377,293,5,NULL,2804,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/50\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1088,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":42,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"25\\/1\",\"avg_frame_rate\":\"25\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":5933932536,\"start_time\":\"65932.583733\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":5933914889,\"start_time\":\"65932.387656\",\"bit_rate\":\"130577\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9000\\/ect4.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1115,'http://erco2022.ddns.me:9000/ect4.ts',3784,'{\"frame\":\"11270\",\"fps\":\"25.00\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450885089\",\"out_time_ms\":\"450885089\",\"out_time\":\"00:07:30.885089\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(378,294,5,NULL,2806,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/50\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"25\\/1\",\"avg_frame_rate\":\"25\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":5933932536,\"start_time\":\"65932.583733\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/44100\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"44100\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":5933914889,\"start_time\":\"65932.387656\",\"bit_rate\":\"130577\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/erco2022.ddns.me:9000\\/ect5.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1134,'http://erco2022.ddns.me:9000/ect5.ts',2585,'{\"frame\":\"11266\",\"fps\":\"25.00\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450722544\",\"out_time_ms\":\"450722544\",\"out_time\":\"00:07:30.722544\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(379,295,5,NULL,2862,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"hevc\",\"codec_long_name\":\"H.265 \\/ HEVC (High Efficiency Video Coding)\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/30\",\"codec_tag_string\":\"[36][0][0][0]\",\"codec_tag\":\"0x0024\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1080,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuvj420p\",\"level\":123,\"color_range\":\"pc\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"refs\":1,\"id\":\"0x118\",\"r_frame_rate\":\"60000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":767843839,\"start_time\":\"8531.598211\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x119\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":767839562,\"start_time\":\"8531.550689\",\"bit_rate\":\"136875\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:7000\\/stream01\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1144,'http://vapersecurity.ddns.me:7000/stream01',3518,'{\"frame\":\"12878\",\"fps\":\"28.61\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450157878\",\"out_time_ms\":\"450157878\",\"out_time\":\"00:07:30.157878\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(380,296,5,NULL,2850,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuvj420p\",\"level\":31,\"color_range\":\"pc\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x118\",\"r_frame_rate\":\"60000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":767842325,\"start_time\":\"8531.581389\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x119\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":767835728,\"start_time\":\"8531.508089\",\"bit_rate\":\"135375\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:7000\\/stream02\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1159,'http://vapersecurity.ddns.me:7000/stream02',3288,'{\"frame\":\"13050\",\"fps\":\"28.94\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"456085156\",\"out_time_ms\":\"456085156\",\"out_time\":\"00:07:36.085156\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1.01x\",\"progress\":\"continue\"}',0,NULL,0),(381,297,5,NULL,2840,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"hevc\",\"codec_long_name\":\"H.265 \\/ HEVC (High Efficiency Video Coding)\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/30\",\"codec_tag_string\":\"[36][0][0][0]\",\"codec_tag\":\"0x0024\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1080,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuvj420p\",\"level\":123,\"color_range\":\"pc\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"refs\":1,\"id\":\"0x118\",\"r_frame_rate\":\"60000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":767834982,\"start_time\":\"8531.499800\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x119\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":767831878,\"start_time\":\"8531.465311\",\"bit_rate\":\"123375\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:7000\\/stream03\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1176,'http://vapersecurity.ddns.me:7000/stream03',3550,'{\"frame\":\"12858\",\"fps\":\"28.57\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450005044\",\"out_time_ms\":\"450005044\",\"out_time\":\"00:07:30.005044\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(382,298,5,NULL,2811,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuvj420p\",\"level\":31,\"color_range\":\"pc\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x118\",\"r_frame_rate\":\"60000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":767832103,\"start_time\":\"8531.467811\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x119\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":767820348,\"start_time\":\"8531.337200\",\"bit_rate\":\"123750\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:7000\\/stream04\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1192,'http://vapersecurity.ddns.me:7000/stream04',3277,'{\"frame\":\"12860\",\"fps\":\"28.57\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450090544\",\"out_time_ms\":\"450090544\",\"out_time\":\"00:07:30.090544\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(383,299,5,NULL,2858,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"hevc\",\"codec_long_name\":\"H.265 \\/ HEVC (High Efficiency Video Coding)\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/30\",\"codec_tag_string\":\"[36][0][0][0]\",\"codec_tag\":\"0x0024\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1080,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuvj420p\",\"level\":123,\"color_range\":\"pc\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"refs\":1,\"id\":\"0x118\",\"r_frame_rate\":\"60\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":767840833,\"start_time\":\"8531.564811\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x119\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":767835728,\"start_time\":\"8531.508089\",\"bit_rate\":\"161250\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:7000\\/stream05\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1207,'http://vapersecurity.ddns.me:7000/stream05',4133,'{\"frame\":\"12865\",\"fps\":\"28.53\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450922711\",\"out_time_ms\":\"450922711\",\"out_time\":\"00:07:30.922711\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(384,300,5,NULL,2825,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuvj420p\",\"level\":31,\"color_range\":\"pc\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x118\",\"r_frame_rate\":\"60\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":767837831,\"start_time\":\"8531.531456\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x119\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":767831878,\"start_time\":\"8531.465311\",\"bit_rate\":\"119250\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:7000\\/stream06\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1218,'http://vapersecurity.ddns.me:7000/stream06',3293,'{\"frame\":\"12905\",\"fps\":\"28.68\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450005278\",\"out_time_ms\":\"450005278\",\"out_time\":\"00:07:30.005278\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(385,301,5,NULL,2844,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"hevc\",\"codec_long_name\":\"H.265 \\/ HEVC (High Efficiency Video Coding)\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/30\",\"codec_tag_string\":\"[36][0][0][0]\",\"codec_tag\":\"0x0024\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1080,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuvj420p\",\"level\":123,\"color_range\":\"pc\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"refs\":1,\"id\":\"0x118\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":767835048,\"start_time\":\"8531.500533\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x119\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":767831878,\"start_time\":\"8531.465311\",\"bit_rate\":\"137250\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:7000\\/stream07\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1237,'http://vapersecurity.ddns.me:7000/stream07',4015,'{\"frame\":\"13054\",\"fps\":\"28.98\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"455999989\",\"out_time_ms\":\"455999989\",\"out_time\":\"00:07:35.999989\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1.01x\",\"progress\":\"continue\"}',0,NULL,0),(386,302,5,NULL,2784,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":720,\"height\":480,\"coded_width\":720,\"coded_height\":480,\"has_b_frames\":0,\"sample_aspect_ratio\":\"32:27\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuvj420p\",\"level\":30,\"color_range\":\"pc\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x118\",\"r_frame_rate\":\"60000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":767824557,\"start_time\":\"8531.383967\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x119\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":767820348,\"start_time\":\"8531.337200\",\"bit_rate\":\"124875\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:7000\\/stream08\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1248,'http://vapersecurity.ddns.me:7000/stream08',3290,'{\"frame\":\"13059\",\"fps\":\"29.00\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"455360000\",\"out_time_ms\":\"455360000\",\"out_time\":\"00:07:35.360000\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1.01x\",\"progress\":\"continue\"}',0,NULL,0),(387,303,5,NULL,2790,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"hevc\",\"codec_long_name\":\"H.265 \\/ HEVC (High Efficiency Video Coding)\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/24\",\"codec_tag_string\":\"[36][0][0][0]\",\"codec_tag\":\"0x0024\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1080,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuvj420p\",\"level\":123,\"color_range\":\"pc\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"refs\":1,\"id\":\"0x118\",\"r_frame_rate\":\"60000\\/1001\",\"avg_frame_rate\":\"24\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4375990770,\"start_time\":\"48622.119667\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x119\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4375983504,\"start_time\":\"48622.038933\",\"bit_rate\":\"120375\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:7001\\/stream01\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1272,'http://vapersecurity.ddns.me:7001/stream01',3614,'{\"frame\":\"10764\",\"fps\":\"23.91\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450239911\",\"out_time_ms\":\"450239911\",\"out_time\":\"00:07:30.239911\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(388,304,5,NULL,2799,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/48\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuvj420p\",\"level\":31,\"color_range\":\"pc\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x118\",\"r_frame_rate\":\"60000\\/1001\",\"avg_frame_rate\":\"24\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4375995275,\"start_time\":\"48622.169722\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x119\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4375987350,\"start_time\":\"48622.081667\",\"bit_rate\":\"144000\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:7001\\/stream02\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1282,'http://vapersecurity.ddns.me:7001/stream02',3341,'{\"frame\":\"10758\",\"fps\":\"23.90\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450090422\",\"out_time_ms\":\"450090422\",\"out_time\":\"00:07:30.090422\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(389,305,5,NULL,2796,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"hevc\",\"codec_long_name\":\"H.265 \\/ HEVC (High Efficiency Video Coding)\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/30\",\"codec_tag_string\":\"[36][0][0][0]\",\"codec_tag\":\"0x0024\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1080,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuvj420p\",\"level\":123,\"color_range\":\"pc\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"refs\":1,\"id\":\"0x118\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4375989805,\"start_time\":\"48622.108944\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x119\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4375983504,\"start_time\":\"48622.038933\",\"bit_rate\":\"122250\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:7001\\/stream03\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1307,'http://vapersecurity.ddns.me:7001/stream03',3625,'{\"frame\":\"12867\",\"fps\":\"28.59\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450026633\",\"out_time_ms\":\"450026633\",\"out_time\":\"00:07:30.026633\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(390,306,5,NULL,2818,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuvj420p\",\"level\":31,\"color_range\":\"pc\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x118\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4375991416,\"start_time\":\"48622.126844\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x119\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4375991206,\"start_time\":\"48622.124511\",\"bit_rate\":\"138750\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:7001\\/stream04\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1328,'http://vapersecurity.ddns.me:7001/stream04',3290,'{\"frame\":\"12866\",\"fps\":\"28.58\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450112122\",\"out_time_ms\":\"450112122\",\"out_time\":\"00:07:30.112122\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(391,307,5,NULL,2792,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"hevc\",\"codec_long_name\":\"H.265 \\/ HEVC (High Efficiency Video Coding)\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/30\",\"codec_tag_string\":\"[36][0][0][0]\",\"codec_tag\":\"0x0024\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1080,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuvj420p\",\"level\":123,\"color_range\":\"pc\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"refs\":1,\"id\":\"0x118\",\"r_frame_rate\":\"60000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4375989550,\"start_time\":\"48622.106111\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x119\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4375983504,\"start_time\":\"48622.038933\",\"bit_rate\":\"127125\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:7001\\/stream05\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1343,'http://vapersecurity.ddns.me:7001/stream05',3484,'{\"frame\":\"12877\",\"fps\":\"28.59\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450389378\",\"out_time_ms\":\"450389378\",\"out_time\":\"00:07:30.389378\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(392,308,5,NULL,3615,0,0,1663713895,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuvj420p\",\"level\":31,\"color_range\":\"pc\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x118\",\"r_frame_rate\":\"60000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4379853060,\"start_time\":\"48665.034000\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x119\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4379846541,\"start_time\":\"48664.961567\",\"bit_rate\":\"120375\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:7001\\/stream06\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1358,'http://vapersecurity.ddns.me:7001/stream06',3202,'{\"frame\":\"12028\",\"fps\":\"28.61\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"420480144\",\"out_time_ms\":\"420480144\",\"out_time\":\"00:07:00.480144\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(393,309,5,NULL,2810,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"hevc\",\"codec_long_name\":\"H.265 \\/ HEVC (High Efficiency Video Coding)\",\"profile\":\"Main\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/30\",\"codec_tag_string\":\"[36][0][0][0]\",\"codec_tag\":\"0x0024\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1080,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuvj420p\",\"level\":123,\"color_range\":\"pc\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"refs\":1,\"id\":\"0x118\",\"r_frame_rate\":\"60000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4375993926,\"start_time\":\"48622.154733\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x119\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4375987350,\"start_time\":\"48622.081667\",\"bit_rate\":\"124500\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:7001\\/stream07\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1893,'http://vapersecurity.ddns.me:7001/stream07',3456,'{\"frame\":\"12911\",\"fps\":\"28.67\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450410733\",\"out_time_ms\":\"450410733\",\"out_time\":\"00:07:30.410733\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(394,310,5,NULL,2816,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuvj420p\",\"level\":31,\"color_range\":\"pc\",\"color_space\":\"bt709\",\"color_transfer\":\"bt709\",\"color_primaries\":\"bt709\",\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x118\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4375995426,\"start_time\":\"48622.171400\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0x119\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4375991206,\"start_time\":\"48622.124511\",\"bit_rate\":\"130500\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:7001\\/stream08\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1924,'http://vapersecurity.ddns.me:7001/stream08',3162,'{\"frame\":\"12899\",\"fps\":\"28.66\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450026633\",\"out_time_ms\":\"450026633\",\"out_time\":\"00:07:30.026633\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(395,311,5,NULL,2852,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4577581426,\"start_time\":\"50862.015844\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4577569520,\"start_time\":\"50861.883556\",\"bit_rate\":\"130875\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:9000\\/0.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1942,'http://vapersecurity.ddns.me:9000/0.ts',2072,'{\"frame\":\"13481\",\"fps\":\"29.91\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450776889\",\"out_time_ms\":\"450776889\",\"out_time\":\"00:07:30.776889\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(396,312,5,NULL,2860,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/50\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":720,\"height\":480,\"coded_width\":720,\"coded_height\":480,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"3:2\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"25\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4577587552,\"start_time\":\"50862.083911\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4577569520,\"start_time\":\"50861.883556\",\"bit_rate\":\"130500\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:9000\\/1.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1953,'http://vapersecurity.ddns.me:9000/1.ts',1166,'{\"frame\":\"11241\",\"fps\":\"24.94\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450688000\",\"out_time_ms\":\"450688000\",\"out_time\":\"00:07:30.688000\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(397,313,5,NULL,2864,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4577562172,\"start_time\":\"50861.801911\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4577551672,\"start_time\":\"50861.685244\",\"bit_rate\":\"130875\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:9000\\/2.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1973,'http://vapersecurity.ddns.me:9000/2.ts',2211,'{\"frame\":\"13506\",\"fps\":\"29.96\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450760933\",\"out_time_ms\":\"450760933\",\"out_time\":\"00:07:30.760933\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(398,314,5,NULL,2866,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Baseline\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/50\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":720,\"height\":480,\"coded_width\":720,\"coded_height\":480,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"3:2\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"60000\\/1001\",\"avg_frame_rate\":\"25\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4577563673,\"start_time\":\"50861.818589\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4577551672,\"start_time\":\"50861.685244\",\"bit_rate\":\"130875\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:9000\\/3.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1981,'http://vapersecurity.ddns.me:9000/3.ts',1270,'{\"frame\":\"11226\",\"fps\":\"24.93\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450282667\",\"out_time_ms\":\"450282667\",\"out_time\":\"00:07:30.282667\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(399,315,5,NULL,2801,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4577560653,\"start_time\":\"50861.785033\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4577543213,\"start_time\":\"50861.591256\",\"bit_rate\":\"130875\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:9000\\/4.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',1991,'http://vapersecurity.ddns.me:9000/4.ts',1948,'{\"frame\":\"13485\",\"fps\":\"29.92\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450702944\",\"out_time_ms\":\"450702944\",\"out_time\":\"00:07:30.702944\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(400,316,5,NULL,2872,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/50\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":850,\"height\":480,\"coded_width\":864,\"coded_height\":480,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"85:48\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"60000\\/1001\",\"avg_frame_rate\":\"25\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4577563656,\"start_time\":\"50861.818400\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4577558573,\"start_time\":\"50861.761922\",\"bit_rate\":\"130500\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:9000\\/5.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2001,'http://vapersecurity.ddns.me:9000/5.ts',1093,'{\"frame\":\"11236\",\"fps\":\"24.92\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450837333\",\"out_time_ms\":\"450837333\",\"out_time\":\"00:07:30.837333\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(401,317,5,NULL,2768,0,0,1663713851,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"60000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1834032609,\"start_time\":\"20378.140100\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1834024181,\"start_time\":\"20378.046456\",\"bit_rate\":\"190125\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:9000\\/6.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2011,'http://vapersecurity.ddns.me:9000/6.ts',2557,'{\"frame\":\"16159\",\"fps\":\"35.89\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450176000\",\"out_time_ms\":\"450176000\",\"out_time\":\"00:07:30.176000\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(402,318,5,NULL,2780,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/50\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":720,\"height\":480,\"coded_width\":720,\"coded_height\":480,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"3:2\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"25\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1834028031,\"start_time\":\"20378.089233\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1834024181,\"start_time\":\"20378.046456\",\"bit_rate\":\"139875\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:9000\\/7.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2025,'http://vapersecurity.ddns.me:9000/7.ts',1495,'{\"frame\":\"13470\",\"fps\":\"29.92\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450176000\",\"out_time_ms\":\"450176000\",\"out_time\":\"00:07:30.176000\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(403,319,5,NULL,2856,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4577558776,\"start_time\":\"50861.764178\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4577547061,\"start_time\":\"50861.634011\",\"bit_rate\":\"138750\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:9000\\/8.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2051,'http://vapersecurity.ddns.me:9000/8.ts',2088,'{\"frame\":\"13506\",\"fps\":\"29.96\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450816000\",\"out_time_ms\":\"450816000\",\"out_time\":\"00:07:30.816000\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(404,320,5,NULL,2846,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/50\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":720,\"height\":480,\"coded_width\":720,\"coded_height\":480,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"3:2\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"60000\\/1001\",\"avg_frame_rate\":\"25\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4577557274,\"start_time\":\"50861.747489\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4577547061,\"start_time\":\"50861.634011\",\"bit_rate\":\"138750\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:9000\\/9.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2071,'http://vapersecurity.ddns.me:9000/9.ts',1241,'{\"frame\":\"11223\",\"fps\":\"24.93\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450277722\",\"out_time_ms\":\"450277722\",\"out_time\":\"00:07:30.277722\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(405,321,5,NULL,2822,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4577556410,\"start_time\":\"50861.737889\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4577540384,\"start_time\":\"50861.559822\",\"bit_rate\":\"130500\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:9000\\/10.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2089,'http://vapersecurity.ddns.me:9000/10.ts',2215,'{\"frame\":\"13488\",\"fps\":\"29.92\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450794667\",\"out_time_ms\":\"450794667\",\"out_time\":\"00:07:30.794667\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(406,322,5,NULL,2813,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/50\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":720,\"height\":480,\"coded_width\":720,\"coded_height\":480,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"3:2\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"60000\\/1001\",\"avg_frame_rate\":\"25\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4577556410,\"start_time\":\"50861.737889\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4577540384,\"start_time\":\"50861.559822\",\"bit_rate\":\"130500\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:9000\\/11.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2104,'http://vapersecurity.ddns.me:9000/11.ts',1268,'{\"frame\":\"11235\",\"fps\":\"24.95\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450321167\",\"out_time_ms\":\"450321167\",\"out_time\":\"00:07:30.321167\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(407,323,5,NULL,2870,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4577563036,\"start_time\":\"50861.811511\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4577557051,\"start_time\":\"50861.745011\",\"bit_rate\":\"130500\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:9000\\/12.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2118,'http://vapersecurity.ddns.me:9000/12.ts',2219,'{\"frame\":\"13491\",\"fps\":\"29.93\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450730667\",\"out_time_ms\":\"450730667\",\"out_time\":\"00:07:30.730667\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(408,324,5,NULL,2854,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/50\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":720,\"height\":480,\"coded_width\":720,\"coded_height\":480,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"3:2\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"25\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4577566039,\"start_time\":\"50861.844878\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4577557051,\"start_time\":\"50861.745011\",\"bit_rate\":\"130500\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:9000\\/13.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2134,'http://vapersecurity.ddns.me:9000/13.ts',1273,'{\"frame\":\"11227\",\"fps\":\"24.93\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450273711\",\"out_time_ms\":\"450273711\",\"out_time\":\"00:07:30.273711\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(409,325,5,NULL,2828,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4577568294,\"start_time\":\"50861.869933\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4577550489,\"start_time\":\"50861.672100\",\"bit_rate\":\"130500\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:9000\\/14.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2147,'http://vapersecurity.ddns.me:9000/14.ts',2218,'{\"frame\":\"13509\",\"fps\":\"29.97\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450784978\",\"out_time_ms\":\"450784978\",\"out_time\":\"00:07:30.784978\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(410,326,5,NULL,2830,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/50\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":720,\"height\":480,\"coded_width\":720,\"coded_height\":480,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"3:2\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"60\\/1\",\"avg_frame_rate\":\"25\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":4577568294,\"start_time\":\"50861.869933\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":4577550489,\"start_time\":\"50861.672100\",\"bit_rate\":\"130500\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/vapersecurity.ddns.me:9000\\/15.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2156,'http://vapersecurity.ddns.me:9000/15.ts',1283,'{\"frame\":\"11229\",\"fps\":\"24.94\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450304000\",\"out_time_ms\":\"450304000\",\"out_time\":\"00:07:30.304000\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(413,342,5,NULL,8714,0,0,1663714208,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"33\\/2000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"1000\\/33\",\"time_base\":\"1\\/1000\",\"start_pts\":250397,\"start_time\":\"250.397000\",\"bit_rate\":\"3999744\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":250413,\"start_time\":\"250.413000\",\"bit_rate\":\"128000\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"live_flv\",\"filename\":\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi0 live=1 timeout=10\",\"bitrate\":null,\"of_duration\":\"0.000000\",\"duration\":\"00:00:00\"}',2164,'rtmp://127.0.0.1:25462/live/emi0',3435,'{\"frame\":\"2207\",\"fps\":\"24.39\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"77575011\",\"out_time_ms\":\"77575011\",\"out_time\":\"00:01:17.575011\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"0.857x\",\"progress\":\"continue\"}',0,NULL,0),(414,343,5,NULL,8451,0,0,1663714199,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"33\\/2000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":720,\"height\":540,\"coded_width\":720,\"coded_height\":544,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"4:3\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"1000\\/33\",\"time_base\":\"1\\/1000\",\"start_pts\":251398,\"start_time\":\"251.398000\",\"bit_rate\":\"2799616\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":251416,\"start_time\":\"251.416000\",\"bit_rate\":\"128000\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"live_flv\",\"filename\":\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi1 live=1 timeout=10\",\"bitrate\":null,\"of_duration\":\"0.000000\",\"duration\":\"00:00:00\"}',2175,'rtmp://127.0.0.1:25462/live/emi1',2508,'{\"frame\":\"3014\",\"fps\":\"24.91\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"108506011\",\"out_time_ms\":\"108506011\",\"out_time\":\"00:01:48.506011\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"0.897x\",\"progress\":\"continue\"}',0,NULL,0),(415,344,5,NULL,8912,0,0,1663714220,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"33\\/2000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"1000\\/33\",\"time_base\":\"1\\/1000\",\"start_pts\":2804,\"start_time\":\"2.804000\",\"bit_rate\":\"3999744\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":2810,\"start_time\":\"2.810000\",\"bit_rate\":\"128000\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"live_flv\",\"filename\":\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi2 live=1 timeout=10\",\"bitrate\":null,\"of_duration\":\"0.000000\",\"duration\":\"00:00:00\"}',2189,'rtmp://127.0.0.1:25462/live/emi2',3759,'{\"frame\":\"2070\",\"fps\":\"22.88\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"72571011\",\"out_time_ms\":\"72571011\",\"out_time\":\"00:01:12.571011\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"0.802x\",\"progress\":\"continue\"}',0,NULL,0),(416,345,5,NULL,8785,0,0,1663714212,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"33\\/2000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":720,\"height\":576,\"coded_width\":720,\"coded_height\":576,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"5:4\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"1000\\/33\",\"time_base\":\"1\\/1000\",\"start_pts\":250549,\"start_time\":\"250.549000\",\"bit_rate\":\"2799616\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":250554,\"start_time\":\"250.554000\",\"bit_rate\":\"128000\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"live_flv\",\"filename\":\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi3 live=1 timeout=10\",\"bitrate\":null,\"of_duration\":\"0.000000\",\"duration\":\"00:00:00\"}',2202,'rtmp://127.0.0.1:25462/live/emi3',2581,'{\"frame\":\"1542\",\"fps\":\"25.57\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"60326011\",\"out_time_ms\":\"60326011\",\"out_time\":\"00:01:00.326011\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(417,346,5,NULL,8881,0,0,1663714219,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"33\\/2000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"1000\\/33\",\"time_base\":\"1\\/1000\",\"start_pts\":256699,\"start_time\":\"256.699000\",\"bit_rate\":\"3999744\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":256701,\"start_time\":\"256.701000\",\"bit_rate\":\"128000\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"live_flv\",\"filename\":\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi4 live=1 timeout=10\",\"bitrate\":null,\"of_duration\":\"0.000000\",\"duration\":\"00:00:00\"}',2217,'rtmp://127.0.0.1:25462/live/emi4',3733,'{\"frame\":\"2144\",\"fps\":\"23.70\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"74139011\",\"out_time_ms\":\"74139011\",\"out_time\":\"00:01:14.139011\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"0.82x\",\"progress\":\"continue\"}',0,NULL,0),(418,347,5,NULL,8699,0,0,1663714207,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"33\\/2000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":720,\"height\":540,\"coded_width\":720,\"coded_height\":544,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"4:3\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"1000\\/33\",\"time_base\":\"1\\/1000\",\"start_pts\":5950,\"start_time\":\"5.950000\",\"bit_rate\":\"2799616\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":5970,\"start_time\":\"5.970000\",\"bit_rate\":\"128000\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"live_flv\",\"filename\":\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi5 live=1 timeout=10\",\"bitrate\":null,\"of_duration\":\"0.000000\",\"duration\":\"00:00:00\"}',2258,'rtmp://127.0.0.1:25462/live/emi5',2629,'{\"frame\":\"1646\",\"fps\":\"27.29\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"60358011\",\"out_time_ms\":\"60358011\",\"out_time\":\"00:01:00.358011\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(419,348,5,NULL,8845,0,0,1663714215,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"33\\/2000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"1000\\/33\",\"time_base\":\"1\\/1000\",\"start_pts\":4052,\"start_time\":\"4.052000\",\"bit_rate\":\"3999744\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":4061,\"start_time\":\"4.061000\",\"bit_rate\":\"128000\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"live_flv\",\"filename\":\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi6 live=1 timeout=10\",\"bitrate\":null,\"of_duration\":\"0.000000\",\"duration\":\"00:00:00\"}',2266,'rtmp://127.0.0.1:25462/live/emi6',3693,'{\"frame\":\"2142\",\"fps\":\"23.79\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"77642011\",\"out_time_ms\":\"77642011\",\"out_time\":\"00:01:17.642011\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"0.862x\",\"progress\":\"continue\"}',0,NULL,0),(420,349,5,NULL,8461,0,0,1663714200,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"33\\/2000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":720,\"height\":540,\"coded_width\":720,\"coded_height\":544,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"4:3\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"1000\\/33\",\"time_base\":\"1\\/1000\",\"start_pts\":262806,\"start_time\":\"262.806000\",\"bit_rate\":\"2799616\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":262813,\"start_time\":\"262.813000\",\"bit_rate\":\"128000\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"live_flv\",\"filename\":\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi7 live=1 timeout=10\",\"bitrate\":null,\"of_duration\":\"0.000000\",\"duration\":\"00:00:00\"}',2280,'rtmp://127.0.0.1:25462/live/emi7',2581,'{\"frame\":\"2803\",\"fps\":\"23.21\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"109373011\",\"out_time_ms\":\"109373011\",\"out_time\":\"00:01:49.373011\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"0.906x\",\"progress\":\"continue\"}',0,NULL,0),(421,350,5,NULL,8663,0,0,1663714205,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"33\\/2000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"1000\\/33\",\"time_base\":\"1\\/1000\",\"start_pts\":252585,\"start_time\":\"252.585000\",\"bit_rate\":\"3999744\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":252593,\"start_time\":\"252.593000\",\"bit_rate\":\"128000\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"live_flv\",\"filename\":\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi8 live=1 timeout=10\",\"bitrate\":null,\"of_duration\":\"0.000000\",\"duration\":\"00:00:00\"}',2290,'rtmp://127.0.0.1:25462/live/emi8',3225,'{\"frame\":\"2131\",\"fps\":\"23.48\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"81213011\",\"out_time_ms\":\"81213011\",\"out_time\":\"00:01:21.213011\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"0.895x\",\"progress\":\"continue\"}',0,NULL,0),(422,351,5,NULL,8710,0,0,1663714208,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"33\\/2000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":720,\"height\":540,\"coded_width\":720,\"coded_height\":544,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"4:3\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"1000\\/33\",\"time_base\":\"1\\/1000\",\"start_pts\":250083,\"start_time\":\"250.083000\",\"bit_rate\":\"2799616\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":250097,\"start_time\":\"250.097000\",\"bit_rate\":\"128000\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"live_flv\",\"filename\":\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi9 live=1 timeout=10\",\"bitrate\":null,\"of_duration\":\"0.000000\",\"duration\":\"00:00:00\"}',2307,'rtmp://127.0.0.1:25462/live/emi9',2340,'{\"frame\":\"2092\",\"fps\":\"23.11\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"78977011\",\"out_time_ms\":\"78977011\",\"out_time\":\"00:01:18.977011\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"0.872x\",\"progress\":\"continue\"}',0,NULL,0),(423,352,5,NULL,8847,0,0,1663714215,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"33\\/2000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"1000\\/33\",\"time_base\":\"1\\/1000\",\"start_pts\":248706,\"start_time\":\"248.706000\",\"bit_rate\":\"3999744\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":248725,\"start_time\":\"248.725000\",\"bit_rate\":\"128000\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"live_flv\",\"filename\":\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi10 live=1 timeout=10\",\"bitrate\":null,\"of_duration\":\"0.000000\",\"duration\":\"00:00:00\"}',2317,'rtmp://127.0.0.1:25462/live/emi10',1532,'{\"frame\":\"696\",\"fps\":\"22.54\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"30897011\",\"out_time_ms\":\"30897011\",\"out_time\":\"00:00:30.897011\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(424,353,5,NULL,8704,0,0,1663714207,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"33\\/2000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":720,\"height\":540,\"coded_width\":720,\"coded_height\":544,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"4:3\",\"pix_fmt\":\"yuv420p\",\"level\":30,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"1000\\/33\",\"time_base\":\"1\\/1000\",\"start_pts\":247205,\"start_time\":\"247.205000\",\"bit_rate\":\"2799616\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":247210,\"start_time\":\"247.210000\",\"bit_rate\":\"128000\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"live_flv\",\"filename\":\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/emi11 live=1 timeout=10\",\"bitrate\":null,\"of_duration\":\"0.000000\",\"duration\":\"00:00:00\"}',2333,'rtmp://127.0.0.1:25462/live/emi11',1227,'{\"frame\":\"2124\",\"fps\":\"23.58\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"83749011\",\"out_time_ms\":\"83749011\",\"out_time\":\"00:01:23.749011\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"0.93x\",\"progress\":\"continue\"}',0,NULL,0),(425,354,5,NULL,-1,0,1,NULL,'',6786,NULL,NULL,'',0,NULL,NULL),(426,355,5,NULL,NULL,0,0,NULL,'',NULL,NULL,NULL,'',0,NULL,NULL),(427,356,5,NULL,-1,0,1,NULL,'',6788,NULL,NULL,'',0,NULL,NULL),(428,357,5,NULL,-1,0,1,NULL,'',6790,NULL,NULL,'',0,NULL,NULL),(429,358,5,NULL,2776,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1088,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":42,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1429361483,\"start_time\":\"15881.794256\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1429353840,\"start_time\":\"15881.709333\",\"bit_rate\":\"258375\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc1.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2386,'http://gdc0001.damnserver.com:6969/gdc1.ts',628,'{\"frame\":\"8926\",\"fps\":\"19.83\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450026667\",\"out_time_ms\":\"450026667\",\"out_time\":\"00:07:30.026667\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(430,359,5,NULL,2888,0,0,1663713853,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1088,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":42,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1415348500,\"start_time\":\"15726.094444\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1415346377,\"start_time\":\"15726.070856\",\"bit_rate\":\"258750\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc2.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2397,'http://gdc0001.damnserver.com:6969/gdc2.ts',638,'{\"frame\":\"9201\",\"fps\":\"20.44\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450056300\",\"out_time_ms\":\"450056300\",\"out_time\":\"00:07:30.056300\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(431,360,5,NULL,2770,0,0,1663713851,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1088,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":42,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1410236120,\"start_time\":\"15669.290222\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1410181191,\"start_time\":\"15668.679900\",\"bit_rate\":\"258750\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc3.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2410,'http://gdc0001.damnserver.com:6969/gdc3.ts',644,'{\"frame\":\"9604\",\"fps\":\"21.34\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450026667\",\"out_time_ms\":\"450026667\",\"out_time\":\"00:07:30.026667\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(432,361,5,NULL,2803,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1088,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":42,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1393511418,\"start_time\":\"15483.460200\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1393506051,\"start_time\":\"15483.400567\",\"bit_rate\":\"258750\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc4.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2426,'http://gdc0001.damnserver.com:6969/gdc4.ts',637,'{\"frame\":\"9336\",\"fps\":\"20.75\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450048000\",\"out_time_ms\":\"450048000\",\"out_time\":\"00:07:30.048000\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(433,362,5,NULL,2890,0,0,1663713853,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1088,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":42,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1370059213,\"start_time\":\"15222.880144\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1370050800,\"start_time\":\"15222.786667\",\"bit_rate\":\"258750\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc5.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2441,'http://gdc0001.damnserver.com:6969/gdc5.ts',463,'{\"frame\":\"4828\",\"fps\":\"10.71\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450730667\",\"out_time_ms\":\"450730667\",\"out_time\":\"00:07:30.730667\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(434,363,5,NULL,2880,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1088,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":42,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1381080988,\"start_time\":\"15345.344311\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1381018743,\"start_time\":\"15344.652700\",\"bit_rate\":\"258375\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc6.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2462,'http://gdc0001.damnserver.com:6969/gdc6.ts',642,'{\"frame\":\"9546\",\"fps\":\"21.21\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450112000\",\"out_time_ms\":\"450112000\",\"out_time\":\"00:07:30.112000\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(435,364,5,NULL,2886,0,0,1663713853,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1088,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":42,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1380428834,\"start_time\":\"15338.098156\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1380418800,\"start_time\":\"15337.986667\",\"bit_rate\":\"258375\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc7.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2477,'http://gdc0001.damnserver.com:6969/gdc7.ts',3547,'{\"frame\":\"13459\",\"fps\":\"29.90\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450090667\",\"out_time_ms\":\"450090667\",\"out_time\":\"00:07:30.090667\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(436,365,5,NULL,-1,0,1,1663381751,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1088,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":42,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":241797822,\"start_time\":\"2686.642467\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":241793881,\"start_time\":\"2686.598678\",\"bit_rate\":\"258750\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc8.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',6801,'http://gdc0001.damnserver.com:6969/gdc8.ts',3808,'',0,NULL,0),(437,366,5,NULL,2917,0,0,1663713855,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1429667483,\"start_time\":\"15885.194256\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1429661760,\"start_time\":\"15885.130667\",\"bit_rate\":\"258750\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc1a.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2500,'http://gdc0001.damnserver.com:6969/gdc1a.ts',1150,'{\"frame\":\"8938\",\"fps\":\"19.84\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450410667\",\"out_time_ms\":\"450410667\",\"out_time\":\"00:07:30.410667\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(438,367,5,NULL,2919,0,0,1663713855,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1415662762,\"start_time\":\"15729.586244\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1415651520,\"start_time\":\"15729.461333\",\"bit_rate\":\"258375\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc2a.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2513,'http://gdc0001.damnserver.com:6969/gdc2a.ts',1170,'{\"frame\":\"9212\",\"fps\":\"20.45\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450432000\",\"out_time_ms\":\"450432000\",\"out_time\":\"00:07:30.432000\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(439,368,5,NULL,2946,0,0,1663713855,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1410621320,\"start_time\":\"15673.570222\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1410610071,\"start_time\":\"15673.445233\",\"bit_rate\":\"258750\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc3a.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2524,'http://gdc0001.damnserver.com:6969/gdc3a.ts',1155,'{\"frame\":\"9636\",\"fps\":\"21.39\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450496000\",\"out_time_ms\":\"450496000\",\"out_time\":\"00:07:30.496000\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(440,369,5,NULL,2874,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1393821920,\"start_time\":\"15486.910222\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1393812051,\"start_time\":\"15486.800567\",\"bit_rate\":\"258750\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc4a.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2537,'http://gdc0001.damnserver.com:6969/gdc4a.ts',1138,'{\"frame\":\"9337\",\"fps\":\"20.73\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450517333\",\"out_time_ms\":\"450517333\",\"out_time\":\"00:07:30.517333\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(441,370,5,NULL,-1,0,1,NULL,'',6814,NULL,NULL,'',0,NULL,NULL),(442,371,5,NULL,2848,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1380662760,\"start_time\":\"15340.697333\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1380655680,\"start_time\":\"15340.618667\",\"bit_rate\":\"258375\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc7a.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2560,'http://gdc0001.damnserver.com:6969/gdc7a.ts',2418,'{\"frame\":\"13474\",\"fps\":\"29.94\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450005333\",\"out_time_ms\":\"450005333\",\"out_time\":\"00:07:30.005333\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(443,372,5,NULL,NULL,0,0,NULL,'',23595,NULL,NULL,'',0,NULL,NULL),(444,373,5,NULL,2876,0,0,1663713852,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"High\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/60\",\"codec_tag_string\":\"[27][0][0][0]\",\"codec_tag\":\"0x001b\",\"width\":1280,\"height\":720,\"coded_width\":1280,\"coded_height\":720,\"has_b_frames\":0,\"sample_aspect_ratio\":\"1:1\",\"display_aspect_ratio\":\"16:9\",\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"false\",\"nal_length_size\":\"0\",\"id\":\"0x64\",\"r_frame_rate\":\"30\\/1\",\"avg_frame_rate\":\"30\\/1\",\"time_base\":\"1\\/90000\",\"start_pts\":1370293213,\"start_time\":\"15225.480144\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[15][0][0][0]\",\"codec_tag\":\"0x000f\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"id\":\"0xc8\",\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/90000\",\"start_pts\":1370280000,\"start_time\":\"15225.333333\",\"bit_rate\":\"258375\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"mpegts\",\"filename\":\"http:\\/\\/gdc0001.damnserver.com:6969\\/gdc5a.ts\",\"bitrate\":null,\"of_duration\":\"N\\/A\",\"duration\":\"N\\/A\"}',2570,'http://gdc0001.damnserver.com:6969/gdc5a.ts',597,'{\"frame\":\"4839\",\"fps\":\"10.75\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450026667\",\"out_time_ms\":\"450026667\",\"out_time\":\"00:07:30.026667\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(445,374,5,NULL,3264,0,0,1663713873,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Constrained Baseline\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/58\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":1920,\"height\":1080,\"coded_width\":1920,\"coded_height\":1088,\"has_b_frames\":0,\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"29\\/1\",\"time_base\":\"1\\/1000\",\"start_pts\":23290,\"start_time\":\"23.290000\",\"bit_rate\":\"2999296\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":23293,\"start_time\":\"23.293000\",\"bit_rate\":\"128000\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"live_flv\",\"filename\":\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/tom2 live=1 timeout=10\",\"bitrate\":null,\"of_duration\":\"0.000000\",\"duration\":\"00:00:00\"}',2586,'rtmp://127.0.0.1:25462/live/tom2',403,'{\"frame\":\"13514\",\"fps\":\"29.97\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450884011\",\"out_time_ms\":\"450884011\",\"out_time\":\"00:07:30.884011\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0),(446,375,5,NULL,3028,0,0,1663713861,'{\"codecs\":{\"video\":{\"index\":0,\"codec_name\":\"h264\",\"codec_long_name\":\"H.264 \\/ AVC \\/ MPEG-4 AVC \\/ MPEG-4 part 10\",\"profile\":\"Constrained Baseline\",\"codec_type\":\"video\",\"codec_time_base\":\"1\\/58\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"width\":854,\"height\":480,\"coded_width\":864,\"coded_height\":480,\"has_b_frames\":0,\"pix_fmt\":\"yuv420p\",\"level\":31,\"chroma_location\":\"left\",\"field_order\":\"progressive\",\"refs\":1,\"is_avc\":\"true\",\"nal_length_size\":\"4\",\"r_frame_rate\":\"30000\\/1001\",\"avg_frame_rate\":\"29\\/1\",\"time_base\":\"1\\/1000\",\"start_pts\":11144,\"start_time\":\"11.144000\",\"bit_rate\":\"999424\",\"bits_per_raw_sample\":\"8\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}},\"audio\":{\"index\":1,\"codec_name\":\"aac\",\"codec_long_name\":\"AAC (Advanced Audio Coding)\",\"profile\":\"LC\",\"codec_type\":\"audio\",\"codec_time_base\":\"1\\/48000\",\"codec_tag_string\":\"[0][0][0][0]\",\"codec_tag\":\"0x0000\",\"sample_fmt\":\"fltp\",\"sample_rate\":\"48000\",\"channels\":2,\"channel_layout\":\"stereo\",\"bits_per_sample\":0,\"r_frame_rate\":\"0\\/0\",\"avg_frame_rate\":\"0\\/0\",\"time_base\":\"1\\/1000\",\"start_pts\":11155,\"start_time\":\"11.155000\",\"bit_rate\":\"95232\",\"disposition\":{\"default\":0,\"dub\":0,\"original\":0,\"comment\":0,\"lyrics\":0,\"karaoke\":0,\"forced\":0,\"hearing_impaired\":0,\"visual_impaired\":0,\"clean_effects\":0,\"attached_pic\":0,\"timed_thumbnails\":0}}},\"container\":\"live_flv\",\"filename\":\"rtmp:\\/\\/127.0.0.1:25462\\/live\\/tom3 live=1 timeout=10\",\"bitrate\":null,\"of_duration\":\"0.000000\",\"duration\":\"00:00:00\"}',2600,'rtmp://127.0.0.1:25462/live/tom3',184,'{\"frame\":\"13512\",\"fps\":\"29.97\",\"stream_0_0_q\":\"-1.0\",\"bitrate\":\"N\\/A\",\"total_size\":\"N\\/A\",\"out_time_us\":\"450830000\",\"out_time_ms\":\"450830000\",\"out_time\":\"00:07:30.830000\",\"dup_frames\":\"0\",\"drop_frames\":\"0\",\"speed\":\"1x\",\"progress\":\"continue\"}',0,NULL,0);
/*!40000 ALTER TABLE `streams_sys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streams_types`
--

DROP TABLE IF EXISTS `streams_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streams_types` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_output` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `live` tinyint(4) NOT NULL,
  PRIMARY KEY (`type_id`),
  KEY `type_key` (`type_key`),
  KEY `type_output` (`type_output`),
  KEY `live` (`live`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streams_types`
--

LOCK TABLES `streams_types` WRITE;
/*!40000 ALTER TABLE `streams_types` DISABLE KEYS */;
INSERT INTO `streams_types` (`type_id`, `type_name`, `type_key`, `type_output`, `live`) VALUES (1,'Live Streams','live','live',1),(2,'Movies','movie','movie',0),(3,'Created Live Channels','created_live','live',1),(4,'Radio','radio_streams','live',1),(5,'TV Series','series','series',0);
/*!40000 ALTER TABLE `streams_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subreseller_setup`
--

DROP TABLE IF EXISTS `subreseller_setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subreseller_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reseller` int(8) NOT NULL DEFAULT '0',
  `subreseller` int(8) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1',
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subreseller_setup`
--

LOCK TABLES `subreseller_setup` WRITE;
/*!40000 ALTER TABLE `subreseller_setup` DISABLE KEYS */;
/*!40000 ALTER TABLE `subreseller_setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suspicious_logs`
--

DROP TABLE IF EXISTS `suspicious_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suspicious_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` mediumtext NOT NULL,
  `last_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suspicious_logs`
--

LOCK TABLES `suspicious_logs` WRITE;
/*!40000 ALTER TABLE `suspicious_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `suspicious_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `admin_read` tinyint(4) NOT NULL,
  `user_read` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `status` (`status`),
  KEY `admin_read` (`admin_read`),
  KEY `user_read` (`user_read`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets_replies`
--

DROP TABLE IF EXISTS `tickets_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `admin_reply` tinyint(4) NOT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_id` (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets_replies`
--

LOCK TABLES `tickets_replies` WRITE;
/*!40000 ALTER TABLE `tickets_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmdb_async`
--

DROP TABLE IF EXISTS `tmdb_async`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmdb_async` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL DEFAULT '0',
  `stream_id` int(16) NOT NULL DEFAULT '0',
  `status` int(8) NOT NULL DEFAULT '0',
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmdb_async`
--

LOCK TABLES `tmdb_async` WRITE;
/*!40000 ALTER TABLE `tmdb_async` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmdb_async` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transcoding_profiles`
--

DROP TABLE IF EXISTS `transcoding_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transcoding_profiles` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_options` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transcoding_profiles`
--

LOCK TABLES `transcoding_profiles` WRITE;
/*!40000 ALTER TABLE `transcoding_profiles` DISABLE KEYS */;
INSERT INTO `transcoding_profiles` (`profile_id`, `profile_name`, `profile_options`) VALUES (1,'Standard H264 AAC','{\"-vcodec\":\"h264\",\"-acodec\":\"aac\"}');
/*!40000 ALTER TABLE `transcoding_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_activity_now`
--

DROP TABLE IF EXISTS `user_activity_now`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_activity_now` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL,
  `container` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `date_start` int(11) NOT NULL,
  `date_end` int(11) DEFAULT NULL,
  `geoip_country_code` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  `isp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `external_device` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `divergence` int(11) DEFAULT NULL,
  `hls_last_read` int(11) DEFAULT NULL,
  `hls_end` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activity_id`),
  KEY `user_agent` (`user_agent`),
  KEY `user_ip` (`user_ip`),
  KEY `container` (`container`),
  KEY `pid` (`pid`),
  KEY `geoip_country_code` (`geoip_country_code`),
  KEY `user_id` (`user_id`),
  KEY `stream_id` (`stream_id`),
  KEY `server_id` (`server_id`),
  KEY `date_start` (`date_start`),
  KEY `date_end` (`date_end`),
  KEY `hls_end` (`hls_end`)
) ENGINE=InnoDB AUTO_INCREMENT=54079 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_activity_now`
--

LOCK TABLES `user_activity_now` WRITE;
/*!40000 ALTER TABLE `user_activity_now` DISABLE KEYS */;
INSERT INTO `user_activity_now` (`activity_id`, `user_id`, `stream_id`, `server_id`, `user_agent`, `user_ip`, `container`, `pid`, `date_start`, `date_end`, `geoip_country_code`, `isp`, `external_device`, `divergence`, `hls_last_read`, `hls_end`) VALUES (53640,2,336,2,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',17819,1663697559,NULL,'FR','','',0,NULL,0),(53641,2,333,2,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',17820,1663697560,NULL,'FR','','',0,NULL,0),(53968,2,335,2,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',22740,1663713693,NULL,'FR','','',3,NULL,0),(53970,2,337,2,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',22895,1663713706,NULL,'FR','','',0,NULL,0),(53972,2,338,2,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',22922,1663713708,NULL,'FR','','',0,NULL,0),(53984,2,277,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5136,1663713974,NULL,'FR','','',0,NULL,0),(53987,2,276,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5148,1663713975,NULL,'FR','','',0,NULL,0),(53988,2,287,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5151,1663713975,NULL,'AE','','',0,NULL,0),(53989,2,281,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5172,1663713975,NULL,'FR','','',0,NULL,0),(53990,2,316,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5173,1663713975,NULL,'AE','','',9,NULL,0),(53991,2,310,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5179,1663713975,NULL,'AE','','',0,NULL,0),(53992,2,283,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5174,1663713975,NULL,'AE','','',0,NULL,0),(53993,2,323,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5181,1663713975,NULL,'FR','','',0,NULL,0),(53994,2,288,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5175,1663713975,NULL,'AE','','',0,NULL,0),(53997,2,297,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5176,1663713975,NULL,'AE','','',0,NULL,0),(54001,2,279,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5201,1663713976,NULL,'FR','','',0,NULL,0),(54002,2,326,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5183,1663713975,NULL,'AE','','',0,NULL,0),(54004,2,278,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5197,1663713977,NULL,'FR','','',0,NULL,0),(54005,2,282,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5190,1663713977,NULL,'AE','','',0,NULL,0),(54010,2,293,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5204,1663713978,NULL,'FR','','',0,NULL,0),(54011,2,292,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5234,1663713978,NULL,'FR','','',0,NULL,0),(54013,2,285,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5230,1663713978,NULL,'AE','','',4,NULL,0),(54014,2,314,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5233,1663713978,NULL,'FR','','',0,NULL,0),(54016,2,325,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5238,1663713978,NULL,'AE','','',0,NULL,0),(54018,2,291,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5240,1663713979,NULL,'FR','','',1,NULL,0),(54024,2,319,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5237,1663713979,NULL,'FR','','',0,NULL,0),(54025,2,315,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5278,1663713980,NULL,'AE','','',0,NULL,0),(54027,2,296,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5245,1663713980,NULL,'AE','','',0,NULL,0),(54028,2,274,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5276,1663713980,NULL,'FR','','',14,NULL,0),(54032,2,290,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5300,1663713981,NULL,'AE','','',0,NULL,0),(54044,2,289,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5365,1663713984,NULL,'AE','','',0,NULL,0),(54045,2,317,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5364,1663713984,NULL,'FR','','',0,NULL,0),(54046,2,318,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5366,1663713984,NULL,'FR','','',0,NULL,0),(54047,2,294,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5367,1663713984,NULL,'FR','','',0,NULL,0),(54049,2,307,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5368,1663713985,NULL,'AE','','',0,NULL,0),(54050,2,295,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5362,1663713985,NULL,'AE','','',0,NULL,0),(54051,2,280,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5370,1663713985,NULL,'FR','','',0,NULL,0),(54052,2,312,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5371,1663713985,NULL,'AE','','',0,NULL,0),(54053,2,306,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5369,1663713985,NULL,'AE','','',0,NULL,0),(54054,2,295,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5374,1663713985,NULL,'AE','','',0,NULL,0),(54055,2,321,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5372,1663713985,NULL,'FR','','',1,NULL,0),(54056,2,286,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5373,1663713985,NULL,'FR','','',0,NULL,0),(54057,2,303,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5401,1663713986,NULL,'AE','','',0,NULL,0),(54058,2,324,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5402,1663713986,NULL,'FR','','',0,NULL,0),(54059,2,311,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5378,1663713985,NULL,'AE','','',0,NULL,0),(54060,2,305,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5403,1663713986,NULL,'AE','','',0,NULL,0),(54062,2,298,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5404,1663713986,NULL,'AE','','',0,NULL,0),(54063,2,322,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5407,1663713986,NULL,'FR','','',4,NULL,0),(54065,2,309,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5405,1663713986,NULL,'AE','','',0,NULL,0),(54066,2,308,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5412,1663713987,NULL,'AE','','',0,NULL,0),(54067,2,320,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5408,1663713987,NULL,'FR','','',0,NULL,0),(54068,2,304,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5415,1663713988,NULL,'AE','','',0,NULL,0),(54072,2,286,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',5417,1663713989,NULL,'AE','','',0,NULL,0),(54073,2,275,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5464,1663713990,NULL,'FR','','',0,NULL,0),(54075,2,313,5,'Xtream-Codes IPTV Panel Pro','89.46.98.89','ts',5425,1663713995,NULL,'FR','','',5,NULL,0),(54078,2,284,5,'Xtream-Codes IPTV Panel Pro','191.96.100.18','ts',6130,1663714031,NULL,'AE','','',0,NULL,0);
/*!40000 ALTER TABLE `user_activity_now` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_output`
--

DROP TABLE IF EXISTS `user_output`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_output` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `access_output_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `access_output_id` (`access_output_id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_output`
--

LOCK TABLES `user_output` WRITE;
/*!40000 ALTER TABLE `user_output` DISABLE KEYS */;
INSERT INTO `user_output` (`id`, `user_id`, `access_output_id`) VALUES (76,3,1),(77,3,2),(78,3,3),(79,1,1),(80,1,2),(81,1,3),(88,2,1),(89,2,2),(90,2,3),(97,4,1),(98,4,2),(99,4,3),(100,5,1),(101,5,2),(102,5,3),(115,6,1),(116,6,2),(117,6,3);
/*!40000 ALTER TABLE `user_output` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exp_date` int(11) DEFAULT NULL,
  `admin_enabled` int(11) NOT NULL DEFAULT '1',
  `enabled` int(11) NOT NULL DEFAULT '1',
  `admin_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `reseller_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `bouquet` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `max_connections` int(11) NOT NULL DEFAULT '1',
  `is_restreamer` tinyint(4) NOT NULL DEFAULT '0',
  `allowed_ips` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `allowed_ua` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `is_trial` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `pair_id` int(11) DEFAULT NULL,
  `is_mag` tinyint(4) NOT NULL DEFAULT '0',
  `is_e2` tinyint(4) NOT NULL DEFAULT '0',
  `force_server_id` int(11) NOT NULL DEFAULT '0',
  `is_isplock` tinyint(4) NOT NULL DEFAULT '0',
  `as_number` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isp_desc` mediumtext COLLATE utf8_unicode_ci,
  `forced_country` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `is_stalker` tinyint(4) NOT NULL DEFAULT '0',
  `bypass_ua` tinyint(4) NOT NULL DEFAULT '0',
  `play_token` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `exp_date` (`exp_date`),
  KEY `is_restreamer` (`is_restreamer`),
  KEY `admin_enabled` (`admin_enabled`),
  KEY `enabled` (`enabled`),
  KEY `is_trial` (`is_trial`),
  KEY `created_at` (`created_at`),
  KEY `created_by` (`created_by`),
  KEY `pair_id` (`pair_id`),
  KEY `is_mag` (`is_mag`),
  KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `is_e2` (`is_e2`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `member_id`, `username`, `password`, `exp_date`, `admin_enabled`, `enabled`, `admin_notes`, `reseller_notes`, `bouquet`, `max_connections`, `is_restreamer`, `allowed_ips`, `allowed_ua`, `is_trial`, `created_at`, `created_by`, `pair_id`, `is_mag`, `is_e2`, `force_server_id`, `is_isplock`, `as_number`, `isp_desc`, `forced_country`, `is_stalker`, `bypass_ua`, `play_token`) VALUES (1,1,'1234','1234',1667188800,1,1,'','','[2]',5,0,'[]','[]',0,1658636338,1,NULL,0,0,0,0,NULL,'','',0,0,''),(2,1,'2022prueba','fUcyJQUrqd',NULL,1,1,'','','[2]',100,1,'[]','[]',0,1659279840,1,NULL,0,0,2,0,NULL,'','',0,0,''),(3,1,'prueba2','19741973',1664510400,1,1,'','','[2]',3,0,'[]','[]',0,1660425061,1,NULL,0,0,0,0,NULL,'','',0,0,''),(4,4,'Pruebaemir','QILluiixFP',NULL,1,1,'','','[2]',1,0,'[]','[]',0,1663214596,4,NULL,0,0,0,0,NULL,'','',0,0,''),(5,2,'A8GINpX7IU','7ZKYHV3VCJ',1663300800,1,1,'','','[]',1,0,'[]','[]',0,1663372546,2,NULL,0,0,0,0,NULL,'','',0,0,''),(6,2,'javiertest','test321',NULL,1,1,'','','[3]',1,0,'[]','[]',0,1663382488,2,NULL,0,0,2,0,NULL,'','',0,0,'');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watch_categories`
--

DROP TABLE IF EXISTS `watch_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watch_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL DEFAULT '0',
  `genre_id` int(8) NOT NULL DEFAULT '0',
  `genre` varchar(64) NOT NULL DEFAULT '',
  `category_id` int(8) NOT NULL DEFAULT '0',
  `bouquets` varchar(4096) NOT NULL DEFAULT '[]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watch_categories`
--

LOCK TABLES `watch_categories` WRITE;
/*!40000 ALTER TABLE `watch_categories` DISABLE KEYS */;
INSERT INTO `watch_categories` (`id`, `type`, `genre_id`, `genre`, `category_id`, `bouquets`) VALUES (1,1,28,'Action',0,'[]'),(2,1,12,'Adventure',0,'[]'),(3,1,16,'Animation',0,'[]'),(4,1,35,'Comedy',0,'[]'),(5,1,80,'Crime',0,'[]'),(6,1,99,'Documentary',0,'[]'),(7,1,18,'Drama',0,'[]'),(8,1,10751,'Family',0,'[]'),(9,1,14,'Fantasy',0,'[]'),(10,1,36,'History',0,'[]'),(11,1,27,'Horror',0,'[]'),(12,1,10402,'Music',0,'[]'),(13,1,9648,'Mystery',0,'[]'),(14,1,10749,'Romance',0,'[]'),(15,1,878,'Science Fiction',0,'[]'),(16,1,10770,'TV Movie',0,'[]'),(17,1,53,'Thriller',0,'[]'),(18,1,10752,'War',0,'[]'),(19,1,37,'Western',0,'[]');
/*!40000 ALTER TABLE `watch_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watch_folders`
--

DROP TABLE IF EXISTS `watch_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watch_folders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL DEFAULT '',
  `directory` varchar(2048) NOT NULL DEFAULT '',
  `server_id` int(8) NOT NULL DEFAULT '0',
  `category_id` int(8) NOT NULL DEFAULT '0',
  `bouquets` varchar(4096) NOT NULL DEFAULT '[]',
  `last_run` int(32) NOT NULL DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '1',
  `disable_tmdb` int(1) NOT NULL DEFAULT '0',
  `ignore_no_match` int(1) NOT NULL DEFAULT '0',
  `auto_subtitles` int(1) NOT NULL DEFAULT '0',
  `fb_bouquets` varchar(4096) NOT NULL DEFAULT '[]',
  `fb_category_id` int(8) NOT NULL DEFAULT '0',
  `allowed_extensions` varchar(4096) NOT NULL DEFAULT '[]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watch_folders`
--

LOCK TABLES `watch_folders` WRITE;
/*!40000 ALTER TABLE `watch_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `watch_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watch_output`
--

DROP TABLE IF EXISTS `watch_output`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watch_output` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL DEFAULT '0',
  `server_id` int(8) NOT NULL DEFAULT '0',
  `filename` varchar(4096) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT '0',
  `stream_id` int(8) NOT NULL DEFAULT '0',
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watch_output`
--

LOCK TABLES `watch_output` WRITE;
/*!40000 ALTER TABLE `watch_output` DISABLE KEYS */;
/*!40000 ALTER TABLE `watch_output` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watch_settings`
--

DROP TABLE IF EXISTS `watch_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watch_settings` (
  `read_native` int(1) NOT NULL DEFAULT '1',
  `movie_symlink` int(1) NOT NULL DEFAULT '1',
  `auto_encode` int(1) NOT NULL DEFAULT '0',
  `transcode_profile_id` int(8) NOT NULL DEFAULT '0',
  `scan_seconds` int(8) NOT NULL DEFAULT '3600',
  `percentage_match` int(3) NOT NULL DEFAULT '80',
  `ffprobe_input` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watch_settings`
--

LOCK TABLES `watch_settings` WRITE;
/*!40000 ALTER TABLE `watch_settings` DISABLE KEYS */;
INSERT INTO `watch_settings` (`read_native`, `movie_symlink`, `auto_encode`, `transcode_profile_id`, `scan_seconds`, `percentage_match`, `ffprobe_input`) VALUES (1,1,0,0,3600,80,0);
/*!40000 ALTER TABLE `watch_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xtream_main`
--

DROP TABLE IF EXISTS `xtream_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xtream_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_available` int(11) NOT NULL DEFAULT '0',
  `root_ip` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xtream_main`
--

LOCK TABLES `xtream_main` WRITE;
/*!40000 ALTER TABLE `xtream_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `xtream_main` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-20 15:52:55
