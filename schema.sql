-- Create Users Table
CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Password VARCHAR(255),
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Friends Table
CREATE TABLE Friends (
    FriendID INT AUTO_INCREMENT PRIMARY KEY,
    FriendWhoAdded INT,
    FriendBeingAdded INT,
    IsAccepted BOOLEAN,
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Create Groups Table
CREATE TABLE Groups (
    GroupID INT AUTO_INCREMENT PRIMARY KEY,
    GroupName VARCHAR(100),
    CreatedBy INT,
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Create Posts Table
CREATE TABLE Posts (
    PostID INT AUTO_INCREMENT PRIMARY KEY,
    PostDescription VARCHAR(255),
    PostedBy INT,
    IsPublic BOOLEAN,
    IsOnlyForFriends BOOLEAN,
    GroupID INT,
    DatePosted TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Group Membership Requests Table
CREATE TABLE GroupMembershipRequests (
    GroupMemberShipRequestsID INT AUTO_INCREMENT PRIMARY KEY,
    GroupID INT,
    GroupMemberUserID INT,
    IsGroupMemberShipAccepted BOOLEAN,
    DateAccepted TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Friends (FriendID, FriendWhoAdded, FriendBeingAdded, IsAccepted, DateAdded) VALUES
(1, 1, 3, TRUE, '1994-11-30'),
(2, 2, 4, FALSE, '2015-02-02'),
(3, 3, 5, TRUE, '2003-05-14'),
(4, 4, 1, FALSE, '2014-07-29'),
(5, 5, 7, FALSE, '2007-01-05'),
(6, 6, 4, TRUE, '1995-01-29'),
(7, 1, 2, TRUE, '2017-02-06'),
(8, 1, 2, TRUE, '2007-01-26'),
(9, 4, 2, FALSE, '2017-07-07'),
(10, 6, 3, FALSE, '2011-12-17'),
(11, 12, 7, FALSE, '2000-09-10'),
(12, 13, 12, TRUE, '1996-04-28'),
(13, 14, 13, FALSE, '2006-12-19'),
(14, 15, 14, FALSE, '2005-12-08'),
(15, 20, 15, TRUE, '2007-03-23'),
(16, 19, 16, FALSE, '1995-02-26'),
(17, 18, 17, TRUE, '2011-06-08'),
(18, 6, 19, TRUE, '2008-06-09'),
(19, 1, 20, TRUE, '2009-07-31'),
(20, 1, 1, TRUE, '2003-01-26');

INSERT INTO Posts (PostID, PostDescription, PostedBy, IsPublic, IsOnlyForFriends, GroupID, DatePosted) VALUES
(1, 'quisque erat eros viverra eget congue', 1, TRUE, FALSE, 9, '2021-08-25'),
(2, 'at velit eu est congue elementum in hac habitasse', 3, TRUE, TRUE, 10, '2009-07-25'),
(3, 'sed tristique in tempus sit amet sem', 4, TRUE, TRUE, 13, '1997-10-01'),
(4, 'vitae quam suspendisse potenti nullam porttitor', 2, TRUE, FALSE, 20, '1994-05-18'),
(5, 'vivamus in felis eu sapien cursus vestibulum proin eu mi', 4, FALSE, TRUE, 9, '2016-12-11'),
(6, 'gravida nisi at nibh in hac habitasse platea dictumst aliquam', 5, FALSE, FALSE, 9, '1998-09-18'),
(7, 'leo maecenas pulvinar lobortis est phasellus sit amet erat', 6, FALSE, TRUE, 7, '2021-08-02'),
(8, 'massa quis augue luctus tincidunt nulla mollis molestie', 7, FALSE, TRUE, 15, '2011-07-27'),
(9, 'in faucibus orci luctus et ultrices', 1, FALSE, TRUE, 5, '2004-01-04'),
(10, 'morbi ut odio cras mi pede malesuada in imperdiet et', 2, FALSE, TRUE, 5, '2024-05-20'),
(11, 'ut ultrices vel augue vestibulum ante ipsum primis in', 3, TRUE, FALSE, 4, '2020-07-30'),
(12, 'ac diam cras pellentesque volutpat dui maecenas tristique', 4, TRUE, TRUE, 20, '2006-06-11'),
(13, 'vel ipsum praesent blandit lacinia erat vestibulum sed magna at', 5, TRUE, FALSE, 5, '2009-02-10'),
(14, 'dolor sit amet consectetuer adipiscing elit proin', 6, TRUE, TRUE, 3, '2006-01-12'),
(15, 'integer a nibh in quis justo maecenas rhoncus aliquam lacus', 7, TRUE, FALSE, 11, '2012-12-24'),
(16, 'in faucibus orci luctus et ultrices posuere', 8, TRUE, FALSE, 9, '2006-04-13'),
(17, 'dictumst etiam faucibus cursus urna ut tellus nulla', 9, TRUE, FALSE, 8, '2008-11-13'),
(18, 'ligula vehicula consequat morbi a', 10, TRUE, TRUE, 8, '2010-08-22'),
(19, 'morbi ut odio cras mi pede malesuada in', 11, FALSE, TRUE, 15, '2002-03-02'),
(20, 'et ultrices posuere cubilia curae mauris viverra diam vitae quam', 20, FALSE, TRUE, 19, '2003-10-02');


INSERT INTO Users (UserID, UserName, FirstName, LastName, DateOfBirth, Password, DateAdded) VALUES
(1, 'ryeoman0', 'Raleigh', 'Yeoman', '2003-03-04', 'asxdaw2131sd', '1994-10-23'),
(2, 'tquick1', 'Tracie', 'Quick', '2009-05-25', 'yK4(4mK*', '2024-02-18'),
(3, 'aprettyman2', 'Augustina', 'Prettyman', '2013-12-15', 'fV2>+RDxX0', '2018-02-22'),
(4, 'ksambeck3', 'Kacy', 'Sambeck', '2019-01-30', 'bX5,9dGTZuZt', '2020-06-23'),
(5, 'hsmooth4', 'Hurleigh', 'Smooth', '2022-03-19', 'tZ4&GGUz()I5@P)', '2015-01-16'),
(6, 'ptaye5', 'Perl', 'Taye', '2019-09-13', 'sS1@.bTcHig~', '2006-05-26'),
(7, 'dedgeson6', 'Daniella', 'Edgeson', '2015-01-13', 'rM0+GZ>Sz9+LP7#', '2000-05-02'),
(8, 'oantosik7', 'Olia', 'Antosik', '2012-03-25', 'iO2#Q,u+', '2006-03-01'),
(9, 'nhallihane8', 'Norby', 'Hallihane', '2007-09-13', 'hB5*&asF~u', '1998-10-30'),
(10, 'fdemchen9', 'Fayina', 'Demchen', '2015-11-25', 'wM0"|alf', '2014-09-01'),
(11, 'mwhitfielda', 'Marris', 'Whitfield', '2007-02-16', 'xJ9/Mt(lHz~ZF', '2007-04-03'),
(12, 'gengledowb', 'Gusty', 'Engledow', '2021-03-13', 'qW1)H\'TEoz', '2002-04-19'),
(13, 'abuckstonc', 'Alfie', 'Buckston', '1995-11-04', 'kC9~4WVAv/', '2014-04-25'),
(14, 'mvickorsd', 'Meagan', 'Vickors', '2000-09-23', 'lM4>hs<U`1EthX', '2011-10-26'),
(15, 'mmcgrawe', 'Matti', 'McGraw', '2013-08-27', 'bH4@Z{%,P!sJtL', '2012-12-29'),
(16, 'ftilbyf', 'Fairleigh', 'Tilby', '2002-04-22', 'dI8)nxN)bJV$?R.', '2021-01-25'),
(17, 'grisbridgerg', 'Gustaf', 'Risbridger', '2020-10-06', 'hF2.Ylw{%pgN/z@c', '2008-03-10'),
(18, 'mspillardh', 'Myrtice', 'Spillard', '2005-11-24', 'xV3#K)9S11ldm', '2000-06-12'),
(19, 'mfatheri', 'Milo', 'Father', '1998-04-04', 'zF89jV6MBk%', '1998-07-10'),
(20, 'yorfordj', 'Ysabel', 'Orford', '1997-09-16', 'zJ7>pi.>D989q', '2024-03-08');

INSERT INTO Friends (FriendID, FriendWhoAdded, FriendBeingAdded, IsAccepted, DateAdded) VALUES
(1, 1, 3, TRUE, '1994-11-30'),
(2, 2, 4, FALSE, '2015-02-02'),
(3, 3, 5, TRUE, '2003-05-14'),
(4, 4, 2, FALSE, '2014-07-29'),
(5, 5, 7, FALSE, '2007-01-05'),
(6, 6, 2, TRUE, '1995-01-29'),
(7, 1, 2, TRUE, '2017-02-06'),
(8, 1, 1, TRUE, '2007-01-26'),
(9, 4, 2, FALSE, '2017-07-07'),
(10, 6, 3, FALSE, '2011-12-17'),
(11, 12, 7, FALSE, '2000-09-10'),
(12, 13, 12, TRUE, '1996-04-28'),
(13, 2, 13, FALSE, '2006-12-19'),
(14, 2, 2, FALSE, '2005-12-08'),
(15, 20, 15, TRUE, '2007-03-23'),
(16, 2, 16, FALSE, '1995-02-26'),
(17, 18, 17, TRUE, '2011-06-08'),
(18, 6, 19, TRUE, '2008-06-09'),
(19, 2, 20, TRUE, '2009-07-31'),
(20, 1, 1, TRUE, '2003-01-26');

INSERT INTO GroupMemberShipRequests (GroupMemberShipRequestsID, GroupID, GroupMemberUserID, IsGroupMemberShipAccepted, DateAccepted) VALUES
(1, 14, 15, FALSE, '2024-03-24'),
(2, 20, 9, FALSE, '2004-03-29'),
(3, 3, 1, TRUE, '2011-08-18'),
(4, 2, 2, FALSE, '2012-10-02'),
(5, 2, 7, TRUE, '2005-11-08'),
(6, 20, 10, TRUE, '2008-02-27'),
(7, 15, 13, TRUE, '2004-07-03'),
(8, 1, 5, TRUE, '1996-04-08'),
(9, 3, 12, FALSE, '2008-09-07'),
(10, 3, 8, FALSE, '2011-02-09'),
(11, 9, 15, TRUE, '1996-03-24'),
(12, 12, 2, FALSE, '2018-03-28'),
(13, 6, 16, FALSE, '2000-12-29'),
(14, 2, 2, TRUE, '1999-04-11'),
(15, 9, 20, TRUE, '2019-03-05'),
(16, 5, 2, TRUE, '2021-05-11'),
(17, 7, 19, FALSE, '2011-09-15'),
(18, 2, 8, FALSE, '2005-08-05'),
(19, 9, 4, FALSE, '2007-03-03'),
(20, 6, 9, FALSE, '2017-07-17');

INSERT INTO Groups (GroupID, GroupName, CreatedBy, DateAdded) VALUES
(1, 'tempus semper', 'Cinda Korfmann', '2014-02-13'),
(2, 'sapien iaculis', 'Willdon Devinn', '2008-10-23'),
(3, 'aliquam', 'Staford Kunert', '2021-04-13'),
(4, 'aliquam erat', 'Rochette Twelve', '2006-01-03'),
(5, 'in libero', 'Chrysa Powney', '2006-08-08'),
(6, 'lacus morbi', 'Alvie Creaney', '2001-03-13'),
(7, 'luctus nec', 'Bab Prin', '1995-05-01'),
(8, 'in', 'Terry Guidelli', '2014-01-17'),
(9, 'tellus in', 'Dav Fookes', '1995-09-21'),
(10, 'eu felis', 'Wilton Haddeston', '2011-08-21'),
(11, 'vel nulla', 'Gaylord Karolovsky', '2014-01-31'),
(12, 'et ultrices', 'Jay Rickhuss', '2023-12-31'),
(13, 'eu', 'Lammond Bagshaw', '2013-08-02'),
(14, 'sociis', 'Lora Bestwall', '2006-11-08'),
(15, 'nam', 'Louise Tuckerman', '2023-03-27'),
(16, 'pede', 'Melisande McArt', '2005-07-17'),
(17, 'orci vehicula', 'Donnamarie Krelle', '2008-12-13'),
(18, 'eu', 'Innis Asher', '2024-06-16'),
(19, 'pretium quis', 'Dave Battison', '2017-10-13'),
(20, 'nullam molestie', 'Valeda Crole', '1999-03-14');


SELECT * 
FROM Users
WHERE DateOfBirth BETWEEN '2000-01-01' AND '2004-12-31';

SELECT * 
FROM Posts
WHERE PostedBy = 4;


SELECT GroupName 
FROM Groups;


SELECT * 
FROM GroupMembershipRequests
WHERE GroupMemberUserID = 2;

SELECT * 
FROM Friends
WHERE FriendWhoAdded = 2 OR FriendBeingAdded = 2;

SELECT * 
FROM Friends
WHERE FriendWhoAdded = 1;

SELECT PostID, PostDescription, PostedBy, IsPublic, IsOnlyForFriends, GroupID, DatePosted 
FROM Posts
WHERE GroupID = 2 AND IsOnlyForFriends = TRUE;

SELECT * 
FROM GroupMembershipRequests
WHERE GroupID = 2 AND IsGroupMemberShipAccepted = FALSE;



