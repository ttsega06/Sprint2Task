
CREATE TABLE if not exists Garden_Table
(
Drone_picture_ID                    Varchar(20) PRIMARY KEY NOT NULL,
Plant_Type                           Varchar(20),

foreign key(Drone_picture_ID ) references Drone_Data_Table(Drone_picture_ID ) on delete cascade
);
Drop table Garden_Table;

CREATE TABLE if not exists Drone_Data_Table
(
Drone_picture_ID            Varchar(20) PRIMARY KEY NOT NULL,
Date_Time                   date,
Battery_status              Varchar(30),
Drone_Temp                  Varchar(40),
Video                       Varchar(35),
Pad_Id                      Varchar(40),
foreign key(Pad_Id ) references Drone_pad(Pad_Id ) on delete cascade
);

Drop table  Drone_Data_Table;
CREATE TABLE if not exists Plant_Table
(
Drone_picture_ID         Varchar(30) PRIMARY KEY NOT NULL,

Date_Time                datetime,
Plant_Type               char(40),
disease_Type             Varchar(40),
plant_growth_rate        char(20),
foreign key(Drone_picture_ID) references Drone_Data_Table(Drone_picture_ID) on delete cascade
);
Drop table Plant_Table;
CREATE TABLE if not exists Drone_pad
(
Pad_Id                   Varchar(40) PRIMARY KEY NOT NULL,
Pad_x_coordinate         Varchar(20),
Pad_y_coordinate         Char(20),
Pad_z_coordinate         Char(20)
);
 Drop table Drone_pad;
CREATE TABLE if not exists Notfication
(
ID_Notfication       Varchar(30) PRIMARY KEY NOT NULL,
ID_Gardener        Varchar(40),
Plant_Grow_Alerts    Varchar(25),
Content              char(20),
Drone_Picture_ID     Varchar(35)
);
 Drop table Notfication;
Drop table Notfication;

CREATE TABLE if not exists Gardener
(
ID_Gardener          Varchar(30) PRIMARY KEY NOT NULL,
First_Name           Char(40) ,
Last_Name            Varchar(35),
MiddleName           char(30),
Mobile               varchar(25),
Email                Char(30),
Password_Num         Varchar(20)
) ;    
Drop table Gardener;
CREATE TABLE if not exists Drone_Schedul
(
Drone_Schesule        Varchar(30) PRIMARY KEY NOT NULL,
Drone_picture_ID      Char(40)
);
Drop table Drone_Schedul;
Insert into Drone_Schedul(Drone_Schesule, Drone_picture_ID  ) values ('Monday',16508);
Insert into Drone_Schedul(Drone_Schesule, Drone_picture_ID  ) values ('Tuesday',67586);
Insert into Drone_Schedul(Drone_Schesule, Drone_picture_ID  ) values ('Wednesday',57864);
Insert into Drone_Schedul(Drone_Schesule, Drone_picture_ID  ) values ('Thursday',37584);
Insert into Drone_Schedul(Drone_Schesule, Drone_picture_ID  ) values ('Friday',67854);



Drop table Drone_Schedul;
Insert into Garden_Table(Drone_picture_ID , Plant_Type) values (16508,'Molded wax');
Insert into Garden_Table(Drone_picture_ID , Plant_Type) values (67586,'Molded wax');
Insert into Garden_Table(Drone_picture_ID , Plant_Type) values (57864,'Molded wax');
Insert into Garden_Table(Drone_picture_ID , Plant_Type) values (37584,'Molded wax');
Insert into Garden_Table(Drone_picture_ID , Plant_Type) values (67854,'Tomato');
Insert into Garden_Table(Drone_picture_ID , Plant_Type) values (54678,'Tomato');
Insert into Garden_Table(Drone_picture_ID , Plant_Type) values (12765,'Tomato');
Insert into Garden_Table(Drone_picture_ID , Plant_Type) values (89076,'Tomato');
Insert into Garden_Table(Drone_picture_ID , Plant_Type) values (97860,'Red rose');
Insert into Garden_Table(Drone_picture_ID , Plant_Type) values (34256,'Red rose');
Insert into Garden_Table(Drone_picture_ID , Plant_Type) values (90876,'Red rose');
Insert into Garden_Table(Drone_picture_ID , Plant_Type) values (34562,'Red rose');
Insert into Garden_Table(Drone_picture_ID , Plant_Type) values (52314,'corn');
Insert into Garden_Table(Drone_picture_ID , Plant_Type) values (10231,'corn');
Insert into Garden_Table(Drone_picture_ID , Plant_Type) values (67432,'corn');
Insert into Garden_Table(Drone_picture_ID , Plant_Type) values (43562,'corn');


Insert into  Drone_Data_Table(Drone_picture_ID  , Date_Time, Battery_status, Drone_Temp,Pad_Id ,Video) values (16508,'2022-12-10', '100%', '40f',65343, 87264);
Insert into  Drone_Data_Table(Drone_picture_ID  , Date_Time, Battery_status, Drone_Temp,Pad_Id,Video) values (67586,'2022-12-10', '100%', '40f',65343, 87264);
Insert into  Drone_Data_Table(Drone_picture_ID  , Date_Time, Battery_status, Drone_Temp,Pad_Id,Video) values (57864,'2022-12-10', '100%', '40f',65343, 67534);
Insert into  Drone_Data_Table(Drone_picture_ID  , Date_Time, Battery_status, Drone_Temp,Pad_Id,Video) values (37584,'2022-12-10', '100%', '40f', 65343,63572);
Insert into  Drone_Data_Table(Drone_picture_ID  , Date_Time, Battery_status, Drone_Temp,Pad_Id,Video) values (67854,'2022-12-10', '100%', '40f', 65343,76534);
Insert into  Drone_Data_Table(Drone_picture_ID  , Date_Time, Battery_status, Drone_Temp,Pad_Id,Video) values (54678,'2022-12-10', '95%', '40f', 65343, 98743);
Insert into  Drone_Data_Table(Drone_picture_ID  , Date_Time, Battery_status, Drone_Temp,Pad_Id,Video) values (12765,'2022-12-10', '95%', '40f', 65343, 87645);
Insert into  Drone_Data_Table(Drone_picture_ID  , Date_Time, Battery_status, Drone_Temp,Pad_Id,Video) values (89076,'2022-12-10', '95%', '40f', 65343, 90876);
Insert into  Drone_Data_Table(Drone_picture_ID  , Date_Time, Battery_status, Drone_Temp,Pad_Id,Video) values (97860,'2022-12-10', '95%', '40f', 65343, 87645);
Insert into  Drone_Data_Table(Drone_picture_ID , Date_Time, Battery_status, Drone_Temp,Pad_Id,Video)  values (34256,'2022-12-10',  '95%', '40f',65343,  76453);
Insert into  Drone_Data_Table(Drone_picture_ID , Date_Time, Battery_status, Drone_Temp,Pad_Id,Video) values  (90876,'2022-12-10', '85%', '40f', 65343, 12523);
Insert into  Drone_Data_Table(Drone_picture_ID  , Date_Time, Battery_status, Drone_Temp,Pad_Id,Video) values (34562,'2022-12-10', '85%', '40f', 65343, 21352);
Insert into  Drone_Data_Table(Drone_picture_ID  , Date_Time, Battery_status, Drone_Temp,Pad_Id,Video) values (52314,'2022-12-10', '85%', '40f', 65343, 64537);
Insert into  Drone_Data_Table(Drone_picture_ID  , Date_Time, Battery_status, Drone_Temp,Pad_Id,Video) values (10231,'2022-12-10', '85%', '40f', 65343, 92536);
Insert into  Drone_Data_Table(Drone_picture_ID  , Date_Time, Battery_status, Drone_Temp,Pad_Id,Video) values (67432,'2022-12-10', '75%', '40f', 65343, 87364);
Insert into  Drone_Data_Table(Drone_picture_ID  , Date_Time, Battery_status, Drone_Temp,Pad_Id,Video) values (43562,'2022-12-10', '75%', '40f', 65343, 67362);


Insert into  Plant_Table(Drone_picture_ID  , Date_Time, Plant_Type , disease_Type ,plant_growth_rate) values (16508,'2022-12-10', 'Molded wax', 'Alternaria', 12);
Insert into  Plant_Table(Drone_picture_ID  , Date_Time, Plant_Type , disease_Type ,plant_growth_rate) values (67586,'2022-12-10', 'Molded wax', 'Alternaria', 12);
Insert into  Plant_Table(Drone_picture_ID  , Date_Time, Plant_Type , disease_Type ,plant_growth_rate) values (57864,'2022-12-10', 'Molded wax','Alternaria', 12);
Insert into  Plant_Table(Drone_picture_ID  , Date_Time, Plant_Type , disease_Type ,plant_growth_rate) values (37584,'2022-12-10', 'Molded wax', 'Alternaria', 12);
Insert into  Plant_Table(Drone_picture_ID  , Date_Time, Plant_Type , disease_Type ,plant_growth_rate) values (67854,'2022-12-10', 'Tomato', 'Canker', 15);
Insert into  Plant_Table(Drone_picture_ID  , Date_Time, Plant_Type , disease_Type ,plant_growth_rate) values (54678,'2022-12-10', 'Tomato', 'Canker',  15);
Insert into  Plant_Table(Drone_picture_ID  , Date_Time, Plant_Type , disease_Type ,plant_growth_rate) values (12765,'2022-12-10', 'Tomato', 'Canker',  15);
Insert into  Plant_Table(Drone_picture_ID  , Date_Time, Plant_Type , disease_Type ,plant_growth_rate) values (89076,'2022-12-10', 'Tomato', 'Canker',  15);
Insert into  Plant_Table(Drone_picture_ID  , Date_Time, Plant_Type , disease_Type ,plant_growth_rate) values (97860,'2022-12-10', 'Red rose', 'fungi',  18);
Insert into  Plant_Table(Drone_picture_ID , Date_Time,  Plant_Type , disease_Type ,plant_growth_rate)  values (34256,'2022-12-10',  'Red rose', 'fungi',  18);
Insert into  Plant_Table(Drone_picture_ID , Date_Time,  Plant_Type , disease_Type ,plant_growth_rate) values  (90876,'2022-12-10', 'Red rose', 'fungi',  18);
Insert into  Plant_Table(Drone_picture_ID  , Date_Time, Plant_Type , disease_Type ,plant_growth_rate) values (34562,'2022-12-10', 'Red rose', 'fungi',  18);
Insert into  Plant_Table(Drone_picture_ID  , Date_Time, Plant_Type , disease_Type ,plant_growth_rate) values (52314,'2022-12-10', 'corn', 'Leaf Blight',  20);
Insert into  Plant_Table(Drone_picture_ID  , Date_Time, Plant_Type , disease_Type ,plant_growth_rate) values (10231,'2022-12-10', 'corn', 'Leaf Blight',  20);
Insert into  Plant_Table(Drone_picture_ID  , Date_Time, Plant_Type , disease_Type ,plant_growth_rate) values (67432,'2022-12-10', 'corn', 'Leaf Blight',  20);
Insert into  Plant_Table(Drone_picture_ID  , Date_Time, Plant_Type , disease_Type ,plant_growth_rate) values (43562,'2022-12-10', 'corn', 'Leaf Blight', 20);

Insert into Drone_pad(Pad_Id    ,Pad_x_coordinate  , Pad_y_coordinate  ,Pad_z_coordinate) values (65343,'x', 'y', 'z');

Insert into  Notfication(ID_Notfication  , ID_Gardener   , Plant_Grow_Alerts, Content     ,Drone_Picture_ID  ) values (34563,45637,12, 'Text',16508);
Insert into  Notfication(ID_Notfication  , ID_Gardener,    Plant_Grow_Alerts, Content    ,Drone_Picture_ID  ) values (76453,87463, 12, 'Text',67586);
Insert into  Notfication(ID_Notfication  , ID_Gardener   , Plant_Grow_Alerts, Content    ,Drone_Picture_ID  ) values (72645,23563, 12, 'Text',57864);
Insert into  Notfication(ID_Notfication  , ID_Gardener   , Plant_Grow_Alerts, Content    ,Drone_Picture_ID  ) values (44684,17264, 12, 'Text', 37584);
Insert into  Notfication(ID_Notfication  , ID_Gardener   , Plant_Grow_Alerts, Content    ,Drone_Picture_ID  ) values (87645,98746, 15, 'Text', 67854);
Insert into  Notfication(ID_Notfication  , ID_Gardener   , Plant_Grow_Alerts, Content    ,Drone_Picture_ID  ) values (27467,47537, 15, 'Text', 54678);
Insert into  Notfication(ID_Notfication  , ID_Gardener   , Plant_Grow_Alerts, Content    ,Drone_Picture_ID  ) values (76236,84653, 15, 'Text', 12765);
Insert into  Notfication(ID_Notfication  , ID_Gardener   , Plant_Grow_Alerts, Content    ,Drone_Picture_ID  ) values (47467,87074, 15, 'Text', 89076);
Insert into  Notfication(ID_Notfication  , ID_Gardener   , Plant_Grow_Alerts,Content    ,Drone_Picture_ID  ) values (73645,73653, 18, 'Text', 97860);
Insert into  Notfication(ID_Notfication , ID_Gardener   , Plant_Grow_Alerts, Content    ,Drone_Picture_ID  )  values (45637,45637,  18, 'Text',34256);
Insert into  Notfication(ID_Notfication  , ID_Gardener   , Plant_Grow_Alerts, Content    ,Drone_Picture_ID  ) values  (73647,87463, 18, 'Text', 90876);
Insert into  Notfication(ID_Notfication  , ID_Gardener   , Plant_Grow_Alerts, Content ,   Drone_Picture_ID  ) values (65437,23463, 18, 'Text', 34562);
Insert into  Notfication(ID_Notfication  ,ID_Gardener   , Plant_Grow_Alerts, Content    ,Drone_Picture_ID  ) values (63527,17264, 20, 'Text', 52314);
Insert into  Notfication(ID_Notfication , ID_Gardener   , Plant_Grow_Alerts, Content    ,Drone_Picture_ID  ) values (78463,98746, 20, 'Text', 10231);
Insert into  Notfication(ID_Notfication  , ID_Gardener   , Plant_Grow_Alerts, Content    ,Drone_Picture_ID  ) values (90746,47537, 20, 'Text', 67432);
Insert into  Notfication(ID_Notfication  , ID_Gardener   , Plant_Grow_Alerts, Content    ,Drone_Picture_ID  ) values (87056,84654, 20, 'Text', 43562);

Insert into  Gardener(ID_Gardener     , First_Name   , Last_Name  , MiddleName      ,Mobile, Email, Password_Num ) values (45637,'Alex','Chase', 'Robot',5151244269,'alex657',4472784 );
Insert into  Gardener(ID_Gardener     , First_Name   , Last_Name  , MiddleName      ,Mobile, Email, Password_Num ) values (87463,'James','Jared', 'Robel',5151234567, 'jared.123',6372637 );
Insert into  Gardener(ID_Gardener     , First_Name   , Last_Name  , MiddleName      ,Mobile, Email, Password_Num) values (23463,'Jones','Jon', 'Nahom',5151234568, 'jon.234',8472874 );
Insert into  Gardener(ID_Gardener     , First_Name   , Last_Name  , MiddleName      ,Mobile, Email, Password_Num ) values (17264,'Justin', 'Mark', 'mesgana',5151244266, 'justin435',5628468);



