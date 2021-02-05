
/*
Gehad Gad
CUNY MSDS Winter Bridge/ SQL Assignment 
*/

/*
Question 1.
Create one table to keep track of the videos. This table should include a unique ID, the title of the video, the length in minutes, and the URL. 
Populate the table with at least three related videos from YouTube or other publicly available resources.
*/

CREATE TABLE Videos (
VideoID int not null,
TitleVideo text,
lengthInMinutes varchar(255),
URL varchar(255),
PRIMARY KEY (VideoID)
);

#Alter table Videos
#ADD Primary key (VideoID);

INSERT INTO Videos (VideoID, TitleVideo, lengthInMinutes, URL) VALUES (1,"How is Big Data stored and processed", "2", "https://www.youtube.com/watch?v=Sc9N_xkCYcY");
INSERT INTO Videos (VideoID, TitleVideo, lengthInMinutes, URL) VALUES (2,"How to create simple IN and OUT Inventory System in Excel", "13", "https://www.youtube.com/watch?v=Hlj4iENANnQ");
INSERT INTO Videos (VideoID, TitleVideo, lengthInMinutes, URL) VALUES (3,"How To Type Faster", "2", "https://www.youtube.com/watch?v=MKT6Uhk5-Iw");


/*
Question 2.
Create and populate Reviewers table. Create a second table that provides at least two user reviews for each of
at least two of the videos. These should be imaginary reviews that include columns for the user’s name
(“Asher”, “Cyd”, etc.), the rating (which could be NULL, or a number between 0 and 5), and a short text review
(“Loved it!”). There should be a column that links back to the ID column in the table of videos.
*/

CREATE TABLE Reviewers(
ReviewID int not null,
VideoID int ,
UserName Varchar (255),
Rating int,
ShortTextReview varchar (255),
PRIMARY KEY (ReviewID),
FOREIGN KEY (VideoID) REFERENCES Videos (VideoID)
);

#Alter table Reviewers
#ADD Primary key (ReviewID);
#Alter table Reviewers
#ADD foreign key (VideoID) REFERENCES Videos (VideoID);


INSERT INTO Reviewers ( ReviewID, VideoID, UserName, Rating, ShortTextReview) VALUES (1,1, "Adam", 4, "very helpfull. Thank you");
INSERT INTO Reviewers ( ReviewID, VideoID, UserName, Rating, ShortTextReview) VALUES (2,1, "Joseph", 3, "great video");
INSERT INTO Reviewers ( ReviewID, VideoID, UserName, Rating, ShortTextReview) VALUES (3,2, "Stacy", 5, "Thanks for sharing");
INSERT INTO Reviewers ( ReviewID, VideoID, UserName, Rating, ShortTextReview) VALUES (4,2, "Natalie", 4, "very good");
INSERT INTO Reviewers ( ReviewID, VideoID, UserName, Rating, ShortTextReview) VALUES (5,3, "Gigi", 4, "nice video");
INSERT INTO Reviewers ( ReviewID, VideoID, UserName, Rating, ShortTextReview) VALUES (6,3, "Craig", 5, "Good to know");


/*
Question 3.
Write a JOIN statement that shows information from both tables.
*/


SELECT  Reviewers.*, Videos.TitleVideo, Videos.lengthInMinutes, Videos.URL
from Videos 
right join Reviewers on Videos.VideoID=Reviewers.VideoID;

SELECT * FROM  Videos;
SELECT * FROM Reviewers;


#DROP TABLE Reviewers;
#DROP TABLE Videos;







