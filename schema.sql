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



