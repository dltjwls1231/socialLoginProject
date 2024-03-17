CREATE DATABASE data CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE TABLE Trainer(
  userid VARCHAR(60),
  username VARCHAR(20) CHARACTER SET utf8mb4,
  profileImg VARCHAR(200),
  created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  updated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(), 
  PRIMARY KEY (userid)
 );


SELECT userid, username
FROM Trainer
order by created desc
limit 1;
 
SELECT username
FROM Trainer
WHERE userid = 'asd';

DELETE FROM Trainer
WHERE username = '박근원';

UPDATE Trainer
SET userid = 'dsa'
WHERE username = '김기재';
