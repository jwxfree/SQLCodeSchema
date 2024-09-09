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



