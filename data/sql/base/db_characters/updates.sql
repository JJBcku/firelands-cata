/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `updates` (
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'filename with extension of the update.',
  `hash` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'sha1 hash of the sql file.',
  `state` enum('RELEASED','ARCHIVED') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if an update is released or archived.',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'timestamp when the query was applied.',
  `speed` int unsigned NOT NULL DEFAULT '0' COMMENT 'time the query takes to apply in ms.',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of all applied updates in this database.';

DELETE FROM `updates`;
/*!40000 ALTER TABLE `updates` DISABLE KEYS */;
INSERT INTO `updates` (`name`, `hash`, `state`, `timestamp`, `speed`) VALUES
	('2014_10_28_00_characters.sql', 'DCC0367E2784919FBE6ED44D60057179', 'ARCHIVED', '2014-10-28 18:00:00', 0),
	('2015_03_20_00_characters.sql', 'B761760804EA73BD297F296C5C1919687DF7191C', 'ARCHIVED', '2015-03-21 18:44:15', 0),
	('2015_03_20_01_characters.sql', '894F08B70449A5481FFAF394EE5571D7FC4D8A3A', 'ARCHIVED', '2015-03-21 18:44:15', 0),
	('2015_03_20_02_characters.sql', '97D7BE0CAADC79F3F11B9FD296B8C6CD40FE593B', 'ARCHIVED', '2015-03-21 18:44:51', 0),
	('2015_06_26_00_characters_335.sql', 'f8230a59a9e878a6f54f421d6621f1595bd93861', 'ARCHIVED', '2015-03-21 18:44:51', 0),
	('2016_01_11_00_characters_from_335.sql', 'AAECE4BA6FDCF0C34A57FADD11DB68DAFD8AE9CD', 'ARCHIVED', '2016-01-10 18:57:56', 0),
	('2016_01_11_01_characters_from_335.sql', 'F8682A431D50E54BDC4AC0E7DBED21AE8AAB6AD4', 'ARCHIVED', '2015-09-29 19:23:32', 0),
	('2016_01_11_02_characters_from_335.sql', '4555A7F35C107E54C13D74D20F141039ED42943E', 'ARCHIVED', '2015-10-29 17:32:37', 0),
	('2016_01_14_from_335_2015_10_06_00_characters.sql', '16842FDD7E8547F2260D3312F53EFF8761EFAB35', 'ARCHIVED', '2015-10-11 16:47:41', 0),
	('2016_01_14_from_335_2015_10_07_00_characters.sql', 'E15AB463CEBE321001D7BFDEA4B662FF618728FD', 'ARCHIVED', '2015-10-11 16:47:41', 0),
	('2016_01_14_from_335_2015_10_12_00_characters.sql', 'D6F9927BDED72AD0A81D6EC2C6500CBC34A39FA2', 'ARCHIVED', '2015-10-12 22:06:25', 0),
	('2016_01_14_from_335_2015_10_28_00_characters.sql', '622A9CA8FCE690429EBE23BA071A37C7A007BF8B', 'ARCHIVED', '2015-10-28 18:49:52', 0),
	('2016_01_14_from_335_2015_11_03_00_characters.sql', 'CC045717B8FDD9733351E52A5302560CD08AAD57', 'ARCHIVED', '2015-11-03 19:56:17', 0),
	('2016_02_21_from_335_2016_02_10_00_characters.sql', 'F1B4DA202819CABC7319A4470A2D224A34609E97', 'ARCHIVED', '2016-02-09 21:00:00', 0),
	('2016_03_12_00_characters.sql', '0ACDD35EC9745231BCFA701B78056DEF94D0CC53', 'ARCHIVED', '2016-03-11 21:00:00', 0),
	('2016_07_17_00_characters.sql', '41BF94C59FE13A61067E6721092F6187E184F37B', 'ARCHIVED', '2016-07-18 18:05:05', 0),
	('2016_08_28_00_characters.sql', '36A339D56D03E3782D96C4F883D29B418A12BFC0', 'ARCHIVED', '2016-08-28 18:05:05', 0),
	('2016_09_14_00_characters_from_335_was_2016_09_13_00_characters.sql', '27A04615B11B2CFC3A26778F52F74C071E4F9C54', 'ARCHIVED', '2016-07-06 15:55:18', 0),
	('2016_09_28_00_characters.sql', '8C1FBB13E51A464DA90C1112F72DC2CE3287CCCE', 'ARCHIVED', '2016-09-28 15:55:18', 0),
	('2016_11_02_00_characters_from_335_was_2016_10_30_00_characters.sql', '7E2D5B226907B5A9AF320797F46E86DC27B7EC90', 'ARCHIVED', '2016-11-02 01:30:18', 0),
	('2016_11_06_00_characters.sql', '7BFE5C56B5DF35D61EB15DCA05FC4C1548868EE9', 'ARCHIVED', '2016-11-06 14:11:18', 0),
	('2017_01_12_00_characters.sql', '60ADB435A4D4508B51DC01751C211384ADE68AA0', 'ARCHIVED', '2017-01-11 21:00:00', 0),
	('2017_02_11_00_characters.sql', '35B4DF02D79ECFEC53387850ED410DCB81FB65B8', 'ARCHIVED', '2017-02-10 21:00:00', 0),
	('2017_03_16_00_characters.sql', 'FB7003E51B57FD60B2121F95959B8EC1214BA59B', 'ARCHIVED', '2017-03-15 21:00:00', 0),
	('2017_04_09_00_characters_from_335_was_2017_04_03_00_characters.sql', 'CB072C56692C9FBF170C4036F15773DD86D368B5', 'ARCHIVED', '2017-04-02 21:00:00', 0),
	('2017_04_14_00_characters_from_335_was_2017_04_12_01_characters.sql', '5A8A1215E3A2356722F52CD7A64BBE03D21FBEA3', 'ARCHIVED', '2017-04-11 21:00:00', 0),
	('2017_04_16_00_characters.sql', '50CFDE7538E07CB813C26E4182FEF2B486871625', 'ARCHIVED', '2017-04-15 21:00:00', 0),
	('2017_05_16_00_characters.sql', 'C0F96B13AA6C451A406EE62AEE1D3CACB5E0532B', 'ARCHIVED', '2017-05-15 21:00:00', 0),
	('2017_06_18_00_characters.sql', '23D2E5EC2ECA17DEB9E00173587A30410814133E', 'ARCHIVED', '2017-06-17 21:00:00', 0),
	('2017_07_18_00_characters.sql', '6A154A76CEE78212CC072DB57AC4B3D95BEE4390', 'ARCHIVED', '2017-07-17 21:00:00', 0),
	('2017_09_17_00_characters.sql', '48AF8F4A6A656EF0CCEA406B4AEF71A54A5DA98E', 'ARCHIVED', '2017-09-16 21:00:00', 0),
	('2017_10_16_00_characters.sql', '74500AFF41A5FB2EEE24B0BFAD750C988136BA6B', 'ARCHIVED', '2017-10-15 21:00:00', 0),
	('2017_11_15_00_characters.sql', '22D0C3854EE6D0983CD8C43DF0AC4269386F587C', 'ARCHIVED', '2017-11-14 21:00:00', 0),
	('2017_11_26_00_characters.sql', '4609CDC122E0A7F27A09C2605B329A06FC7FB7C2', 'ARCHIVED', '2017-11-26 21:00:00', 0),
	('2017_11_28_00_characters.sql', '6FF1F84B8985ADFC7FF97F0BF8E53403CF13C320', 'ARCHIVED', '2017-11-27 21:00:00', 0),
	('2017_12_17_00_characters.sql', '937E8F51DC74AC41FF8F213CE36C69DDEB878D6A', 'ARCHIVED', '2017-12-16 21:00:00', 0),
	('2018_01_15_00_characters.sql', '43C8E4549E1AA9610B377BC7139C88C63D0DC193', 'ARCHIVED', '2018-01-14 21:00:00', 0),
	('2018_02_16_00_characters.sql', 'F1254689CE8A0B0AF149E557830287FF583B8D91', 'ARCHIVED', '2018-02-15 21:00:00', 0),
	('2018_03_16_00_characters.sql', '722EAFB7F508882F584DCAE61F97F1A11EDE126E', 'ARCHIVED', '2018-03-15 21:00:00', 0),
	('2018_03_25_00_characters.sql', '4FE3C6866A6DCD4926D451F6009464D290C2EF1F', 'ARCHIVED', '2018-03-24 21:00:00', 0),
	('2018_04_15_00_characters.sql', 'F7058DE71A2BD3B31088AE586ACB3ECB2EB5A268', 'ARCHIVED', '2018-04-14 21:00:00', 0),
	('2018_05_15_00_characters.sql', '1FC906E4C7E86DCA67243F0768A94825A2C9E323', 'ARCHIVED', '2018-05-14 21:00:00', 0),
	('2018_06_15_00_characters.sql', '084C438D587E555D1FBCFC86A2A19570BD0B470A', 'ARCHIVED', '2018-06-14 21:00:00', 0),
	('2018_07_09_00_characters.sql', '6F3EA22DD5E4CD9F9C60C4332B147E3DBF2E8A44', 'ARCHIVED', '2018-07-09 15:19:18', 0),
	('2018_07_15_00_characters.sql', '1EB34168BC396A8264C7467AACD1F0A3B036B22D', 'ARCHIVED', '2018-07-14 21:00:00', 0),
	('2018_08_15_00_characters.sql', '592D9F32E96E1A14C8F340E8D085F8F5105B063F', 'ARCHIVED', '2018-08-14 21:00:00', 0),
	('2018_09_15_00_characters.sql', 'FDC0AF579D140BE377482B115EE07DC43F870C98', 'ARCHIVED', '2018-08-14 21:00:00', 0),
	('2019_07_14_00_characters.sql', 'A141F4F15BDF0320483921429871D4C572BD7E2D', 'ARCHIVED', '2019-07-03 21:00:00', 0),
	('2020_05_19_00_characters.sql', '5FFAB4D7060E872AB6221D759EC1BCF461F1E9E3', 'ARCHIVED', '2020-05-18 22:44:34', 0),
	('2020_06_15_00_characters.sql', '50F5E94E0D1FE073BBEF055BE95F1799A6EEC7EB', 'ARCHIVED', '2020-09-21 21:55:27', 0),
	('2020_08_02_00_characters.sql', 'E9810AF24ECF98C0758CE530A03D3D34FF32F79E', 'ARCHIVED', '2020-09-21 21:55:27', 0),
	('2020_09_22_00_characters.sql', '50E5FEC16D6205BBCB9925CEF924A5406B3C362E', 'ARCHIVED', '2020-09-21 21:55:27', 0),
	('2021_01_23_00_characters.sql', 'D265DE655DDBFC13E2FA1EB021A435A21189B6E4', 'ARCHIVED', '2021-01-24 07:35:01', 0),
	('2021_07_06_00_characters.sql', '536696C1FA3454CD0BE42FE71782E2C864E41C41', 'ARCHIVED', '2021-07-06 02:02:44', 0),
	('2021_07_29_00_characters.sql', '9A8EC41256CF3DD735B6822D25A388107831215C', 'ARCHIVED', '2021-07-29 15:53:10', 0),
	('2021_12_31_00_characters.sql', 'BD631B13BD6166D80E02531031F34FFB80393810', 'ARCHIVED', '2021-12-31 14:54:20', 0),
	('2021_12_31_01_characters.sql', 'F8E15AA6AF18DAD176ABA9B3EFCE766DF1B0ACB5', 'ARCHIVED', '2021-12-31 15:28:45', 0),
	('2022_01_01_00_characters.sql', '336E62A8850A3E78A1D0BD3E81FFD5769184BDF8', 'ARCHIVED', '2022-01-01 08:04:58', 0),
	('2022_01_09_00_characters.sql', '1420602F3A6F5AAE1CB59045C47E33A3CE8809A4', 'ARCHIVED', '2022-01-08 21:12:22', 0),
	('custom_2017_12_21_00_characters.sql', '2D5B3830D47E4BC717EC468E18E477A32B9A21BF', 'ARCHIVED', '2019-11-05 21:17:44', 0),
	('custom_2018_01_07_00_characters.sql', '7437B6243B3CB6FA08F6A37BB39E38930B0DCFD3', 'ARCHIVED', '2019-11-05 21:17:44', 0),
	('custom_2018_03_18_00_characters.sql', '8D1E81A7272F643687C67443C270D17255A9AA84', 'ARCHIVED', '2019-11-05 21:17:44', 0),
	('custom_2018_04_18_00_characters.sql', 'A19DEC2B0042790018388A5A7110A5A98327D338', 'ARCHIVED', '2019-11-05 21:17:44', 0),
	('custom_2018_07_09_00_characters.sql', '51810B2FA8CC853C14787828999C305189804FF5', 'ARCHIVED', '2019-11-05 21:17:44', 0),
	('custom_2018_08_19_00_characters.sql', '86E163BDA84220C6A4A6B95EABC560F7630F8589', 'ARCHIVED', '2019-11-05 21:17:44', 0),
	('custom_2018_11_18_00_characters.sql', '7A094FFF2E2438B664203146C16249A8ADA9736D', 'ARCHIVED', '2019-11-05 21:17:44', 0),
	('custom_2019_08_01_00_characters.sql', '980B1647EBB41A3644ED825E116F052EFEB6E5D1', 'ARCHIVED', '2019-11-05 21:17:45', 0),
	('custom_2019_08_20_00_characters.sql', '09DC2B6A0E602E377F240CB29F6E1E3209FD346B', 'ARCHIVED', '2019-11-05 21:17:45', 0),
	('custom_2020_01_05_00_character.sql', 'DEC981779DA0311FA1E20FF0424BE5F997D21BEE', 'ARCHIVED', '2020-01-06 07:44:59', 0);
/*!40000 ALTER TABLE `updates` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;