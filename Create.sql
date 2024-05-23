USE master;
GO

DROP DATABASE IF EXISTS VapeShop

CREATE DATABASE VapeShop


USE VapeShop;

IF OBJECT_ID('Juice') IS NOT NULL
	DROP TABLE Juice;
CREATE TABLE Juice(
	JuiceID			INT				PRIMARY KEY IDENTITY,
	Manufacturer	VARCHAR(40)		NOT NULL,
	Flavor			VARCHAR(50)		NOT NULL,
	Milligram		INT				NOT NULL,
	Size			INT				NOT NULL
);

IF OBJECT_ID('Devices') IS NOT NULL
	DROP TABLE Devices;
CREATE TABLE Devices(
	DeviceID		INT				PRIMARY KEY IDENTITY,
	Brand			VARCHAR(40)		NOT NULL,
	Name			VARCHAR(50)		NOT NULL,
	Battery			VARCHAR(30)		NOT NULL,
	Coils			VARCHAR(20)		NOT NULL
);

IF OBJECT_ID('Disposables') IS NOT NULL
	DROP TABLE Disposables;
CREATE TABLE Disposables(
	DispoID			INT				PRIMARY KEY IDENTITY,
	DispoBrand		VARCHAR(30)		NOT NULL,
	Flavor			VARCHAR(30)		NOT NULL,
	PuffCount		INT				NOT NULL
);



USE VapeShop;

INSERT Disposables(DispoBrand, Flavor, PuffCount)
VALUES
	('GeekBar','Frozen Watermelon','15000'),
	('GeekBar','Frozen Blackberry','15000'),
	('GeekBar','Frozen Cherry Apple','15000'),
	('GeekBar','Frozen White Grape','15000'),
	('GeekBar','Frozen Strawberry','15000'),
	('GeekBar','Frozen Pina Colada','15000'),
	('GeekBar','Sour Apple Ice','15000'),
	('GeekBar','White Gummy Ice','15000'),
	('GeekBar','Juicy Peach Ice','15000'),
	('GeekBar','Blue Mint','15000'),
	('GeekBar','Watermelon Ice','15000'),
	('GeekBar','Mexico Mango','15000'),
	('GeekBar','Fcuking Fab','15000'),
	('GeekBar','Meta Moon','15000'),
	('GeekBar','Grape Blow Pop','15000'),
	('GeekBar','California Cherry','15000'),
	('GeekBar','Strawberry Mango','15000'),
	('GeekBar','Blow Pop','15000'),
	('GeekBar','Cherry Bomb','15000'),
	('GeekBar','OMG Blow Pop','15000'),
	('GeekBar','Sour Apple Blow Pop','15000'),
	('GeekBar','Pink Lemonade','15000'),
	('GeekBar','Tropical Rainbow Blast','15000'),

	('RAZ','Miami Mint','25000'),
	('RAZ','Wintergreen','25000'),
	('RAZ','Watermelon Ice','25000'),
	('RAZ','Blue Razz Ice','25000'),
	('RAZ','Iced Blue Dragon','25000'),
	('RAZ','Night Crawler','25000'),
	('RAZ','Raspberry Limeade','25000'),
	('RAZ','Sour Watermelon Peach','25000'),
	('RAZ','Cherry Strapple','25000'),
	('RAZ','Sour Apple Watermelon','25000'),
	('RAZ','Georgia Peach','25000'),
	('RAZ','Strawberry Burst','25000'),
	('RAZ','Bangin Sour Berries','25000'),
	('RAZ','Strawberry Orange Tang','25000'),
	('RAZ','Blueberry Watermelon','25000'),

	('Lost Mary MT15000 Turbo','Winter Mint','15000'),
	('Lost Mary MT15000 Turbo','Strawberry Kiwi','15000'),
	('Lost Mary MT15000 Turbo','Strawmelon Peach','15000'),
	('Lost Mary MT15000 Turbo','Citrus Sunrise','15000'),
	('Lost Mary MT15000 Turbo','Dr. Cherry','15000'),
	('Lost Mary MT15000 Turbo','Cherry Strazz','15000'),
	('Lost Mary MT15000 Turbo','Nana Coconut','15000'),
	('Lost Mary MT15000 Turbo','Banana Cake','15000'),
	('Lost Mary MT15000 Turbo','Strawberry Orange','15000'),
	('Lost Mary MT15000 Turbo','Berry Burst','15000'),
	('Lost Mary MT15000 Turbo','Summer Grape','15000'),
	('Lost Mary MT15000 Turbo','Baja Splash','15000'),

	('Lost Mary MO20000 Pro','Miami Mint','20000'),
	('Lost Mary MO20000 Pro','Pineapple Ice','20000'),
	('Lost Mary MO20000 Pro','Watermelon Ice','20000'),
	('Lost Mary MO20000 Pro','Sour Apple Ice','20000'),
	('Lost Mary MO20000 Pro','Strawberry Ice','20000'),
	('Lost Mary MO20000 Pro','Blue Razz Ice','20000'),
	('Lost Mary MO20000 Pro','Lime Grapefruit','20000'),
	('Lost Mary MO20000 Pro','Tropical Punch','20000'),
	('Lost Mary MO20000 Pro','Blue Baja Splash','20000'),
	('Lost Mary MO20000 Pro','Dragon Drink','20000'),
	('Lost Mary MO20000 Pro','Rainbow Sherbet','20000'),
	('Lost Mary MO20000 Pro','Watermelon Sour Peach','20000'),
	('Lost Mary MO20000 Pro','Mango Twist','20000')
;

INSERT Devices(Brand, Name, Battery, Coils)
VALUES
	('Geekvape', 'L200', 'Dual 18650', 'Zeus'),
	('Geekvape', 'L200 Classic', 'Dual 21700/18650', 'Zeus MAX'),
	('Geekvape', 'Z200', 'Dual 18650', 'Zeus'),
	('Geekvape', 'T200', 'Dual 18650', 'Zeus'),
	('Geekvape', 'S100', 'Single 18650', 'Zeus'),
	('Geekvape', 'B100', 'Single 21700/18650', 'Boost Pro'),
	('Geekvape', 'M100', 'Internal', 'Boost'),
	('Geekvape', 'MAX100', 'Single 21700/18650', 'Zeus'),
	('Geekvape', 'E100', 'Single 18650', 'Boost Pro'),
	('Geekvape', 'E100i', 'Internal', 'Boost Pro')
;

INSERT Juice(Manufacturer, Flavor, Milligram, Size)
VALUES
	('EJuiceNW', 'Hawk Loopz', 0, 100),
	('EJuiceNW', 'Hawk Loopz', 3, 100),
	('EJuiceNW', 'Hawk Loopz', 6, 100),
	('EJuiceNW', 'Hawk Loopz', 12, 100),

	('EJuiceNW', 'Cinnamon Crunch', 0, 100),
	('EJuiceNW', 'Cinnamon Crunch', 3, 100),
	('EJuiceNW', 'Cinnamon Crunch', 6, 100),
	('EJuiceNW', 'Cinnamon Crunch', 12, 100),

	('EJuiceNW', 'Voodoo Kustard', 0, 100),
	('EJuiceNW', 'Voodoo Kustard', 3, 100),
	('EJuiceNW', 'Voodoo Kustard', 6, 100),
	('EJuiceNW', 'Voodoo Kustard', 12, 100),

	('EJuiceNW', 'Sweet Unicorn', 0, 100),
	('EJuiceNW', 'Sweet Unicorn', 3, 100),
	('EJuiceNW', 'Sweet Unicorn', 6, 100),
	('EJuiceNW', 'Sweet Unicorn', 12, 100),

	('EJuiceNW', 'Yin Yang', 0, 100),
	('EJuiceNW', 'Yin Yang', 3, 100),
	('EJuiceNW', 'Yin Yang', 6, 100),
	('EJuiceNW', 'Yin Yang', 12, 100),

	('EJuiceNW', 'Island Sauz', 0, 100),
	('EJuiceNW', 'Island Sauz', 3, 100),
	('EJuiceNW', 'Island Sauz', 6, 100),
	('EJuiceNW', 'Island Sauz', 12, 100),

	('EJuiceNW', 'Dweebz', 0, 100),
	('EJuiceNW', 'Dweebz', 3, 100),
	('EJuiceNW', 'Dweebz', 6, 100),
	('EJuiceNW', 'Dweebz', 12, 100),

	('EJuiceNW', 'Black Dahlia', 0, 100),
	('EJuiceNW', 'Black Dahlia', 3, 100),
	('EJuiceNW', 'Black Dahlia', 6, 100),
	('EJuiceNW', 'Black Dahlia', 12, 100),

	('EJuiceNW', 'Espresso Cannoli', 0, 100),
	('EJuiceNW', 'Espresso Cannoli', 3, 100),
	('EJuiceNW', 'Espresso Cannoli', 6, 100),
	('EJuiceNW', 'Espresso Cannoli', 12, 100),

	('EJuiceNW', 'Apple Pie', 0, 100),
	('EJuiceNW', 'Apple Pie', 3, 100),
	('EJuiceNW', 'Apple Pie', 6, 100),
	('EJuiceNW', 'Apple Pie', 12, 100),

	('EJuiceNW', 'Massacre', 0, 100),
	('EJuiceNW', 'Massacre', 3, 100),
	('EJuiceNW', 'Massacre', 6, 100),
	('EJuiceNW', 'Massacre', 12, 100),

	('EJuiceNW', 'Juicy Mixed Berry', 0, 100),
	('EJuiceNW', 'Juicy Mixed Berry', 3, 100),
	('EJuiceNW', 'Juicy Mixed Berry', 6, 100),
	('EJuiceNW', 'Juicy Mixed Berry', 12, 100),

	('EJuiceNW', 'Juicy Grapple', 0, 100),
	('EJuiceNW', 'Juicy Grapple', 3, 100),
	('EJuiceNW', 'Juicy Grapple', 6, 100),
	('EJuiceNW', 'Juicy Grapple', 12, 100),

	('EJuiceNW', 'Juicy Mixed Berry Ice', 0, 100),
	('EJuiceNW', 'Juicy Mixed Berry Ice', 3, 100),
	('EJuiceNW', 'Juicy Mixed Berry Ice', 6, 100),
	('EJuiceNW', 'Juicy Mixed Berry Ice', 12, 100),

	('EJuiceNW', 'Juicy Grapple Ice', 0, 100),
	('EJuiceNW', 'Juicy Grapple Ice', 3, 100),
	('EJuiceNW', 'Juicy Grapple Ice', 6, 100),
	('EJuiceNW', 'Juicy Grapple Ice', 12, 100),

	('EJuiceNW', 'Melon Patch', 0, 100),
	('EJuiceNW', 'Melon Patch', 3, 100),
	('EJuiceNW', 'Melon Patch', 6, 100),
	('EJuiceNW', 'Melon Patch', 12, 100),

	('EJuiceNW', 'Melon Patch Ice', 0, 100),
	('EJuiceNW', 'Melon Patch Ice', 3, 100),
	('EJuiceNW', 'Melon Patch Ice', 6, 100),
	('EJuiceNW', 'Melon Patch Ice', 12, 100),

	('EJuiceNW', 'Blue Face', 0, 100),
	('EJuiceNW', 'Blue Face', 3, 100),
	('EJuiceNW', 'Blue Face', 6, 100),
	('EJuiceNW', 'Blue Face', 12, 100),

	('EJuiceNW', 'Blue Face Ice', 0, 100),
	('EJuiceNW', 'Blue Face Ice', 3, 100),
	('EJuiceNW', 'Blue Face Ice', 6, 100),
	('EJuiceNW', 'Blue Face Ice', 12, 100),

	('EJuiceNW', 'Rings of Saturn', 0, 100),
	('EJuiceNW', 'Rings of Saturn', 3, 100),
	('EJuiceNW', 'Rings of Saturn', 6, 100),
	('EJuiceNW', 'Rings of Saturn', 12, 100),

	('EJuiceNW', 'Strawberry Watermelon Swirl', 0, 100),
	('EJuiceNW', 'Strawberry Watermelon Swirl', 3, 100),
	('EJuiceNW', 'Strawberry Watermelon Swirl', 6, 100),
	('EJuiceNW', 'Strawberry Watermelon Swirl', 12, 100),

	('EJuiceNW', 'Iromuji', 0, 100),
	('EJuiceNW', 'Iromuji', 3, 100),
	('EJuiceNW', 'Iromuji', 6, 100),
	('EJuiceNW', 'Iromuji', 12, 100),

	('EJuiceNW', 'Yukata', 0, 100),
	('EJuiceNW', 'Yukata', 3, 100),
	('EJuiceNW', 'Yukata', 6, 100),
	('EJuiceNW', 'Yukata', 12, 100),

	('EJuiceNW', 'Komon', 0, 100),
	('EJuiceNW', 'Komon', 3, 100),
	('EJuiceNW', 'Komon', 6, 100),
	('EJuiceNW', 'Komon', 12, 100),

	('EJuiceNW', 'Kakeshita', 0, 100),
	('EJuiceNW', 'Kakeshita', 3, 100),
	('EJuiceNW', 'Kakeshita', 6, 100),
	('EJuiceNW', 'Kakeshita', 12, 100),

	('EJuiceNW', 'Rocked', 0, 100),
	('EJuiceNW', 'Rocked', 3, 100),
	('EJuiceNW', 'Rocked', 6, 100),
	('EJuiceNW', 'Rocked', 12, 100),

	('Reds', 'Apple Original', 3, 100),
	('Reds', 'Apple Original', 6, 100),

	('Reds', 'Apple Grape', 3, 100),
	('Reds', 'Apple Grape', 6, 100),

	('Reds', 'Apple Berries', 3, 100),
	('Reds', 'Apple Berries', 6, 100),

	('Reds', 'Apple Watermelon', 3, 100),
	('Reds', 'Apple Watermelon', 6, 100),

	('Reds', 'Apple Golden Kiwi', 3, 100),
	('Reds', 'Apple Golden Kiwi', 6, 100),

	('Reds', 'Apple Original Ice', 3, 100),
	('Reds', 'Apple Original Ice', 6, 100),

	('Reds', 'Apple Grape Ice', 3, 100),
	('Reds', 'Apple Grape Ice', 6, 100),

	('Reds', 'Apple Berries Ice', 3, 100),
	('Reds', 'Apple Berries Ice', 6, 100),

	('Reds', 'Apple Watermelon Ice', 3, 100),
	('Reds', 'Apple Watermelon Ice', 6, 100),

	('Reds', 'Apple Golden Kiwi Ice', 3, 100),
	('Reds', 'Apple Golden Kiwi Ice', 6, 100),

	('Vapergate', 'Berry Smash', 3, 100),
	('Vapergate', 'Berry Smash', 6, 100),

	('Vapergate', 'Cherry Smash', 3, 100),
	('Vapergate', 'Cherry Smash', 6, 100),

	('Vapergate', 'Keylime Smash', 3, 100),
	('Vapergate', 'Keylime Smash', 6, 100),

	('Vapergate', 'Peaches n Cream Smash', 3, 100),
	('Vapergate', 'Peaches n Cream Smash', 6, 100),
	
	('Vapergate', 'Cereal Smash', 3, 100),
	('Vapergate', 'Cereal Smash', 6, 100),
		
	('Vapergate', 'Cafe du Vape', 3, 100),
	('Vapergate', 'Cafe du Vape', 6, 100),
			
	('Vapergate', 'MFPB', 3, 100),
	('Vapergate', 'MFPB', 6, 100),
			
	('Vapergate', 'Beatnik', 3, 100),
	('Vapergate', 'Beatnik', 6, 100),
			
	('Vapergate', 'Gasper', 3, 100),
	('Vapergate', 'Gasper', 6, 100),
			
	('Vapergate', 'Custard Bomb', 3, 100),
	('Vapergate', 'Custard Bomb', 6, 100),
			
	('Vapergate', 'Komala', 3, 100),
	('Vapergate', 'Komala', 6, 100),
			
	('Vapergate', 'Hyperdrive', 3, 100),
	('Vapergate', 'Hyperdrive', 6, 100),
			
	('Vapergate', 'Donkey', 3, 100),
	('Vapergate', 'Donkey', 6, 100),
			
	('Vapergate', 'P1', 3, 100),
	('Vapergate', 'P1', 6, 100),
			
	('Vapergate', 'Blue', 3, 100),
	('Vapergate', 'Blue', 6, 100),
			
	('Vapergate', 'Magic', 3, 100),
	('Vapergate', 'Magic', 6, 100),
			
	('Vapergate', 'Violette', 3, 100),
	('Vapergate', 'Violette', 6, 100),
			
	('Vapergate', 'Blue Iced', 3, 100),
	('Vapergate', 'Blue Iced', 6, 100),
			
	('Vapergate', 'Magic Iced', 3, 100),
	('Vapergate', 'Magic Iced', 6, 100),
			
	('Vapergate', 'Violette Iced', 3, 100),
	('Vapergate', 'Violette Iced', 6, 100),
			
	('Juice Head', 'Pineapple Guava', 3, 100),
	('Juice Head', 'Pineapple Guava', 6, 100),
				
	('Juice Head', 'Orange Mango', 3, 100),
	('Juice Head', 'Orange Mango', 6, 100),
				
	('Juice Head', 'Watermelon Lime', 3, 100),
	('Juice Head', 'Watermelon Lime', 6, 100),
				
	('Juice Head', 'Strawberry Kiwi', 3, 100),
	('Juice Head', 'Strawberry Kiwi', 6, 100),
				
	('Juice Head', 'Peach Pear', 3, 100),
	('Juice Head', 'Peach Pear', 6, 100),
				
	('Juice Head', 'Pineapple Grapefruit', 3, 100),
	('Juice Head', 'Pineapple Grapefruit', 6, 100),
				
	('Juice Head', 'Blueberry Lemon', 3, 100),
	('Juice Head', 'Blueberry Lemon', 6, 100),
				
	('Juice Head', 'Mango Strawberry', 3, 100),
	('Juice Head', 'Mango Strawberry', 6, 100),
				
	('Juice Head', 'Orange Mango Freeze', 3, 100),
	('Juice Head', 'Orange Mango Freeze', 6, 100),
				
	('Juice Head', 'Watermelon Lime Freeze', 3, 100),
	('Juice Head', 'Watermelon Lime Freeze', 6, 100),
				
	('Juice Head', 'Strawberry Kiwi Freeze', 3, 100),
	('Juice Head', 'Strawberry Kiwi Freeze', 6, 100),
				
	('Juice Head', 'Peach Pear Freeze', 3, 100),
	('Juice Head', 'Peach Pear Freeze', 6, 100),
				
	('Juice Head', 'Pineapple Grapefruit Freeze', 3, 100),
	('Juice Head', 'Pineapple Grapefruit Freeze', 6, 100),
				
	('Juice Head', 'Blueberry Lemon Freeze', 3, 100),
	('Juice Head', 'Blueberry Lemon Freeze', 6, 100),
				
	('Juice Head', 'Mango Strawberry Freeze', 3, 100),
	('Juice Head', 'Mango Strawberry Freeze', 6, 100),
					
	('Silverback', 'Paco', 3, 100),
	('Silverback', 'Paco', 6, 100),
						
	('Silverback', 'Cody', 3, 100),
	('Silverback', 'Cody', 6, 100),
						
	('Silverback', 'Jack', 3, 100),
	('Silverback', 'Jack', 6, 100),
						
	('Silverback', 'Jenny', 3, 100),
	('Silverback', 'Jenny', 6, 100),
						
	('Silverback', 'Blue', 3, 100),
	('Silverback', 'Blue', 6, 100),
						
	('Silverback', 'Harambe', 3, 100),
	('Silverback', 'Harambe', 6, 100),
						
	('Silverback', 'Amy', 3, 100),
	('Silverback', 'Amy', 6, 100),
						
	('Silverback', 'Rocky', 3, 100),
	('Silverback', 'Rocky', 6, 100),
						
	('Silverback', 'Lola', 3, 100),
	('Silverback', 'Lola', 6, 100),
						
	('Silverback', 'Booboo', 3, 100),
	('Silverback', 'Booboo', 6, 100),
						
	('Silverback', 'Sandy', 3, 100),
	('Silverback', 'Sandy', 6, 100),
						
	('Silverback', 'Toto', 3, 100),
	('Silverback', 'Toto', 6, 100),
						
	('Modified', 'Tonic Storm', 3, 100),
	('Modified', 'Tonic Storm', 6, 100),
							
	('Modified', 'Dragon Candy', 3, 100),
	('Modified', 'Dragon Candy', 6, 100),
							
	('Modified', 'Pink Fox', 3, 100),
	('Modified', 'Pink Fox', 6, 100),
							
	('Modified', 'Sweet Tooth', 3, 100),
	('Modified', 'Sweet Tooth', 6, 100)
;
