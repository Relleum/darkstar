
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


DROP TABLE IF EXISTS `item_latents`;
CREATE TABLE IF NOT EXISTS `item_latents` (
  `itemId` smallint(5) unsigned NOT NULL,
  `modId` smallint(5) unsigned NOT NULL,
  `value` smallint(5) NOT NULL DEFAULT '0',
  `latentId` smallint(5) NOT NULL,
  `latentParam` smallint(5) NOT NULL,
  PRIMARY KEY (`itemId`,`modId`, `value`, `latentId`, `latentParam`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=13 PACK_KEYS=1;




-- INSERT INTO `item_latents` VALUES(itemID, modId, modValue, latentId, latentParam);

-- Brisingamen+1 stats need to be found on retail so they can be corrected
INSERT INTO `item_latents` VALUES(13162, 2, 10, 26, 0); -- Brisingamen +1, HP+10 if Daytime (needs HQ stats)
INSERT INTO `item_latents` VALUES(13162, 5, 10, 26, 1); -- Brisingamen +1, MP+10 if Nighttime (needs HQ stats)
INSERT INTO `item_latents` VALUES(13162, 8, 5, 28, 0);  -- Brisingamen +1, STR+5 if Firesday (needs HQ stats)
INSERT INTO `item_latents` VALUES(13162, 10, 5, 29, 0); -- Brisingamen +1, VIT+5 if Earthsday (needs HQ stats)
INSERT INTO `item_latents` VALUES(13162, 13, 5, 30, 0); -- Brisingamen +1, MND+5 if Watersday (needs HQ stats)
INSERT INTO `item_latents` VALUES(13162, 11, 5, 31, 0); -- Brisingamen +1, AGI+5 if Windsday (needs HQ stats)
INSERT INTO `item_latents` VALUES(13162, 12, 5, 34, 0); -- Brisingamen +1, INT+5 if Iceday (needs HQ stats)
INSERT INTO `item_latents` VALUES(13162, 9, 5, 35, 0);  -- Brisingamen +1, DEX+5 if Lightningsday (needs HQ stats)
INSERT INTO `item_latents` VALUES(13162, 14, 5, 36, 0); -- Brisingamen +1, CHR+5 if Lightsday (needs HQ stats)

INSERT INTO `item_latents` VALUES(13097, 2, 10, 26, 0); -- Brisingamen, HP+10 if Daytime
INSERT INTO `item_latents` VALUES(13097, 5, 10, 26, 1); -- Brisingamen, MP+10 if Nighttime
INSERT INTO `item_latents` VALUES(13097, 8, 5, 28, 0);  -- Brisingamen, STR+5 if Firesday
INSERT INTO `item_latents` VALUES(13097, 10, 5, 29, 0); -- Brisingamen, VIT+5 if Earthsday
INSERT INTO `item_latents` VALUES(13097, 13, 5, 30, 0); -- Brisingamen, MND+5 if Watersday
INSERT INTO `item_latents` VALUES(13097, 11, 5, 31, 0); -- Brisingamen, AGI+5 if Windsday
INSERT INTO `item_latents` VALUES(13097, 12, 5, 34, 0); -- Brisingamen, INT+5 if Iceday
INSERT INTO `item_latents` VALUES(13097, 9, 5, 35, 0);  -- Brisingamen, DEX+5 if Lightningsday
INSERT INTO `item_latents` VALUES(13097, 14, 5, 36, 0); -- Brisingamen, CHR+5 if Lightsday

INSERT INTO `item_latents` VALUES(14288, 7, 20, 26, 0); -- Clowns Subligar, Converts 20HP to MP from 17:00 to 7:00

INSERT INTO `item_latents` VALUES(16031, 314, 1, 22, 18); -- Affinity Earring, Enhances Pet Att. if PUP is in party
INSERT INTO `item_latents` VALUES(16017, 28, 1, 22, 4); -- Ardent Earring, MATT+1 if BLM is in party
INSERT INTO `item_latents` VALUES(16018, 30, 1, 22, 5); -- Ataraxy Earring, MACC+1 if RDM is in party
INSERT INTO `item_latents` VALUES(16029, 2, 10, 22, 16); -- Booster Earring, HP+10 if BLU is in party
INSERT INTO `item_latents` VALUES(16029, 5, 10, 22, 16); -- Booster Earring, MP+10 if BLU is in party
INSERT INTO `item_latents` VALUES(16021, 8, 1, 22, 8); -- Brawn Earring, STR+1 if DRK is in party
INSERT INTO `item_latents` VALUES(16016, 27, -1, 22, 3); -- Chary Earring, Enmity-1 if WHM is in party
INSERT INTO `item_latents` VALUES(16015, 2, 20, 22, 2); -- Esse Earring, HP+20 if MNK is in party
INSERT INTO `item_latents` VALUES(16026, 68, 4, 22, 13); -- Elan Earring, EVA+4 if NIN is in party
INSERT INTO `item_latents` VALUES(16022, 315, 1, 22, 9); -- Fidelity Earring, Enhances Pet Acc. if BST is in party
INSERT INTO `item_latents` VALUES(16019, 9, 1, 22, 6); -- Forte Earring, DEX+1 if THF is in party
INSERT INTO `item_latents` VALUES(16024, 24, 1, 22, 11); -- Impetus Earring, RATT+1 if RNG is in party
INSERT INTO `item_latents` VALUES(16032, 289, 3, 22, 19); -- Muffle Earring, Subtle Blow +3 if DNC is in party
INSERT INTO `item_latents` VALUES(16023, 14, 1, 22, 10); -- Mystique Earring, CHR+1 if BRD is in party
INSERT INTO `item_latents` VALUES(16028, 5, 15, 22, 15); -- Psyche Earring, MP+15 if SMN is in party
INSERT INTO `item_latents` VALUES(16025, 73, 1, 22, 12); -- Rathe Earring, Store TP+1 if SAM is in party
INSERT INTO `item_latents` VALUES(16027, 25, 1, 22, 14); -- Seeker Earring, ACC+1 if DRG is in party
INSERT INTO `item_latents` VALUES(16030, 26, 1, 22, 17); -- Soarer Earring, RACC+1 if COR is in party
INSERT INTO `item_latents` VALUES(16014, 23, 4, 22, 1); -- Stormer Earring, ATT+4 if WAR is in party
INSERT INTO `item_latents` VALUES(16020, 10, 1, 22, 7); -- Survivor Earring, VIT+1 if PLD is in party
INSERT INTO `item_latents` VALUES(16033, 71, 1, 22, 20); -- Sylph Earring, Healing MP +1 if SCH is in party

INSERT INTO `item_latents` VALUES(13870, 14, 14, 49, 4468);
INSERT INTO `item_latents` VALUES(13870, 12, 1, 49, 4468);
INSERT INTO `item_latents` VALUES(13870, 11, -3, 49, 4468); -- Opo-opo Crown, AGI+1 to AGI-2
INSERT INTO `item_latents` VALUES(13870, 8, -3, 49, 4468); -- Opo-opo Crown, STR+1 to STR-2
INSERT INTO `item_latents` VALUES(13870, 5, 50, 49, 4468);
INSERT INTO `item_latents` VALUES(13870, 2, 50, 49, 4468);
INSERT INTO `item_latents` VALUES(13870, 14, 14, 49, 4596);
INSERT INTO `item_latents` VALUES(13870, 12, 1, 49, 4596);
INSERT INTO `item_latents` VALUES(13870, 11, -3, 49, 4596); -- Opo-opo Crown, AGI+1 to AGI-2
INSERT INTO `item_latents` VALUES(13870, 8, -3, 49, 4596); -- Opo-opo Crown, STR+1 to STR-2
INSERT INTO `item_latents` VALUES(13870, 5, 50, 49, 4596);
INSERT INTO `item_latents` VALUES(13870, 2, 50, 49, 4596);
INSERT INTO `item_latents` VALUES(17073, 406, 3, 7, 2); -- Mistilteinn drains 3TP if TP >= 3
INSERT INTO `item_latents` VALUES(17073, 369, 1, 7, 2); -- Mistilteinn adds Refresh 1MP per tick

-- -------------------------------------------------------
-- Uggalepih Pendant  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13145, 28, 8, 4, 51); -- "Magic Atk. Bonus" while MP <51%

-- -------------------------------------------------------
-- Sorcerer's Ring
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13289, 28, 10, 2, 76); -- "Magic Atk. Bonus"+10 while HP <76% and TP <100%

-- -------------------------------------------------------
-- Carapace Gauntlets
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(14008, 23, 8, 0, 75); -- Attack+8 when HP <=75%
INSERT INTO `item_latents` VALUES(14008, 1, 16, 0, 75); -- DEF:16 whem HP <= 75%

-- -------------------------------------------------------
-- Cpc. Gauntlets +1
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(14009, 23, 9, 0, 75); -- Attack+9 when HP <=75%
INSERT INTO `item_latents` VALUES(14009, 1, 17, 0, 75); -- DEF:17 whem HP <= 75%

INSERT INTO `item_latents` VALUES(14055, 23, 7, 46, 75);
INSERT INTO `item_latents` VALUES(14448, 10, 6, 46, 71);
INSERT INTO `item_latents` VALUES(15209, 8, 3, 46, 75);
INSERT INTO `item_latents` VALUES(15345, 384, 3, 46, 75);
INSERT INTO `item_latents` VALUES(15406, 31, 4, 46, 75);

-- -------------------------------------------------------
-- Berserker's Torque
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15530, 368, 10, 10, 50); -- HP-50/Tick of TP while weapon drawn

-- -------------------------------------------------------
-- Bedivere's Hose
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(16355, 25, 25, 0, 25); -- Accuracy+25 when HP <=25%
INSERT INTO `item_latents` VALUES(16355, 23, 25, 0, 25); -- Attack+25 when HP <=25%

INSERT INTO `item_latents` VALUES(16426, 25, 2, 0, 92);
INSERT INTO `item_latents` VALUES(16426, 25, 2, 0, 82);
INSERT INTO `item_latents` VALUES(16426, 25, 2, 0, 73);
INSERT INTO `item_latents` VALUES(16426, 25, 2, 0, 64);
INSERT INTO `item_latents` VALUES(16426, 25, 2, 0, 55);
INSERT INTO `item_latents` VALUES(16426, 25, 2, 0, 46);
INSERT INTO `item_latents` VALUES(16426, 25, 2, 0, 37);
INSERT INTO `item_latents` VALUES(16426, 25, 2, 0, 28);
INSERT INTO `item_latents` VALUES(16426, 25, 2, 0, 19);
INSERT INTO `item_latents` VALUES(16426, 25, 2, 0, 10);
INSERT INTO `item_latents` VALUES(16426, 25, 2, 0, 1);
INSERT INTO `item_latents` VALUES(17983, 366, 1, 0, 92);
INSERT INTO `item_latents` VALUES(17983, 366, 1, 0, 82);
INSERT INTO `item_latents` VALUES(17983, 366, 1, 0, 73);
INSERT INTO `item_latents` VALUES(17983, 366, 1, 0, 64);
INSERT INTO `item_latents` VALUES(17983, 366, 1, 0, 55);
INSERT INTO `item_latents` VALUES(17983, 366, 1, 0, 46);
INSERT INTO `item_latents` VALUES(17983, 366, 1, 0, 37);
INSERT INTO `item_latents` VALUES(17983, 366, 1, 0, 28);
INSERT INTO `item_latents` VALUES(17983, 366, 1, 0, 19);
INSERT INTO `item_latents` VALUES(17983, 366, 1, 0, 10);
INSERT INTO `item_latents` VALUES(17983, 366, 1, 0, 1);

-- -------------------------------------------------------
-- Amakura
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(18445, 73, 10, 0, 50); -- "Store TP"+10 when HP <50%

INSERT INTO `item_latents` VALUES(16911, 366, 1, 0, 92);
INSERT INTO `item_latents` VALUES(16911, 366, 1, 0, 82);
INSERT INTO `item_latents` VALUES(16911, 366, 1, 0, 73);
INSERT INTO `item_latents` VALUES(16911, 366, 1, 0, 64);
INSERT INTO `item_latents` VALUES(16911, 366, 1, 0, 55);
INSERT INTO `item_latents` VALUES(16911, 366, 1, 0, 46);
INSERT INTO `item_latents` VALUES(16911, 366, 1, 0, 37);
INSERT INTO `item_latents` VALUES(16911, 366, 1, 0, 28);
INSERT INTO `item_latents` VALUES(16911, 366, 1, 0, 19);
INSERT INTO `item_latents` VALUES(16911, 366, 1, 0, 10);
INSERT INTO `item_latents` VALUES(16911, 366, 1, 0, 1);

-- -------------------------------------------------------
-- Carapace Helm
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13878, 23, 10, 0, 50); -- Attack+10 when HP <=50%
INSERT INTO `item_latents` VALUES(13878, 1, 23, 0, 50); -- DEF:23 when HP <=50%

-- -------------------------------------------------------
-- Carapace Helm +1
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13879, 23, 11, 0, 50); -- Attack+11 when HP <=50%
INSERT INTO `item_latents` VALUES(13879, 1, 24, 0, 50); -- DEF:24 when HP <=50%

-- -------------------------------------------------------
-- Carapace Breastplate
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13789, 23, 12, 0, 25); -- Attack+12 when HP <=25%
INSERT INTO `item_latents` VALUES(13789, 1, 44, 0, 25); -- DEF:44 whem HP<=25%

-- -------------------------------------------------------
-- Carapace Breastplate +1
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13790, 23, 13, 0, 25); -- Attack+13 when HP <=25%
INSERT INTO `item_latents` VALUES(13790, 1, 45, 0, 25); -- DEF:45 when HP <=25%

-- -------------------------------------------------------
-- Hercules' Ring 
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(14659, 370, 3, 0, 50); -- Regen+3 when HP <=50%
INSERT INTO `item_latents` VALUES(14659, 369, 1, 0, 50); -- Refresh+1 when HP <=50%

-- -------------------------------------------------------
-- Muscle Belt
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13185, 370, 1, 0, 50); -- Regen+1 when HP <50%
INSERT INTO `item_latents` VALUES(13185, 291, 1, 0, 50); -- Counter+1 when HP <50%

-- -------------------------------------------------------
-- Muscle Belt +1
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13279, 370, 2, 0, 50); -- Regen+2 when HP <50%
INSERT INTO `item_latents` VALUES(13279, 291, 2, 0, 50); -- Counter+2 when HP <50%

-- -------------------------------------------------------
-- Horrent Mace
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(17471, 25, 10, 0, 25); -- Accuracy+10 when HP <=25% while weapon drawn
INSERT INTO `item_latents` VALUES(17471, 23, 10, 0, 25); -- Attack+10 when HP <=25% while weapon drawn

-- -------------------------------------------------------
-- Kerykeion  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(18859, 370, 3, 0, 50); -- Regen+3 when HP <51%

-- -------------------------------------------------------
-- Rasetsu Jinpachi  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13925, 291, 1, 0, 25); -- Counter+1 when HP <25%

-- -------------------------------------------------------
-- Rasetsu Samue 
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(14376, 291, 1, 0, 25); -- Counter+1 when HP <25%

-- -------------------------------------------------------
-- Rasetsu Tekko   
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(14819, 291, 1, 0, 25); -- Counter+1 when HP <25%

-- -------------------------------------------------------
-- Rasetsu Hakama     
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(14299, 291, 1, 0, 25); -- Counter+1 when HP <25%

-- -------------------------------------------------------
-- Rasetsu Sune-Ate     
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(14178, 291, 1, 0, 25); -- Counter+1 when HP <25%

-- -------------------------------------------------------
-- Unicorn Cap    
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15209, 8, 4, 1, 75); -- STR+4 when HP >75%

-- -------------------------------------------------------
-- Unicorn Cap +1
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15210, 8, 5, 1, 75); -- STR+5 when HP >75%

-- -------------------------------------------------------
-- Unicorn Harness  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(14448, 10, 6, 1, 71); -- VIT+6 when HP >71%

-- -------------------------------------------------------
-- Unicorn Harness +1
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(14449, 10, 7, 1, 71); -- VIT+7 when HP >71%

-- -------------------------------------------------------
-- Unicorn Mittens  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(14055, 23, 7, 1, 75); -- Attack+7 when HP >75%

-- -------------------------------------------------------
-- Unicorn Mittens +1
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(14056, 23, 8, 1, 75); -- Attack+8 when HP >75%

-- -------------------------------------------------------
-- Unicorn Subligar   
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15406, 68, 3, 1, 75); -- Evasion+3 when HP >75%

-- -------------------------------------------------------
-- Unicorn Subligar +1
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15407, 68, 4, 1, 75); -- Evasion+4 when HP >75%

-- -------------------------------------------------------
-- Unicorn Leggings    
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15345, 167, 3, 1, 75); -- Haste+3% when HP >75%

-- -------------------------------------------------------
-- Unicorn Leggings +1
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15346, 167, 4, 1, 75); -- Haste+4% when HP >75%

-- -------------------------------------------------------
-- Zareehkl Jambiya
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(19108, 366, 5, 0, 75); -- DNG:36 when HP <=75%

-- -------------------------------------------------------
-- Zareehkl Scythe  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(18949, 302, 1, 0, 25); -- Tiple Attack 1% when HP <=25%

-- -------------------------------------------------------
-- Soldier's Ring
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13286, 288, 2, 2, 75); -- Double Attack+2% when HP <=75% and TP <=100%

-- -------------------------------------------------------
-- Soldier's Earring  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13419, 63, 20, 2, 25); -- DEF:20% when HP <=25% and TP <=100%

-- -------------------------------------------------------
-- Kampfer Ring
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13287, 291, 2, 2, 75); -- Counter+2 while HP <=75% and TP <=100%

-- -------------------------------------------------------
-- Kampfer Earring  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13420, 291, 5, 2, 25); -- Counter+5 while HP <=25% and TP <=100%

-- -------------------------------------------------------
-- Medicine Earring
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13421, 160, -30, 2, 25); -- Damage Taken -30% while HP <=25% and TP <=100%

-- -------------------------------------------------------
-- Sorcerer's Earring
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13422, 160, -30, 2, 25); -- Damage Taken -30% while HP <=25% and TP <=100%

-- -------------------------------------------------------
-- Fencer's Earring
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13423, 163, -77, 2, 25); -- Magic Taken -30% while HP <=25% and TP <=100%

-- -------------------------------------------------------
-- Rogue's Earring    
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13424, 68, 15, 2, 25); -- Evasion+15 while HP <=25% and TP <=100%

-- -------------------------------------------------------
-- Rogue's Ring  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13291, 298, 3, 2, 75); -- Steel+3 while HP <=75% and TP <=100%

-- -------------------------------------------------------
-- Guardian Earring 
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13425, 168, 30, 2, 25); -- Spell interruption rate down 30% while HP <=25% and TP <=100%

-- -------------------------------------------------------
-- Slayer's Earring 
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13426, 161, -20, 2, 25); -- Physical damage taken -20% while HP <=25% and TP <=100%

-- -------------------------------------------------------
-- Tamer's Earring 
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13427, 304, 5, 2, 25); -- "Tame" success rate  while HP <=25% and TP <=100%

-- -------------------------------------------------------
-- Minstrel's Earring 
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13428, 161, -30, 2, 25); -- Physical damage taken -30% while HP <=25% and TP <=100%

-- -------------------------------------------------------
-- Tracker's Ring   
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13296, 27, -2, 2, 75); -- Enmity-2 while HP <=75% and TP <=100%

-- -------------------------------------------------------
-- Tracker's Earring 
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13429, 161, -30, 2, 25); -- Physical damage taken -30% while HP <=25% and TP <=100%

-- -------------------------------------------------------
-- Ronin Ring   
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13297, 25, 5, 2, 75); -- Accuracy+5 while HP <=75% and TP <=100%

-- -------------------------------------------------------
-- Ronin Earring     
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13430, 243, 20, 2, 25); -- Magic damage taken -20% while HP <=25% and TP <=100%

-- -------------------------------------------------------
-- Shinobi Ring   
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13298, 167, 4, 2, 75); -- Haste+4% while HP <=75% and TP <=100%

-- -------------------------------------------------------
-- Shinobi Earring     
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13431, 167, 20, 2, 25); -- Haste+20% while HP <=25% and TP <=100%

-- -------------------------------------------------------
-- Drake Earring     
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13432, 288, 5, 2, 25); -- "Double Attack"+5% while HP <=25% and TP <=100%

-- -------------------------------------------------------
-- Conjurer's Ring   
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13300, 346, 1, 2, 75); -- Avatar perpetuation cost -1 while HP <=75% and TP <=100%

-- -------------------------------------------------------
-- Wagh Baghnakhs   
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(18358, 366, 5, 6, 100); -- DMG+5 while TP <100%
INSERT INTO `item_latents` VALUES(18358, 25, 5, 6, 100); -- Accuracy+5 while TP <100%
INSERT INTO `item_latents` VALUES(18358, 23, 14, 6, 100); -- Attack+14 while TP <100%

-- -------------------------------------------------------
-- Blau Dolch   
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(18015, 366, 7, 6, 100); -- DMG+7 while TP <100%
INSERT INTO `item_latents` VALUES(18015, 25, 5, 6, 100); -- Accuracy+5 while TP <100%
INSERT INTO `item_latents` VALUES(18015, 23, 16, 6, 100); -- Attack+16 while TP <100%

-- -------------------------------------------------------
-- Maneater   
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(17946, 366, 6, 6, 100); -- DMG+6 while TP <100%
INSERT INTO `item_latents` VALUES(17946, 25, 5, 6, 100); -- Accuracy+5 while TP <100%
INSERT INTO `item_latents` VALUES(17946, 23, 18, 6, 100); -- Attack+18 while TP <100%

-- -------------------------------------------------------
-- Stone-splitter    
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(18099, 366, 5, 6, 100); -- DMG+5 while TP <100%
INSERT INTO `item_latents` VALUES(18099, 25, 5, 6, 100); -- Accuracy+5 while TP <100%
INSERT INTO `item_latents` VALUES(18099, 23, 24, 6, 100); -- Attack+24 while TP <100%

-- -------------------------------------------------------
-- Onimaru  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(16976, 366, 6, 6, 100); -- DMG+6 while TP <100%
INSERT INTO `item_latents` VALUES(16976, 25, 5, 6, 100); -- Accuracy+5 while TP <100%
INSERT INTO `item_latents` VALUES(16976, 23, 18, 6, 100); -- Attack+18 while TP <100%

-- -------------------------------------------------------
-- Perdu Hanger   
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(17741, 366, 6, 6, 100); -- DMG+6 while TP <100%
INSERT INTO `item_latents` VALUES(17741, 25, 5, 6, 100); -- Accuracy+5 while TP <100%
INSERT INTO `item_latents` VALUES(17741, 23, 15, 6, 100); -- Attack+15 while TP <100%

-- -------------------------------------------------------
-- Perdu Sickle     
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(18943, 366, 5, 6, 100); -- DMG+5 while TP <100%
INSERT INTO `item_latents` VALUES(18943, 25, 5, 6, 100); -- Accuracy+5 while TP <100%
INSERT INTO `item_latents` VALUES(18943, 23, 14, 6, 100); -- Attack+14 while TP <100%

-- -------------------------------------------------------
-- Perdu Wand       
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(18850, 366, 5, 6, 100); -- DMG+5 while TP <100%
INSERT INTO `item_latents` VALUES(18850, 25, 5, 6, 100); -- Accuracy+5 while TP <100%
INSERT INTO `item_latents` VALUES(18850, 23, 14, 6, 100); -- Attack+14 while TP <100%

-- -------------------------------------------------------
-- Perdu Blade
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(18425, 366, 5, 6, 100); -- DMG+5 while TP <100%
INSERT INTO `item_latents` VALUES(18425, 25, 5, 6, 100); -- Accuracy+5 while TP <100%
INSERT INTO `item_latents` VALUES(18425, 23, 10, 6, 100); -- Attack+10 while TP <100%

-- -------------------------------------------------------
-- Perdu Staff
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(18588, 366, 6, 6, 100); -- DMG+6 while TP <100%
INSERT INTO `item_latents` VALUES(18588, 25, 5, 6, 100); -- Accuracy+5 while TP <100%
INSERT INTO `item_latents` VALUES(18588, 23, 15, 6, 100); -- Attack+15 while TP <100%

-- -------------------------------------------------------
-- Perdu Sword  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(16602, 366, 4, 6, 100); -- DMG+4 while TP <100%
INSERT INTO `item_latents` VALUES(16602, 25, 5, 6, 100); -- Accuracy+5 while TP <100%
INSERT INTO `item_latents` VALUES(16602, 23, 12, 6, 100); -- Attack+12 while TP <100%

-- -------------------------------------------------------
-- Perdu Voulge    
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(18491, 366, 5, 6, 100); -- DMG+5 while TP <100%
INSERT INTO `item_latents` VALUES(18491, 25, 5, 6, 100); -- Accuracy+5 while TP <100%
INSERT INTO `item_latents` VALUES(18491, 23, 10, 6, 100); -- Attack+10 while TP <100%

-- -------------------------------------------------------
-- Hachiman Jinpachi    
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15188, 288, 2, 7, 100); -- "Double Attack"+2% while TP >=100%

-- -------------------------------------------------------
-- Hachiman Jinpachi +1
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15187, 288, 3, 7, 100); -- "Double Attack"+3% while TP >=100%

-- -------------------------------------------------------
-- Hachiman Kote    
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(14876, 23, 10, 7, 100); -- Attack+10 while TP >=100%

-- -------------------------------------------------------
-- Hachiman Kote +1
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(14878, 23, 12, 7, 100); -- Attack+12 while TP >=100%

-- -------------------------------------------------------
-- Hachiman Hakama    
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15392, 24, 7, 7, 100); -- Ranged Attack+7 while TP >=100%

-- -------------------------------------------------------
-- Hachiman Hakama +1
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15394, 24, 8, 7, 100); -- Ranged Attack+8 while TP >=100%

-- -------------------------------------------------------
-- Rambler's Cloak
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(11312, 8, 5, 7, 100); -- STR+5 while TP >=100%

INSERT INTO `item_latents` VALUES(15096, 8, 8, 10, 0);
INSERT INTO `item_latents` VALUES(15096, 9, 8, 10, 0);
INSERT INTO `item_latents` VALUES(15096, 10, 8, 10, 0);
INSERT INTO `item_latents` VALUES(15096, 11, 8, 10, 0);
INSERT INTO `item_latents` VALUES(15096, 12, -8, 10, 0);
INSERT INTO `item_latents` VALUES(15096, 13, -8, 10, 0);
INSERT INTO `item_latents` VALUES(15096, 14, -8, 10, 0);

INSERT INTO `item_latents` VALUES(14509, 8, 8, 10, 0);
INSERT INTO `item_latents` VALUES(14509, 9, 8, 10, 0);
INSERT INTO `item_latents` VALUES(14509, 10, 8, 10, 0);
INSERT INTO `item_latents` VALUES(14509, 11, 8, 10, 0);

INSERT INTO `item_latents` VALUES(10679, 8, 10, 10, 0);
INSERT INTO `item_latents` VALUES(10679, 9, 10, 10, 0);
INSERT INTO `item_latents` VALUES(10679, 10, 10, 10, 0);
INSERT INTO `item_latents` VALUES(10679, 11, 10, 10, 0);

INSERT INTO `item_latents` VALUES(15126, 8, -8, 11, 0);
INSERT INTO `item_latents` VALUES(15126, 9, -8, 11, 0);
INSERT INTO `item_latents` VALUES(15126, 10, -8, 11, 0);
INSERT INTO `item_latents` VALUES(15126, 11, -8, 11, 0);
INSERT INTO `item_latents` VALUES(15126, 12, 8, 11, 0);
INSERT INTO `item_latents` VALUES(15126, 13, 8, 11, 0);
INSERT INTO `item_latents` VALUES(15126, 14, 8, 11, 0);

INSERT INTO `item_latents` VALUES(15589, 12, 8, 11, 0);
INSERT INTO `item_latents` VALUES(15589, 13, 8, 11, 0);
INSERT INTO `item_latents` VALUES(15589, 14, 8, 11, 0);

INSERT INTO `item_latents` VALUES(10719, 12, 10, 11, 0);
INSERT INTO `item_latents` VALUES(10719, 13, 10, 11, 0);
INSERT INTO `item_latents` VALUES(10719, 14, 10, 11, 0);

INSERT INTO `item_latents` VALUES(15530, 368, 1, 10, 50);

INSERT INTO `item_latents` VALUES(15174, 25, 12, 10, 50);
INSERT INTO `item_latents` VALUES(15174, 167, 4, 10, 49);

INSERT INTO `item_latents` VALUES(17073, 369, 1, 44, 3);

INSERT INTO `item_latents` VALUES(15532, 370, 1, 12, 3);

INSERT INTO `item_latents` VALUES(19120, 25, 6, 13, 368);
INSERT INTO `item_latents` VALUES(19120, 25, 6, 13, 369);
INSERT INTO `item_latents` VALUES(19120, 25, 6, 13, 370);

INSERT INTO `item_latents` VALUES(15983, 23, 7, 13, 75);

INSERT INTO `item_latents` VALUES(15981, 73, 2, 13, 117);

INSERT INTO `item_latents` VALUES(18768, 23, 12, 9, 4);

INSERT INTO `item_latents` VALUES(15982, 1, 8, 13, 74);

INSERT INTO `item_latents` VALUES(18422, 62, 1, 13, 66);
INSERT INTO `item_latents` VALUES(18422, 62, 1, 13, 444);
INSERT INTO `item_latents` VALUES(18422, 62, 1, 13, 445);
INSERT INTO `item_latents` VALUES(18422, 62, 1, 13, 446);

INSERT INTO `item_latents` VALUES(16605, 25, 8, 13, 94);
INSERT INTO `item_latents` VALUES(16605, 23, 16, 13, 94);
INSERT INTO `item_latents` VALUES(16605, 25, 8, 13, 95);
INSERT INTO `item_latents` VALUES(16605, 23, 16, 13, 95);
INSERT INTO `item_latents` VALUES(16605, 25, 8, 13, 96);
INSERT INTO `item_latents` VALUES(16605, 23, 16, 13, 96);
INSERT INTO `item_latents` VALUES(16605, 25, 8, 13, 97);
INSERT INTO `item_latents` VALUES(16605, 23, 16, 13, 97);
INSERT INTO `item_latents` VALUES(16605, 25, 8, 13, 98);
INSERT INTO `item_latents` VALUES(16605, 23, 16, 13, 98);
INSERT INTO `item_latents` VALUES(16605, 25, 8, 13, 99);
INSERT INTO `item_latents` VALUES(16605, 23, 16, 13, 99);
INSERT INTO `item_latents` VALUES(16605, 25, 8, 13, 277);
INSERT INTO `item_latents` VALUES(16605, 23, 16, 13, 277);
INSERT INTO `item_latents` VALUES(16605, 25, 8, 13, 278);
INSERT INTO `item_latents` VALUES(16605, 23, 16, 13, 278);
INSERT INTO `item_latents` VALUES(16605, 25, 8, 13, 279);
INSERT INTO `item_latents` VALUES(16605, 23, 16, 13, 279);
INSERT INTO `item_latents` VALUES(16605, 25, 8, 13, 280);
INSERT INTO `item_latents` VALUES(16605, 23, 16, 13, 280);
INSERT INTO `item_latents` VALUES(16605, 25, 8, 13, 281);
INSERT INTO `item_latents` VALUES(16605, 23, 16, 13, 281);
INSERT INTO `item_latents` VALUES(16605, 25, 8, 13, 282);
INSERT INTO `item_latents` VALUES(16605, 23, 16, 13, 282);

INSERT INTO `item_latents` VALUES(18741, 23, 10, 9, 4);

INSERT INTO `item_latents` VALUES(17624, 165, 7, 13, 3);

INSERT INTO `item_latents` VALUES(13693, 370, 1, 13, 2);
INSERT INTO `item_latents` VALUES(13693, 370, 1, 13, 19);
INSERT INTO `item_latents` VALUES(13693, 369, 1, 13, 2);
INSERT INTO `item_latents` VALUES(13693, 369, 1, 13, 19);

INSERT INTO `item_latents` VALUES(13416, 68, 15, 13, 5);

INSERT INTO `item_latents` VALUES(13400, 26, 5, 13, 9);
INSERT INTO `item_latents` VALUES(13400, 26, 5, 13, 20);

INSERT INTO `item_latents` VALUES(13248, 167, 8, 13, 4);

INSERT INTO `item_latents` VALUES(17831, 369, 1, 13, 2);
INSERT INTO `item_latents` VALUES(17831, 370, 1, 13, 19);

INSERT INTO `item_latents` VALUES(16071, 165, 5, 13, 5);
INSERT INTO `item_latents` VALUES(16071, 48, 5, 13, 5);

INSERT INTO `item_latents` VALUES(14946, 346, 1, 13, 2);
INSERT INTO `item_latents` VALUES(14946, 346, 1, 13, 19);

INSERT INTO `item_latents` VALUES(13143, 368, 25, 13, 2);
INSERT INTO `item_latents` VALUES(13143, 368, 25, 13, 19);

INSERT INTO `item_latents` VALUES(15328, 370, 2, 13, 11);

INSERT INTO `item_latents` VALUES(13655, 161, -20, 13, 7);

INSERT INTO `item_latents` VALUES(12621, 370, 2, 13, 3);

INSERT INTO `item_latents` VALUES(12589, 370, 2, 13, 3);

INSERT INTO `item_latents` VALUES(12751, 71, 4, 13, 6);

INSERT INTO `item_latents` VALUES(12717, 71, 5, 13, 6);

INSERT INTO `item_latents` VALUES(13846, 369, 1, 13, 4);

INSERT INTO `item_latents` VALUES(12461, 369, 1, 13, 4);

INSERT INTO `item_latents` VALUES(16238, 369, 1, 13, 3);

INSERT INTO `item_latents` VALUES(14954, 5, 35, 14, 0);
INSERT INTO `item_latents` VALUES(14954, 168, -5, 14, 0);
INSERT INTO `item_latents` VALUES(14954, 71, 1, 14, 0);
INSERT INTO `item_latents` VALUES(17952, 366, 2, 16, 2);
INSERT INTO `item_latents` VALUES(17952, 366, 2, 16, 3);
INSERT INTO `item_latents` VALUES(17952, 366, 2, 16, 4);
INSERT INTO `item_latents` VALUES(17952, 366, 2, 16, 5);
INSERT INTO `item_latents` VALUES(17662, 366, 2, 16, 2);
INSERT INTO `item_latents` VALUES(17662, 366, 2, 16, 3);
INSERT INTO `item_latents` VALUES(17662, 366, 2, 16, 4);
INSERT INTO `item_latents` VALUES(17662, 366, 2, 16, 5);
INSERT INTO `item_latents` VALUES(17720, 366, 1, 16, 1);
INSERT INTO `item_latents` VALUES(17720, 366, 1, 16, 2);
INSERT INTO `item_latents` VALUES(17720, 366, 1, 16, 3);
INSERT INTO `item_latents` VALUES(17720, 366, 1, 16, 4);
INSERT INTO `item_latents` VALUES(17720, 366, 1, 16, 5);

-- -------------------------------------------------------
-- Garuda's Sickle
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(18063, 25, 13, 21, 13); -- Accuracy +13

-- -------------------------------------------------------
-- Ifrit's Bow
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(17192, 165, 3, 21, 10); -- Increases Critical Hit Rate

-- -------------------------------------------------------
-- Titan's Baselard
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(18021, 366, 5, 21, 11); -- DMG: 33


INSERT INTO `item_latents` VALUES(18771, 23, 1, 16, 2);
INSERT INTO `item_latents` VALUES(18771, 23, 1, 16, 3);
INSERT INTO `item_latents` VALUES(18771, 23, 1, 16, 4);
INSERT INTO `item_latents` VALUES(18771, 23, 1, 16, 5);
INSERT INTO `item_latents` VALUES(19125, 9, 1, 16, 2);
INSERT INTO `item_latents` VALUES(19125, 9, 1, 16, 3);
INSERT INTO `item_latents` VALUES(19125, 9, 1, 16, 4);
INSERT INTO `item_latents` VALUES(19125, 9, 1, 16, 5);
INSERT INTO `item_latents` VALUES(17766, 10, 2, 16, 2);
INSERT INTO `item_latents` VALUES(17766, 10, 2, 16, 3);
INSERT INTO `item_latents` VALUES(17766, 10, 2, 16, 4);
INSERT INTO `item_latents` VALUES(17766, 10, 2, 16, 5);
INSERT INTO `item_latents` VALUES(19161, 8, 1, 16, 2);
INSERT INTO `item_latents` VALUES(19161, 8, 1, 16, 3);
INSERT INTO `item_latents` VALUES(19161, 8, 1, 16, 4);
INSERT INTO `item_latents` VALUES(19161, 8, 1, 16, 5);
INSERT INTO `item_latents` VALUES(17970, 9, 1, 16, 2);
INSERT INTO `item_latents` VALUES(17970, 23, 2, 16, 2);
INSERT INTO `item_latents` VALUES(17970, 9, 1, 16, 3);
INSERT INTO `item_latents` VALUES(17970, 23, 2, 16, 3);
INSERT INTO `item_latents` VALUES(17970, 9, 1, 16, 4);
INSERT INTO `item_latents` VALUES(17970, 23, 2, 16, 4);
INSERT INTO `item_latents` VALUES(17970, 9, 1, 16, 5);
INSERT INTO `item_latents` VALUES(17970, 23, 2, 16, 5);
INSERT INTO `item_latents` VALUES(18508, 8, 1, 16, 2);
INSERT INTO `item_latents` VALUES(18508, 25, 2, 16, 2);
INSERT INTO `item_latents` VALUES(18508, 8, 1, 16, 3);
INSERT INTO `item_latents` VALUES(18508, 25, 2, 16, 3);
INSERT INTO `item_latents` VALUES(18508, 8, 1, 16, 4);
INSERT INTO `item_latents` VALUES(18508, 25, 2, 16, 4);
INSERT INTO `item_latents` VALUES(18508, 8, 1, 16, 5);
INSERT INTO `item_latents` VALUES(18508, 25, 2, 16, 5);
INSERT INTO `item_latents` VALUES(18958, 8, 1, 16, 2);
INSERT INTO `item_latents` VALUES(18958, 8, 1, 16, 3);
INSERT INTO `item_latents` VALUES(18958, 8, 1, 16, 4);
INSERT INTO `item_latents` VALUES(18958, 8, 1, 16, 5);
INSERT INTO `item_latents` VALUES(19306, 8, 1, 16, 2);
INSERT INTO `item_latents` VALUES(19306, 23, 2, 16, 2);
INSERT INTO `item_latents` VALUES(19306, 8, 1, 16, 3);
INSERT INTO `item_latents` VALUES(19306, 23, 2, 16, 3);
INSERT INTO `item_latents` VALUES(19306, 8, 1, 16, 4);
INSERT INTO `item_latents` VALUES(19306, 23, 2, 16, 4);
INSERT INTO `item_latents` VALUES(19306, 8, 1, 16, 5);
INSERT INTO `item_latents` VALUES(19306, 23, 2, 16, 5);
INSERT INTO `item_latents` VALUES(19279, 9, 1, 16, 2);
INSERT INTO `item_latents` VALUES(19279, 9, 1, 16, 3);
INSERT INTO `item_latents` VALUES(19279, 9, 1, 16, 4);
INSERT INTO `item_latents` VALUES(19279, 9, 1, 16, 5);
INSERT INTO `item_latents` VALUES(14062, 346, 0, 9, 8);
INSERT INTO `item_latents` VALUES(16154, 346, 2, 9, 13);
INSERT INTO `item_latents` VALUES(14401, 346, 2, 9, 7);
INSERT INTO `item_latents` VALUES(14410, 346, 2, 9, 6);

INSERT INTO `item_latents` VALUES(17509, 366, 13, 47, 0);
INSERT INTO `item_latents` VALUES(17509, 165, 6, 47, 0);
INSERT INTO `item_latents` VALUES(18005, 366, 15, 47, 0);
INSERT INTO `item_latents` VALUES(18005, 165, 6, 47, 0);
INSERT INTO `item_latents` VALUES(18378, 366, 13, 47, 0);
INSERT INTO `item_latents` VALUES(18378, 165, 6, 47, 0);
INSERT INTO `item_latents` VALUES(17699, 366, 13, 47, 0);
INSERT INTO `item_latents` VALUES(17699, 165, 6, 47, 0);
INSERT INTO `item_latents` VALUES(17451, 366, 13, 47, 0);
INSERT INTO `item_latents` VALUES(17451, 165, 6, 47, 0);
INSERT INTO `item_latents` VALUES(17827, 366, 13, 47, 0);
INSERT INTO `item_latents` VALUES(17827, 165, 6, 47, 0);
INSERT INTO `item_latents` VALUES(17793, 366, 13, 47, 0);
INSERT INTO `item_latents` VALUES(17793, 165, 6, 47, 0);
INSERT INTO `item_latents` VALUES(17589, 366, 13, 47, 0);
INSERT INTO `item_latents` VALUES(17589, 165, 6, 47, 0);
INSERT INTO `item_latents` VALUES(18053, 366, 13, 47, 0);
INSERT INTO `item_latents` VALUES(18053, 165, 6, 47, 0);
INSERT INTO `item_latents` VALUES(18097, 366, 13, 47, 0);
INSERT INTO `item_latents` VALUES(18097, 165, 6, 47, 0);
INSERT INTO `item_latents` VALUES(18217, 366, 13, 47, 0);
INSERT INTO `item_latents` VALUES(18217, 165, 6, 47, 0);
INSERT INTO `item_latents` VALUES(17944, 366, 13, 47, 0);
INSERT INTO `item_latents` VALUES(17944, 165, 6, 47, 0);
INSERT INTO `item_latents` VALUES(17207, 376, 13, 47, 0);
INSERT INTO `item_latents` VALUES(17275, 376, 13, 47, 0);
INSERT INTO `item_latents` VALUES(17275, 165, 6, 47, 0);
INSERT INTO `item_latents` VALUES(18144, 2, -20, 47, 0);
INSERT INTO `item_latents` VALUES(18144, 17, -10, 47, 0);
INSERT INTO `item_latents` VALUES(18144, 19, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17933, 2, -20, 47, 0);
INSERT INTO `item_latents` VALUES(17933, 17, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17933, 19, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17456, 2, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17456, 5, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17456, 18, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17456, 20, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17616, 2, -20, 47, 0);
INSERT INTO `item_latents` VALUES(17616, 16, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17616, 18, -10, 47, 0);
INSERT INTO `item_latents` VALUES(16735, 2, -20, 47, 0);
INSERT INTO `item_latents` VALUES(16735, 18, -10, 47, 0);
INSERT INTO `item_latents` VALUES(16735, 20, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17815, 2, -20, 47, 0);
INSERT INTO `item_latents` VALUES(17815, 16, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17815, 22, -10, 47, 0);
INSERT INTO `item_latents` VALUES(16952, 2, -20, 47, 0);
INSERT INTO `item_latents` VALUES(16952, 16, -10, 47, 0);
INSERT INTO `item_latents` VALUES(16952, 18, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17507, 2, -20, 47, 0);
INSERT INTO `item_latents` VALUES(17507, 18, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17507, 20, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17773, 2, -20, 47, 0);
INSERT INTO `item_latents` VALUES(17773, 15, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17773, 21, -10, 47, 0);
INSERT INTO `item_latents` VALUES(18146, 2, -20, 47, 0);
INSERT INTO `item_latents` VALUES(18146, 18, -10, 47, 0);
INSERT INTO `item_latents` VALUES(18146, 20, -10, 47, 0);
INSERT INTO `item_latents` VALUES(16892, 2, -20, 47, 0);
INSERT INTO `item_latents` VALUES(16892, 20, -10, 47, 0);
INSERT INTO `item_latents` VALUES(16892, 22, -10, 47, 0);
INSERT INTO `item_latents` VALUES(16793, 2, -20, 47, 0);
INSERT INTO `item_latents` VALUES(16793, 19, -10, 47, 0);
INSERT INTO `item_latents` VALUES(16793, 21, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17527, 2, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17527, 5, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17527, 15, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17527, 21, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17654, 2, -20, 47, 0);
INSERT INTO `item_latents` VALUES(17654, 15, -10, 47, 0);
INSERT INTO `item_latents` VALUES(17654, 17, -10, 47, 0);

-- -------------------------------------------------------
-- Mercen. Earring  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13435, 10, 2, 8, 1); -- VIT+2 when WAR Subjob

-- -------------------------------------------------------
-- Mercen. Mantle  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13659, 27, 1, 8, 1); -- Enmity+1 when WAR Subjob

-- -------------------------------------------------------
-- Mercenary's Targe  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(12389, 2, 5, 8, 1); -- HP+5 when WAR Subjob
INSERT INTO `item_latents` VALUES(12389, 5, 10, 8, 1); -- MP+10 when WAR Subjob

-- -------------------------------------------------------
-- Axe Belt  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15271, 85, 5, 8, 1); -- Great Axe skill +5 when WAR Subjob

-- -------------------------------------------------------
-- Wrestler's Aspis  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(12390, 12, 2, 8, 2); -- INT+2 when MNK Subjob

-- -------------------------------------------------------
-- Wrestler's Earring  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13436, 2, 30, 8, 2); -- HP+30 when MNK Subjob

-- -------------------------------------------------------
-- Wrestler's Mantle  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13660, 173, 10, 8, 2); -- Enhances "Martial Arts" effect when MNK Subjob

-- -------------------------------------------------------
-- Cestus Belt  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15272, 80, 5, 8, 2); -- Hand-to-Hand skill +5 when MNK Subjob

-- -------------------------------------------------------
-- Dominion Ring 
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15784, 5, 30, 8, 3); -- MP+30 when WHM subjob

-- -------------------------------------------------------
-- Healer's Earring  
-- ------------------------------------------------------- 
INSERT INTO `item_latents` VALUES(13437, 27, -1, 8, 3); -- Enmity -1 when WHM subjob

-- -------------------------------------------------------
-- Healer's Shield    
-- -------------------------------------------------------  
INSERT INTO `item_latents` VALUES(12391, 9, 2, 8, 3); -- DEX+2 when WHM subjob

-- -------------------------------------------------------
-- Healer's Mantle      
-- ------------------------------------------------------- 
INSERT INTO `item_latents` VALUES(13661, 16, 1, 8, 3); -- Magic Defense Bonus while WHM subjob

-- -------------------------------------------------------
-- Mace Belt       
-- -------------------------------------------------------  
INSERT INTO `item_latents` VALUES(15273, 90, 5, 8, 3); -- Club skill+5 while WHM subjob

-- 
INSERT INTO `item_latents` VALUES(13438, 115, 5, 8, 4); 

-- 
INSERT INTO `item_latents` VALUES(13662, 71, 1, 8, 4); 

-- 
INSERT INTO `item_latents` VALUES(12392, 8, 2, 8, 4); 

-- 
INSERT INTO `item_latents` VALUES(15274, 91, 5, 8, 4); 

-- 
INSERT INTO `item_latents` VALUES(18390, 28, 3, 8, 4); 

-- 
INSERT INTO `item_latents` VALUES(13439, 71, 1, 8, 5); 

-- 
INSERT INTO `item_latents` VALUES(13663, 170, 2, 8, 5); 

-- 
INSERT INTO `item_latents` VALUES(12393, 2, 7, 8, 5); 
INSERT INTO `item_latents` VALUES(12393, 5, 7, 8, 5); 

-- 
INSERT INTO `item_latents` VALUES(15275, 82, 5, 8, 5); 

-- 
INSERT INTO `item_latents` VALUES(12394, 109, 5, 8, 6); 

-- 
INSERT INTO `item_latents` VALUES(14729, 9, 2, 8, 6); 

-- 
INSERT INTO `item_latents` VALUES(13664, 68, 4, 8, 6); 

-- 
INSERT INTO `item_latents` VALUES(15276, 81, 5, 8, 6); 

-- 
INSERT INTO `item_latents` VALUES(14730, 1, 5, 8, 7); 

-- 
INSERT INTO `item_latents` VALUES(13665, 231, 4, 8, 7); 

-- 
INSERT INTO `item_latents` VALUES(12395, 11, 2, 8, 7); 

-- 
INSERT INTO `item_latents` VALUES(15277, 109, 5, 8, 7); 

-- 
INSERT INTO `item_latents` VALUES(14731, 23, 5, 8, 8); 

-- 
INSERT INTO `item_latents` VALUES(13666, 116, 5, 8, 8); 

-- 
INSERT INTO `item_latents` VALUES(12396, 14, 2, 8, 8); 
INSERT INTO `item_latents` VALUES(12396, 5, 5, 8, 8); 

-- 
INSERT INTO `item_latents` VALUES(15278, 86, 5, 8, 8); 

-- 
INSERT INTO `item_latents` VALUES(12397, 13, 2, 8, 9); 

-- 
INSERT INTO `item_latents` VALUES(14732, 25, 5, 8, 9); 

-- 
INSERT INTO `item_latents` VALUES(13667, 250, 5, 8, 9); 

-- 
INSERT INTO `item_latents` VALUES(15279, 84, 5, 8, 9); 

-- 
INSERT INTO `item_latents` VALUES(14733, 68, 5, 8, 10); 

-- 
INSERT INTO `item_latents` VALUES(13668, 244, 5, 8, 10); 

-- 
INSERT INTO `item_latents` VALUES(12398, 110, 5, 8, 10); 

-- 
INSERT INTO `item_latents` VALUES(15280, 119, 5, 8, 10); 

-- 
INSERT INTO `item_latents` VALUES(12399, 68, 2, 8, 11); 

-- 
INSERT INTO `item_latents` VALUES(14734, 26, 3, 8, 11); 

-- 
INSERT INTO `item_latents` VALUES(13669, 359, 5, 8, 11); 

-- 
INSERT INTO `item_latents` VALUES(15281, 105, 5, 8, 11); 

-- 
INSERT INTO `item_latents` VALUES(14735, 110, 5, 8, 12); 

-- 
INSERT INTO `item_latents` VALUES(13670, 243, 5, 8, 12); 

-- 
INSERT INTO `item_latents` VALUES(12400, 106, 5, 8, 12); 

-- 
INSERT INTO `item_latents` VALUES(15282, 73, 1, 8, 12); 

-- 
INSERT INTO `item_latents` VALUES(12401, 23, 5, 8, 13); 

-- 
INSERT INTO `item_latents` VALUES(14736, 11, 4, 8, 13); 

-- 
INSERT INTO `item_latents` VALUES(13671, 247, 5, 8, 13); 

-- 
INSERT INTO `item_latents` VALUES(15283, 259, 1, 8, 13); 

-- 
INSERT INTO `item_latents` VALUES(15284, 87, 5, 8, 14); 

-- 
INSERT INTO `item_latents` VALUES(14737, 167, 5, 8, 14); 

-- 
INSERT INTO `item_latents` VALUES(13672, 23, 6, 8, 14);

-- 
INSERT INTO `item_latents` VALUES(12402, 167, 1, 8, 14);

-- 
INSERT INTO `item_latents` VALUES(14738, 5, 30, 8, 15); 

-- 
INSERT INTO `item_latents` VALUES(13673, 117, 5, 8, 15); 

-- 
INSERT INTO `item_latents` VALUES(12403, 2, 10, 8, 15); 
INSERT INTO `item_latents` VALUES(12403, 5, 5, 8, 15); 

-- 
INSERT INTO `item_latents` VALUES(15285, 346, 2, 8, 15); 

-- 
INSERT INTO `item_latents` VALUES(16217, 240, 5, 8, 16); 

-- 
INSERT INTO `item_latents` VALUES(15975, 122, 5, 8, 16); 

-- 
INSERT INTO `item_latents` VALUES(16218, 242, 5, 8, 17); 

-- 
INSERT INTO `item_latents` VALUES(15976, 24, 5, 8, 17); 

-- 
INSERT INTO `item_latents` VALUES(16219, 107, 5, 8, 18); 

-- 
INSERT INTO `item_latents` VALUES(15977, 27, -2, 8, 18); 

-- -------------------------------------------------------
-- Relic Weapons (In Dynamis)
-- -------------------------------------------------------

-- Militant Knuckles  
INSERT INTO `item_latents` VALUES(18261, 366, 15, 48, 0); -- DMG:+16
INSERT INTO `item_latents` VALUES(18261, 59, 7, 48, 0); -- [Element: Water]+7

-- Dynamis Knuckles  
INSERT INTO `item_latents` VALUES(18262, 366, 2, 48, 0); -- DMG:+18
INSERT INTO `item_latents` VALUES(18262, 59, 9, 48, 0); -- [Element: Water]+9

-- Malefic Dagger  
INSERT INTO `item_latents` VALUES(18267, 366, 22, 48, 0); -- DMG:+23
INSERT INTO `item_latents` VALUES(18267, 61, 7, 48, 0); -- [Element: Dark]+7

-- Dynamis Dagger  
INSERT INTO `item_latents` VALUES(18268, 366, 3, 48, 0); -- DMG:+26
INSERT INTO `item_latents` VALUES(18268, 61, 9, 48, 0); -- [Element: Dark]+9

-- Glyptic Sword  
INSERT INTO `item_latents` VALUES(18273, 366, 39, 48, 0); -- DMG:+40
INSERT INTO `item_latents` VALUES(18273, 58, 7, 48, 0); -- [Element: Thunder]+7

-- Dynamis Sword  
INSERT INTO `item_latents` VALUES(18274, 366, 8, 48, 0); -- DMG:48 
INSERT INTO `item_latents` VALUES(18274, 58, 9, 48, 0); -- [Element: Thunder]+9

-- Gilded Blade  
INSERT INTO `item_latents` VALUES(18279, 366, 79, 48, 0); -- DMG:80 
INSERT INTO `item_latents` VALUES(18279, 56, 7, 48, 0); -- [Element: Air]+7

-- Dynamis Blade  
INSERT INTO `item_latents` VALUES(18280, 366, 5, 48, 0); -- DMG:85 
INSERT INTO `item_latents` VALUES(18280, 56, 9, 48, 0); -- [Element: Air]+9

-- Leonine Axe  
INSERT INTO `item_latents` VALUES(18285, 366, 45, 48, 0); -- DMG:46 
INSERT INTO `item_latents` VALUES(18285, 60, 7, 48, 0); -- [Element: Light]+7

-- Dynamis Axe  
INSERT INTO `item_latents` VALUES(18286, 366, 4, 48, 0); -- DMG:50
INSERT INTO `item_latents` VALUES(18286, 60, 9, 48, 0); -- [Element: Light]+9

-- Agonal Bhuj  
INSERT INTO `item_latents` VALUES(18291, 366, 86, 48, 0); -- DMG:87 
INSERT INTO `item_latents` VALUES(18291, 60, 7, 48, 0); -- [Element: Light]+7

-- Dynamis Bhuj  
INSERT INTO `item_latents` VALUES(18292, 366, 4, 48, 0); -- DMG:93 
INSERT INTO `item_latents` VALUES(18292, 60, 9, 48, 0); -- [Element: Light]+9

-- Hotspur Lance  
INSERT INTO `item_latents` VALUES(18297, 366, 81, 48, 0); -- DMG:82 
INSERT INTO `item_latents` VALUES(18297, 57, 7, 48, 0); -- [Element: Earth]+7

-- Dynamis Lance  
INSERT INTO `item_latents` VALUES(18298, 366, 2, 48, 0); -- DMG:84 
INSERT INTO `item_latents` VALUES(18298, 57, 9, 48, 0); -- [Element: Earth]+9

-- Memento Scythe  
INSERT INTO `item_latents` VALUES(18303, 366, 81, 48, 0); -- DMG:82 
INSERT INTO `item_latents` VALUES(18303, 55, 7, 48, 0); -- [Element: Ice]+7

-- Dynamis Scythe  
INSERT INTO `item_latents` VALUES(18304, 366, 3, 48, 0); -- DMG:85 
INSERT INTO `item_latents` VALUES(18304, 55, 9, 48, 0); -- [Element: Ice]+9

-- Mimizuku  
INSERT INTO `item_latents` VALUES(18309, 366, 32, 48, 0); -- DMG:33 
INSERT INTO `item_latents` VALUES(18309, 61, 7, 48, 0); -- [Element: Dark]+7

-- Rogetsu  
INSERT INTO `item_latents` VALUES(18310, 366, 7, 48, 0); -- DMG:40 
INSERT INTO `item_latents` VALUES(18310, 61, 9, 48, 0); -- [Element: Dark]+9

-- Hayatemaru  
INSERT INTO `item_latents` VALUES(18315, 366, 75, 48, 0); -- DMG:76 
INSERT INTO `item_latents` VALUES(18315, 56, 7, 48, 0); -- [Element: Air]+7

-- Oboromaru  
INSERT INTO `item_latents` VALUES(18316, 366, 3, 48, 0); -- DMG:79 
INSERT INTO `item_latents` VALUES(18316, 56, 9, 48, 0); -- [Element: Air]+9

-- Battering Maul  
INSERT INTO `item_latents` VALUES(18321, 366, 28, 48, 0); -- DMG:29 
INSERT INTO `item_latents` VALUES(18321, 58, 7, 48, 0); -- [Element: Thunder]+7

-- Dynamis Maul  
INSERT INTO `item_latents` VALUES(18322, 366, 5, 48, 0); -- DMG:35 
INSERT INTO `item_latents` VALUES(18322, 58, 9, 48, 0); -- [Element: Thunder]+9

-- Sage's Staff  
INSERT INTO `item_latents` VALUES(18327, 366, 54, 48, 0); -- DMG:55 
INSERT INTO `item_latents` VALUES(18327, 54, 7, 48, 0); -- [Element: Fire]+7

-- Dynamis Staff  
INSERT INTO `item_latents` VALUES(18328, 366, 3, 48, 0); -- DMG:58 
INSERT INTO `item_latents` VALUES(18328, 54, 9, 48, 0); -- [Element: Fire]+9

-- Marksman Gun  
INSERT INTO `item_latents` VALUES(18333, 366, 38, 48, 0); -- DMG:39 
INSERT INTO `item_latents` VALUES(18333, 54, 7, 48, 0); -- [Element: Fire]+7

-- Dynamis Gun  
INSERT INTO `item_latents` VALUES(18334, 366, 3, 48, 0); -- DMG:42 
INSERT INTO `item_latents` VALUES(18334, 54, 9, 48, 0); -- [Element: Fire]+9

-- Pyrrhic Horn  
INSERT INTO `item_latents` VALUES(18339, 14, 1, 48, 0); -- CHR+1
INSERT INTO `item_latents` VALUES(18339, 55, 7, 48, 0); -- [Element: Ice]+7

-- Dynamis Horn  
INSERT INTO `item_latents` VALUES(18340, 14, 2, 48, 0); -- CHR+2
INSERT INTO `item_latents` VALUES(18340, 55, 9, 48, 0); -- [Element: Ice]+9

-- Millennium Horn  
INSERT INTO `item_latents` VALUES(18341, 14, 3, 48, 0); -- CHR+3
-- INSERT INTO `item_latents` VALUES(18341, 55, 9, 48, 0); -- Needs a way to give +2 to all songs, once BRD is straightened out.

-- Wolver Bow  
INSERT INTO `item_latents` VALUES(18345, 366, 67, 48, 0); -- DMG:68 
INSERT INTO `item_latents` VALUES(18345, 59, 7, 48, 0); -- [Element: Water]+7

-- Dynamis Bow  
INSERT INTO `item_latents` VALUES(18346, 366, 3, 48, 0); -- DMG:71 
INSERT INTO `item_latents` VALUES(18346, 59, 9, 48, 0); -- [Element: Water]+9

-- Bulwark Shield  
INSERT INTO `item_latents` VALUES(15067, 1, 21, 48, 0); -- DEF:22

-- Dynamis Shield  
INSERT INTO `item_latents` VALUES(15068, 1, 6, 48, 0); -- DEF:28

-- Ancile  
INSERT INTO `item_latents` VALUES(15069, 385, 200, 48, 0); -- Augments "Shield Bash"

-- -------------------------------------------------------
-- Halting Stole       
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(16306, 25, 20, 13, 4); -- accuracy+20 while under status paralysis

-- -------------------------------------------------------
-- Colossus's Earring         
-- -------------------------------------------------------
-- NEED latentID# INSERT INTO `item_latents` VALUES(16058, 161, -1, ??, 0); -- physical damage -2% during light weather (has -1% normally)

-- -------------------------------------------------------
-- Aesir Ear Pendant        
-- -------------------------------------------------------
-- NEED modID# & latentID# INSERT INTO `item_latents` VALUES(16057, ??, 6, ??, 0); -- conserve tp+6 during dark weather

-- -------------------------------------------------------
-- Fatality Belt        
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15955, 421, 2, 13, 44); -- critical hit damage 2% under status mighty strikes (war)
INSERT INTO `item_latents` VALUES(15955, 421, 2, 13, 48); -- critical hit damage 2% under status chainspell (rdm)
INSERT INTO `item_latents` VALUES(15955, 421, 2, 13, 49); -- critical hit damage 2% under status perfect dodge (thf)
INSERT INTO `item_latents` VALUES(15955, 421, 2, 13, 50); -- critical hit damage 2% under status invincible (pld)
INSERT INTO `item_latents` VALUES(15955, 421, 2, 13, 51); -- critical hit damage 2% under status blood weapon (drk)
-- NEED STATUS # INSERT INTO `item_latents` VALUES(15955, 421, 2, 13, ??); -- critical hit damage 2% under status familiar (bst)
INSERT INTO `item_latents` VALUES(15955, 421, 2, 13, 52); -- critical hit damage 2% under status soul voice (brd)
INSERT INTO `item_latents` VALUES(15955, 421, 2, 13, 53); -- critical hit damage 2% under status eagle eye shot (rng)
INSERT INTO `item_latents` VALUES(15955, 421, 2, 13, 54); -- critical hit damage 2% under status meikyo shisui (sam)
-- NEED STATUS # INSERT INTO `item_latents` VALUES(15955, 421, 2, 13, ??); -- critical hit damage 2% under status mijin gakure (nin)
INSERT INTO `item_latents` VALUES(15955, 421, 2, 13, 126); -- critical hit damage 2% under status spirit surge (drg)
INSERT INTO `item_latents` VALUES(15955, 421, 2, 13, 163); -- critical hit damage 2% under status azure lore (blu)
-- NEED STATUS # INSERT INTO `item_latents` VALUES(15955, 421, 2, 13, ??); -- critical hit damage 2% under status wild card (cor)
INSERT INTO `item_latents` VALUES(15955, 421, 2, 13, 376); -- critical hit damage 2% under status trance (dnc)

-- -------------------------------------------------------
-- Nyx Gorget        
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(11587, 25, 12, 13, 75); -- accuracy+12 under status arcane circle

-- -------------------------------------------------------
-- Colossus's Torque         
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(11590, 112, 3, 36, 0); -- Healing magic skill +10 On Lightsdays
INSERT INTO `item_latents` VALUES(11590, 113, 3, 36, 0); -- Enhancing magic skill +10 On Lightsdays

-- -------------------------------------------------------
-- Colossus's Mantle         
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(11547, 163, -1, 36, 0); -- Magic damage taken -3% On Lightsdays

-- -------------------------------------------------------
-- Beguiling Collar         
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(11585, 27, -3, 0, 100); -- Boosts enmity decrease when taking damage (used additional -3)

-- -------------------------------------------------------
-- Aesir Torque          
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(11589, 115, 3, 32, 0); -- Elemental magic skill +7 On Darksdays
INSERT INTO `item_latents` VALUES(11589, 116, 3, 32, 0); -- Dark magic skill +7 On Darksdays

-- -------------------------------------------------------
-- Aesir Mantle         
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(11546, 288, 1, 32, 0); -- Double Attack +2% On Darksdays

-- -------------------------------------------------------
-- Vampire Earring           
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(14783, 8, 4, 26, 1); -- STR+4 during Nighttime
INSERT INTO `item_latents` VALUES(14783, 10, 4, 26, 1); -- VIT+4 during Nighttime

-- -------------------------------------------------------
-- Ladybug Earring           
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15996, 24, 3, 26, 0); -- Ranged Attack+3 during Daytime

-- -------------------------------------------------------
-- Ladybug Earring +1        
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15997, 24, 4, 26, 0); -- Ranged Attack+4 during Daytime

-- -------------------------------------------------------
-- Ladybug Ring             
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15815, 2, 20, 26, 0); -- HP+20 during Daytime
INSERT INTO `item_latents` VALUES(15815, 5, 20, 26, 0); -- MP+20 during Daytime

-- -------------------------------------------------------
-- Ladybug Ring +1        
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15816, 2, 20, 26, 0); -- HP+20 during Daytime
INSERT INTO `item_latents` VALUES(15816, 5, 20, 26, 0); -- MP+20 during Daytime

-- -------------------------------------------------------
-- Mandraguard         
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(10807, 370, 1, 26, 0); -- Regen 1/tick during Daytime

-- -------------------------------------------------------
-- Dinner Jacket       
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(11355, 14, 1, 26, 1); -- CHR+1 during Nighttime
INSERT INTO `item_latents` VALUES(11355, 27, -1, 0, 75); -- Enmity-1 when HP <75%

-- -------------------------------------------------------
-- Dinner Hose         
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(16378, 14, 1, 26, 1); -- CHR+1 during Nighttime
INSERT INTO `item_latents` VALUES(16378, 27, -1, 0, 75); -- Enmity-1 when HP <75%

-- -------------------------------------------------------
-- Rajas Ring
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15543, 8, 1, 51, 45); -- INT+1 above level 45
INSERT INTO `item_latents` VALUES(15543, 8, 1, 51, 60); -- INT+1 above level 60
INSERT INTO `item_latents` VALUES(15543, 8, 1, 51, 75); -- INT+1 above level 75
INSERT INTO `item_latents` VALUES(15543, 9, 1, 51, 45); -- MND+1 above level 45
INSERT INTO `item_latents` VALUES(15543, 9, 1, 51, 60); -- MND+1 above level 60
INSERT INTO `item_latents` VALUES(15543, 9, 1, 51, 75); -- MND+1 above level 75

-- -------------------------------------------------------
-- Tamas Ring     
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15544, 2, 5, 51, 45); -- MP+5 above level 45
INSERT INTO `item_latents` VALUES(15544, 2, 5, 51, 60); -- MP+5 above level 60
INSERT INTO `item_latents` VALUES(15544, 2, 5, 51, 75); -- MP+5 above level 75
INSERT INTO `item_latents` VALUES(15544, 10, 1, 51, 45); -- INT+1 above level 45
INSERT INTO `item_latents` VALUES(15544, 10, 1, 51, 60); -- INT+1 above level 60
INSERT INTO `item_latents` VALUES(15544, 10, 1, 51, 75); -- INT+1 above level 75
INSERT INTO `item_latents` VALUES(15544, 11, 1, 51, 45); -- MND+1 above level 45
INSERT INTO `item_latents` VALUES(15544, 11, 1, 51, 60); -- MND+1 above level 60
INSERT INTO `item_latents` VALUES(15544, 11, 1, 51, 75); -- MND+1 above level 75

-- -------------------------------------------------------
-- Sattva Ring
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15545, 5, 5, 51, 45); -- MP+5 above level 45
INSERT INTO `item_latents` VALUES(15545, 5, 5, 51, 60); -- MP+5 above level 60
INSERT INTO `item_latents` VALUES(15545, 5, 5, 51, 75); -- MP+5 above level 75
INSERT INTO `item_latents` VALUES(15545, 12, 1, 51, 45); -- INT+1 above level 45
INSERT INTO `item_latents` VALUES(15545, 12, 1, 51, 60); -- INT+1 above level 60
INSERT INTO `item_latents` VALUES(15545, 12, 1, 51, 75); -- INT+1 above level 75
INSERT INTO `item_latents` VALUES(15545, 13, 1, 51, 45); -- MND+1 above level 45
INSERT INTO `item_latents` VALUES(15545, 13, 1, 51, 60); -- MND+1 above level 60
INSERT INTO `item_latents` VALUES(15545, 13, 1, 51, 75); -- MND+1 above level 75

-- -------------------------------------------------------
-- Parade Gorget
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15506, 369, 1, 1, 85); -- Refresh when HP >=85%

-- -------------------------------------------------------
-- Caitiff's Socks
/*
	[NOT CODED] Latent effect Flee
*/
-- -------------------------------------------------------
-- INSERT INTO `item_latents` VALUES(15324, ???, 1, 2, 25); -- Flee when HP <25% and TP <100%

-- -------------------------------------------------------
-- Fenrir's Stone
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(18165, 2, 30, 26, 0); -- Daytime: HP+30
INSERT INTO `item_latents` VALUES(18165, 68, 10, 26, 1); -- Nighttime: Evasion+10

-- -------------------------------------------------------
-- Chocobo Shirt  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(10293, 25, 50, 50, 31); -- Acc.+50
INSERT INTO `item_latents` VALUES(10293, 26, 50, 50, 31); -- Rng. Acc.+50
INSERT INTO `item_latents` VALUES(10293, 30, 50, 50, 31); -- Mag. Acc.+50

-- -------------------------------------------------------
-- Destrier Beret  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(11811, 370, 1, 50, 30); -- Adds "Regen"
INSERT INTO `item_latents` VALUES(11811, 369, 1, 50, 30); -- Adds "Refresh"
INSERT INTO `item_latents` VALUES(11811, 456, 1, 50, 30); -- Adds "Reraise"

-- -------------------------------------------------------
-- Carbuncle's Pole
-- --------------------------------------------------------
INSERT INTO `item_latents` VALUES(18581, 431, 2, 21, 8);  -- Additional effect: Light damage

-- -------------------------------------------------------
-- Leviathan's Couse
-- -------------------------------------------------------
-- TODO: INSERT INTO `item_latents` VALUES(18109, 431, 1, 21, 12); -- Additional effect: Water damage

-- -------------------------------------------------------
-- Ramuh's Mace
-- -------------------------------------------------------
-- TODO: INSERT INTO `item_latents` VALUES(18404, 431, 1, 21, 15); -- Additional effect: Lightning damage

-- -------------------------------------------------------
-- Shiva's Shotel
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(17711, 431, 1, 21, 14); -- Additional effect: Ice damage

-- -------------------------------------------------------
-- Amood
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(18482, 288, 1, 37, 0); -- Occasionally Attacks Twice

-- -------------------------------------------------------
-- Amood +1
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(18483, 288, 1, 37, 0); -- Occasionally Attacks Twice

-- -------------------------------------------------------
-- Sirius Axe
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(17952, 160, 2, 25, 2); -- DMG increases by 2 per member
-- -------------------------------------------------------
-- Medicine Ring  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13288, 374, 10, 2, 75); -- "Cure" potency +10% while HP <=75% and TP <=100%

-- -------------------------------------------------------
-- Fencer's Ring
/*
	[NOT CODED] Latent effect: Sword enhancement spell damage +5
*/ 
-- -------------------------------------------------------
-- INSERT INTO `item_latents` VALUES(13290, ???, 5, 2, 75); -- Sword enhancement spell damage +5 while HP <=75% and TP <=100%

-- -------------------------------------------------------
-- Guardian's Ring   
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13292, 385, 10, 2, 75); -- "Shield Bash"+10 while HP <=75% and TP <=100%

-- -------------------------------------------------------
-- Slayer's Ring   
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13293, 385, 10, 2, 75); -- "Shield Bash"+10 while HP <=75% and TP <=100%

-- -------------------------------------------------------
-- Tamer's Ring   
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13294, 224, 3, 2, 75); -- Enhances "Vermin Killer" effect while HP <=75% and TP <=100%
INSERT INTO `item_latents` VALUES(13294, 225, 3, 2, 75); -- Enhances "Bird Killer" effect while HP <=75% and TP <=100%
INSERT INTO `item_latents` VALUES(13294, 226, 3, 2, 75); -- Enhances "Amorph Killer" effect while HP <=75% and TP <=100%
INSERT INTO `item_latents` VALUES(13294, 227, 3, 2, 75); -- Enhances "Lizard Killer" effect while HP <=75% and TP <=100%
INSERT INTO `item_latents` VALUES(13294, 228, 3, 2, 75); -- Enhances "Aquan Killer" effect while HP <=75% and TP <=100%
INSERT INTO `item_latents` VALUES(13294, 229, 3, 2, 75); -- Enhances "Plantiod Killer" effect while HP <=75% and TP <=100%
INSERT INTO `item_latents` VALUES(13294, 230, 3, 2, 75); -- Enhances "Beast Killer" effect while HP <=75% and TP <=100%
INSERT INTO `item_latents` VALUES(13294, 231, 3, 2, 75); -- Enhances "Undead Killer" effect while HP <=75% and TP <=100%
INSERT INTO `item_latents` VALUES(13294, 232, 3, 2, 75); -- Enhances "Arcana Killer" effect while HP <=75% and TP <=100%
INSERT INTO `item_latents` VALUES(13294, 233, 3, 2, 75); -- Enhances "Dragon Killer" effect while HP <=75% and TP <=100%
INSERT INTO `item_latents` VALUES(13294, 234, 3, 2, 75); -- Enhances "Demon Killer" effect while HP <=75% and TP <=100%
INSERT INTO `item_latents` VALUES(13294, 235, 3, 2, 75); -- Enhances "Empty Killer" effect while HP <=75% and TP <=100%
INSERT INTO `item_latents` VALUES(13294, 236, 3, 2, 75); -- Enhances "Humanoid Killer" effect while HP <=75% and TP <=100%
INSERT INTO `item_latents` VALUES(13294, 237, 3, 2, 75); -- Enhances "Lumorian Killer" effect while HP <=75% and TP <=100%
INSERT INTO `item_latents` VALUES(13294, 238, 3, 2, 75); -- Enhances "Luminion Killer" effect while HP <=75% and TP <=100%

-- -------------------------------------------------------
-- Minstrel's Ring  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13295, 455, -25, 2, 75); -- "Shield Bash"+10 while HP <=75% and TP <=100%

-- -------------------------------------------------------
-- Drake Ring  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13299, 361, 10, 2, 75); -- Enhances "Jump" effects while HP <=75% and TP <=100%

-- -------------------------------------------------------
-- Conjurer's Earring 
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(13433, 160, -20, 2, 25); -- Damage taken -20% while HP <=25% and TP <=100%

-- -------------------------------------------------------
-- Desperado Ring  
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(15835, 23, 5, 4, 5); -- Attack+5 while MP <=5%

-- -------------------------------------------------------
-- Gaudy Harness
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(14413, 369, 1, 5, 49); -- "Refresh" effect while MP under 49 (actual number, not %)

-- -------------------------------------------------------
-- Perdu Bow         
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(18717, 366, 6, 6, 100); -- DMG+6 while TP <100%
INSERT INTO `item_latents` VALUES(18717, 26, 5, 6, 100); -- Ranged Accuracy+5 while TP <100%
INSERT INTO `item_latents` VALUES(18717, 24, 18, 6, 100); -- Ranged Attack+18 while TP <100%

-- -------------------------------------------------------
-- Perdu Crossbow          
-- -------------------------------------------------------
INSERT INTO `item_latents` VALUES(18718, 366, 4, 6, 100); -- DMG+4 while TP <100%
INSERT INTO `item_latents` VALUES(18718, 26, 5, 6, 100); -- Ranged Accuracy+5 while TP <100%
INSERT INTO `item_latents` VALUES(18718, 24, 18, 6, 100); -- Ranged Attack+18 while TP <100%
