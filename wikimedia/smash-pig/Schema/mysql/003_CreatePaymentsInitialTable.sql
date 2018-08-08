CREATE TABLE IF NOT EXISTS payments_initial (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `contribution_tracking_id` int(11) DEFAULT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `gateway_txn_id` varchar(255) DEFAULT NULL,
  `validation_action` varchar(16) DEFAULT NULL,
  `payments_final_status` varchar(16) DEFAULT NULL,
  `payment_method` varchar(16) DEFAULT NULL,
  `payment_submethod` varchar(32) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `currency_code` varchar(3) DEFAULT NULL,
  `server` varchar(64) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contribution_tracking_id` (`contribution_tracking_id`),
  KEY `order_id` (`order_id`),
  KEY `gateway` (`gateway`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tracks user experience through donation pipeline.';
