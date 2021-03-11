DROP TABLE IF EXISTS `uf`;
CREATE TABLE `uf` (
  `id` int(11) NOT NULL,
  `sigla` varchar(2) CHARACTER SET latin1 NOT NULL,
  `description` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` bigint(20) NOT NULL,
  `description` varchar(100) CHARACTER SET latin1 NOT NULL,
  `ufid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `second_key_uf_city_idx` (`ufid`),
  CONSTRAINT `second_key_uf_city` FOREIGN KEY (`ufid`) 
	REFERENCES `uf` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;