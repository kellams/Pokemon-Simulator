CREATE TABLE tMoves
	([MoveID] int, [MoveName] varchar(12), [Power] int, [AttackTypeID] int, [TypeID] int, [Accuracy] int)
/
CREATE TABLE tTypeMultipliers
	([AttackTypeID] int, [DefendTypeID] int, [Multiplier] float)
/
CREATE TABLE tType
	([TypeID] int, [TypeName] varchar(8))
/
CREATE TABLE tPokemon
    ([PokemonID] int, [PokemonName] varchar(10), [Type1ID] int, [Type2ID] int, [Attack] int, [Defense] int, [SpecialAttack] int, [SpecialDefense] int)
/
CREATE TABLE tAttackSimulator
	([AttackingPokemonID] int, [AttackerLevel] int, [DefendingPokemonID] int, [MoveID] int, [Damage] int)
/
CREATE TABLE tAttackType
	([AttackTypeID] int, [AttackType] varchar(8))
/
INSERT INTO tMoves
	([MoveID], [MoveName], [Power], [AttackTypeID], [TypeID], [Accuracy])
VALUES
     (1        ,'Pound'    ,40      ,1              ,1        ,100)        
/
INSERT INTO tAttackType
	([AttackTypeID], [AttackType])
VALUES
	(1, 'Physical'),
	(2, 'Special')
/
INSERT INTO tType
	([TypeID], [TypeName])
VALUES
	(1, 'Normal'),
    (2, 'Fighting'),
    (3, 'Flying'),
    (4, 'Poison'),
    (5, 'Ground'),
    (6, 'Rock'),
    (7, 'Bug'),
    (8, 'Ghost'),
    (9, 'Fire'),
    (10, 'Water'),
    (11, 'Grass'),
    (12, 'Electric'),
    (13, 'Psychic'),
    (14, 'Ice'),
    (15, 'Dragon')
/
INSERT INTO tTypeMultipliers
	([AttackTypeID], [DefendTypeID], [Multiplier])
VALUES
	(1, 1, 1), --Normal vs Normal
	(1, 2, 1), --Normal vs Fighting
	(1, 3, 1), --Normal vs Flying
	(1, 4, 1), --Normal vs Poison
	(1, 5, 1), --Normal vs Ground
	(1, 6, .5), --Normal vs Rock
	(1, 7, 1), --Normal vs Bug
	(1, 8, 0), --Normal vs Ghost
	(1, 9, 1), --Normal vs Fire
	(1, 10, 1), --Normal vs Water
	(1, 11, 1), --Normal vs Grass
	(1, 12, 1), --Normal vs Electric
	(1, 13, 1), --Normal vs Psychic
	(1, 14, 1), --Normal vs Ice
	(1, 15, 1), --Normal vs Dragon
	(2, 1, 2), --Fighting vs Normal
	(2, 2, 1), --Fighting vs Fighting
	(2, 3, .5), --Fighting vs Flying
	(2, 4, .5), --Fighting vs Poison
	(2, 5, 1), --Fighting vs Ground
	(2, 6, 2), --Fighting vs Rock
	(2, 7, .5), --Fighting vs Bug
	(2, 8, 0), --Fighting vs Ghost
	(2, 9, 1), --Fighting vs Fire
	(2, 10, 1), --Fighting vs Water
	(2, 11, 1), --Fighting vs Grass
	(2, 12, 1), --Fighting vs Electric
	(2, 13, .5), --Fighting vs Psychic
	(2, 14, 2), --Fighting vs Ice
	(2, 15, 1), --Fighting vs Dragon
	(3, 1, 1), --Flying vs Normal
	(3, 2, 2), --Flying vs Fighting
	(3, 3, 1), --Flying vs Flying
	(3, 4, 1), --Flying vs Poison
	(3, 5, 1), --Flying vs Ground
	(3, 6, 1), --Flying vs Rock
	(3, 7, 2), --Flying vs Bug
	(3, 8, .5), --Flying vs Ghost
	(3, 9, 1), --Flying vs Fire
	(3, 10, 1), --Flying vs Water
	(3, 11, 2), --Flying vs Grass
	(3, 12, .5), --Flying vs Electric
	(3, 13, 1), --Flying vs Psychic
	(3, 14, 1), --Flying vs Ice
	(3, 15, 1), --Flying vs Dragon
	(4, 1, 1), --Poison vs Normal
	(4, 2, 1), --Poison vs Fighting
	(4, 3, 1), --Poison vs Flying
	(4, 4, .5), --Poison vs Poison
	(4, 5, .5), --Poison vs Ground
	(4, 6, .5), --Poison vs Rock
	(4, 7, 2), --Poison vs Bug
	(4, 8, .5), --Poison vs Ghost
	(4, 9, 1), --Poison vs Fire
	(4, 10, 1), --Poison vs Water
	(4, 11, 2), --Poison vs Grass
	(4, 12, 1), --Poison vs Electric
	(4, 13, 1), --Poison vs Psychic
	(4, 14, 1), --Poison vs Ice
	(4, 15, 1), --Poison vs Dragon
	(5, 1, 1), --Ground vs Normal
	(5, 2, 1), --Ground vs Fighting
	(5, 3, 0), --Ground vs Flying
	(5, 4, 2), --Ground vs Poison
	(5, 5, 1), --Ground vs Ground
	(5, 6, 2), --Ground vs Rock
	(5, 7, .5), --Ground vs Bug
	(5, 8, 1), --Ground vs Ghost
	(5, 9, 2), --Ground vs Fire
	(5, 10, 1), --Ground vs Water
	(5, 11, .5), --Ground vs Grass
	(5, 12, 2), --Ground vs Electric
	(5, 13, 1), --Ground vs Psychic
	(5, 14, 1), --Ground vs Ice
	(5, 15, 1), --Ground vs Dragon
	(6, 1, 1), --Rock vs Normal
	(6, 2, .5), --Rock vs Fighting
	(6, 3, 2), --Rock vs Flying
	(6, 4, 1), --Rock vs Poison
	(6, 5, .5), --Rock vs Ground
	(6, 6, 1), --Rock vs Rock
	(6, 7, 2), --Rock vs Bug
	(6, 8, 1), --Rock vs Ghost
	(6, 9, 2), --Rock vs Fire
	(6, 10, 1), --Rock vs Water
	(6, 11, 1), --Rock vs Grass
	(6, 12, 1), --Rock vs Electric
	(6, 13, 1), --Rock vs Psychic
	(6, 14, 2), --Rock vs Ice
	(6, 15, 1), --Rock vs Dragon
	(7, 1, 1), --Bug vs Normal
	(7, 2, .5), --Bug vs Fighting
	(7, 3, .5), --Bug vs Flying
	(7, 4, 2), --Bug vs Poison
	(7, 5, 1), --Bug vs Ground
	(7, 6, 1), --Bug vs Rock
	(7, 7, 1), --Bug vs Bug
	(7, 8, .5), --Bug vs Ghost
	(7, 9, .5), --Bug vs Fire
	(7, 10, 1), --Bug vs Water
	(7, 11, 2), --Bug vs Grass
	(7, 12, 1), --Bug vs Electric
	(7, 13, 2), --Bug vs Psychic
	(7, 14, 1), --Bug vs Ice
	(7, 15, 1), --Bug vs Dragon
	(8, 1, 0), --Ghost vs Normal
	(8, 2, 1), --Ghost vs Fighting
	(8, 3, 1), --Ghost vs Flying
	(8, 4, 1), --Ghost vs Poison
	(8, 5, 1), --Ghost vs Ground
	(8, 6, 1), --Ghost vs Rock
	(8, 7, 1), --Ghost vs Bug
	(8, 8, 2), --Ghost vs Ghost
	(8, 9, 1), --Ghost vs Fire
	(8, 10, 1), --Ghost vs Water
	(8, 11, 1), --Ghost vs Grass
	(8, 12, 1), --Ghost vs Electric
	(8, 13, 0), --Ghost vs Psychic
	(8, 14, 1), --Ghost vs Ice
	(8, 15, 1), --Ghost vs Dragon
	(9, 1, 1), --Fire vs Normal
	(9, 2, 1), --Fire vs Fighting
	(9, 3, 1), --Fire vs Flying
	(9, 4, 1), --Fire vs Poison
	(9, 5, 1), --Fire vs Ground
	(9, 6, .5), --Fire vs Rock
	(9, 7, 2), --Fire vs Bug
	(9, 8, 1), --Fire vs Ghost
	(9, 9, .5), --Fire vs Fire
	(9, 10, .5), --Fire vs Water
	(9, 11, 2), --Fire vs Grass
	(9, 12, 1), --Fire vs Electric
	(9, 13, 1), --Fire vs Psychic
	(9, 14, 2), --Fire vs Ice
	(9, 15, .5), --Fire vs Dragon
	(10, 1, 1), --Water vs Normal
	(10, 2, 1), --Water vs Fighting
	(10, 3, 1), --Water vs Flying
	(10, 4, 1), --Water vs Poison
	(10, 5, 2), --Water vs Ground
	(10, 6, 2), --Water vs Rock
	(10, 7, 1), --Water vs Bug
	(10, 8, 1), --Water vs Ghost
	(10, 9, 2), --Water vs Fire
	(10, 10, .5), --Water vs Water
	(10, 11, .5), --Water vs Grass
	(10, 12, 1), --Water vs Electric
	(10, 13, 1), --Water vs Psychic
	(10, 14, 1), --Water vs Ice
	(10, 15, .5), --Water vs Dragon
	(11, 1, 1), --Grass vs Normal
	(11, 2, 1), --Grass vs Fighting
	(11, 3, .5), --Grass vs Flying
	(11, 4, .5), --Grass vs Poison
	(11, 5, 2), --Grass vs Ground
	(11, 6, 2), --Grass vs Rock
	(11, 7, .5), --Grass vs Bug
	(11, 8, 1), --Grass vs Ghost
	(11, 9, .5), --Grass vs Fire
	(11, 10, 2), --Grass vs Water
	(11, 11, .5), --Grass vs Grass
	(11, 12, 1), --Grass vs Electric
	(11, 13, 1), --Grass vs Psychic
	(11, 14, 1), --Grass vs Ice
	(11, 15, .5), --Grass vs Dragon
	(12, 1, 1), --Electric vs Normal
	(12, 2, 1), --Electric vs Fighting
	(12, 3, 2), --Electric vs Flying
	(12, 4, 1), --Electric vs Poison
	(12, 5, 0), --Electric vs Ground
	(12, 6, 1), --Electric vs Rock
	(12, 7, 1), --Electric vs Bug
	(12, 8, 1), --Electric vs Ghost
	(12, 9, 1), --Electric vs Fire
	(12, 10, 2), --Electric vs Water
	(12, 11, .5), --Electric vs Grass
	(12, 12, .5), --Electric vs Electric
	(12, 13, 1), --Electric vs Psychic
	(12, 14, 1), --Electric vs Ice
	(12, 15, .5), --Electric vs Dragon
	(13, 1, 1), --Psychic vs Normal
	(13, 2, 2), --Psychic vs Fighting
	(13, 3, 1), --Psychic vs Flying
	(13, 4, 2), --Psychic vs Poison
	(13, 5, 1), --Psychic vs Ground
	(13, 6, 1), --Psychic vs Rock
	(13, 7, 1), --Psychic vs Bug
	(13, 8, 1), --Psychic vs Ghost
	(13, 9, 1), --Psychic vs Fire
	(13, 10, 1), --Psychic vs Water
	(13, 11, 1), --Psychic vs Grass
	(13, 12, 1), --Psychic vs Electric
	(13, 13, .5), --Psychic vs Psychic
	(13, 14, 1), --Psychic vs Ice
	(13, 15, 1), --Psychic vs Dragon
	(14, 1, 1), --Ice vs Normal
	(14, 2, 1), --Ice vs Fighting
	(14, 3, 2), --Ice vs Flying
	(14, 4, 1), --Ice vs Poison
	(14, 5, 2), --Ice vs Ground
	(14, 6, 1), --Ice vs Rock
	(14, 7, 1), --Ice vs Bug
	(14, 8, 1), --Ice vs Ghost
	(14, 9, 1), --Ice vs Fire
	(14, 10, .5), --Ice vs Water
	(14, 11, 2), --Ice vs Grass
	(14, 12, 1), --Ice vs Electric
	(14, 13, 1), --Ice vs Psychic
	(14, 14, .5), --Ice vs Ice
	(14, 15, 2), --Ice vs Dragon
	(15, 1, 1), --Dragon vs Normal
	(15, 2, 1), --Dragon vs Fighting
	(15, 3, 1), --Dragon vs Flying
	(15, 4, 1), --Dragon vs Poison
	(15, 5, 1), --Dragon vs Ground
	(15, 6, 1), --Dragon vs Rock
	(15, 7, 1), --Dragon vs Bug
	(15, 8, 1), --Dragon vs Ghost
	(15, 9, 1), --Dragon vs Fire
	(15, 10, 1), --Dragon vs Water
	(15, 11, 1), --Dragon vs Grass
	(15, 12, 1), --Dragon vs Electric
	(15, 13, 1), --Dragon vs Psychic
	(15, 14, 1), --Dragon vs Ice
	(15, 15, 2) --Dragon vs Dragon
	
INSERT INTO tPokemon
	([PokemonID], [PokemonName], [Type1ID], [Type2ID], [Attack], [Defense], [SpecialAttack] int, [SpecialDefense] int)
VALUES
	(1            ,'Bulbasaur'   ,11        ,4         ,45       ,49        ,65                  ,65)


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER DamageCalculator
   ON  tAttackingSimulator
   AFTER insert
AS 
BEGIN
	SET NOCOUNT ON;
  
	DECLARE @AttackerID int;
	SELECT @AttackerID = (SELECT AttackingPokemonID FROM inserted);
	
	DECLARE @DefenderID int;
	SELECT @DefenderID = (SELECT DefendingPokemonID FROM inserted);
  
	DECLARE @AttackID int;
	SELECT @AttackID = (SELECT AttackID FROM inserted);
	
	DECLARE @AttackerLevel int;
	SELECT @AttackerLevel = (SELECT Level FROM inserted);
	
	DECLARE @AttackTypeID int;
	SELECT @AttackTypeID = (SELECT Type1ID FROM inserted WHERE PokemonID = @AttackerID);
	
	DECLARE @DefenderType1ID int;
	DECLARE @DefenderType2ID int;
	SELECT @DefenderType1ID = (SELECT Type1ID FROM tPokemon WHERE PokemonID = @DefenderID);
	SELECT @DefenderType2ID = (SELECT Type2ID FROM tPokemon WHERE PokemonID = @DefenderID);
	
	DECLARE @AttackerType1ID int;
	DECLARE @AttackerType2ID int;
	SELECT @AttackerType1ID = (SELECT Type1ID FROM tPokemon WHERE PokemonID = @AttackID);
	SELECT @AttackerType2ID = (SELECT Type2ID FROM tPokemon WHERE PokemonID = @AttackID);
	
	DECLARE @TypeMultiplier1 int;
	SELECT @TypeMultiplier1 = (SELECT TypeMultiplier1 FROM tTypeMultipliers WHERE AttackID = @AttackTypeID AND DefendType = @DefenderType1ID);
    DECLARE @TypeMultiplier2 int;
	SELECT @TypeMultiplier2 = (SELECT TypeMultiplier2 FROM tTypeMultipliers WHERE AttackID = @AttackTypeID AND DefendType = @DefenderType2ID);
	-- Insert statements for trigger here
	--A = attacker's Level
	DECLARE @A int;
	SELECT @A = (SELECT Level FROM tPokemon WHERE PokemonID = @AttackerID);
	--B = attacker's Attack or Special
	DECLARE @B int;
	SELECT @B = (SELECT Attack FROM tPokemon WHERE PokemonID = @AttackerID);
	--C = attack Power
	DECLARE @C int;
	SELECT @C = (SELECT Power FROM tPokemon WHERE AttackID = @AttackID);
	--D = defender's Defense or Special
	DECLARE @D int;
	SELECT @D = (SELECT Defense FROM tPokemon WHERE PokemonID = @DefenderID);
	--X = same-Type attack bonus (1 or 1.5)
	DECLARE @X float;
	if (@AttackerType1ID = @AttackTypeID OR @AttackerType2ID = @AttackTypeID)
		SET @X = 1.5;
	ELSE
		SET @X = 1;
	--Y = Type modifiers (4, 2, 1, .5, .25, or 0)
	DECLARE @Y float;
	SET @Y = (@TypeMultiplier1 * @TypeMultiplier2);
	--Z = a random number between 217 and 255
	DECLARE @Z int;
	SELECT @Z = (SELECT RAND()*(217-255)+255);
	
	
	DECLARE @Damage int;
	
	Set @Damage = ((2A/5+2)*B*C)/D)/50)+2)*X)*Y/10)*Z)/255;
	
	
    Select @Damage AS text;
	

END