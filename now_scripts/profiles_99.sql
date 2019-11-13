#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`user_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('101', 'M', '1980-12-26', 'Port', '2005-12-19 20:48:00', '1996-06-17 16:02:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('103', 'M', '1978-03-30', 'New', '2014-11-06 13:23:20', '1988-07-13 00:36:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('106', 'M', '1978-05-30', 'Lake', '1994-09-15 13:26:09', '1984-05-28 17:41:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('108', 'P', '1987-04-16', 'West', '1991-11-08 15:25:45', '1973-07-15 06:33:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('109', 'P', '1992-12-20', 'East', '2009-01-28 09:55:47', '1971-05-15 02:05:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('111', 'P', '1995-10-26', 'East', '2018-12-07 06:47:37', '2016-10-08 23:11:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('112', 'M', '2011-07-24', 'Lake', '1970-11-17 02:57:24', '2017-06-01 10:42:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('113', 'P', '1998-08-27', 'New', '2000-04-19 05:01:55', '1978-12-18 15:35:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('114', 'P', '2017-07-11', 'North', '2016-01-22 15:54:23', '2009-10-31 21:02:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('116', 'M', '1977-08-27', 'North', '2016-02-02 05:12:43', '1973-01-02 14:11:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('118', 'M', '2001-07-05', 'Port', '1973-01-23 00:31:27', '2007-09-13 22:18:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('119', 'M', '2012-08-16', 'Lake', '2007-11-14 12:44:43', '1996-06-01 04:16:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('121', 'M', '2012-05-17', 'East', '2008-01-22 21:28:09', '1973-05-28 06:24:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('123', 'P', '2012-09-05', 'East', '1978-07-06 01:37:22', '1991-01-07 04:13:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('124', 'M', '1988-10-23', 'West', '1988-02-29 09:55:45', '1985-08-30 18:02:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('126', 'M', '2000-01-19', 'Port', '2005-05-09 19:41:25', '1975-01-12 09:40:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('127', 'P', '1999-04-14', 'North', '1980-05-07 02:39:38', '2006-02-14 04:09:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('128', 'M', '1970-08-12', 'North', '1994-02-21 05:11:55', '1983-01-06 18:48:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('129', 'D', '1991-01-01', 'East', '2004-02-12 07:01:58', '1975-08-15 09:42:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('131', 'D', '2002-12-09', 'Port', '1992-04-09 07:34:54', '1986-06-12 17:19:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('133', 'M', '1976-10-08', 'North', '2001-12-28 18:40:53', '1980-08-07 16:02:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('134', 'P', '1973-10-29', 'South', '1976-07-14 15:50:03', '2013-08-08 17:40:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('135', 'M', '1993-01-16', 'Lake', '2014-03-14 17:57:22', '1971-06-07 10:03:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('138', 'P', '2004-01-31', 'South', '2015-04-13 06:01:29', '1989-06-19 11:29:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('139', 'P', '1987-11-30', 'New', '1988-06-22 08:06:48', '2017-04-20 12:27:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('140', 'M', '2007-08-17', 'East', '1993-09-13 12:06:18', '2007-11-22 17:08:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('143', 'P', '2004-03-19', 'Port', '1976-08-11 12:34:43', '1989-09-21 11:54:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('145', 'M', '2005-06-13', 'South', '1993-04-13 20:48:31', '1979-08-29 03:59:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('146', 'P', '2009-03-02', 'Lake', '1997-12-14 00:15:33', '1996-09-30 21:36:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('147', 'M', '1975-06-24', 'Port', '2017-05-18 14:37:48', '2016-03-03 14:52:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('148', 'M', '1994-08-17', 'North', '1996-07-18 15:17:54', '1986-08-11 19:43:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('149', 'P', '1997-10-27', 'East', '2017-12-04 03:55:36', '2014-07-28 03:26:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('150', 'P', '1990-12-13', 'Port', '2000-01-25 01:17:12', '2017-04-30 04:59:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('152', 'P', '1975-01-29', 'North', '2003-03-30 11:34:51', '2012-07-06 18:32:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('153', 'M', '1990-04-26', 'Port', '1982-09-25 04:43:44', '1982-03-11 00:58:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('154', 'M', '2004-08-03', 'New', '1986-08-04 16:50:54', '2010-10-28 21:14:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('155', 'D', '1990-03-07', 'North', '1979-10-14 19:19:05', '2004-01-27 08:26:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('157', 'D', '2011-06-26', 'West', '1971-05-23 18:59:15', '1984-10-22 16:36:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('158', 'D', '1981-01-17', 'Lake', '1977-10-22 22:42:37', '1998-09-14 06:25:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('161', 'M', '2013-11-11', 'East', '1997-12-19 19:48:54', '2007-09-13 05:04:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('162', 'P', '2006-01-14', 'South', '1984-11-04 21:15:08', '2002-02-28 09:34:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('163', 'M', '2002-12-12', 'East', '2011-12-22 05:48:30', '2008-07-19 09:40:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('165', 'M', '2008-05-22', 'Port', '1977-11-30 10:32:53', '1973-10-04 07:31:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('166', 'D', '1989-08-16', 'South', '2015-01-04 03:18:36', '2009-04-29 22:13:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('167', 'M', '1979-02-04', 'North', '1989-11-28 12:30:43', '2001-03-30 05:17:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('169', 'P', '1983-06-02', 'West', '2004-10-20 03:11:18', '1993-05-05 23:54:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('170', 'M', '1988-08-15', 'Lake', '1981-03-14 00:49:06', '1984-11-07 21:46:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('171', 'D', '2000-07-24', 'West', '2018-05-25 14:40:33', '2002-01-13 20:32:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('172', 'D', '1996-12-15', 'East', '2012-11-07 19:40:07', '1978-02-24 01:22:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('177', 'M', '2017-09-11', 'West', '2011-05-18 06:42:43', '1977-12-08 20:21:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('179', 'M', '2008-08-12', 'South', '2013-06-10 09:29:41', '2012-01-19 20:32:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('181', 'P', '1993-01-06', 'East', '1974-06-07 13:24:17', '2009-11-19 18:48:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('182', 'D', '2002-02-04', 'New', '1985-03-15 19:47:15', '1995-03-09 00:21:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('184', 'P', '1998-01-19', 'New', '2010-07-06 03:33:44', '2003-09-17 13:37:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('185', 'M', '1998-01-13', 'West', '2012-06-29 21:59:23', '1984-10-04 19:41:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('186', 'P', '2005-12-14', 'North', '1973-02-26 08:49:37', '1984-05-11 01:51:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('189', 'P', '1994-03-31', 'West', '2010-02-10 12:40:30', '1976-08-25 03:03:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('191', 'M', '2011-10-12', 'Lake', '1993-03-26 15:04:53', '1973-02-02 17:08:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('192', 'M', '2005-09-20', 'East', '1986-02-07 22:14:16', '2013-10-22 10:03:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('193', 'P', '1980-02-24', 'North', '1980-07-24 23:31:52', '2017-02-05 09:26:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('195', 'D', '1973-06-29', 'West', '1995-04-05 14:59:45', '2000-06-27 10:31:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('196', 'P', '2002-04-10', 'North', '1970-03-18 17:41:46', '1971-04-21 21:20:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('198', 'M', '2004-11-26', 'North', '2018-12-04 20:00:33', '2004-04-23 11:05:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('262', 'M', '2005-03-30', 'West', '1984-05-02 16:03:26', '1973-10-05 09:21:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('263', 'P', '2015-11-01', 'North', '2018-06-19 04:23:05', '2005-02-15 09:40:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('265', 'M', '2015-11-17', 'South', '1975-11-21 04:13:02', '1980-10-16 04:55:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('267', 'M', '1989-03-06', 'Lake', '1979-08-10 05:56:06', '2017-02-23 16:36:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('268', 'M', '2001-02-08', 'North', '2012-04-01 08:33:40', '1974-04-22 18:53:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('270', 'M', '2016-03-26', 'South', '2018-03-22 02:02:36', '2002-07-11 11:29:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('271', 'M', '2016-03-12', 'Lake', '1994-04-16 17:38:23', '1974-04-28 17:28:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('272', 'D', '2010-11-27', 'East', '2003-07-21 20:13:21', '1977-10-01 12:29:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('273', 'D', '1984-03-21', 'South', '1983-09-24 15:07:21', '2012-10-19 11:37:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('276', 'P', '1984-08-10', 'Port', '2009-09-15 19:12:24', '1994-04-21 04:34:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('278', 'D', '1993-02-16', 'West', '1986-03-28 17:13:25', '2016-11-30 09:27:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('279', 'P', '1978-03-30', 'South', '1999-03-30 23:37:25', '1970-03-25 17:39:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('280', 'D', '2003-02-10', 'South', '1989-05-04 19:47:36', '1999-11-18 22:32:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('282', 'P', '2010-08-11', 'Port', '1988-06-23 00:53:24', '1991-12-13 03:01:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('284', 'D', '2015-11-11', 'Lake', '2006-01-12 02:50:47', '2011-10-19 18:26:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('285', 'M', '2018-11-25', 'East', '1985-08-22 00:08:38', '1988-10-05 20:56:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('286', 'D', '1974-01-31', 'West', '1992-03-03 14:34:59', '2018-01-04 04:42:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('288', 'P', '2013-09-29', 'East', '1974-11-22 02:30:28', '2010-11-26 22:18:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('290', 'D', '2015-08-21', 'West', '2013-07-31 18:15:31', '2007-10-08 05:09:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('291', 'P', '2004-03-11', 'South', '2006-07-19 13:13:18', '1980-10-30 22:50:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('293', 'M', '1979-04-30', 'West', '2015-08-20 20:02:16', '1998-11-11 16:47:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('297', 'D', '2018-04-02', 'East', '1993-08-21 18:10:14', '2011-11-05 01:53:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('298', 'M', '1991-02-25', 'East', '1988-05-01 13:08:00', '1978-06-25 17:58:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('299', 'D', '1982-03-02', 'North', '2005-11-15 17:35:08', '1988-07-16 20:45:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('300', 'P', '1994-09-23', 'South', '1990-09-04 14:58:43', '2000-07-30 03:54:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('302', 'P', '1997-05-11', 'West', '2006-04-22 07:15:10', '1987-02-05 23:02:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('303', 'P', '1970-01-09', 'East', '2016-05-04 00:50:11', '2018-03-21 20:35:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('304', 'D', '2000-04-15', 'Port', '2004-08-15 16:59:00', '2007-11-29 10:26:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('306', 'M', '1996-06-11', 'New', '1988-12-22 13:31:57', '1975-12-29 00:45:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('307', 'M', '1972-06-21', 'New', '1979-01-02 08:56:49', '2006-09-10 08:26:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('310', 'D', '1976-06-26', 'Port', '1981-07-21 09:13:53', '1989-06-29 22:06:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('312', 'P', '1988-10-18', 'South', '1991-09-08 20:20:36', '1978-01-20 05:22:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('314', 'M', '2003-09-21', 'Lake', '1988-06-13 05:31:53', '2006-01-24 17:36:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('316', 'M', '1971-05-06', 'East', '1984-12-17 02:50:44', '1983-12-05 13:36:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('318', 'M', '2014-08-07', 'South', '1977-07-09 06:15:39', '1981-12-15 01:51:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `hometown`, `created_at`, `updated_at`) VALUES ('319', 'P', '2013-04-01', 'East', '1990-07-27 06:40:06', '1985-10-01 04:54:39');


