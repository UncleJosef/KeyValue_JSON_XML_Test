CREATE PROCEDURE [dbo].[SP_INIT_SOURCE]
	@MAX int = 1000
AS
BEGIN
-- 
DECLARE @I INT;
SET @MAX=@MAX*20;
SET @I=1;
WHILE (@I<=@MAX)
BEGIN
	INSERT INTO T_SOURCE([TYPE_ID],[SUM],[SUM1],[SUM2],[SUM3],[SUM4],[FLAG],[FLAG1],[FLAG2],[STR],[STR1],[STR2]) 
	VALUES(99,24.11,8205.71,3.98,419.30,4.48,0,1,0,'06713','Bulnes','Kirestin, Seth, Christine, Eugenia'),
		  (79,57.60,8782.51,6.73,018.00,8.39,0,0,0,'34913','Charleville-Mézières','Chelsea, Emerson, Ashely, Jeremy'),
		  (76,9.70,6282.97,1.09,899.39,1.72,0,1,0,'1617','Bellevue','Eugenia, Patrick, Herrod, Nash'),
		  (94,10.73,8668.57,5.02,829.31,9.23,0,1,0,'74989','Goslar','Tallulah, Jana, Thaddeus, Damon'),
		  (43,54.70,2741.26,5.86,691.44,0.52,0,0,0,'20567','Virginia Beach','Ulric, Declan, Samantha, Brianna'),
		  (52,22.26,6881.35,0.56,004.29,8.46,1,1,1,'39250','Penticton','Graiden, Karyn, Mari, Tanisha'),
		  (47,83.07,3938.56,8.60,403.47,2.40,0,1,0,'4699','San Marcello Pistoiese','Tanisha, Lane, Orson, Alexander'),
		  (74,93.04,5835.74,0.90,962.38,3.53,0,1,1,'2205','Monteu Roero','Dalton, Norman, Holly, Violet'),
		  (31,32.66,1272.00,4.51,126.65,5.09,1,1,1,'05005','Vicoli','Courtney, Barclay, Devin, Kylee'),
		  (17,10.82,2722.62,1.10,416.23,8.27,1,0,1,'Z0020','Chapecó','Aiko, Octavius, Geoffrey, Erasmus'),
		  (15,2.24,1563.25,4.65,373.54,2.88,0,1,1,'50943','Machynlleth','Wynter, Amela, Hayes, Gloria'),
		  (5,41.63,1691.69,9.79,951.79,2.14,1,1,1,'Z4916','Nieuwegein','Barclay, Janna, Elaine, Jakeem'),
		  (92,49.45,8942.91,7.18,343.32,4.23,0,1,0,'17779','Governador Valadares','Willow, Lane, Uriah, Thor'),
		  (82,14.60,2093.10,7.42,532.88,0.60,0,0,1,'94942','Freiberg','Kristen, Burton, Sonya, Ariel'),
		  (69,36.57,4368.51,6.73,094.73,3.71,0,1,1,'67109','Dunfermline','Cole, Whoopi, Murphy, Reese'),
		  (56,22.05,1897.44,0.08,970.84,1.30,1,0,1,'48670','Anghiari','Keiko, Anika, Shelly, Shana'),
		  (17,61.63,4389.31,8.91,418.51,2.84,1,0,1,'9045','Kington','Mikayla, Mari, Astra, Meghan'),
		  (6,84.03,6714.78,9.98,377.38,7.15,1,1,1,'27390','Saint-Pierre','Vernon, Christian, Christine, Hannah'),
		  (43,54.04,7998.65,9.04,960.03,2.75,1,0,0,'01220','Ketchikan','Curran, Tanisha, Celeste, Minerva'),
		  (67,53.36,1136.11,9.83,982.17,9.23,0,1,1,'24540','Victor Harbor','Rooney, Holmes, Kendall, Kato'),
		  (62,89.40,3255.81,7.20,609.40,8.77,1,1,1,'99901','Samarinda','Paula, Darrel, Ethan, Ali'),
		  (91,26.87,3299.82,0.88,273.98,8.80,1,0,0,'39845','Naro','Grady, Wang, George, Gregory'),
		  (87,26.49,1768.23,1.69,715.51,6.06,1,0,0,'09996','Parral','Iliana, Ainsley, Josephine, Ignatius'),
		  (81,97.96,9925.99,4.12,081.32,2.69,1,1,1,'93753','Champdani','Kasper, Violet, Melyssa, Darius'),
		  (39,23.07,2192.00,6.04,214.25,6.47,1,0,1,'23910','Fauvillers','Jonah, Marsden, Arthur, Oren'),
		  (95,83.37,7232.29,9.29,036.08,6.97,1,1,1,'55472','Appelterre-Eichem','Cassidy, Wyoming, Jael, Cole'),
		  (19,7.52,2478.38,1.76,694.95,8.35,1,0,0,'60904','Seattle','Bertha, Barclay, Stacey, Justina'),
		  (71,7.69,2444.59,5.31,266.90,2.31,0,0,0,'92111','Ospedaletto d''Alpinolo','Amena, Ira, Jayme, Quincy'),
		  (68,90.97,3225.93,2.38,256.92,3.10,0,0,0,'170YA','Comblain-au-Pont','Cameran, Tobias, Brian, Hadassah'),
		  (50,49.74,8981.92,9.24,940.04,2.12,1,0,0,'18657','Athus','Rowan, Nash, Hoyt, Stacy'),
          (45,96.26,4910.72,3.67,749.78,3.53,1,1,0,'53813','Hyderabad','Guinevere, Violet, Mannix, Walker'),
		  (75,1.21,7592.32,8.50,476.26,1.74,1,1,1,'12646','Caldera','Erin, Guinevere, Ruth, Reese'),
		  (26,18.93,3573.89,2.21,315.35,5.33,0,1,1,'07665','Maransart','Melissa, Sierra, Octavius, Kuame'),
		  (67,19.86,1548.56,6.93,546.18,1.57,0,0,1,'57323','Anzio','Lars, Sage, Murphy, Tara'),
		  (4,26.72,7515.50,4.26,437.02,5.19,0,0,1,'W7KOH','Chilliwack','Yvonne, Jenna, Tatiana, George'),
		  (16,82.49,5697.32,5.08,049.92,4.36,0,0,0,'79680','Samsun','Cyrus, Lilah, Veronica, Ashely'),
		  (84,57.23,2057.01,8.04,696.16,2.31,1,1,0,'61381','Grand-RosiŽre-Hottomont','Macon, Lunea, Barry, Sean'),
		  (19,73.95,6317.18,9.20,701.41,5.46,0,0,1,'Z4003','Sint-Kwintens-Lennik','Kendall, Ashely, Emma, Adele'),
		  (77,29.50,5013.33,1.53,872.11,6.76,0,0,1,'74974','Sergiyev Posad','Walter, Justin, Jorden, Amber'),
		  (99,61.89,9822.01,7.40,666.90,9.36,1,0,0,'60995','Dover','Otto, Akeem, Germane, Charlotte'),
		  (76,80.03,8176.36,8.82,538.58,5.11,0,1,1,'09078','New Haven','Geraldine, Geoffrey, Wing, Violet'),
		  (71,91.89,2608.89,3.92,003.56,8.38,0,0,1,'9241','Buzet','Alisa, Oliver, Ronan, Rose'),
		  (20,77.91,7070.49,3.14,453.63,1.97,1,1,0,'27454','Eisleben','Violet, Signe, Yardley, Hedy'),
		  (50,9.20,1659.84,5.67,219.68,3.46,0,1,0,'98249','Busan','Thor, Georgia, Kalia, Christine'),
		  (85,64.91,9077.70,8.82,585.84,8.54,1,0,1,'81199','Podolsk','Genevieve, Kimberly, Valentine, Joelle'),
		  (97,72.36,3056.72,9.13,061.94,6.16,0,0,1,'CW14N','Ways','Yoko, Ivy, Odette, Keith'),
		  (50,67.70,9374.22,8.35,807.50,3.60,1,1,1,'13232','Jalandhar (Jullundur)','Erin, Gareth, Adria, Jessamine'),
		  (6,36.93,8946.74,1.67,058.85,8.45,1,0,1,'49947','Port Hope','Yuli, Fallon, Lillith, Jaden'),
		  (72,62.77,7987.60,9.43,634.68,7.54,1,0,1,'47231','Wijnegem','Sawyer, Nero, Hammett, Ifeoma'),
		  (49,17.75,3132.09,5.58,303.59,7.60,1,0,0,'89483','Ketchikan','Ila, Tarik, Idona, Emerald');
	SET @I=@I+1;
END;
END
