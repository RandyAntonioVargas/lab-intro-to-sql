-- Getting started, do not update
DROP DATABASE IF EXISTS regifter;
CREATE DATABASE regifter;
\c regifter
-- End getting started code

--
-- Write your code below each prompt

--
\echo Create a table called gifts
-- with the following columns
-- id serial primary KEY
-- gift - string
-- giver - string
-- value - integer
-- previously_regifted boolean
regifter=# CREATE TABLE gfits ( id serial PRIMARY KEY, gift TEXT, giver TEXT, value INT, previously_regfited BOOLEAN);
CREATE TABLE
regifter=# 



-- 
\echo See details of the table you created
-- 

regifter=# \d
            List of relations
 Schema |     Name     |   Type   | Owner 
--------+--------------+----------+-------
 public | gfits        | table    | randy
 public | gfits_id_seq | sequence | randy
(2 rows)
-- 
\echo Alter the table so that the column price is changed to value 
-- 

-- 
\echo Insert a peach candle, given by 'Santa' thats value is 9 and has been previously regifted
-- 
regifter=# INSERT INTO gfits( gift, giver, value, previously_regfited)Values('Peach candle', 'Santa','9',true);
INSERT 0 1

--
\echo Query for all the columns in your gifts table
-- 
regifter=# \d gfits;
                                   Table "public.gfits"
       Column        |  Type   | Collation | Nullable |              Default              
---------------------+---------+-----------+----------+-----------------------------------
 id                  | integer |           | not null | nextval('gfits_id_seq'::regclass)
 gift                | text    |           |          | 
 giver               | text    |           |          | 
 value               | integer |           |          | 
 previously_regfited | boolean |           |          | 
Indexes:
    "gfits_pkey" PRIMARY KEY, btree (id)



--
\echo Uncomment below to insert 5 more gifts
-- 

 INSERT INTO gifts (gift, giver, value, previously_regifted)
VALUES
('peach candle', 'Santa', '9', TRUE), 
 ('cinnamon candle', 'Nick', '19', TRUE),
 ('soap on a rope', 'Rudolf', '29', FALSE),
 ('potpurri', 'Elf on the Shelf', '39', TRUE),
 ('mango candle', 'The Boss', '49', FALSE)
 ;
 regifter=#  INSERT INTO gifts (gift, giver, value, previously_regifted)
regifter-# VALUES
regifter-# ('peach candle', 'Santa', '9', TRUE), 
regifter-#  ('cinnamon candle', 'Nick', '19', TRUE),
regifter-#  ('soap on a rope', 'Rudolf', '29', FALSE),
regifter-#  ('potpurri', 'Elf on the Shelf', '39', TRUE),
regifter-#  ('mango candle', 'The Boss', '49', FALSE)
regifter-#  ;
ERROR:  relation "gifts" does not exist
LINE 1: INSERT INTO gifts (gift, giver, value, previously_regifted)
                    ^
regifter=#  INSERT INTO gifts (gift, giver, value, previously_regifted)
regifter-# VALUES
regifter-# ('peach candle', 'Santa', '9', TRUE), 
regifter-#  ('cinnamon candle', 'Nick', '19', TRUE),
regifter-#  ('soap on a rope', 'Rudolf', '29', FALSE),
regifter-#  ('potpurri', 'Elf on the Shelf', '39', TRUE),
regifter-#  INSERT INTO gfits (gift, giver, value, previously_regifted)                                       VALUES                                                                                                        ('peach candle', 'Santa', '9', TRUE),                                                                          ('cinnamon candle', 'Nick', '19', TRUE),                                                                      ('soap on a rope', 'Rudolf', '29', FALSE),                                                                    ('potpurri', 'Elf on the Shelf', '39', TRUE),                                                                 ('mango candle', 'The Boss', '49', FALSE)                                                                     ;
ERROR:  syntax error at or near "INSERT"
LINE 7:  INSERT INTO gfits (gift, giver, value, previously_regifted)
         ^
regifter=#  INSERT INTO gifts (gift, giver, value, previously_regifted)                                       VALUES                                                                                                        ('peach candle', 'Santa', '9', TRUE),                                                                          ('cinnamon candle', 'Nick', '19', TRUE),                                                                      ('soap on a rope', 'Rudolf', '29', FALSE),                                                                    ('potpurri', 'Elf on the Shelf', '39', TRUE),                                                                 INSERT INTO gfits (gift, giver, value, previously_regifted)                                                  VALUES                                                                                                        ('peach candle', 'Santa', '9', TRUE), ('cinnamon candle', 'Nick', '19', TRUE),                                 ('soap on a rope', 'Rudolf', '29', FALSE),                                                                    ('potpurri', 'Elf on the Shelf', '39', TRUE),                                                                 ('mango candle', 'The Boss', '49', FALSE);                                                                   ERROR:  syntax error at or near "INSERT"
LINE 7:  INSERT INTO gfits (gift, giver, value, previously_regifted)
         ^
regifter=# 


-- 
\echo Insert 5 more gifts of your own choosing,  include 1 more candle
--



--
\echo Query for gifts with a price greater than or equal to 20
--


--
\echo Query for every gift that has the word candle in it, only show the gift column
--


--
\echo Query for every gift whose giver is Santa OR value is greater than 30
--


--
\echo Query for every gift whose giver is NOT Santa
--


--
\echo Update the second gift to have a value of 2999
-- 


--
\echo Query for the updated item
--


--
\echo Delete all the gifts from Santa and return the 'value' and 'gift' of the gift you have deleted
--


--
\echo Query for all the columns in your gifts table one more time
--



-- BONUSES

--
 \echo Count the total number of gifts that have the word candle in it
-- 


--
\echo Get the AVEREAGE value from all the gifts
--


-- 
 \echo Limit to 3 gifts, offset by 2 and order by price descending
--

--
-- finish
--
DROP TABLE IF EXISTS gifts;
