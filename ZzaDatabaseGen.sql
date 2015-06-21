USE [Zza]

/*** Drop Order Tables Script Date: Thu Jun 06 2013 18:37:00 GMT-0700 (Pacific Daylight Time) ***/
IF OBJECT_ID('[dbo].[OrderItemOption]', 'U') IS NOT NULL
BEGIN
ALTER TABLE [dbo].[OrderItemOption] DROP CONSTRAINT [FK_OrderItemOption_ProductOption]
ALTER TABLE [dbo].[OrderItemOption] DROP CONSTRAINT [FK_OrderItemOption_OrderItem]
DROP TABLE [dbo].[OrderItemOption]
END
GO

IF OBJECT_ID('[dbo].[OrderItem]', 'U') IS NOT NULL
BEGIN
ALTER TABLE [dbo].[OrderItem] DROP CONSTRAINT [FK_OrderItem_ProductSize]
ALTER TABLE [dbo].[OrderItem] DROP CONSTRAINT [FK_OrderItem_Product]
ALTER TABLE [dbo].[OrderItem] DROP CONSTRAINT [FK_OrderItem_Order]
DROP TABLE [dbo].[OrderItem]
END
GO

IF OBJECT_ID('[dbo].[Order]', 'U') IS NOT NULL
BEGIN
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_Customer]
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_OrderStatus]
DROP TABLE [dbo].[Order]
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

PRINT '
*** Customer Table Generation ***'

/*** Table [dbo].[Customer] Script Date: Thu Jun 06 2013 18:37:00 GMT-0700 (Pacific Daylight Time) ***/
IF OBJECT_ID('[dbo].[Customer]', 'U') IS NOT NULL
DROP TABLE [dbo].[Customer]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer](
[Id] [uniqueidentifier] NOT NULL,
[StoreId] [uniqueidentifier] NULL,
[FirstName] [nvarchar](50) NULL,
[LastName] [nvarchar](50) NULL,
[Phone] [nvarchar](100) NULL,
[Email] [nvarchar](255) NULL,
[Street] [nvarchar](100) NULL,
[City] [nvarchar](100) NULL,
[State] [nvarchar](2) NULL,
[Zip] [nvarchar](10) NULL,
CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED
([Id] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('7462c7c8-e24c-484a-8f93-013f1c479615','Derek','Puckett','(954) 594-9355','derek.puckett@vulputate.net','P.O. Box 914, 9990 Dapibus St.','Quam','OH','55154');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('8f64b183-a881-42f5-9c1d-013f1c479616','Bernard','Russell','(203) 652-0465','bernard.russell@torquentper.com','324-6843 Dolor Ave','Quis','FL','28034');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('5a2ff04d-e9ae-4de1-9f4e-013f1c479617','Jordan','Jimenez','(265) 520-8354','jordan.jimenez@variusorciin.co.uk','Ap #370-9242 Sed, Ave','Lorem','OR','88091');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('11da4696-cea3-4a6d-8e83-013f1c479618','Jordan','Holloway','(761) 224-2078','jordan.holloway@felisullamcorper.edu','Ap #128-7062 Viverra. Road','Penatibus','PA','82092');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('c56f1005-28c6-454d-9525-013f1c479619','Dorian','Hurley','(691) 714-1449','dorian.hurley@ipsumprimis.org','3100 Nunc St.','Nam','IL','57878');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('975c4a14-fae9-4e80-b6e5-013f1c47961a','Regan','Wright','(126) 144-1855','regan.wright@ullamcorpernislarcu.edu','Ap #701-4141 Ante. Rd.','Dictum','KS','82560');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('009a0942-b1fd-4618-a7de-013f1c47961b','Hedda','Kemp','(147) 741-1696','hedda.kemp@nunc.ca','P.O. Box 880, 3605 Nec, Ave','Dolor City','MS','56403');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('718d7784-c177-4c54-a2d3-013f1c47961d','Jordan','Kelly','(859) 624-7317','jordan.kelly@lorem.org','P.O. Box 866, 3666 Phasellus Rd.','Rutrum','MN','69800');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('0ff9f486-5ac6-40a8-a25c-013f1c47961e','Cheryl','Massey','(601) 563-9471','cheryl.massey@dictumplacerat.edu','Ap #171-7323 Mattis Av.','Erat','OK','02283');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('651d1aa8-e7f6-48f6-ae92-013f1c47961f','Erich','Barron','(880) 947-3420','erich.barron@Loremipsumdolor.net','Ap #442-177 Volutpat Avenue','Egestas City','CT','42871');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('0e2a4fee-380b-42d3-8b78-013f1c479620','Brianna','Allen','(298) 393-0372','brianna.allen@InfaucibusMorbi.com','P.O. Box 902, 5276 Semper St.','Rhoncus City','ME','86063');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('db929abb-e670-4aa8-9ee2-013f1c479621','Chastity','Robbins','(437) 367-6613','chastity.robbins@Donecnonjusto.net','2295 Elit. Avenue','Non','TN','02263');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('dde19a04-84b1-4452-9612-013f1c479622','Wallace','Bates','(574) 847-4231','wallace.bates@sem.org','712-6613 Orci Ave','Nulla City','MS','05332');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('21829039-ee75-4865-b84f-013f1c479623','Molly','Frank','(310) 705-4577','molly.frank@Inlorem.edu','2277 Donec Rd.','Mollis','KY','75839');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('fa539487-c572-4045-a6bf-013f1c479624','Demetrius','Langley','(657) 854-8183','demetrius.langley@Nam.edu','4814 Nunc. St.','Nec','AK','39498');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('75b02196-60d3-476c-8c42-013f1c479625','Reese','Stephens','(134) 602-2513','reese.stephens@quam.ca','580-9933 Ornare St.','Fusce','MT','68017');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('7f2aa755-ecb0-4f80-ad01-013f1c479626','Shelley','Weber','(692) 253-4895','shelley.weber@Fusce.org','Ap #156-4219 Et, Av.','Proin','IA','66768');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('8f3b5a9f-85fc-495d-901b-013f1c479627','Jennifer','Leblanc','(814) 120-4683','jennifer.leblanc@Fuscefermentumfermentum.ca','779-8730 Auctor. Av.','Libero','IA','79546');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('046f6c1f-b8b5-4e5e-aa7c-013f1c479628','Idona','West','(220) 623-6795','idona.west@metusIn.org','P.O. Box 734, 7881 Posuere St.','Utville','MT','93058');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('c9a76e2c-a39e-4c4a-ac4a-013f1c479629','Melyssa','Weaver','(881) 844-1111','melyssa.weaver@libero.edu','P.O. Box 930, 2346 Turpis. Rd.','Massa City','LA','09104');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('e5ebf143-3820-4600-bac9-013f1c47962a','Althea','Patrick','(485) 679-0902','althea.patrick@vitaesemper.edu','Ap #750-567 Ac St.','Eget','NV','56076');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('01d4652b-cc00-4c57-90f7-013f1c47962b','John','Russell','(496) 953-8629','john.russell@loremauctor.net','1918 Etiam Avenue','Auctor','IL','39599');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('3bcfcff9-ea4e-4008-98c9-013f1c47962c','Dylan','Mitchell','(500) 479-9175','dylan.mitchell@aliquetPhasellus.org','P.O. Box 773, 4409 Sit Rd.','Nec','VT','17367');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('981c8345-0640-4a79-903d-013f1c47962d','Georgia','Webster','(480) 427-2180','georgia.webster@utcursusluctus.edu','Ap #298-6821 Ut, Avenue','Risus City','MO','45872');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('ba33b6e0-3e40-4c79-b581-013f1c47962e','Lee','Burris','(399) 321-0539','lee.burris@vel.com','P.O. Box 876, 8449 Nostra, Rd.','Lorem City','WY','93880');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('ea95f2e9-c91b-45b3-b2c4-013f1c47962f','Cameron','Head','(233) 266-3616','cameron.head@anuncIn.com','1306 Proin St.','Sollicitudin','ID','89918');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('14c12e59-d802-4a0e-baff-013f1c479630','Oliver','Dale','(114) 445-0087','oliver.dale@tinciduntvehicula.com','308-1383 Non Street','Ornare','KY','30821');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('0a18f73f-0255-454e-9c44-013f1c479631','Naida','Whitney','(470) 815-3162','naida.whitney@mollisvitaeposuere.co.uk','P.O. Box 399, 6339 Nisi Road','Adipiscing City','LA','10892');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('135ec153-9c71-4df8-9778-013f1c479632','Wing','Miller','(333) 414-9465','wing.miller@sodalespurus.net','P.O. Box 483, 8826 Vel Rd.','Fermentum','CT','68647');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('43963d60-81d3-4300-9671-013f1c479633','Vernon','Hammond','(417) 758-1428','vernon.hammond@eleifendvitae.org','3274 Nec, Rd.','Netus','MS','74761');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('f3e6cd21-68b1-4470-b0eb-013f1c479634','Carla','Hall','(157) 325-7072','carla.hall@eu.co.uk','P.O. Box 311, 7310 Quis Ave','Diam','CT','40026');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('3bd069e9-4c5a-45ad-af0a-013f1c479635','Castor','Hartman','(129) 841-3220','castor.hartman@nisinibh.co.uk','Ap #588-5375 Suspendisse Street','At City','KY','94906');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('730fa9e4-0f3e-4766-a265-013f1c479636','Lewis','Clemons','(163) 948-1803','lewis.clemons@miloremvehicula.com','Ap #524-5510 Aliquam St.','Ipsum','TN','97887');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('42a77144-d45d-48f7-97bb-013f1c479637','Jolene','Holland','(950) 445-1642','jolene.holland@Utnecurna.co.uk','6650 Enim. Av.','Tristique','HI','18696');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('e4a5c596-0d28-460e-aa67-013f1c479638','Kasimir','Oneill','(296) 709-1618','kasimir.oneill@malesuadaaugueut.com','769-925 Vulputate, Street','Orci City','TN','82341');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('31a34f9d-47a8-4428-a00d-013f1c479639','Aileen','Alvarez','(829) 590-4166','aileen.alvarez@In.edu','812-4435 Aliquet. Ave','Lectus','MD','86721');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('b97f1246-544e-49b7-a332-013f1c47963a','Taylor','Delaney','(274) 223-1647','taylor.delaney@facilisisnon.com','9403 Nullam Av.','Justo City','VA','48216');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('919e7af7-0af6-491e-8246-013f1c47963b','Jillian','Farmer','(574) 315-4571','jillian.farmer@ligulaAliquam.edu','Ap #749-5159 Sem Rd.','Malesuada City','KS','97719');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('b89c43e5-a220-42ce-9b25-013f1c47963c','Germane','Noel','(283) 615-2609','germane.noel@utpellentesque.org','1410 Blandit St.','Commodo','AZ','23691');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('8af152a0-1410-45e5-88ac-013f1c47963d','Rigel','Tran','(540) 387-4490','rigel.tran@lectusrutrumurna.org','2608 Egestas. Avenue','Ipsum City','MS','47373');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('19d35bbc-e711-4dff-8e63-013f1c47963e','Fredericka','Sweet','(223) 636-5019','fredericka.sweet@posuerevulputate.edu','P.O. Box 811, 2885 Et, Road','Sed City','WA','50088');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('530e0cae-0025-482a-becb-013f1c47963f','Jameson','Dale','(764) 227-7789','jameson.dale@Nam.net','P.O. Box 467, 8040 Diam St.','Bibendum','MA','73582');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('5b9a6abf-6d8f-4721-842b-013f1c479640','Jared','Gallagher','(529) 932-7105','jared.gallagher@placerataugue.co.uk','3544 Ut, Rd.','Curabitur','HI','71517');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('617c046e-b8f3-4028-8da5-013f1c479641','Helen','Harper','(378) 568-8959','helen.harper@penatibus.ca','Ap #805-4319 Arcu Rd.','Metus City','MO','84235');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('d241fdf4-3507-4529-bb46-013f1c479642','Althea','Rosario','(925) 871-6501','althea.rosario@et.net','P.O. Box 616, 6012 In Av.','Sem','WY','75609');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('912d126c-13da-4d71-be7b-013f1c479643','Courtney','Bray','(713) 390-4565','courtney.bray@Nuncsed.ca','519-4610 Nonummy. Av.','Ullamcorper City','MO','29699');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('426ebaf1-4169-4b84-9805-013f1c479644','Kitra','Crawford','(123) 442-5981','kitra.crawford@justo.ca','Ap #294-6210 Integer St.','Dolor','HI','15675');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('1e2f8a25-8ae9-4ce8-8b64-013f1c479645','Marsden','Freeman','(775) 110-3692','marsden.freeman@utmiDuis.com','146-9891 Sit Ave','Aenean','OK','81759');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('04391a5f-9a1a-40c2-b811-013f1c479646','Deanna','Cash','(398) 800-8468','deanna.cash@sagittis.org','P.O. Box 144, 564 Hendrerit Avenue','Nulla','MT','49214');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('c494f0e5-d728-4ecb-b2fa-013f1c479647','Cheryl','Harvey','(643) 524-5182','cheryl.harvey@imperdietornareIn.co.uk','2987 Arcu. Av.','Amet','MA','01803');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('fec96cb2-57bb-4092-863b-013f1c479648','Alexis','Kirkland','(641) 976-2223','alexis.kirkland@rutrumeu.edu','P.O. Box 560, 4261 Pede Rd.','Amet','UT','94584');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('ccd7ebd7-8157-4b45-801f-013f1c479649','Tana','Spence','(942) 240-7629','tana.spence@arcuCurabitur.net','715-6134 Ac St.','Pharetra City','OH','11469');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('db92be00-e192-4523-be7b-013f1c47964a','Vielka','Lyons','(890) 104-1814','vielka.lyons@risusInmi.ca','Ap #939-3921 Tempus Ave','Enim City','FL','37684');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('0f9d7ed9-483d-4d68-b947-013f1c47964b','Macey','Quinn','(946) 156-4745','macey.quinn@massarutrummagna.org','P.O. Box 130, 5971 Montes, Rd.','Non City','OR','16074');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('e6e6fa3a-5f00-4254-a076-013f1c47964c','Jeremy','Henson','(348) 943-5910','jeremy.henson@ametlorem.org','P.O. Box 129, 5651 Augue, Rd.','Donec','IN','87595');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('2da740b7-9467-46d1-aca6-013f1c47964d','Avram','Hamilton','(938) 823-1723','avram.hamilton@acipsumPhasellus.co.uk','181-761 Libero St.','Curabitur','AZ','95454');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('6f424b6d-063c-4b85-b2c6-013f1c47964e','Wanda','Mccoy','(889) 761-0883','wanda.mccoy@in.co.uk','3903 Sollicitudin Avenue','Adipiscing','VT','77331');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('2a68e04e-da3c-401b-807b-013f1c47964f','Riley','Savage','(136) 924-6445','riley.savage@vitaeorciPhasellus.net','Ap #538-9663 Enim Avenue','Dictum','OH','52785');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('750460f7-194c-4896-b51f-013f1c479650','Shelby','Mills','(490) 193-4579','shelby.mills@convallisligulaDonec.edu','P.O. Box 377, 8310 Id Road','Fusce','WI','09577');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('6879c677-b50f-4d50-8de4-013f1c479651','Beck','Morrison','(445) 454-7004','beck.morrison@orciluctus.co.uk','P.O. Box 777, 6014 Ridiculus Street','At City','NV','38096');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('870a8e13-b246-407d-82ed-013f1c479652','Reed','Albert','(324) 969-3404','reed.albert@nuncrisus.net','P.O. Box 637, 8360 Nam St.','Inville','AK','60569');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('c6cf303f-a47b-40e9-900a-013f1c479653','Daphne','Hooper','(956) 442-3863','daphne.hooper@Inat.edu','P.O. Box 198, 7996 Nunc St.','Fringilla City','TX','53410');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('ede004e8-e5cd-4aab-a13c-013f1c479654','Georgia','Haney','(429) 164-3030','georgia.haney@Donecelementum.org','Ap #802-583 Montes, Avenue','Laoreet','HI','83124');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('80b2ff13-7f6f-47c3-8502-013f1c479655','Brenna','Morrow','(859) 865-2065','brenna.morrow@Etiam.co.uk','2219 Cursus Rd.','Amet','CA','96527');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('f22e1c05-29bf-4305-9d9a-013f1c479656','Reuben','Patrick','(945) 533-1951','reuben.patrick@quis.com','4997 Quam, Rd.','Tincidunt City','GA','37692');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('ba818b5c-c1f5-474f-b218-013f1c479657','Vladimir','Pratt','(166) 510-8527','vladimir.pratt@felis.ca','Ap #549-3144 Lobortis Rd.','Nulla','VA','82051');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('af43391d-5eca-4715-bfe5-013f1c479658','Echo','Larsen','(921) 573-6588','echo.larsen@interdum.com','Ap #560-469 Non Rd.','Nec','IL','35131');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('6a3b0efb-4c23-43d3-a298-013f1c479659','Emmanuel','Nguyen','(629) 876-2320','emmanuel.nguyen@odio.edu','Ap #879-7971 Nec, Street','Placerat City','TN','61074');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('13144c4f-9a3f-487e-95b2-013f1c47965a','Chandler','Barrett','(282) 169-7830','chandler.barrett@famesac.edu','301-1867 Quis Street','Nec','AL','54062');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('c1592825-a41c-4a7f-b6a2-013f1c47965b','Kyle','Rodgers','(376) 583-5528','kyle.rodgers@uterat.com','Ap #791-9237 Convallis Ave','Interdum','LA','74380');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('90ce645e-4991-4d23-83cc-013f1c47965c','Kermit','Hamilton','(880) 539-7849','kermit.hamilton@sem.com','608 Nisi Rd.','Volutpat City','LA','26569');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('8c6a8389-23d1-4570-abd7-013f1c47965d','Halee','Phillips','(575) 380-6774','halee.phillips@dis.co.uk','955-4287 Consectetuer Rd.','Mauris City','OR','25882');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('66aa6f49-f761-4097-922e-013f1c47965e','Rogan','Davidson','(929) 558-5253','rogan.davidson@enim.edu','Ap #544-2072 Et Street','Neque City','FL','32111');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('e2e7932b-72bc-41d2-aedf-013f1c47965f','Grady','Abbott','(432) 388-1417','grady.abbott@acturpis.net','2749 Metus Avenue','Suspendisse','WA','37668');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('d2c20582-40ef-4a60-a0a3-013f1c479660','Shad','Rocha','(281) 514-3068','shad.rocha@duiFusce.net','404-6753 Facilisis Ave','Aville','KS','01567');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('a2800de6-e629-4dbb-8259-013f1c479661','Hanna','Lawson','(653) 705-1457','hanna.lawson@Aliquam.ca','364-6175 Tincidunt Street','Pharetra','VA','80436');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('042edc65-192e-40c2-8dc9-013f1c479662','Elliott','Rhodes','(283) 653-0786','elliott.rhodes@lectus.co.uk','230-7699 Scelerisque Rd.','Phasellus','GA','29773');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('c2f5bcfe-dbb2-45af-9e61-013f1c479663','Iona','Baker','(168) 424-7326','iona.baker@ataugueid.org','171 Vitae St.','Cursus City','IA','23120');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('84874157-3434-48cc-b659-013f1c479664','Sloane','Knox','(585) 279-3277','sloane.knox@nislsem.edu','8391 Imperdiet, Rd.','Tincidunt City','OH','97338');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('ad897050-6f7e-4b2c-ac3c-013f1c479665','Kadeem','Hawkins','(709) 650-4546','kadeem.hawkins@consectetuer.net','Ap #111-5843 Massa. Ave','Auctor','TX','43177');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('b134085a-e4d8-4d5a-91df-013f1c479666','Alisa','Farmer','(272) 138-1745','alisa.farmer@semmagnanec.org','P.O. Box 292, 1209 Quis St.','Penatibus','FL','11929');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('51b09a06-8d20-4a75-9078-013f1c479667','Marcia','French','(270) 574-3828','marcia.french@imperdietornare.org','Ap #110-902 Ornare Av.','Id City','HI','17800');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('e414e5dc-e3a4-4116-850b-013f1c479668','Richard','Pennington','(494) 542-9811','richard.pennington@posuerecubiliaCurae;.co.uk','8682 Dignissim St.','Sagittis City','MA','86664');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('e375b684-d152-49c7-a640-013f1c479669','Ori','Pickett','(341) 395-7156','ori.pickett@justo.ca','6924 Eleifend Av.','Tellus','KY','43609');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('f805ac2d-caba-41f4-b52a-013f1c47966a','Gary','Lott','(708) 211-0792','gary.lott@elitAliquam.co.uk','379-6043 Ut Rd.','Magna','TX','93764');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('bab58008-51db-4a69-84d1-013f1c47966b','Raven','Wells','(950) 862-9798','raven.wells@nonmagna.com','5849 Mauris St.','Diam','AK','29567');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('9d8c5bc2-769a-4ab9-9ace-013f1c47966c','Charlotte','Becker','(510) 118-7374','charlotte.becker@quamCurabitur.co.uk','P.O. Box 235, 8495 Risus. Avenue','Quam','WA','37294');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('d7e0378c-77ab-403c-a5a1-013f1c47966d','Alexa','Butler','(552) 554-3280','alexa.butler@facilisiseget.co.uk','7239 Et, Road','Tempor','TX','00883');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('d634a1a7-97c3-4373-bf55-013f1c47966e','Pascale','Fowler','(487) 913-4567','pascale.fowler@pedenec.org','3192 Laoreet Rd.','Integer','IA','10919');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('f4bce6d7-6a19-41a3-9cd8-013f1c47966f','Sandra','Kirk','(618) 597-6222','sandra.kirk@cursusvestibulumMauris.ca','Ap #910-8612 Quisque Avenue','Utville','MD','74665');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('0a54e14d-8deb-41d3-b00f-013f1c479670','Kay','Kirk','(116) 965-7370','kay.kirk@Class.com','P.O. Box 286, 5025 Donec Rd.','Interdum','LA','57214');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('14f87722-8c15-47c1-99f0-013f1c479671','Shannon','Nguyen','(998) 695-1689','shannon.nguyen@Curae;Donec.net','957-6278 Pede. Road','Erat','AK','64486');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('9c8f68ec-f65b-4d16-a919-013f1c479672','Silas','Pate','(376) 235-6524','silas.pate@sedsapienNunc.ca','P.O. Box 929, 8134 Phasellus Av.','Aliquet','HI','33271');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('23bcfc95-a3cd-4913-80b0-013f1c479673','Shaine','Mullins','(814) 528-1833','shaine.mullins@mauris.net','Ap #133-8301 Ut, Avenue','Luctus','FL','21849');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('e4d8bc78-fbbd-4504-945c-013f1c479674','Anastasia','Gill','(594) 147-8651','anastasia.gill@Aliquamornarelibero.com','P.O. Box 508, 2957 Tristique Street','Quis City','NV','42137');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('03256bb2-877d-4207-997f-013f1c479675','Alice','Herrera','(153) 558-2447','alice.herrera@montesnasceturridiculus.net','636 Mi Street','Egestas','OH','62494');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('e6d2a1d3-ceb4-4df5-8a63-013f1c479676','Simone','Mclean','(526) 161-6430','simone.mclean@auctorquis.co.uk','4595 Sem St.','Odio City','MI','38863');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('0b98919e-c77a-47ee-a51e-013f1c479677','Reuben','Boone','(245) 505-1225','reuben.boone@Nuncquis.co.uk','P.O. Box 987, 3876 Lectus Rd.','Turpis','OR','74060');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('b6860179-461c-469e-a1d9-013f1c479678','Jackson','Hoover','(268) 718-3205','jackson.hoover@egestasurnajusto.org','8615 Nunc Street','Donec','UT','35176');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('11cd5476-e492-4b6a-aa31-013f1c479679','Rigel','Small','(220) 807-9902','rigel.small@et.org','P.O. Box 838, 619 Molestie St.','Vestibulum','VT','44952');
PRINT
'*** Product Table Generation ***'

/*** Table [dbo].[Product] Script Date: Thu Jun 06 2013 18:37:00 GMT-0700 (Pacific Daylight Time) ***/
IF OBJECT_ID('[dbo].[Product]', 'U') IS NOT NULL
BEGIN
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF_Product_HasOptions]
DROP TABLE [dbo].[Product]
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product](
[Id] [int] NOT NULL,
[Type] [nvarchar](20) NOT NULL,
[Name] [nvarchar](50) NOT NULL,
[Description] [nvarchar](255) NULL,
[Image] [nvarchar](50) NULL,
[HasOptions] [bit] NOT NULL,
[IsVegetarian] [bit] NULL,
[WithTomatoSauce] [bit] NULL,
[SizeIds] [nvarchar](10) NULL,
CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED
([Id] ASC)WITH
(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Product] ADD CONSTRAINT [DF_Product_HasOptions]  DEFAULT ((1)) FOR [HasOptions]
GO

INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(1,'pizza','Plain Cheese','Your basic plain cheese pizza with no toppings.
Includes tomato sauce, mozzarella, oregano and a sprinkling of cheddar','plaincheese.jpg',0,1,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(2,'pizza','Make Your Own','Make your own
Includes tomato sauce, mozzarella, oregano and a sprinkling of cheddar','makeyourown.jpg',1,1,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(3,'pizza','Holy Smokes','Swiss, fontina, gorgonzola, mozzarella, roasted walnuts and fresh sage','holysmokes.jpg',1,1,0,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(4,'pizza','Taj Mahal','Chicken marinated in spicy Tandoori sauce, green pepper, red onion, cilantro and mozzarella','tajmahal.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(5,'pizza','Pestolante','Homemade pesto sauce, vine ripe tomatoes, feta, fresh basil, oregano and mozzarella','pestolante.jpg',1,1,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(6,'pizza','Italian Stallion','Italian sausage, roasted red peppers, caramelized onions, parmesan, tomato sauce and mozzarella','italianstallion.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(7,'pizza','Tom Terrific','Vine ripe tomatoes, garlic, fresh basil, mozzarella and cheddar','tomterrific.jpg',1,1,0,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(8,'pizza','No Cheese','Fresh mushrooms, caramelized onions, broccoli, vine ripe tomatoes, roasted red peppers, fresh basil, oregano and tomato sauce','nocheese.jpg',1,1,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(9,'pizza','Shanghai','Shredded pork marinated in a spicy hoisin style sauce, mozzarella, peanuts, green onions, jalapeÃ±os, carrots and fresh cilantro','shanghai.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(10,'pizza','Lisbon','Portuguese linguica, smoked bacon, pepperoncini, roasted red peppers, tomato sauce, mozzarella, and fresh cilantro','lisbon.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(11,'pizza','Jerusalem','Homemade hummus, vine ripe tomatoes, black olives, caramelized onions, feta, fresh basil, pepperoncini and mozzarella','jerusalem.jpg',1,1,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(12,'pizza','Greco Irish','Homemade pesto sauce, roasted potatoes, caramelized onions, feta, fresh basil, oregano and mozzarella','grecoirish.jpg',1,1,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(13,'pizza','Amadeus','Italian sausage, pepperoni, fresh mushrooms, red onions, tomato sauce, mozzarella and cheddar','amadeus.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(14,'pizza','Mama Mia','Italian sausage, pepperoni, salami, beef meatball, tomato sauce, mozzarella and cheddar','mamamia.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(15,'pizza','Hula Pie','Hawaiian pineapple, Canadian bacon, Mandarin oranges, tomato sauce, mozzarella and cheddar','hulapie.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(16,'pizza','Little Venus','Spinach, artichoke hearts, sun-dried tomatoes, feta, garlic, fresh basil, oregano and mozzarella','littlevenus.jpg',1,0,0,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(17,'pizza','Garden Gallop','Fresh mushrooms, green peppers, red onions, artichoke hearts, broccoli, vine ripe tomatoes, fresh basil, tomato sauce, mozzarella and cheddar','gardengallop.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(18,'pizza','South of the Border','Grilled chicken, black beans and salsa, black olives, red onions, vine ripe tomatoes, jalapeÃ±os, fresh cilantro and cheddar','southoftheborder.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(19,'pizza','Asian Chicken','Chicken marinated in a spicy ginger peanut sauce, peanuts, green onions, Swiss, fontina, fresh cilantro and mozzarella','asianchicken.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(20,'pizza','Chicken Coolness','Chicken marinated in a tangy ranch sauce, broccoli, red onions, Swiss, fontina, gorgonzola, mozzarella and fresh sage','chickencoolness.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(21,'pizza','Pork BBQ','Shredded pork marinated in a sweet BBQ sauce, red onions, fresh cilantro, cheddar and mozzarella','porkbbq.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(22,'salad','Caesar Salad','Crisp Romaine, parmesan and croutons','caesarsalad.jpg',1,0,0,'''7,8''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(23,'salad','Chicken Caesar Salad','Traditional Caesar with your choice of grilled or BBQ chicken','chickencaesarsalad.jpg',1,0,0,'''9''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(24,'salad','Spinach Salad','Spinach, fresh mushrooms, caramelized onions, vine ripe tomatoes, artichoke hearts and candied walnuts.','spinachsalad.jpg',1,0,0,'''7,8''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(25,'salad','Garden Salad','Red leaf lettuce, black olives, fresh mushrooms, green peppers, red onions, artichoke hearts, vine ripe tomatoes and mozzarella','gardensalad.jpg',1,0,0,'''7,8''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(26,'salad','Greek Salad','Red leaf lettuce, red onions, feta, olives and pepperoncinis','greeksalad.jpg',1,0,0,'''7,8''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(27,'salad','Chef Salad','Crisp Romaine, spiced ham, turkey, salami, gorgonzola, green onions, vine ripe tomatoes and roasted red peppers','chefsalad.jpg',1,0,0,'''9''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(28,'salad','Thai Chicken Salad','Crisp Romaine, green onions, Mandarin oranges, carrots, crispy noodles and chicken marinated in a spicy ginger peanut sauce','thaichickensalad.jpg',1,0,0,'''9''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(29,'salad','Farmer Salad','Crisp Romaine, smoked bacon, grilled chicken, vine ripe tomatoes and gorgonzola','farmersalad.jpg',1,0,0,'''9''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(30,'salad','Big Country Salad','Spinach, smoked bacon, feta, candied walnuts, caramelized onions and vine ripe tomatoes','bigcountrysalad.jpg',1,0,0,'''9''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(31,'drink','Cola','Cola','cola.jpg',0,0,0,'''10,11,12''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(32,'drink','Diet Cola','Diet Cola','dietcola.jpg',0,0,0,'''10,11,12''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(33,'drink','Root Beer','Root Beer','rootbeer.jpg',0,0,0,'''10,11,12''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(34,'drink','Cascade Fog','Cascade Fog','cascadefog.jpg',0,0,0,'''10,11,12''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(35,'drink','Dr. Popper','Dr. Popper','dr.popper.jpg',0,0,0,'''10,11,12''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(36,'drink','Lemon Spruce','Lemon Spruce','lemonspruce.jpg',0,0,0,'''10''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(37,'drink','Green Tea','Green Tea','greentea.jpg',0,0,0,'''13''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(38,'drink','Orange Juice','Orange Juice','orangejuice.jpg',0,0,0,'''14''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(39,'drink','Apple Juice','Apple Juice','applejuice.jpg',0,0,0,'''14''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(40,'drink','Energade','Energade','energade.jpg',0,0,0,'''15''');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[SizeIds])VALUES(41,'drink','Aqua H2O','Aqua H2O','aquah2o.jpg',0,0,0,'''14''');
PRINT '
*** ProductOption Table Generation ***'

/*** Table [dbo].[ProductOption] Script Date: Thu Jun 06 2013 18:37:00 GMT-0700 (Pacific Daylight Time) ***/
IF OBJECT_ID('[dbo].[ProductOption]', 'U') IS NOT NULL
BEGIN
ALTER TABLE [dbo].[ProductOption] DROP CONSTRAINT [DF_ProductOption_IsSaladOption]
ALTER TABLE [dbo].[ProductOption] DROP CONSTRAINT [DF_ProductOption_IsPizzaOption]
DROP TABLE [dbo].[ProductOption]
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductOption](
[Id] [int] NOT NULL,
[Type] [nvarchar](20) NOT NULL,
[Name] [nvarchar](50) NOT NULL,
[Factor] [int] NOT NULL,
[IsPizzaOption] [bit] NOT NULL,
[IsSaladOption] [bit] NOT NULL,
CONSTRAINT [PK_ProductOption] PRIMARY KEY CLUSTERED
([Id] ASC)WITH
(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductOption] ADD CONSTRAINT [DF_ProductOption_IsPizzaOption]  DEFAULT ((1)) FOR [IsPizzaOption]
GO
ALTER TABLE [dbo].[ProductOption] ADD CONSTRAINT [DF_ProductOption_IsSaladOption]  DEFAULT ((1)) FOR [IsSaladOption]
GO

INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(1,'crust','Classic Crust',0,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(2,'crust','Wheat Crust',0,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(3,'crust','Gluten-free Crust',0,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(4,'sauce','Tomato',0,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(5,'sauce','Pesto*',2,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(6,'sauce','Salsa',1,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(7,'sauce','Texas BBQ',1,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(8,'sauce','Hummus',1,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(9,'sauce','Hoisin',1,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(10,'sauce','Ranch',1,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(11,'sauce','Vegemite',1,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(12,'sauce','Tandoori',1,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(13,'cheese','Feta',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(14,'cheese','Fontina & Swiss',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(15,'cheese','Soy',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(16,'cheese','Cheddar',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(17,'cheese','Ricotta',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(18,'cheese','Gorgonzola',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(19,'cheese','Mozzarella',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(20,'veggie','Black Olives',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(21,'veggie','Broccoli',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(22,'veggie','Jalapenos',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(23,'veggie','Fresh Mushrooms',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(24,'veggie','Red Onions',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(25,'veggie','Artichoke Heart',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(26,'veggie','Green Onions',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(27,'veggie','Spinach',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(28,'veggie','Sun-Dried Tomatoes',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(29,'veggie','Vine Ripe Tomatoes',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(30,'veggie','Green Peppers',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(31,'veggie','Roasted Red Peppers',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(32,'veggie','Roasted Potatoes',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(33,'veggie','Hawaiian Pineapple',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(34,'veggie','Mandarin Oranges',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(35,'veggie','Walnuts',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(36,'veggie','Candied Walnuts',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(37,'veggie','Peanuts',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(38,'veggie','Pepperoncini',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(39,'veggie','Caramelized Onions',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(40,'veggie','Carrots',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(41,'meat','Pepperoni',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(42,'meat','Italian Sausage',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(43,'meat','Salami',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(44,'meat','Smoked Bacon',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(45,'meat','Canadian Bacon',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(46,'meat','BBQ Chicken*',2,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(47,'meat','Thai Chicken*',2,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(48,'meat','Grilled Chicken*',2,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(49,'meat','Beef Meatball',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(50,'meat','Shredded BBQ Pork*',2,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(51,'meat','Anchovies',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(52,'meat','Linguica',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(53,'spice','Basil',0,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(54,'spice','Cilantro',0,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(55,'spice','Garlic',0,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(56,'spice','Sage',0,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(57,'spice','Oregano',0,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(58,'saladDressing','No Dressing',0,0,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(59,'saladDressing','Vinaigrette',1,0,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(60,'saladDressing','Ranch',1,0,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(61,'saladDressing','Caesar',1,0,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(62,'saladDressing','Red Pepper Italian',1,0,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(63,'saladDressing','Bleu Cheese',1,0,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(64,'saladDressing','Sesame Oriental',1,0,1);
PRINT '
*** ProductSize Table Generation ***'

/*** Table [dbo].[ProductSize] Script Date: Thu Jun 06 2013 18:37:00 GMT-0700 (Pacific Daylight Time) ***/
IF OBJECT_ID('[dbo].[ProductSize]', 'U') IS NOT NULL
BEGIN
ALTER TABLE [dbo].[ProductSize] DROP CONSTRAINT [DF_ProductSize_IsGlutenFree]
DROP TABLE [dbo].[ProductSize]
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductSize](
[Id] [int] NOT NULL,
[Type] [nvarchar](20) NOT NULL,
[Name] [nvarchar](50) NOT NULL,
[Price] [smallmoney] NOT NULL,
[PremiumPrice] [smallmoney] NULL,
[ToppingPrice] [smallmoney] NULL,
[IsGlutenFree] [bit] NULL,
CONSTRAINT [PK_ProductSize] PRIMARY KEY CLUSTERED
([Id] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductSize]
ADD CONSTRAINT [DF_ProductSize_IsGlutenFree] DEFAULT ((0)) FOR [IsGlutenFree]
GO

INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(1,'pizza','Personal 8"',6.15,7.65,0.65,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(2,'pizza','Medium 12"',12.4,16.95,1.35,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(3,'pizza','Large 14"',14.45,20.95,1.7,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(4,'pizza','X-Large 16"',16.5,23.45,2.05,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(5,'pizza','Huge 18"',17.95,26.95,2.25,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(6,'pizza','Gluten Free 12"',16.9,21.45,1.35,1);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(7,'salad','Side',3.95,NULL,0.65,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(8,'salad','Entree',7.95,NULL,1.3,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(9,'salad','Entree',8.95,NULL,1.3,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(10,'drink','Can',1.5,NULL,NULL,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(11,'drink','20 oz',1.95,NULL,NULL,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(12,'drink','2 liter',2.75,NULL,NULL,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(13,'drink','20 oz',1.75,NULL,NULL,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(14,'drink','Serving',1.75,NULL,NULL,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(15,'drink','Serving',2,NULL,NULL,0);
PRINT '
*** OrderStatus Table Generation ***'

/*** Table [dbo].[OrderStatus] Script Date: Thu Jun 06 2013 18:37:00 GMT-0700 (Pacific Daylight Time) ***/
IF OBJECT_ID('[dbo].[OrderStatus]', 'U') IS NOT NULL
DROP TABLE [dbo].[OrderStatus]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderStatus](
[Id] [int] NOT NULL,
[Name] [nvarchar](50) NOT NULL,
CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED
([Id] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO [dbo].[OrderStatus]([Id],[Name])VALUES(1,'Ordered');
INSERT INTO [dbo].[OrderStatus]([Id],[Name])VALUES(2,'PickedUp');
INSERT INTO [dbo].[OrderStatus]([Id],[Name])VALUES(3,'Delivered');
INSERT INTO [dbo].[OrderStatus]([Id],[Name])VALUES(4,'Cancelled');
INSERT INTO [dbo].[OrderStatus]([Id],[Name])VALUES(5,'Pending');
PRINT '
*** Order Tables Generation ***'

/*** Create Order Tables Script Date: Thu Jun 06 2013 18:37:00 GMT-0700 (Pacific Daylight Time) ***/
CREATE TABLE [dbo].[Order](
[Id] [bigint] IDENTITY(1,1) NOT NULL,
[StoreId] [uniqueidentifier] NULL,
[CustomerId] [uniqueidentifier] NOT NULL,
[OrderStatusId] [int] NOT NULL,
[OrderDate] [datetime2](7) NOT NULL,
[Phone] [nvarchar](100) NULL,
[DeliveryDate] [datetime2](7) NULL,
[DeliveryCharge] [smallmoney] NULL,
[DeliveryStreet] [nvarchar](100) NULL,
[DeliveryCity] [nvarchar](100) NULL,
[DeliveryState] [nvarchar](2) NULL,
[DeliveryZip] [nvarchar](10) NULL,
[ItemsTotal] [smallmoney] NOT NULL,
CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED
([Id] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([OrderStatusId])
REFERENCES [dbo].[OrderStatus] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO

CREATE TABLE [dbo].[OrderItem](
[Id] [bigint] IDENTITY(1,1) NOT NULL,
[StoreId] [uniqueidentifier] NULL,
[OrderId] [bigint] NOT NULL,
[ProductId] [int] NOT NULL,
[ProductSizeId] [int] NOT NULL,
[Quantity] [int] NOT NULL,
[UnitPrice] [smallmoney] NOT NULL,
[TotalPrice] [smallmoney] NOT NULL,
[Instructions] [nvarchar](255) NULL,
CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED
([Id] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Order]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Product]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_ProductSize] FOREIGN KEY([ProductSizeId])
REFERENCES [dbo].[ProductSize] ([Id])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_ProductSize]
GO

CREATE TABLE [dbo].[OrderItemOption](
[Id] [bigint] IDENTITY(1,1) NOT NULL,
[StoreId] [uniqueidentifier] NULL,
[OrderItemId] [bigint] NOT NULL,
[ProductOptionId] [int] NOT NULL,
[Quantity] [int] NOT NULL,
[Price] [smallmoney] NOT NULL,
CONSTRAINT [PK_OrderItemOption] PRIMARY KEY CLUSTERED
([Id] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderItemOption]  WITH CHECK ADD  CONSTRAINT [FK_OrderItemOption_OrderItem] FOREIGN KEY([OrderItemId])
REFERENCES [dbo].[OrderItem] ([Id])
GO
ALTER TABLE [dbo].[OrderItemOption] CHECK CONSTRAINT [FK_OrderItemOption_OrderItem]
GO
ALTER TABLE [dbo].[OrderItemOption]  WITH CHECK ADD  CONSTRAINT [FK_OrderItemOption_ProductOption] FOREIGN KEY([ProductOptionId])
REFERENCES [dbo].[ProductOption] ([Id])
GO
ALTER TABLE [dbo].[OrderItemOption] CHECK CONSTRAINT [FK_OrderItemOption_ProductOption]
GO

SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(1,'7462c7c8-e24c-484a-8f93-013f1c479615',2,'2013-03-12T17:30:00.000Z','(954) 594-9355','2013-03-12T18:07:00.000Z',0,NULL,NULL,NULL,NULL,31.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1,1,3,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1,1,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(2,1,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(3,1,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(4,1,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(2,1,22,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(5,2,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(3,1,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(2,'7462c7c8-e24c-484a-8f93-013f1c479615',2,'2013-04-15T01:50:00.000Z','(954) 594-9355','2013-04-15T02:34:00.000Z',0,NULL,NULL,NULL,NULL,31.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(4,2,4,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(6,4,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(7,4,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(8,4,15,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(9,4,44,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(3,'7462c7c8-e24c-484a-8f93-013f1c479615',3,'2013-05-05T23:30:00.000Z','(954) 594-9355','2013-05-06T00:07:00.000Z',2,'P.O. Box 914, 9990 Dapibus St.','Quam','OH','55154',66.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(5,3,5,4,2,23.45,55.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(10,5,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(11,5,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(12,5,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(6,3,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(13,6,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(14,6,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(7,3,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(4,'7462c7c8-e24c-484a-8f93-013f1c479615',2,'2013-05-25T20:10:00.000Z','(954) 594-9355','2013-05-25T20:50:00.000Z',0,NULL,NULL,NULL,NULL,15.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(8,4,2,2,1,12.4,15.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(15,8,45,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(16,8,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(5,'8f64b183-a881-42f5-9c1d-013f1c479616',3,'2013-04-23T16:45:00.000Z','(203) 652-0465','2013-04-23T17:28:00.000Z',2,'324-6843 Dolor Ave','Quis','FL','28034',29.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(9,5,6,2,1,16.95,22.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(17,9,46,2,5.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(10,5,24,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(18,10,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(19,10,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(11,5,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(6,'8f64b183-a881-42f5-9c1d-013f1c479616',2,'2013-05-14T17:15:00.000Z','(203) 652-0465','2013-05-14T17:50:00.000Z',0,NULL,NULL,NULL,NULL,40.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(12,6,2,5,1,17.95,31.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(20,12,20,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(21,12,21,2,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(22,12,47,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(23,12,18,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(24,12,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(13,6,25,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(25,13,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(26,13,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(14,6,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(7,'5a2ff04d-e9ae-4de1-9f4e-013f1c479617',2,'2013-03-20T16:05:00.000Z','(265) 520-8354','2013-03-20T16:49:00.000Z',0,NULL,NULL,NULL,NULL,20.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(15,7,7,3,1,20.95,20.95,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(8,'11da4696-cea3-4a6d-8e83-013f1c479618',2,'2013-03-02T03:40:00.000Z','(761) 224-2078','2013-03-02T04:18:00.000Z',0,NULL,NULL,NULL,NULL,57.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(16,8,8,3,1,20.95,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(27,16,22,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(17,8,9,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(28,17,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(29,17,23,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(30,17,48,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(18,8,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(19,8,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(9,'11da4696-cea3-4a6d-8e83-013f1c479618',2,'2013-03-25T21:45:00.000Z','(761) 224-2078','2013-03-25T22:20:00.000Z',0,NULL,NULL,NULL,NULL,38.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(20,9,1,4,2,16.5,33,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(21,9,26,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(31,21,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(32,21,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(22,9,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(10,'11da4696-cea3-4a6d-8e83-013f1c479618',2,'2013-03-25T23:20:00.000Z','(761) 224-2078','2013-03-25T23:59:00.000Z',0,NULL,NULL,NULL,NULL,50);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(23,10,10,2,2,16.95,39.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(33,23,13,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(34,23,24,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(24,10,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(35,24,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(36,24,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(25,10,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(11,'11da4696-cea3-4a6d-8e83-013f1c479618',2,'2013-04-01T20:45:00.000Z','(761) 224-2078','2013-04-01T21:18:00.000Z',0,NULL,NULL,NULL,NULL,10.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(26,11,28,9,1,8.95,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(37,26,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(38,26,14,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(12,'11da4696-cea3-4a6d-8e83-013f1c479618',3,'2013-04-06T01:45:00.000Z','(761) 224-2078','2013-04-06T02:24:00.000Z',2,'Ap #128-7062 Viverra. Road','Penatibus','PA','82092',19.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(27,12,11,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(39,27,15,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(40,27,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(13,'11da4696-cea3-4a6d-8e83-013f1c479618',3,'2013-04-12T23:10:00.000Z','(761) 224-2078','2013-04-12T23:46:00.000Z',2,'Ap #128-7062 Viverra. Road','Penatibus','PA','82092',99.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(28,13,12,4,1,23.45,27.55,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(41,28,49,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(42,28,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(43,28,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(29,13,2,4,2,16.5,49.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(44,29,50,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(45,29,25,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(46,29,17,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(30,13,2,2,1,12.4,15.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(47,30,51,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(48,30,52,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(31,13,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(32,13,40,15,2,2,4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(33,13,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(14,'11da4696-cea3-4a6d-8e83-013f1c479618',2,'2013-05-14T21:50:00.000Z','(761) 224-2078','2013-05-14T22:36:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(34,14,29,9,1,8.95,8.95,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(49,34,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(15,'c56f1005-28c6-454d-9525-013f1c479619',2,'2013-03-12T23:35:00.000Z','(691) 714-1449','2013-03-13T00:19:00.000Z',0,NULL,NULL,NULL,NULL,72.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(35,15,13,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(36,15,2,3,2,14.45,42.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(50,36,26,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(51,36,27,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(52,36,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(53,36,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(37,15,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(38,15,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(16,'c56f1005-28c6-454d-9525-013f1c479619',2,'2013-04-05T17:15:00.000Z','(691) 714-1449','2013-04-05T17:53:00.000Z',0,NULL,NULL,NULL,NULL,110.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(39,16,14,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(40,16,15,5,1,26.95,29.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(54,40,19,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(41,16,16,5,2,26.95,53.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(55,41,4,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(42,16,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(43,16,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(44,16,35,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(17,'c56f1005-28c6-454d-9525-013f1c479619',3,'2013-05-12T17:20:00.000Z','(691) 714-1449','2013-05-12T18:00:00.000Z',2,'3100 Nunc St.','Nam','IL','57878',56.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(45,17,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(56,45,41,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(57,45,42,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(58,45,43,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(46,17,2,4,1,16.5,28.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(59,46,44,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(60,46,28,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(61,46,45,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(62,46,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(63,46,46,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(47,17,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(48,17,37,13,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(18,'975c4a14-fae9-4e80-b6e5-013f1c47961a',2,'2013-03-12T21:00:00.000Z','(126) 144-1855','2013-03-12T21:34:00.000Z',0,NULL,NULL,NULL,NULL,57.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(49,18,17,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(50,18,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(64,50,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(65,50,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(51,18,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(19,'975c4a14-fae9-4e80-b6e5-013f1c47961a',2,'2013-05-03T19:50:00.000Z','(126) 144-1855','2013-05-03T20:27:00.000Z',0,NULL,NULL,NULL,NULL,30.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(52,19,18,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(53,19,22,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(66,53,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(54,19,39,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(20,'975c4a14-fae9-4e80-b6e5-013f1c47961a',2,'2013-05-10T20:35:00.000Z','(126) 144-1855','2013-05-10T21:16:00.000Z',0,NULL,NULL,NULL,NULL,16.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(55,20,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(21,'975c4a14-fae9-4e80-b6e5-013f1c47961a',2,'2013-05-10T20:35:00.000Z','(126) 144-1855','2013-05-10T21:10:00.000Z',0,NULL,NULL,NULL,NULL,134.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(56,21,19,4,2,23.45,59.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(67,56,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(68,56,47,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(57,21,20,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(69,57,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(70,57,29,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(71,57,48,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(72,57,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(58,21,21,3,2,20.95,41.9,'hold the liver');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(59,21,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(60,21,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(61,21,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(22,'975c4a14-fae9-4e80-b6e5-013f1c47961a',2,'2013-05-14T23:35:00.000Z','(126) 144-1855','2013-05-15T00:13:00.000Z',0,NULL,NULL,NULL,NULL,48.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(62,22,2,2,1,12.4,13.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(73,62,16,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(63,22,3,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(74,63,30,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(75,63,49,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(76,63,50,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(77,63,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(64,22,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(65,22,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(23,'009a0942-b1fd-4618-a7de-013f1c47961b',2,'2013-03-05T20:20:00.000Z','(147) 741-1696','2013-03-05T21:01:00.000Z',0,NULL,NULL,NULL,NULL,39.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(66,23,2,3,2,14.45,39.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(78,66,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(79,66,51,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(80,66,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(81,66,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(24,'009a0942-b1fd-4618-a7de-013f1c47961b',2,'2013-04-01T17:20:00.000Z','(147) 741-1696','2013-04-01T17:58:00.000Z',0,NULL,NULL,NULL,NULL,36.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(67,24,4,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(82,67,31,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(83,67,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(84,67,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(68,24,23,9,1,8.95,13.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(85,68,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(86,68,62,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(87,68,19,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(88,68,41,2,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(89,68,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(69,24,34,11,2,1.95,3.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(25,'009a0942-b1fd-4618-a7de-013f1c47961b',2,'2013-04-02T02:00:00.000Z','(147) 741-1696','2013-04-02T02:40:00.000Z',0,NULL,NULL,NULL,NULL,124.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(70,25,5,3,2,20.95,41.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(71,25,6,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(90,71,42,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(91,71,32,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(72,25,7,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(92,72,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(93,72,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(94,72,13,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(73,25,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(74,25,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(75,25,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(26,'009a0942-b1fd-4618-a7de-013f1c47961b',3,'2013-04-18T01:20:00.000Z','(147) 741-1696','2013-04-18T02:05:00.000Z',2,'P.O. Box 880, 3605 Nec, Ave','Dolor City','MS','56403',37.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(76,26,8,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(95,76,33,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(96,76,14,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(77,26,24,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(97,77,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(98,77,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(78,26,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(27,'009a0942-b1fd-4618-a7de-013f1c47961b',2,'2013-04-23T22:15:00.000Z','(147) 741-1696','2013-04-23T22:48:00.000Z',0,NULL,NULL,NULL,NULL,23.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(79,27,2,3,1,14.45,16.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(99,79,34,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(80,27,25,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(100,80,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(101,80,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(81,27,39,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(28,'009a0942-b1fd-4618-a7de-013f1c47961b',2,'2013-05-14T20:20:00.000Z','(147) 741-1696','2013-05-14T20:58:00.000Z',0,NULL,NULL,NULL,NULL,22.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(82,28,9,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(83,28,26,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(102,83,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(84,28,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(29,'009a0942-b1fd-4618-a7de-013f1c47961b',2,'2013-05-14T21:50:00.000Z','(147) 741-1696','2013-05-14T22:31:00.000Z',0,NULL,NULL,NULL,NULL,27.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(85,29,10,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(86,29,2,2,1,12.4,16.45,'hold the liver');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(103,86,15,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(104,86,16,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(87,29,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(88,29,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(30,'009a0942-b1fd-4618-a7de-013f1c47961b',3,'2013-05-20T19:05:00.000Z','(147) 741-1696','2013-05-20T19:46:00.000Z',2,'P.O. Box 880, 3605 Nec, Ave','Dolor City','MS','56403',19.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(89,30,11,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(105,89,44,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(106,89,35,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(31,'718d7784-c177-4c54-a2d3-013f1c47961d',2,'2013-03-12T19:00:00.000Z','(859) 624-7317','2013-03-12T19:35:00.000Z',0,NULL,NULL,NULL,NULL,33.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(90,31,12,5,1,26.95,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(107,90,45,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(108,90,46,1,4.5);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(32,'718d7784-c177-4c54-a2d3-013f1c47961d',2,'2013-04-01T20:30:00.000Z','(859) 624-7317','2013-04-01T21:08:00.000Z',0,NULL,NULL,NULL,NULL,70.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(91,32,13,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(109,91,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(110,91,17,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(92,32,14,5,1,26.95,35.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(111,92,48,2,9);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(93,32,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(94,32,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(33,'718d7784-c177-4c54-a2d3-013f1c47961d',3,'2013-04-06T01:40:00.000Z','(859) 624-7317','2013-04-06T02:21:00.000Z',2,'P.O. Box 866, 3666 Phasellus Rd.','Rutrum','MN','69800',14.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(95,33,1,3,1,14.45,14.45,'hold the liver');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(34,'718d7784-c177-4c54-a2d3-013f1c47961d',2,'2013-04-13T02:00:00.000Z','(859) 624-7317','2013-04-13T02:44:00.000Z',0,NULL,NULL,NULL,NULL,20.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(96,34,15,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(35,'718d7784-c177-4c54-a2d3-013f1c47961d',3,'2013-04-14T21:35:00.000Z','(859) 624-7317','2013-04-14T22:15:00.000Z',2,'P.O. Box 866, 3666 Phasellus Rd.','Rutrum','MN','69800',8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(97,35,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(112,97,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(113,97,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(36,'718d7784-c177-4c54-a2d3-013f1c47961d',2,'2013-05-03T21:40:00.000Z','(859) 624-7317','2013-05-03T22:19:00.000Z',0,NULL,NULL,NULL,NULL,31.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(98,36,16,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(114,98,49,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(115,98,18,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(116,98,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(117,98,36,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(118,98,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(37,'718d7784-c177-4c54-a2d3-013f1c47961d',2,'2013-05-04T00:05:00.000Z','(859) 624-7317','2013-05-04T00:38:00.000Z',0,NULL,NULL,NULL,NULL,41.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(99,37,17,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(119,99,50,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(120,99,37,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(100,37,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(121,100,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(101,37,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(38,'718d7784-c177-4c54-a2d3-013f1c47961d',2,'2013-05-20T23:35:00.000Z','(859) 624-7317','2013-05-21T00:20:00.000Z',0,NULL,NULL,NULL,NULL,12.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(102,38,29,9,1,8.95,12.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(122,102,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(123,102,13,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(124,102,38,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(125,102,14,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(126,102,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(39,'718d7784-c177-4c54-a2d3-013f1c47961d',2,'2013-05-23T19:30:00.000Z','(859) 624-7317','2013-05-23T20:05:00.000Z',0,NULL,NULL,NULL,NULL,22.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(103,39,18,3,1,20.95,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(127,103,15,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(40,'0ff9f486-5ac6-40a8-a25c-013f1c47961e',2,'2013-03-21T00:30:00.000Z','(601) 563-9471','2013-03-21T01:11:00.000Z',0,NULL,NULL,NULL,NULL,33.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(104,40,19,2,2,16.95,33.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(41,'0ff9f486-5ac6-40a8-a25c-013f1c47961e',2,'2013-03-23T20:20:00.000Z','(601) 563-9471','2013-03-23T21:04:00.000Z',0,NULL,NULL,NULL,NULL,21);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(105,41,20,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(128,105,39,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(129,105,40,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(130,105,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(42,'0ff9f486-5ac6-40a8-a25c-013f1c47961e',3,'2013-04-26T00:10:00.000Z','(601) 563-9471','2013-04-26T00:47:00.000Z',2,'Ap #171-7323 Mattis Av.','Erat','OK','02283',8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(106,42,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(131,106,62,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(43,'0ff9f486-5ac6-40a8-a25c-013f1c47961e',2,'2013-05-25T17:10:00.000Z','(601) 563-9471','2013-05-25T17:49:00.000Z',0,NULL,NULL,NULL,NULL,55.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(107,43,21,4,2,23.45,55.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(132,107,20,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(133,107,51,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(134,107,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(44,'651d1aa8-e7f6-48f6-ae92-013f1c47961f',3,'2013-03-18T00:05:00.000Z','(880) 947-3420','2013-03-18T00:46:00.000Z',2,'Ap #442-177 Volutpat Avenue','Egestas City','CT','42871',52.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(108,44,3,1,1,7.65,9.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(135,108,52,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(136,108,21,2,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(109,44,4,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(110,44,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(111,44,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(112,44,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(113,44,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(45,'651d1aa8-e7f6-48f6-ae92-013f1c47961f',2,'2013-03-21T00:00:00.000Z','(880) 947-3420','2013-03-21T00:42:00.000Z',0,NULL,NULL,NULL,NULL,79.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(114,45,1,4,2,16.5,33,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(115,45,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(137,115,16,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(138,115,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(139,115,22,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(116,45,5,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(140,116,23,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(141,116,42,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(142,116,24,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(117,45,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(118,45,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(119,45,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(46,'651d1aa8-e7f6-48f6-ae92-013f1c47961f',3,'2013-03-25T19:30:00.000Z','(880) 947-3420','2013-03-25T20:10:00.000Z',2,'Ap #442-177 Volutpat Avenue','Egestas City','CT','42871',39.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(120,46,2,3,2,14.45,39.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(143,120,25,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(144,120,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(145,120,44,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(146,120,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(47,'651d1aa8-e7f6-48f6-ae92-013f1c47961f',3,'2013-04-01T16:50:00.000Z','(880) 947-3420','2013-04-01T17:27:00.000Z',2,'Ap #442-177 Volutpat Avenue','Egestas City','CT','42871',49);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(121,47,6,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(122,47,7,4,1,23.45,27.55,'no pickles');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(147,122,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(148,122,45,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(123,47,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(124,47,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(48,'651d1aa8-e7f6-48f6-ae92-013f1c47961f',2,'2013-04-01T23:00:00.000Z','(880) 947-3420','2013-04-01T23:32:00.000Z',0,NULL,NULL,NULL,NULL,48.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(125,48,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(126,48,8,1,1,7.65,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(149,126,46,2,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(150,126,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(127,48,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(128,48,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(129,48,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(130,48,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(49,'651d1aa8-e7f6-48f6-ae92-013f1c47961f',2,'2013-04-12T23:15:00.000Z','(880) 947-3420','2013-04-12T23:55:00.000Z',0,NULL,NULL,NULL,NULL,31.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(131,49,9,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(151,131,18,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(152,131,26,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(132,49,22,8,1,7.95,9.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(153,132,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(154,132,19,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(133,49,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(50,'651d1aa8-e7f6-48f6-ae92-013f1c47961f',2,'2013-04-23T17:40:00.000Z','(880) 947-3420','2013-04-23T18:26:00.000Z',0,NULL,NULL,NULL,NULL,40.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(134,50,10,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(135,50,23,9,1,8.95,15.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(155,135,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(156,135,47,2,5.2);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(157,135,27,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(158,135,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(136,50,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(51,'651d1aa8-e7f6-48f6-ae92-013f1c47961f',2,'2013-05-11T02:15:00.000Z','(880) 947-3420','2013-05-11T02:56:00.000Z',0,NULL,NULL,NULL,NULL,56.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(137,51,11,2,1,16.95,26.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(159,137,48,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(160,137,49,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(161,137,50,2,5.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(162,137,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(138,51,12,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(139,51,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(140,51,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(52,'651d1aa8-e7f6-48f6-ae92-013f1c47961f',2,'2013-05-12T23:20:00.000Z','(880) 947-3420','2013-05-13T00:00:00.000Z',0,NULL,NULL,NULL,NULL,35.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(141,52,13,3,1,20.95,29.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(163,141,5,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(164,141,28,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(165,141,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(166,141,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(142,52,24,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(167,142,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(143,52,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(53,'0e2a4fee-380b-42d3-8b78-013f1c479620',2,'2013-03-18T00:20:00.000Z','(298) 393-0372','2013-03-18T00:52:00.000Z',0,NULL,NULL,NULL,NULL,63.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(144,53,2,4,2,16.5,53.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(168,144,6,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(169,144,51,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(170,144,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(171,144,52,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(172,144,29,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(173,144,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(145,53,25,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(174,145,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(175,145,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(146,53,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(54,'0e2a4fee-380b-42d3-8b78-013f1c479620',2,'2013-03-25T19:40:00.000Z','(298) 393-0372','2013-03-25T20:28:00.000Z',0,NULL,NULL,NULL,NULL,30.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(147,54,14,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(148,54,26,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(176,148,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(177,148,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(149,54,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(55,'0e2a4fee-380b-42d3-8b78-013f1c479620',2,'2013-04-01T22:20:00.000Z','(298) 393-0372','2013-04-01T23:03:00.000Z',0,NULL,NULL,NULL,NULL,69.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(150,55,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(178,150,30,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(179,150,41,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(180,150,42,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(151,55,15,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(181,151,7,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(182,151,43,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(183,151,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(152,55,16,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(184,152,15,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(185,152,31,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(186,152,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(153,55,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(154,55,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(155,55,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(56,'0e2a4fee-380b-42d3-8b78-013f1c479620',3,'2013-05-05T23:50:00.000Z','(298) 393-0372','2013-05-06T00:26:00.000Z',2,'P.O. Box 902, 5276 Semper St.','Rhoncus City','ME','86063',29.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(156,56,17,1,1,7.65,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(187,156,44,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(188,156,45,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(157,56,27,9,2,8.95,18.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(189,157,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(190,157,62,1,0.45);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(158,56,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(57,'0e2a4fee-380b-42d3-8b78-013f1c479620',2,'2013-05-12T22:45:00.000Z','(298) 393-0372','2013-05-12T23:25:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(159,57,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(191,159,63,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(58,'0e2a4fee-380b-42d3-8b78-013f1c479620',2,'2013-05-14T23:50:00.000Z','(298) 393-0372','2013-05-15T00:25:00.000Z',0,NULL,NULL,NULL,NULL,37.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(160,58,2,4,2,16.5,37.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(192,160,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(193,160,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(59,'0e2a4fee-380b-42d3-8b78-013f1c479620',2,'2013-05-15T01:35:00.000Z','(298) 393-0372','2013-05-15T02:12:00.000Z',0,NULL,NULL,NULL,NULL,59.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(161,59,1,3,2,14.45,28.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(162,59,2,4,1,16.5,26.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(194,162,32,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(195,162,46,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(196,162,47,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(163,59,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(164,59,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(60,'0e2a4fee-380b-42d3-8b78-013f1c479620',2,'2013-05-23T20:45:00.000Z','(298) 393-0372','2013-05-23T21:21:00.000Z',0,NULL,NULL,NULL,NULL,67.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(165,60,18,5,1,26.95,35.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(197,165,33,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(198,165,34,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(199,165,48,1,4.5);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(166,60,19,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(200,166,35,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(201,166,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(202,166,49,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(167,60,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(168,60,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(61,'db929abb-e670-4aa8-9ee2-013f1c479621',2,'2013-04-04T01:50:00.000Z','(437) 367-6613','2013-04-04T02:23:00.000Z',0,NULL,NULL,NULL,NULL,20.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(169,61,20,3,1,20.95,20.95,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(62,'db929abb-e670-4aa8-9ee2-013f1c479621',2,'2013-04-13T00:40:00.000Z','(437) 367-6613','2013-04-13T01:26:00.000Z',0,NULL,NULL,NULL,NULL,19.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(170,62,2,2,1,12.4,19.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(203,170,50,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(204,170,36,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(205,170,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(206,170,37,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(207,170,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(63,'db929abb-e670-4aa8-9ee2-013f1c479621',2,'2013-05-05T21:05:00.000Z','(437) 367-6613','2013-05-05T21:45:00.000Z',0,NULL,NULL,NULL,NULL,26.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(171,63,21,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(64,'db929abb-e670-4aa8-9ee2-013f1c479621',2,'2013-05-10T22:35:00.000Z','(437) 367-6613','2013-05-10T23:13:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(172,64,29,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(208,172,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(209,172,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(65,'db929abb-e670-4aa8-9ee2-013f1c479621',2,'2013-05-23T23:10:00.000Z','(437) 367-6613','2013-05-23T23:47:00.000Z',0,NULL,NULL,NULL,NULL,47.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(173,65,3,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(210,173,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(211,173,51,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(174,65,30,9,2,8.95,17.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(212,174,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(175,65,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(66,'dde19a04-84b1-4452-9612-013f1c479622',3,'2013-03-01T17:50:00.000Z','(574) 847-4231','2013-03-01T18:28:00.000Z',2,'712-6613 Orci Ave','Nulla City','MS','05332',5.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(176,66,22,7,1,3.95,5.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(213,176,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(214,176,13,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(215,176,14,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(216,176,38,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(217,176,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(67,'dde19a04-84b1-4452-9612-013f1c479622',2,'2013-03-12T22:20:00.000Z','(574) 847-4231','2013-03-12T23:03:00.000Z',0,NULL,NULL,NULL,NULL,38.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(177,67,4,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(218,177,52,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(219,177,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(178,67,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(220,178,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(221,178,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(179,67,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(68,'dde19a04-84b1-4452-9612-013f1c479622',2,'2013-04-01T23:45:00.000Z','(574) 847-4231','2013-04-02T00:22:00.000Z',0,NULL,NULL,NULL,NULL,64.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(180,68,5,3,2,20.95,41.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(181,68,6,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(182,68,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(183,68,31,11,2,1.95,3.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(69,'dde19a04-84b1-4452-9612-013f1c479622',2,'2013-04-11T01:45:00.000Z','(574) 847-4231','2013-04-11T02:24:00.000Z',0,NULL,NULL,NULL,NULL,66.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(184,69,7,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(222,184,15,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(223,184,41,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(224,184,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(185,69,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(186,69,8,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(225,186,16,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(226,186,42,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(187,69,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(188,69,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(189,69,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(70,'dde19a04-84b1-4452-9612-013f1c479622',3,'2013-04-17T16:50:00.000Z','(574) 847-4231','2013-04-17T17:31:00.000Z',2,'712-6613 Orci Ave','Nulla City','MS','05332',49.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(190,70,9,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(191,70,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(227,191,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(228,191,44,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(229,191,45,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(192,70,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(193,70,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(71,'dde19a04-84b1-4452-9612-013f1c479622',2,'2013-04-21T01:35:00.000Z','(574) 847-4231','2013-04-21T02:15:00.000Z',0,NULL,NULL,NULL,NULL,14.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(194,71,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(72,'dde19a04-84b1-4452-9612-013f1c479622',2,'2013-04-23T19:40:00.000Z','(574) 847-4231','2013-04-23T20:17:00.000Z',0,NULL,NULL,NULL,NULL,70.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(195,72,10,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(230,195,46,2,6.8);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(231,195,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(196,72,11,2,2,16.95,39.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(232,196,8,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(233,196,17,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(197,72,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(198,72,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(73,'dde19a04-84b1-4452-9612-013f1c479622',2,'2013-05-17T23:45:00.000Z','(574) 847-4231','2013-05-18T00:22:00.000Z',0,NULL,NULL,NULL,NULL,33.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(199,73,12,5,1,26.95,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(234,199,47,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(235,199,39,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(236,199,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(74,'dde19a04-84b1-4452-9612-013f1c479622',2,'2013-05-18T00:50:00.000Z','(574) 847-4231','2013-05-18T01:24:00.000Z',0,NULL,NULL,NULL,NULL,7.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(200,74,13,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(75,'21829039-ee75-4865-b84f-013f1c479623',2,'2013-03-01T23:10:00.000Z','(310) 705-4577','2013-03-01T23:47:00.000Z',0,NULL,NULL,NULL,NULL,64.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(201,75,14,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(202,75,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(203,75,15,2,1,16.95,23.7,'put all the anchovies on one half, mushrooms on the other half');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(237,203,48,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(238,203,40,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(239,203,20,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(204,75,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(205,75,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(206,75,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(76,'21829039-ee75-4865-b84f-013f1c479623',3,'2013-03-13T01:50:00.000Z','(310) 705-4577','2013-03-13T02:31:00.000Z',2,'2277 Donec Rd.','Mollis','KY','75839',41.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(207,76,16,5,1,26.95,31.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(240,207,49,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(241,207,21,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(242,207,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(208,76,24,8,1,7.95,7.95,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(243,208,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(244,208,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(209,76,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(77,'21829039-ee75-4865-b84f-013f1c479623',2,'2013-03-18T00:05:00.000Z','(310) 705-4577','2013-03-18T00:41:00.000Z',0,NULL,NULL,NULL,NULL,8.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(210,77,2,1,1,6.15,8.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(245,210,18,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(246,210,50,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(247,210,51,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(248,210,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(78,'21829039-ee75-4865-b84f-013f1c479623',2,'2013-03-18T01:20:00.000Z','(310) 705-4577','2013-03-18T02:01:00.000Z',0,NULL,NULL,NULL,NULL,16.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(211,78,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(79,'21829039-ee75-4865-b84f-013f1c479623',2,'2013-04-02T00:40:00.000Z','(310) 705-4577','2013-04-02T01:19:00.000Z',0,NULL,NULL,NULL,NULL,55.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(212,79,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(213,79,17,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(249,213,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(250,213,22,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(214,79,18,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(215,79,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(216,79,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(217,79,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(80,'21829039-ee75-4865-b84f-013f1c479623',2,'2013-05-05T23:00:00.000Z','(310) 705-4577','2013-05-05T23:37:00.000Z',0,NULL,NULL,NULL,NULL,37.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(218,80,19,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(251,218,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(252,218,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(253,218,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(219,80,25,8,1,7.95,10.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(254,219,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(255,219,23,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(256,219,43,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(220,80,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(81,'21829039-ee75-4865-b84f-013f1c479623',2,'2013-05-13T00:45:00.000Z','(310) 705-4577','2013-05-13T01:24:00.000Z',0,NULL,NULL,NULL,NULL,42.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(221,81,20,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(257,221,44,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(258,221,24,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(259,221,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(222,81,26,8,1,7.95,13.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(260,222,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(261,222,25,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(262,222,26,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(263,222,45,2,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(264,222,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(223,81,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(82,'fa539487-c572-4045-a6bf-013f1c479624',2,'2013-03-05T22:35:00.000Z','(657) 854-8183','2013-03-05T23:14:00.000Z',0,NULL,NULL,NULL,NULL,23.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(224,82,27,9,2,8.95,23.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(265,224,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(266,224,19,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(267,224,27,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(268,224,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(83,'fa539487-c572-4045-a6bf-013f1c479624',2,'2013-03-06T00:10:00.000Z','(657) 854-8183','2013-03-06T00:49:00.000Z',0,NULL,NULL,NULL,NULL,44.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(225,83,21,2,2,16.95,33.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(226,83,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(269,226,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(227,83,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(84,'fa539487-c572-4045-a6bf-013f1c479624',2,'2013-04-17T21:20:00.000Z','(657) 854-8183','2013-04-17T22:05:00.000Z',0,NULL,NULL,NULL,NULL,16.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(228,84,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(85,'fa539487-c572-4045-a6bf-013f1c479624',2,'2013-04-23T20:35:00.000Z','(657) 854-8183','2013-04-23T21:09:00.000Z',0,NULL,NULL,NULL,NULL,108);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(229,85,3,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(270,229,9,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(271,229,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(272,229,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(230,85,4,3,2,20.95,52.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(273,230,28,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(274,230,46,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(275,230,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(231,85,5,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(276,231,47,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(277,231,14,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(232,85,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(233,85,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(234,85,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(86,'fa539487-c572-4045-a6bf-013f1c479624',2,'2013-04-23T23:30:00.000Z','(657) 854-8183','2013-04-24T00:08:00.000Z',0,NULL,NULL,NULL,NULL,42.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(235,86,6,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(278,235,29,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(279,235,15,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(280,235,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(236,86,7,1,1,7.65,11.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(281,236,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(282,236,48,2,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(283,236,16,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(284,236,49,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(285,236,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(237,86,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(238,86,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(87,'fa539487-c572-4045-a6bf-013f1c479624',2,'2013-05-02T02:50:00.000Z','(657) 854-8183','2013-05-02T03:33:00.000Z',0,NULL,NULL,NULL,NULL,29.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(239,87,8,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(286,239,50,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(287,239,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(288,239,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(88,'fa539487-c572-4045-a6bf-013f1c479624',2,'2013-05-10T23:10:00.000Z','(657) 854-8183','2013-05-10T23:48:00.000Z',0,NULL,NULL,NULL,NULL,33.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(240,88,2,3,1,14.45,22.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(289,240,51,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(290,240,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(291,240,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(292,240,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(293,240,30,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(294,240,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(241,88,29,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(295,241,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(242,88,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(89,'fa539487-c572-4045-a6bf-013f1c479624',3,'2013-05-25T22:45:00.000Z','(657) 854-8183','2013-05-25T23:23:00.000Z',2,'4814 Nunc. St.','Nec','AK','39498',31.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(243,89,9,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(244,89,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(296,244,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(297,244,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(245,89,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(90,'75b02196-60d3-476c-8c42-013f1c479625',2,'2013-03-12T17:05:00.000Z','(134) 602-2513','2013-03-12T17:45:00.000Z',0,NULL,NULL,NULL,NULL,56);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(246,90,10,4,1,23.45,31.65,'no pickles');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(298,246,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(299,246,42,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(300,246,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(301,246,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(302,246,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(247,90,11,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(303,247,44,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(304,247,14,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(248,90,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(249,90,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(91,'75b02196-60d3-476c-8c42-013f1c479625',3,'2013-03-14T17:30:00.000Z','(134) 602-2513','2013-03-14T18:01:00.000Z',2,'580-9933 Ornare St.','Fusce','MT','68017',31.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(250,91,12,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(251,91,22,8,1,7.95,7.95,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(305,251,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(306,251,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(252,91,36,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(92,'75b02196-60d3-476c-8c42-013f1c479625',2,'2013-03-20T21:15:00.000Z','(134) 602-2513','2013-03-20T21:53:00.000Z',0,NULL,NULL,NULL,NULL,40.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(253,92,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(254,92,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(307,254,15,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(308,254,16,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(309,254,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(255,92,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(256,92,38,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(93,'75b02196-60d3-476c-8c42-013f1c479625',2,'2013-03-20T23:00:00.000Z','(134) 602-2513','2013-03-20T23:42:00.000Z',0,NULL,NULL,NULL,NULL,28.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(257,93,2,4,1,16.5,28.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(310,257,45,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(311,257,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(312,257,46,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(313,257,31,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(314,257,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(94,'75b02196-60d3-476c-8c42-013f1c479625',2,'2013-04-14T23:45:00.000Z','(134) 602-2513','2013-04-15T00:24:00.000Z',0,NULL,NULL,NULL,NULL,18.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(258,94,13,2,1,16.95,18.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(315,258,32,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(316,258,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(95,'75b02196-60d3-476c-8c42-013f1c479625',2,'2013-05-10T23:15:00.000Z','(134) 602-2513','2013-05-11T00:03:00.000Z',0,NULL,NULL,NULL,NULL,31.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(259,95,14,5,1,26.95,31.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(317,259,33,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(318,259,18,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(319,259,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(96,'7f2aa755-ecb0-4f80-ad01-013f1c479626',2,'2013-03-06T00:30:00.000Z','(692) 253-4895','2013-03-06T01:03:00.000Z',0,NULL,NULL,NULL,NULL,80.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(260,96,15,3,2,20.95,55.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(320,260,34,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(321,260,35,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(322,260,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(323,260,36,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(324,260,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(261,96,16,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(325,261,37,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(326,261,47,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(327,261,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(262,96,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(263,96,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(97,'7f2aa755-ecb0-4f80-ad01-013f1c479626',2,'2013-03-11T00:50:00.000Z','(692) 253-4895','2013-03-11T01:31:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(264,97,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(328,264,62,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(98,'7f2aa755-ecb0-4f80-ad01-013f1c479626',2,'2013-04-06T00:00:00.000Z','(692) 253-4895','2013-04-06T00:31:00.000Z',0,NULL,NULL,NULL,NULL,26.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(265,98,17,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(266,98,24,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(329,266,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(330,266,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(267,98,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(99,'7f2aa755-ecb0-4f80-ad01-013f1c479626',2,'2013-04-14T17:15:00.000Z','(692) 253-4895','2013-04-14T17:54:00.000Z',0,NULL,NULL,NULL,NULL,29);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(268,99,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(331,268,38,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(332,268,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(333,268,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(334,268,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(269,99,25,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(335,269,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(336,269,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(270,99,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(100,'7f2aa755-ecb0-4f80-ad01-013f1c479626',2,'2013-04-21T00:30:00.000Z','(692) 253-4895','2013-04-21T01:12:00.000Z',0,NULL,NULL,NULL,NULL,21.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(271,100,2,1,2,6.15,21.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(337,271,48,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(338,271,39,2,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(339,271,40,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(340,271,49,2,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(341,271,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(101,'7f2aa755-ecb0-4f80-ad01-013f1c479626',2,'2013-05-12T16:05:00.000Z','(692) 253-4895','2013-05-12T16:48:00.000Z',0,NULL,NULL,NULL,NULL,43.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(272,101,18,2,2,16.95,33.9,'hold the liver');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(273,101,26,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(342,273,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(274,101,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(102,'7f2aa755-ecb0-4f80-ad01-013f1c479626',2,'2013-05-13T01:40:00.000Z','(692) 253-4895','2013-05-13T02:24:00.000Z',0,NULL,NULL,NULL,NULL,71.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(275,102,19,3,2,20.95,52.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(343,275,20,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(344,275,50,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(345,275,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(276,102,27,9,2,8.95,17.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(346,276,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(277,102,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(103,'7f2aa755-ecb0-4f80-ad01-013f1c479626',3,'2013-05-15T00:30:00.000Z','(692) 253-4895','2013-05-15T01:12:00.000Z',2,'Ap #156-4219 Et, Av.','Proin','IA','66768',46.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(278,103,20,5,1,26.95,35.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(347,278,15,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(348,278,51,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(349,278,52,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(350,278,21,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(279,103,28,9,1,8.95,9.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(351,279,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(352,279,61,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(353,279,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(280,103,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(104,'7f2aa755-ecb0-4f80-ad01-013f1c479626',3,'2013-05-23T16:20:00.000Z','(692) 253-4895','2013-05-23T17:00:00.000Z',2,'Ap #156-4219 Et, Av.','Proin','IA','66768',72.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(281,104,21,4,2,23.45,59.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(354,281,22,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(355,281,16,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(356,281,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(282,104,3,1,1,7.65,9.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(357,282,17,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(358,282,41,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(359,282,42,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(283,104,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(284,104,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(105,'8f3b5a9f-85fc-495d-901b-013f1c479627',3,'2013-03-12T17:50:00.000Z','(814) 120-4683','2013-03-12T18:26:00.000Z',2,'779-8730 Auctor. Av.','Libero','IA','79546',57.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(285,105,4,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(286,105,29,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(360,286,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(361,286,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(287,105,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(106,'8f3b5a9f-85fc-495d-901b-013f1c479627',2,'2013-03-24T00:30:00.000Z','(814) 120-4683','2013-03-24T01:03:00.000Z',0,NULL,NULL,NULL,NULL,19.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(288,106,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(362,288,23,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(363,288,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(364,288,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(365,288,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(107,'8f3b5a9f-85fc-495d-901b-013f1c479627',2,'2013-04-05T16:35:00.000Z','(814) 120-4683','2013-04-05T17:12:00.000Z',0,NULL,NULL,NULL,NULL,36.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(289,107,5,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(366,289,10,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(367,289,44,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(290,107,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(368,290,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(369,290,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(291,107,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(108,'8f3b5a9f-85fc-495d-901b-013f1c479627',2,'2013-04-12T21:00:00.000Z','(814) 120-4683','2013-04-12T21:37:00.000Z',0,NULL,NULL,NULL,NULL,41.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(292,108,6,4,1,23.45,23.45,'very light on the cheese');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(293,108,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(294,108,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(295,108,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(109,'8f3b5a9f-85fc-495d-901b-013f1c479627',2,'2013-04-14T17:10:00.000Z','(814) 120-4683','2013-04-14T17:57:00.000Z',0,NULL,NULL,NULL,NULL,23);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(296,109,2,1,1,6.15,8.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(370,296,45,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(371,296,19,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(372,296,24,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(373,296,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(297,109,22,8,1,7.95,13.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(374,297,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(375,297,13,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(376,297,46,1,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(377,297,25,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(298,109,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(110,'8f3b5a9f-85fc-495d-901b-013f1c479627',2,'2013-05-11T02:50:00.000Z','(814) 120-4683','2013-05-11T03:30:00.000Z',0,NULL,NULL,NULL,NULL,42);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(299,110,7,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(378,299,11,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(379,299,26,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(380,299,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(300,110,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(381,300,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(301,110,31,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(111,'8f3b5a9f-85fc-495d-901b-013f1c479627',3,'2013-05-12T20:40:00.000Z','(814) 120-4683','2013-05-12T21:15:00.000Z',2,'779-8730 Auctor. Av.','Libero','IA','79546',25.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(302,111,8,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(382,302,27,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(383,302,14,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(303,111,24,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(384,303,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(385,303,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(304,111,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(112,'8f3b5a9f-85fc-495d-901b-013f1c479627',2,'2013-05-17T20:20:00.000Z','(814) 120-4683','2013-05-17T20:52:00.000Z',0,NULL,NULL,NULL,NULL,23.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(305,112,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(306,112,25,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(386,306,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(307,112,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(113,'046f6c1f-b8b5-4e5e-aa7c-013f1c479628',2,'2013-03-12T23:35:00.000Z','(220) 623-6795','2013-03-13T00:14:00.000Z',0,NULL,NULL,NULL,NULL,34.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(308,113,1,3,2,14.45,28.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(309,113,26,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(387,309,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(388,309,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(310,113,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(114,'046f6c1f-b8b5-4e5e-aa7c-013f1c479628',2,'2013-04-25T19:30:00.000Z','(220) 623-6795','2013-04-25T20:07:00.000Z',0,NULL,NULL,NULL,NULL,28.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(311,114,9,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(312,114,2,2,1,12.4,17.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(389,312,15,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(390,312,16,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(391,312,17,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(392,312,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(313,114,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(314,114,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(115,'046f6c1f-b8b5-4e5e-aa7c-013f1c479628',3,'2013-05-01T22:20:00.000Z','(220) 623-6795','2013-05-01T23:02:00.000Z',2,'P.O. Box 734, 7881 Posuere St.','Utville','MT','93058',53.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(315,115,10,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(393,315,28,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(394,315,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(395,315,47,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(396,315,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(316,115,11,3,1,20.95,20.95,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(317,115,37,13,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(318,115,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(116,'c9a76e2c-a39e-4c4a-ac4a-013f1c479629',3,'2013-04-05T22:40:00.000Z','(881) 844-1111','2013-04-05T23:17:00.000Z',2,'P.O. Box 930, 2346 Turpis. Rd.','Massa City','LA','09104',72.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(319,116,12,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(320,116,13,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(321,116,1,5,2,17.95,35.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(322,116,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(323,116,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(324,116,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(117,'c9a76e2c-a39e-4c4a-ac4a-013f1c479629',2,'2013-04-20T20:35:00.000Z','(881) 844-1111','2013-04-20T21:11:00.000Z',0,NULL,NULL,NULL,NULL,16.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(325,117,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(118,'c9a76e2c-a39e-4c4a-ac4a-013f1c479629',2,'2013-04-23T21:00:00.000Z','(881) 844-1111','2013-04-23T21:45:00.000Z',0,NULL,NULL,NULL,NULL,67.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(326,118,14,5,1,26.95,31.45,'low salt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(397,326,12,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(398,326,19,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(399,326,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(327,118,15,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(400,327,48,2,8.2);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(401,327,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(328,118,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(329,118,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(119,'c9a76e2c-a39e-4c4a-ac4a-013f1c479629',2,'2013-05-10T22:40:00.000Z','(881) 844-1111','2013-05-10T23:19:00.000Z',0,NULL,NULL,NULL,NULL,106.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(330,119,16,4,2,23.45,63.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(402,330,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(403,330,49,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(404,330,29,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(405,330,14,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(331,119,17,2,2,16.95,39.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(406,331,50,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(407,331,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(332,119,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(333,119,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(120,'c9a76e2c-a39e-4c4a-ac4a-013f1c479629',2,'2013-05-21T02:35:00.000Z','(881) 844-1111','2013-05-21T03:17:00.000Z',0,NULL,NULL,NULL,NULL,75.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(334,120,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(408,334,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(409,334,30,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(410,334,51,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(335,120,18,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(411,335,16,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(412,335,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(413,335,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(336,120,35,11,2,1.95,3.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(337,120,36,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(121,'c9a76e2c-a39e-4c4a-ac4a-013f1c479629',3,'2013-05-26T01:05:00.000Z','(881) 844-1111','2013-05-26T01:45:00.000Z',2,'P.O. Box 930, 2346 Turpis. Rd.','Massa City','LA','09104',29.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(338,121,2,1,1,6.15,9.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(414,338,18,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(415,338,19,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(416,338,13,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(417,338,31,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(418,338,52,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(339,121,19,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(340,121,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(341,121,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(122,'e5ebf143-3820-4600-bac9-013f1c47962a',2,'2013-03-23T16:05:00.000Z','(485) 679-0902','2013-03-23T16:42:00.000Z',0,NULL,NULL,NULL,NULL,18.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(342,122,20,2,1,16.95,18.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(419,342,32,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(420,342,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(123,'e5ebf143-3820-4600-bac9-013f1c47962a',2,'2013-03-24T00:05:00.000Z','(485) 679-0902','2013-03-24T00:43:00.000Z',0,NULL,NULL,NULL,NULL,67.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(343,123,2,1,2,6.15,18.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(421,343,41,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(422,343,33,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(423,343,34,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(424,343,42,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(425,343,43,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(426,343,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(344,123,2,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(427,344,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(428,344,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(345,123,21,5,1,26.95,29.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(429,345,44,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(346,123,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(347,123,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(348,123,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(124,'e5ebf143-3820-4600-bac9-013f1c47962a',2,'2013-05-10T19:10:00.000Z','(485) 679-0902','2013-05-10T19:45:00.000Z',0,NULL,NULL,NULL,NULL,91.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(349,124,2,3,1,14.45,16.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(430,349,45,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(431,349,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(350,124,2,2,1,12.4,15.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(432,350,35,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(351,124,3,5,2,26.95,53.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(352,124,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(353,124,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(354,124,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(125,'e5ebf143-3820-4600-bac9-013f1c47962a',2,'2013-05-10T22:00:00.000Z','(485) 679-0902','2013-05-10T22:42:00.000Z',0,NULL,NULL,NULL,NULL,35.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(355,125,4,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(356,125,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(433,356,62,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(357,125,34,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(126,'e5ebf143-3820-4600-bac9-013f1c47962a',2,'2013-05-13T01:30:00.000Z','(485) 679-0902','2013-05-13T02:18:00.000Z',0,NULL,NULL,NULL,NULL,16.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(358,126,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(127,'e5ebf143-3820-4600-bac9-013f1c47962a',3,'2013-05-20T17:10:00.000Z','(485) 679-0902','2013-05-20T17:53:00.000Z',2,'Ap #750-567 Ac St.','Eget','NV','56076',28.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(359,127,2,4,1,16.5,28.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(434,359,36,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(435,359,46,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(436,359,37,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(437,359,47,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(128,'01d4652b-cc00-4c57-90f7-013f1c47962b',3,'2013-04-10T22:45:00.000Z','(496) 953-8629','2013-04-10T23:25:00.000Z',2,'1918 Etiam Avenue','Auctor','IL','39599',47.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(360,128,2,2,2,12.4,32.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(438,360,14,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(439,360,48,1,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(361,128,28,9,1,8.95,12.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(440,361,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(441,361,15,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(442,361,49,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(443,361,38,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(362,128,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(129,'01d4652b-cc00-4c57-90f7-013f1c47962b',2,'2013-04-24T02:35:00.000Z','(496) 953-8629','2013-04-24T03:14:00.000Z',0,NULL,NULL,NULL,NULL,80.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(363,129,5,5,1,26.95,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(444,363,39,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(445,363,50,1,4.5);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(364,129,6,3,2,20.95,41.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(365,129,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(366,129,37,13,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(130,'01d4652b-cc00-4c57-90f7-013f1c47962b',2,'2013-05-04T01:30:00.000Z','(496) 953-8629','2013-05-04T02:08:00.000Z',0,NULL,NULL,NULL,NULL,19.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(367,130,7,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(446,367,40,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(447,367,51,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(131,'01d4652b-cc00-4c57-90f7-013f1c47962b',2,'2013-05-10T19:10:00.000Z','(496) 953-8629','2013-05-10T19:47:00.000Z',0,NULL,NULL,NULL,NULL,44.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(368,131,8,4,1,23.45,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(448,368,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(449,368,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(450,368,20,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(451,368,52,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(369,131,29,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(452,369,64,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(370,131,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(132,'01d4652b-cc00-4c57-90f7-013f1c47962b',2,'2013-05-25T17:45:00.000Z','(496) 953-8629','2013-05-25T18:24:00.000Z',0,NULL,NULL,NULL,NULL,33.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(371,132,9,2,1,16.95,22.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(453,371,41,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(454,371,21,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(455,371,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(456,371,42,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(372,132,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(457,372,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(373,132,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(133,'3bcfcff9-ea4e-4008-98c9-013f1c47962c',2,'2013-03-12T17:20:00.000Z','(500) 479-9175','2013-03-12T17:56:00.000Z',0,NULL,NULL,NULL,NULL,7.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(374,133,22,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(458,374,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(134,'3bcfcff9-ea4e-4008-98c9-013f1c47962c',2,'2013-03-23T17:15:00.000Z','(500) 479-9175','2013-03-23T17:52:00.000Z',0,NULL,NULL,NULL,NULL,35.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(375,134,10,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(376,134,23,9,1,8.95,12.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(459,376,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(460,376,43,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(461,376,22,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(462,376,19,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(463,376,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(377,134,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(135,'3bcfcff9-ea4e-4008-98c9-013f1c47962c',3,'2013-04-05T16:15:00.000Z','(500) 479-9175','2013-04-05T16:47:00.000Z',2,'P.O. Box 773, 4409 Sit Rd.','Nec','VT','17367',41.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(378,135,11,2,2,16.95,33.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(379,135,24,7,1,3.95,5.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(464,379,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(465,379,13,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(466,379,14,2,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(380,135,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(136,'3bcfcff9-ea4e-4008-98c9-013f1c47962c',2,'2013-04-23T20:35:00.000Z','(500) 479-9175','2013-04-23T21:18:00.000Z',0,NULL,NULL,NULL,NULL,47.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(381,136,12,2,2,16.95,33.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(382,136,25,8,1,7.95,10.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(467,382,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(468,382,15,2,2.6);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(383,136,31,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(137,'3bcfcff9-ea4e-4008-98c9-013f1c47962c',2,'2013-05-05T21:50:00.000Z','(500) 479-9175','2013-05-05T22:37:00.000Z',0,NULL,NULL,NULL,NULL,24.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(384,137,13,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(385,137,26,7,1,3.95,5.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(469,385,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(470,385,23,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(471,385,24,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(472,385,25,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(473,385,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(386,137,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(138,'3bcfcff9-ea4e-4008-98c9-013f1c47962c',2,'2013-05-20T20:00:00.000Z','(500) 479-9175','2013-05-20T20:34:00.000Z',0,NULL,NULL,NULL,NULL,36.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(387,138,14,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(474,387,44,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(475,387,45,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(388,138,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(476,388,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(477,388,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(389,138,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(139,'3bcfcff9-ea4e-4008-98c9-013f1c47962c',2,'2013-05-23T20:00:00.000Z','(500) 479-9175','2013-05-23T20:32:00.000Z',0,NULL,NULL,NULL,NULL,83.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(390,139,15,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(478,390,26,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(479,390,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(480,390,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(391,139,16,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(481,391,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(482,391,46,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(483,391,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(392,139,17,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(484,392,18,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(393,139,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(394,139,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(395,139,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(140,'981c8345-0640-4a79-903d-013f1c47962d',2,'2013-03-03T17:20:00.000Z','(480) 427-2180','2013-03-03T17:57:00.000Z',0,NULL,NULL,NULL,NULL,46.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(396,140,18,5,1,26.95,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(485,396,19,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(486,396,47,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(487,396,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(397,140,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(488,397,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(398,140,37,13,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(141,'981c8345-0640-4a79-903d-013f1c47962d',2,'2013-03-03T17:30:00.000Z','(480) 427-2180','2013-03-03T18:15:00.000Z',0,NULL,NULL,NULL,NULL,96.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(399,141,19,5,2,26.95,76.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(489,399,48,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(490,399,27,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(491,399,49,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(492,399,28,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(493,399,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(400,141,29,9,2,8.95,17.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(494,400,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(401,141,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(142,'981c8345-0640-4a79-903d-013f1c47962d',2,'2013-03-17T22:10:00.000Z','(480) 427-2180','2013-03-17T22:52:00.000Z',0,NULL,NULL,NULL,NULL,53.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(402,142,2,4,1,16.5,24.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(495,402,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(496,402,50,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(497,402,51,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(403,142,2,3,1,14.45,22.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(498,403,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(499,403,29,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(500,403,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(501,403,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(502,403,42,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(404,142,39,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(405,142,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(143,'981c8345-0640-4a79-903d-013f1c47962d',2,'2013-03-20T20:05:00.000Z','(480) 427-2180','2013-03-20T20:41:00.000Z',0,NULL,NULL,NULL,NULL,41.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(406,143,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(407,143,20,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(408,143,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(409,143,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(144,'981c8345-0640-4a79-903d-013f1c47962d',2,'2013-04-05T22:10:00.000Z','(480) 427-2180','2013-04-05T22:47:00.000Z',0,NULL,NULL,NULL,NULL,36.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(410,144,21,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(503,410,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(504,410,30,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(505,410,31,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(506,410,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(411,144,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(507,411,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(508,411,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(412,144,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(145,'981c8345-0640-4a79-903d-013f1c47962d',2,'2013-04-12T17:05:00.000Z','(480) 427-2180','2013-04-12T17:46:00.000Z',0,NULL,NULL,NULL,NULL,66.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(413,145,3,2,2,16.95,33.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(414,145,4,4,1,23.45,27.55,'very light on the cheese');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(509,414,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(510,414,32,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(511,414,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(415,145,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(416,145,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(146,'981c8345-0640-4a79-903d-013f1c47962d',2,'2013-04-18T01:10:00.000Z','(480) 427-2180','2013-04-18T01:54:00.000Z',0,NULL,NULL,NULL,NULL,28.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(417,146,2,3,1,14.45,22.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(512,417,5,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(513,417,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(514,417,33,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(515,417,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(418,146,22,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(516,418,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(517,418,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(419,146,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(147,'981c8345-0640-4a79-903d-013f1c47962d',4,'2013-05-03T23:10:00.000Z','(480) 427-2180','2013-05-03T23:40:00.000Z',0,NULL,NULL,NULL,NULL,29.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(420,147,5,4,1,23.45,29.6,'hold the liver');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(518,420,44,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(519,420,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(520,420,18,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(521,420,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(148,'981c8345-0640-4a79-903d-013f1c47962d',3,'2013-05-25T17:30:00.000Z','(480) 427-2180','2013-05-25T18:06:00.000Z',2,'Ap #298-6821 Ut, Avenue','Risus City','MO','45872',38);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(421,148,6,4,1,23.45,27.55,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(522,421,45,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(523,421,34,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(524,421,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(422,148,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(525,422,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(526,422,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(423,148,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(149,'ba33b6e0-3e40-4c79-b581-013f1c47962e',4,'2013-04-17T19:10:00.000Z','(399) 321-0539','2013-04-17T19:40:00.000Z',0,NULL,NULL,NULL,NULL,20.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(424,149,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(425,149,24,7,1,3.95,5.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(527,425,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(528,425,35,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(529,425,36,2,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(426,149,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(150,'ea95f2e9-c91b-45b3-b2c4-013f1c47962f',2,'2013-04-02T00:45:00.000Z','(233) 266-3616','2013-04-02T01:23:00.000Z',0,NULL,NULL,NULL,NULL,54.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(427,150,7,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(530,427,37,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(531,427,19,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(428,150,8,3,1,20.95,29.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(532,428,38,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(533,428,46,2,6.8);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(429,150,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(430,150,39,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(151,'14c12e59-d802-4a0e-baff-013f1c479630',2,'2013-03-10T22:45:00.000Z','(114) 445-0087','2013-03-10T23:22:00.000Z',0,NULL,NULL,NULL,NULL,24.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(431,151,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(432,151,25,7,2,3.95,7.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(534,432,64,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(433,151,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(152,'14c12e59-d802-4a0e-baff-013f1c479630',3,'2013-03-24T02:15:00.000Z','(114) 445-0087','2013-03-24T02:49:00.000Z',2,'308-1383 Non Street','Ornare','KY','30821',35.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(434,152,9,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(535,434,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(536,434,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(537,434,39,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(435,152,26,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(538,435,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(436,152,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(153,'14c12e59-d802-4a0e-baff-013f1c479630',2,'2013-04-12T20:10:00.000Z','(114) 445-0087','2013-04-12T20:45:00.000Z',0,NULL,NULL,NULL,NULL,12);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(437,153,27,9,1,8.95,12,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(539,437,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(540,437,60,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(541,437,15,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(542,437,16,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(543,437,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(154,'14c12e59-d802-4a0e-baff-013f1c479630',2,'2013-05-10T16:30:00.000Z','(114) 445-0087','2013-05-10T17:03:00.000Z',0,NULL,NULL,NULL,NULL,32.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(438,154,1,5,1,17.95,17.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(439,154,28,9,1,8.95,11.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(544,439,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(545,439,47,1,2.6);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(440,154,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(155,'14c12e59-d802-4a0e-baff-013f1c479630',2,'2013-05-10T16:35:00.000Z','(114) 445-0087','2013-05-10T17:16:00.000Z',0,NULL,NULL,NULL,NULL,67.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(441,155,10,4,2,23.45,67.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(546,441,48,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(547,441,49,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(548,441,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(549,441,40,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(156,'14c12e59-d802-4a0e-baff-013f1c479630',2,'2013-05-14T23:50:00.000Z','(114) 445-0087','2013-05-15T00:36:00.000Z',0,NULL,NULL,NULL,NULL,47.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(442,156,11,2,2,16.95,47.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(550,442,50,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(551,442,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(552,442,51,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(553,442,52,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(157,'14c12e59-d802-4a0e-baff-013f1c479630',2,'2013-05-15T01:40:00.000Z','(114) 445-0087','2013-05-15T02:22:00.000Z',0,NULL,NULL,NULL,NULL,72.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(443,157,12,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(444,157,13,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(554,444,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(555,444,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(556,444,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(445,157,14,3,1,20.95,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(557,445,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(558,445,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(446,157,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(447,157,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(448,157,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(158,'0a18f73f-0255-454e-9c44-013f1c479631',2,'2013-04-15T02:35:00.000Z','(470) 815-3162','2013-04-15T03:10:00.000Z',0,NULL,NULL,NULL,NULL,76.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(449,158,15,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(450,158,16,4,1,23.45,25.5,'say ''Hi'' to Doris');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(559,450,14,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(451,158,2,4,1,16.5,22.65,'low salt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(560,451,42,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(561,451,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(562,451,15,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(563,451,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(452,158,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(453,158,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(454,158,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(159,'0a18f73f-0255-454e-9c44-013f1c479631',2,'2013-05-25T22:40:00.000Z','(470) 815-3162','2013-05-25T23:19:00.000Z',0,NULL,NULL,NULL,NULL,11.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(455,159,29,9,1,8.95,11.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(564,455,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(565,455,44,2,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(566,455,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(160,'135ec153-9c71-4df8-9778-013f1c479632',3,'2013-03-03T21:05:00.000Z','(333) 414-9465','2013-03-03T21:42:00.000Z',2,'P.O. Box 483, 8826 Vel Rd.','Fermentum','CT','68647',57.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(456,160,17,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(567,456,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(568,456,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(569,456,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(457,160,18,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(570,457,6,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(571,457,20,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(572,457,18,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(458,160,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(459,160,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(161,'135ec153-9c71-4df8-9778-013f1c479632',3,'2013-03-13T00:10:00.000Z','(333) 414-9465','2013-03-13T00:50:00.000Z',2,'P.O. Box 483, 8826 Vel Rd.','Fermentum','CT','68647',33.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(460,161,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(573,460,21,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(574,460,22,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(575,460,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(461,161,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(576,461,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(577,461,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(462,161,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(162,'135ec153-9c71-4df8-9778-013f1c479632',2,'2013-05-01T17:00:00.000Z','(333) 414-9465','2013-05-01T17:38:00.000Z',0,NULL,NULL,NULL,NULL,23.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(463,162,19,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(163,'135ec153-9c71-4df8-9778-013f1c479632',2,'2013-05-12T17:10:00.000Z','(333) 414-9465','2013-05-12T17:49:00.000Z',0,NULL,NULL,NULL,NULL,39.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(464,163,2,3,2,14.45,39.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(578,464,7,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(579,464,45,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(580,464,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(581,464,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(164,'135ec153-9c71-4df8-9778-013f1c479632',2,'2013-05-25T21:40:00.000Z','(333) 414-9465','2013-05-25T22:19:00.000Z',0,NULL,NULL,NULL,NULL,29.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(465,164,20,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(582,465,46,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(583,465,23,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(165,'43963d60-81d3-4300-9671-013f1c479633',2,'2013-03-03T22:35:00.000Z','(417) 758-1428','2013-03-03T23:14:00.000Z',0,NULL,NULL,NULL,NULL,86.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(466,165,21,3,2,20.95,58.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(584,466,24,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(585,466,47,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(586,466,48,1,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(467,165,1,2,2,12.4,24.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(468,165,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(469,165,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(166,'f3e6cd21-68b1-4470-b0eb-013f1c479634',2,'2013-04-10T16:35:00.000Z','(157) 325-7072','2013-04-10T17:16:00.000Z',0,NULL,NULL,NULL,NULL,12.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(470,166,3,1,1,7.65,12.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(587,470,13,2,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(588,470,49,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(589,470,50,2,2.6);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(167,'f3e6cd21-68b1-4470-b0eb-013f1c479634',3,'2013-04-17T20:45:00.000Z','(157) 325-7072','2013-04-17T21:30:00.000Z',2,'P.O. Box 311, 7310 Quis Ave','Diam','CT','40026',51.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(471,167,4,3,2,20.95,41.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(472,167,22,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(590,472,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(591,472,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(473,167,32,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(168,'3bd069e9-4c5a-45ad-af0a-013f1c479635',2,'2013-03-06T02:20:00.000Z','(129) 841-3220','2013-03-06T02:58:00.000Z',0,NULL,NULL,NULL,NULL,28.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(474,168,1,5,1,17.95,17.95,'hold the liver');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(475,168,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(592,475,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(476,168,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(169,'3bd069e9-4c5a-45ad-af0a-013f1c479635',2,'2013-03-06T03:00:00.000Z','(129) 841-3220','2013-03-06T03:39:00.000Z',0,NULL,NULL,NULL,NULL,95.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(477,169,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(593,477,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(594,477,25,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(595,477,51,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(478,169,2,3,2,14.45,42.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(596,478,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(597,478,26,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(598,478,52,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(599,478,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(479,169,5,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(480,169,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(481,169,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(482,169,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(170,'3bd069e9-4c5a-45ad-af0a-013f1c479635',2,'2013-04-01T20:05:00.000Z','(129) 841-3220','2013-04-01T20:43:00.000Z',0,NULL,NULL,NULL,NULL,28.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(483,170,2,2,1,12.4,16.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(600,483,41,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(601,483,16,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(602,483,42,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(484,170,24,8,1,7.95,8.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(603,484,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(604,484,60,1,0.45);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(485,170,37,13,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(171,'3bd069e9-4c5a-45ad-af0a-013f1c479635',3,'2013-05-05T17:00:00.000Z','(129) 841-3220','2013-05-05T17:41:00.000Z',2,'Ap #588-5375 Suspendisse Street','At City','KY','94906',7.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(486,171,25,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(605,486,61,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(172,'3bd069e9-4c5a-45ad-af0a-013f1c479635',2,'2013-05-05T17:05:00.000Z','(129) 841-3220','2013-05-05T17:42:00.000Z',0,NULL,NULL,NULL,NULL,6.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(487,172,1,1,1,6.15,6.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(173,'3bd069e9-4c5a-45ad-af0a-013f1c479635',2,'2013-05-05T22:35:00.000Z','(129) 841-3220','2013-05-05T23:17:00.000Z',0,NULL,NULL,NULL,NULL,44.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(488,173,2,3,1,14.45,16.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(606,488,27,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(489,173,6,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(490,173,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(491,173,39,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(174,'3bd069e9-4c5a-45ad-af0a-013f1c479635',2,'2013-05-17T16:45:00.000Z','(129) 841-3220','2013-05-17T17:22:00.000Z',0,NULL,NULL,NULL,NULL,31.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(492,174,7,4,1,23.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(607,492,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(608,492,43,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(493,174,26,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(609,493,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(610,493,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(494,174,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(175,'730fa9e4-0f3e-4766-a265-013f1c479636',2,'2013-03-12T21:40:00.000Z','(163) 948-1803','2013-03-12T22:15:00.000Z',0,NULL,NULL,NULL,NULL,41.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(495,175,8,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(496,175,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(497,175,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(498,175,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(176,'730fa9e4-0f3e-4766-a265-013f1c479636',2,'2013-03-17T20:05:00.000Z','(163) 948-1803','2013-03-17T20:44:00.000Z',0,NULL,NULL,NULL,NULL,31.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(499,176,9,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(611,499,28,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(612,499,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(613,499,44,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(177,'730fa9e4-0f3e-4766-a265-013f1c479636',2,'2013-03-23T16:50:00.000Z','(163) 948-1803','2013-03-23T17:31:00.000Z',0,NULL,NULL,NULL,NULL,55.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(500,177,10,4,2,23.45,55.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(614,500,29,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(615,500,30,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(178,'730fa9e4-0f3e-4766-a265-013f1c479636',3,'2013-03-25T20:20:00.000Z','(163) 948-1803','2013-03-25T21:04:00.000Z',2,'Ap #524-5510 Aliquam St.','Ipsum','TN','97887',76.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(501,178,11,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(616,501,45,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(617,501,46,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(618,501,31,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(619,501,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(502,178,2,3,1,14.45,21.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(620,502,47,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(621,502,18,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(503,178,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(504,178,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(505,178,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(506,178,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(179,'730fa9e4-0f3e-4766-a265-013f1c479636',3,'2013-03-26T01:35:00.000Z','(163) 948-1803','2013-03-26T02:10:00.000Z',2,'Ap #524-5510 Aliquam St.','Ipsum','TN','97887',26.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(507,179,12,6,1,21.45,26.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(622,507,19,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(623,507,32,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(624,507,33,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(180,'730fa9e4-0f3e-4766-a265-013f1c479636',2,'2013-04-04T01:20:00.000Z','(163) 948-1803','2013-04-04T01:53:00.000Z',0,NULL,NULL,NULL,NULL,79.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(508,180,13,5,1,26.95,33.7,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(625,508,48,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(626,508,49,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(627,508,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(509,180,2,2,1,12.4,17.8,'put all the anchovies on one half, mushrooms on the other half');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(628,509,50,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(629,509,51,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(510,180,14,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(511,180,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(512,180,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(513,180,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(181,'730fa9e4-0f3e-4766-a265-013f1c479636',2,'2013-04-21T00:20:00.000Z','(163) 948-1803','2013-04-21T01:01:00.000Z',0,NULL,NULL,NULL,NULL,50.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(514,181,15,4,1,23.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(630,514,34,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(515,181,16,6,1,21.45,21.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(516,181,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(517,181,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(182,'730fa9e4-0f3e-4766-a265-013f1c479636',3,'2013-05-01T22:20:00.000Z','(163) 948-1803','2013-05-01T22:56:00.000Z',2,'Ap #524-5510 Aliquam St.','Ipsum','TN','97887',88.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(518,182,17,5,1,26.95,31.45,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(631,518,35,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(632,518,52,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(633,518,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(519,182,18,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(520,182,19,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(634,520,36,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(635,520,13,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(521,182,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(522,182,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(523,182,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(183,'730fa9e4-0f3e-4766-a265-013f1c479636',2,'2013-05-11T02:40:00.000Z','(163) 948-1803','2013-05-11T03:21:00.000Z',0,NULL,NULL,NULL,NULL,36.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(524,183,20,4,1,23.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(636,524,37,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(525,183,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(637,525,63,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(526,183,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(184,'730fa9e4-0f3e-4766-a265-013f1c479636',2,'2013-05-24T01:45:00.000Z','(163) 948-1803','2013-05-24T02:22:00.000Z',0,NULL,NULL,NULL,NULL,124.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(527,184,21,2,2,16.95,39.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(638,527,8,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(639,527,41,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(528,184,3,4,2,23.45,51,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(640,528,42,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(529,184,4,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(641,529,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(642,529,38,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(643,529,39,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(644,529,15,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(530,184,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(531,184,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(532,184,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(185,'42a77144-d45d-48f7-97bb-013f1c479637',2,'2013-04-03T23:10:00.000Z','(950) 445-1642','2013-04-03T23:48:00.000Z',0,NULL,NULL,NULL,NULL,33.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(533,185,5,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(534,185,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(645,534,64,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(535,185,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(186,'42a77144-d45d-48f7-97bb-013f1c479637',2,'2013-04-04T01:05:00.000Z','(950) 445-1642','2013-04-04T01:38:00.000Z',0,NULL,NULL,NULL,NULL,53.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(536,186,2,4,2,16.5,53.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(646,536,40,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(647,536,20,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(648,536,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(649,536,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(650,536,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(651,536,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(187,'42a77144-d45d-48f7-97bb-013f1c479637',3,'2013-04-04T02:05:00.000Z','(950) 445-1642','2013-04-04T02:47:00.000Z',2,'6650 Enim. Av.','Tristique','HI','18696',8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(537,187,29,9,1,8.95,8.95,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(652,537,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(188,'42a77144-d45d-48f7-97bb-013f1c479637',2,'2013-04-23T16:50:00.000Z','(950) 445-1642','2013-04-23T17:29:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(538,188,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(653,538,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(654,538,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(189,'42a77144-d45d-48f7-97bb-013f1c479637',2,'2013-04-26T02:15:00.000Z','(950) 445-1642','2013-04-26T02:57:00.000Z',0,NULL,NULL,NULL,NULL,34.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(539,189,6,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(655,539,21,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(656,539,44,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(657,539,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(540,189,22,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(658,540,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(541,189,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(190,'42a77144-d45d-48f7-97bb-013f1c479637',2,'2013-05-20T20:45:00.000Z','(950) 445-1642','2013-05-20T21:21:00.000Z',0,NULL,NULL,NULL,NULL,27.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(542,190,7,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(543,190,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(659,543,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(660,543,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(544,190,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(191,'e4a5c596-0d28-460e-aa67-013f1c479638',2,'2013-04-14T21:20:00.000Z','(296) 709-1618','2013-04-14T21:59:00.000Z',0,NULL,NULL,NULL,NULL,18.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(545,191,8,2,1,16.95,18.3,'very light on the sauce');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(661,545,18,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(192,'e4a5c596-0d28-460e-aa67-013f1c479638',2,'2013-05-10T22:35:00.000Z','(296) 709-1618','2013-05-10T23:21:00.000Z',0,NULL,NULL,NULL,NULL,28.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(546,192,9,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(547,192,24,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(662,547,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(663,547,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(548,192,39,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(193,'e4a5c596-0d28-460e-aa67-013f1c479638',2,'2013-05-17T20:00:00.000Z','(296) 709-1618','2013-05-17T20:34:00.000Z',0,NULL,NULL,NULL,NULL,3.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(549,193,25,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(664,549,63,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(194,'31a34f9d-47a8-4428-a00d-013f1c479639',2,'2013-03-23T16:35:00.000Z','(829) 590-4166','2013-03-23T17:09:00.000Z',0,NULL,NULL,NULL,NULL,30.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(550,194,10,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(551,194,26,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(665,551,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(666,551,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(552,194,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(195,'31a34f9d-47a8-4428-a00d-013f1c479639',2,'2013-04-14T17:40:00.000Z','(829) 590-4166','2013-04-14T18:17:00.000Z',0,NULL,NULL,NULL,NULL,19.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(553,195,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(667,553,22,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(668,553,23,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(669,553,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(196,'b97f1246-544e-49b7-a332-013f1c47963a',2,'2013-03-17T22:15:00.000Z','(274) 223-1647','2013-03-17T22:53:00.000Z',0,NULL,NULL,NULL,NULL,53.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(554,196,11,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(555,196,12,3,1,20.95,26.05,'no pickles');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(670,555,24,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(671,555,25,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(672,555,45,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(556,196,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(557,196,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(197,'b97f1246-544e-49b7-a332-013f1c47963a',2,'2013-04-03T22:50:00.000Z','(274) 223-1647','2013-04-03T23:30:00.000Z',0,NULL,NULL,NULL,NULL,86.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(558,197,13,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(673,558,19,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(559,197,2,4,2,16.5,53.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(674,559,26,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(675,559,46,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(676,559,27,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(560,197,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(561,197,33,11,2,1.95,3.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(198,'919e7af7-0af6-491e-8246-013f1c47963b',2,'2013-03-02T02:50:00.000Z','(574) 315-4571','2013-03-02T03:30:00.000Z',0,NULL,NULL,NULL,NULL,58.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(562,198,14,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(563,198,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(677,563,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(564,198,34,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(199,'919e7af7-0af6-491e-8246-013f1c47963b',2,'2013-04-05T17:05:00.000Z','(574) 315-4571','2013-04-05T17:44:00.000Z',0,NULL,NULL,NULL,NULL,12.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(565,199,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(200,'919e7af7-0af6-491e-8246-013f1c47963b',3,'2013-05-01T20:20:00.000Z','(574) 315-4571','2013-05-01T21:00:00.000Z',2,'Ap #749-5159 Sem Rd.','Malesuada City','KS','97719',65.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(566,200,15,3,2,20.95,41.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(567,200,2,2,1,12.4,20.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(678,567,28,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(679,567,47,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(680,567,13,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(681,567,29,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(568,200,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(569,200,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(201,'919e7af7-0af6-491e-8246-013f1c47963b',2,'2013-05-01T23:40:00.000Z','(574) 315-4571','2013-05-02T00:20:00.000Z',0,NULL,NULL,NULL,NULL,38.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(570,201,2,2,2,12.4,27.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(682,570,30,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(571,201,28,9,1,8.95,9.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(683,571,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(684,571,60,1,0.45);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(572,201,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(202,'919e7af7-0af6-491e-8246-013f1c47963b',2,'2013-05-05T22:15:00.000Z','(574) 315-4571','2013-05-05T22:57:00.000Z',0,NULL,NULL,NULL,NULL,37.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(573,202,2,3,1,14.45,26.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(685,573,48,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(686,573,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(687,573,49,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(688,573,50,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(689,573,31,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(690,573,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(574,202,29,9,1,8.95,9.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(691,574,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(692,574,62,1,0.45);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(575,202,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(203,'919e7af7-0af6-491e-8246-013f1c47963b',2,'2013-05-23T19:05:00.000Z','(574) 315-4571','2013-05-23T19:42:00.000Z',0,NULL,NULL,NULL,NULL,35.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(576,203,16,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(693,576,32,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(694,576,33,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(695,576,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(577,203,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(696,577,63,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(578,203,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(204,'919e7af7-0af6-491e-8246-013f1c47963b',2,'2013-05-23T23:10:00.000Z','(574) 315-4571','2013-05-23T23:53:00.000Z',0,NULL,NULL,NULL,NULL,6.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(579,204,2,1,1,6.15,6.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(697,579,15,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(205,'b89c43e5-a220-42ce-9b25-013f1c47963c',2,'2013-03-12T22:20:00.000Z','(283) 615-2609','2013-03-12T23:05:00.000Z',0,NULL,NULL,NULL,NULL,43.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(580,205,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(581,205,17,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(582,205,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(583,205,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(206,'b89c43e5-a220-42ce-9b25-013f1c47963c',2,'2013-04-05T23:35:00.000Z','(283) 615-2609','2013-04-06T00:21:00.000Z',0,NULL,NULL,NULL,NULL,4.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(584,206,22,7,1,3.95,4.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(698,584,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(699,584,51,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(207,'b89c43e5-a220-42ce-9b25-013f1c47963c',2,'2013-04-11T02:15:00.000Z','(283) 615-2609','2013-04-11T02:50:00.000Z',0,NULL,NULL,NULL,NULL,76.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(585,207,18,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(700,585,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(701,585,17,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(702,585,52,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(703,585,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(586,207,2,2,1,12.4,13.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(704,586,18,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(587,207,19,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(705,587,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(706,587,34,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(707,587,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(588,207,31,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(589,207,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(590,207,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(208,'b89c43e5-a220-42ce-9b25-013f1c47963c',2,'2013-04-17T16:15:00.000Z','(283) 615-2609','2013-04-17T16:49:00.000Z',0,NULL,NULL,NULL,NULL,24.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(591,208,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(592,208,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(708,592,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(593,208,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(209,'b89c43e5-a220-42ce-9b25-013f1c47963c',2,'2013-04-23T19:05:00.000Z','(283) 615-2609','2013-04-23T19:38:00.000Z',0,NULL,NULL,NULL,NULL,58.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(594,209,20,3,2,20.95,58.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(709,594,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(710,594,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(711,594,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(712,594,43,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(210,'b89c43e5-a220-42ce-9b25-013f1c47963c',2,'2013-04-23T23:05:00.000Z','(283) 615-2609','2013-04-23T23:46:00.000Z',0,NULL,NULL,NULL,NULL,48.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(595,210,21,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(713,595,44,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(714,595,45,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(596,210,3,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(597,210,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(598,210,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(211,'b89c43e5-a220-42ce-9b25-013f1c47963c',2,'2013-05-25T19:15:00.000Z','(283) 615-2609','2013-05-25T19:58:00.000Z',0,NULL,NULL,NULL,NULL,73.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(599,211,4,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(600,211,5,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(601,211,6,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(715,601,35,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(716,601,14,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(602,211,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(603,211,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(604,211,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(212,'8af152a0-1410-45e5-88ac-013f1c47963d',2,'2013-04-04T01:45:00.000Z','(540) 387-4490','2013-04-04T02:18:00.000Z',0,NULL,NULL,NULL,NULL,25.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(605,212,7,4,1,23.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(717,605,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(718,605,15,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(213,'8af152a0-1410-45e5-88ac-013f1c47963d',3,'2013-04-20T22:10:00.000Z','(540) 387-4490','2013-04-20T22:51:00.000Z',2,'2608 Egestas. Avenue','Ipsum City','MS','47373',19.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(606,213,8,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(719,606,46,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(720,606,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(214,'8af152a0-1410-45e5-88ac-013f1c47963d',3,'2013-05-03T19:10:00.000Z','(540) 387-4490','2013-05-03T19:43:00.000Z',2,'2608 Egestas. Avenue','Ipsum City','MS','47373',47.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(607,214,9,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(721,607,9,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(722,607,16,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(608,214,10,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(723,608,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(724,608,36,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(609,214,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(610,214,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(215,'8af152a0-1410-45e5-88ac-013f1c47963d',2,'2013-05-05T21:45:00.000Z','(540) 387-4490','2013-05-05T22:26:00.000Z',0,NULL,NULL,NULL,NULL,29.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(611,215,11,3,1,20.95,29.45,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(725,611,47,2,6.8);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(726,611,18,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(216,'19d35bbc-e711-4dff-8e63-013f1c47963e',2,'2013-03-25T20:05:00.000Z','(223) 636-5019','2013-03-25T20:48:00.000Z',0,NULL,NULL,NULL,NULL,26.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(612,216,12,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(727,612,48,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(728,612,37,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(217,'19d35bbc-e711-4dff-8e63-013f1c47963e',2,'2013-05-04T00:35:00.000Z','(223) 636-5019','2013-05-04T01:14:00.000Z',0,NULL,NULL,NULL,NULL,41.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(613,217,13,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(614,217,2,1,2,6.15,16.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(729,614,19,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(730,614,49,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(731,614,38,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(732,614,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(615,217,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(616,217,32,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(218,'530e0cae-0025-482a-becb-013f1c47963f',2,'2013-03-10T21:10:00.000Z','(764) 227-7789','2013-03-10T21:51:00.000Z',0,NULL,NULL,NULL,NULL,52.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(617,218,14,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(618,218,24,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(733,618,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(734,618,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(619,218,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(219,'530e0cae-0025-482a-becb-013f1c47963f',2,'2013-03-12T23:45:00.000Z','(764) 227-7789','2013-03-13T00:26:00.000Z',0,NULL,NULL,NULL,NULL,34.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(620,219,15,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(735,620,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(736,620,14,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(621,219,25,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(737,621,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(738,621,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(622,219,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(220,'530e0cae-0025-482a-becb-013f1c47963f',2,'2013-05-04T00:15:00.000Z','(764) 227-7789','2013-05-04T00:50:00.000Z',0,NULL,NULL,NULL,NULL,43.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(623,220,16,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(739,623,50,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(740,623,15,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(624,220,26,8,2,7.95,21.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(741,624,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(742,624,51,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(743,624,16,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(744,624,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(625,220,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(221,'530e0cae-0025-482a-becb-013f1c47963f',2,'2013-05-11T00:05:00.000Z','(764) 227-7789','2013-05-11T00:39:00.000Z',0,NULL,NULL,NULL,NULL,20.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(626,221,2,4,1,16.5,20.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(745,626,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(746,626,52,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(747,626,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(222,'530e0cae-0025-482a-becb-013f1c47963f',3,'2013-05-15T00:40:00.000Z','(764) 227-7789','2013-05-15T01:19:00.000Z',2,'P.O. Box 467, 8040 Diam St.','Bibendum','MA','73582',10.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(627,222,27,9,1,8.95,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(748,627,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(749,627,39,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(750,627,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(223,'530e0cae-0025-482a-becb-013f1c47963f',2,'2013-05-15T00:40:00.000Z','(764) 227-7789','2013-05-15T01:17:00.000Z',0,NULL,NULL,NULL,NULL,88.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(628,223,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(751,628,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(752,628,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(753,628,43,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(629,223,17,3,2,20.95,55.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(754,629,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(755,629,44,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(756,629,40,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(757,629,45,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(758,629,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(630,223,2,1,1,6.15,8.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(759,630,46,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(760,630,47,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(761,630,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(631,223,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(632,223,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(633,223,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(224,'530e0cae-0025-482a-becb-013f1c47963f',2,'2013-05-24T00:10:00.000Z','(764) 227-7789','2013-05-24T00:54:00.000Z',0,NULL,NULL,NULL,NULL,73.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(634,224,18,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(635,224,19,3,1,20.95,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(762,635,10,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(763,635,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(636,224,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(637,224,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(225,'530e0cae-0025-482a-becb-013f1c47963f',2,'2013-05-25T23:00:00.000Z','(764) 227-7789','2013-05-25T23:41:00.000Z',0,NULL,NULL,NULL,NULL,51.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(638,225,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(639,225,20,5,1,26.95,33.7,'hold the liver');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(764,639,48,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(765,639,19,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(766,639,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(640,225,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(641,225,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(226,'5b9a6abf-6d8f-4721-842b-013f1c479640',2,'2013-03-12T19:00:00.000Z','(529) 932-7105','2013-03-12T19:40:00.000Z',0,NULL,NULL,NULL,NULL,26.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(642,226,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(643,226,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(767,643,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(768,643,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(644,226,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(227,'5b9a6abf-6d8f-4721-842b-013f1c479640',2,'2013-03-23T20:45:00.000Z','(529) 932-7105','2013-03-23T21:27:00.000Z',0,NULL,NULL,NULL,NULL,39.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(645,227,21,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(646,227,29,9,1,8.95,14.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(769,646,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(770,646,49,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(771,646,20,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(772,646,50,1,2.6);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(647,227,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(228,'5b9a6abf-6d8f-4721-842b-013f1c479640',2,'2013-04-06T01:45:00.000Z','(529) 932-7105','2013-04-06T02:23:00.000Z',0,NULL,NULL,NULL,NULL,29.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(648,228,3,3,1,20.95,29.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(773,648,51,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(774,648,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(775,648,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(776,648,42,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(229,'5b9a6abf-6d8f-4721-842b-013f1c479640',2,'2013-04-10T20:10:00.000Z','(529) 932-7105','2013-04-10T20:41:00.000Z',0,NULL,NULL,NULL,NULL,66.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(649,229,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(777,649,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(778,649,14,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(650,229,2,4,1,16.5,24.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(779,650,15,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(780,650,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(781,650,44,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(651,229,2,3,1,14.45,16.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(782,651,45,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(652,229,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(653,229,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(654,229,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(230,'5b9a6abf-6d8f-4721-842b-013f1c479640',2,'2013-05-03T21:40:00.000Z','(529) 932-7105','2013-05-03T22:23:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(655,230,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(783,655,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(231,'5b9a6abf-6d8f-4721-842b-013f1c479640',2,'2013-05-04T00:05:00.000Z','(529) 932-7105','2013-05-04T00:38:00.000Z',0,NULL,NULL,NULL,NULL,68.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(656,231,4,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(784,656,46,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(785,656,47,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(657,231,5,5,1,26.95,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(786,657,48,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(787,657,16,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(788,657,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(658,231,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(659,231,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(232,'5b9a6abf-6d8f-4721-842b-013f1c479640',2,'2013-05-15T01:40:00.000Z','(529) 932-7105','2013-05-15T02:13:00.000Z',0,NULL,NULL,NULL,NULL,85.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(660,232,6,5,2,26.95,53.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(661,232,7,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(789,661,49,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(790,661,17,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(662,232,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(663,232,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(233,'5b9a6abf-6d8f-4721-842b-013f1c479640',2,'2013-05-20T23:35:00.000Z','(529) 932-7105','2013-05-21T00:18:00.000Z',0,NULL,NULL,NULL,NULL,29.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(664,233,8,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(791,664,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(792,664,21,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(665,233,22,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(793,665,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(666,233,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(234,'617c046e-b8f3-4028-8da5-013f1c479641',3,'2013-03-12T19:20:00.000Z','(378) 568-8959','2013-03-12T19:59:00.000Z',2,'Ap #805-4319 Arcu Rd.','Metus City','MO','84235',66.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(667,234,9,4,1,23.45,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(794,667,11,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(795,667,50,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(796,667,22,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(797,667,19,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(668,234,10,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(798,668,23,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(799,668,24,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(800,668,51,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(669,234,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(670,234,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(235,'617c046e-b8f3-4028-8da5-013f1c479641',2,'2013-03-18T02:30:00.000Z','(378) 568-8959','2013-03-18T03:13:00.000Z',0,NULL,NULL,NULL,NULL,20.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(671,235,11,1,1,7.65,9.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(801,671,13,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(802,671,52,2,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(803,671,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(672,235,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(804,672,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(805,672,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(673,235,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(236,'617c046e-b8f3-4028-8da5-013f1c479641',2,'2013-03-21T01:30:00.000Z','(378) 568-8959','2013-03-21T02:06:00.000Z',0,NULL,NULL,NULL,NULL,29.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(674,236,12,5,1,26.95,29.2,'very light on the sauce');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(806,674,41,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(237,'617c046e-b8f3-4028-8da5-013f1c479641',2,'2013-03-25T22:15:00.000Z','(378) 568-8959','2013-03-25T23:01:00.000Z',0,NULL,NULL,NULL,NULL,102.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(675,237,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(676,237,13,4,2,23.45,55.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(807,676,25,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(808,676,42,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(677,237,14,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(809,677,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(810,677,44,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(811,677,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(678,237,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(679,237,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(680,237,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(238,'617c046e-b8f3-4028-8da5-013f1c479641',2,'2013-04-03T17:35:00.000Z','(378) 568-8959','2013-04-03T18:13:00.000Z',0,NULL,NULL,NULL,NULL,27.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(681,238,15,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(812,681,45,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(813,681,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(814,681,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(239,'617c046e-b8f3-4028-8da5-013f1c479641',2,'2013-04-12T17:30:00.000Z','(378) 568-8959','2013-04-12T18:12:00.000Z',0,NULL,NULL,NULL,NULL,36.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(682,239,16,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(815,682,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(816,682,26,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(817,682,46,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(818,682,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(683,239,24,8,1,7.95,8.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(819,683,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(820,683,62,1,0.45);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(684,239,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(240,'617c046e-b8f3-4028-8da5-013f1c479641',3,'2013-05-14T16:45:00.000Z','(378) 568-8959','2013-05-14T17:26:00.000Z',2,'Ap #805-4319 Arcu Rd.','Metus City','MO','84235',31.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(685,240,2,3,1,14.45,17.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(821,685,47,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(822,685,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(686,240,25,8,1,7.95,11.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(823,686,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(824,686,15,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(825,686,48,1,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(826,686,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(687,240,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(241,'617c046e-b8f3-4028-8da5-013f1c479641',2,'2013-05-17T17:40:00.000Z','(378) 568-8959','2013-05-17T18:13:00.000Z',0,NULL,NULL,NULL,NULL,7.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(688,241,17,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(242,'d241fdf4-3507-4529-bb46-013f1c479642',2,'2013-03-05T23:15:00.000Z','(925) 871-6501','2013-03-06T00:01:00.000Z',0,NULL,NULL,NULL,NULL,37.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(689,242,18,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(690,242,26,8,1,7.95,11.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(827,690,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(828,690,49,2,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(829,690,27,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(830,690,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(691,242,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(243,'d241fdf4-3507-4529-bb46-013f1c479642',2,'2013-03-14T16:05:00.000Z','(925) 871-6501','2013-03-14T16:46:00.000Z',0,NULL,NULL,NULL,NULL,54.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(692,243,19,2,1,16.95,23.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(831,692,50,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(832,692,51,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(833,692,52,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(834,692,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(693,243,20,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(694,243,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(695,243,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(244,'d241fdf4-3507-4529-bb46-013f1c479642',2,'2013-04-01T16:15:00.000Z','(925) 871-6501','2013-04-01T16:55:00.000Z',0,NULL,NULL,NULL,NULL,38.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(696,244,21,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(835,696,12,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(836,696,28,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(837,696,16,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(838,696,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(697,244,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(839,697,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(698,244,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(245,'d241fdf4-3507-4529-bb46-013f1c479642',2,'2013-04-15T01:40:00.000Z','(925) 871-6501','2013-04-15T02:23:00.000Z',0,NULL,NULL,NULL,NULL,16.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(699,245,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(246,'d241fdf4-3507-4529-bb46-013f1c479642',2,'2013-04-20T21:50:00.000Z','(925) 871-6501','2013-04-20T22:33:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(700,246,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(840,700,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(247,'d241fdf4-3507-4529-bb46-013f1c479642',3,'2013-04-23T19:20:00.000Z','(925) 871-6501','2013-04-23T19:57:00.000Z',2,'P.O. Box 616, 6012 In Av.','Sem','WY','75609',78.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(701,247,3,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(841,701,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(842,701,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(843,701,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(844,701,13,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(702,247,4,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(703,247,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(704,247,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(248,'d241fdf4-3507-4529-bb46-013f1c479642',3,'2013-05-10T22:05:00.000Z','(925) 871-6501','2013-05-10T22:46:00.000Z',2,'P.O. Box 616, 6012 In Av.','Sem','WY','75609',71.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(705,248,5,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(845,705,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(846,705,41,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(706,248,6,2,2,16.95,42,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(847,706,15,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(848,706,42,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(849,706,29,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(707,248,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(708,248,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(249,'d241fdf4-3507-4529-bb46-013f1c479642',2,'2013-05-12T16:10:00.000Z','(925) 871-6501','2013-05-12T16:47:00.000Z',0,NULL,NULL,NULL,NULL,44.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(709,249,7,4,1,23.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(850,709,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(851,709,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(710,249,29,9,2,8.95,17.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(852,710,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(853,710,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(711,249,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(250,'d241fdf4-3507-4529-bb46-013f1c479642',3,'2013-05-13T00:15:00.000Z','(925) 871-6501','2013-05-13T00:57:00.000Z',2,'P.O. Box 616, 6012 In Av.','Sem','WY','75609',16.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(712,250,8,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(251,'912d126c-13da-4d71-be7b-013f1c479643',2,'2013-05-15T00:20:00.000Z','(713) 390-4565','2013-05-15T01:06:00.000Z',0,NULL,NULL,NULL,NULL,16.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(713,251,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(252,'912d126c-13da-4d71-be7b-013f1c479643',2,'2013-05-20T19:45:00.000Z','(713) 390-4565','2013-05-20T20:22:00.000Z',0,NULL,NULL,NULL,NULL,26.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(714,252,9,1,2,7.65,15.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(715,252,30,9,1,8.95,9.4,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(854,715,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(855,715,62,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(856,715,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(716,252,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(253,'426ebaf1-4169-4b84-9805-013f1c479644',2,'2013-03-20T19:05:00.000Z','(123) 442-5981','2013-03-20T19:39:00.000Z',0,NULL,NULL,NULL,NULL,31.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(717,253,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(857,717,30,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(858,717,44,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(859,717,31,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(718,253,22,8,1,7.95,10.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(860,718,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(861,718,16,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(862,718,45,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(719,253,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(254,'426ebaf1-4169-4b84-9805-013f1c479644',2,'2013-03-20T20:10:00.000Z','(123) 442-5981','2013-03-20T20:45:00.000Z',0,NULL,NULL,NULL,NULL,31.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(720,254,10,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(721,254,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(863,721,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(864,721,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(722,254,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(255,'426ebaf1-4169-4b84-9805-013f1c479644',2,'2013-04-14T16:05:00.000Z','(123) 442-5981','2013-04-14T16:41:00.000Z',0,NULL,NULL,NULL,NULL,26.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(723,255,2,4,1,16.5,20.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(865,723,32,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(866,723,33,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(724,255,24,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(867,724,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(725,255,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(256,'426ebaf1-4169-4b84-9805-013f1c479644',2,'2013-04-21T00:10:00.000Z','(123) 442-5981','2013-04-21T00:45:00.000Z',0,NULL,NULL,NULL,NULL,74.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(726,256,11,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(727,256,12,2,1,16.95,21,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(868,727,46,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(869,727,34,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(870,727,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(728,256,13,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(729,256,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(730,256,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(731,256,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(257,'426ebaf1-4169-4b84-9805-013f1c479644',2,'2013-05-04T02:10:00.000Z','(123) 442-5981','2013-05-04T02:50:00.000Z',0,NULL,NULL,NULL,NULL,27.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(732,257,14,2,1,16.95,22.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(871,732,47,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(872,732,48,1,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(733,257,25,7,1,3.95,3.95,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(873,733,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(874,733,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(734,257,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(258,'1e2f8a25-8ae9-4ce8-8b64-013f1c479645',2,'2013-04-21T01:20:00.000Z','(775) 110-3692','2013-04-21T02:05:00.000Z',0,NULL,NULL,NULL,NULL,43.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(735,258,15,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(875,735,49,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(876,735,17,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(736,258,26,8,2,7.95,16.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(877,736,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(878,736,61,1,0.45);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(737,258,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(259,'1e2f8a25-8ae9-4ce8-8b64-013f1c479645',2,'2013-04-23T20:45:00.000Z','(775) 110-3692','2013-04-23T21:20:00.000Z',0,NULL,NULL,NULL,NULL,27.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(738,259,16,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(739,259,17,1,2,7.65,15.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(740,259,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(741,259,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(260,'1e2f8a25-8ae9-4ce8-8b64-013f1c479645',3,'2013-05-01T21:50:00.000Z','(775) 110-3692','2013-05-01T22:32:00.000Z',2,'146-9891 Sit Ave','Aenean','OK','81759',92.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(742,260,2,2,1,12.4,17.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(879,742,35,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(880,742,50,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(881,742,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(882,742,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(743,260,2,3,1,14.45,21.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(883,743,51,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(884,743,36,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(885,743,52,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(886,743,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(744,260,18,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(745,260,37,13,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(746,260,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(747,260,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(261,'1e2f8a25-8ae9-4ce8-8b64-013f1c479645',2,'2013-05-05T20:10:00.000Z','(775) 110-3692','2013-05-05T20:49:00.000Z',0,NULL,NULL,NULL,NULL,65.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(748,261,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(887,748,37,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(888,748,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(889,748,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(890,748,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(749,261,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(750,261,19,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(891,750,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(892,750,42,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(751,261,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(752,261,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(753,261,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(262,'1e2f8a25-8ae9-4ce8-8b64-013f1c479645',3,'2013-05-17T16:45:00.000Z','(775) 110-3692','2013-05-17T17:26:00.000Z',2,'146-9891 Sit Ave','Aenean','OK','81759',50.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(754,262,20,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(755,262,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(893,755,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(894,755,44,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(895,755,45,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(756,262,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(757,262,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(263,'1e2f8a25-8ae9-4ce8-8b64-013f1c479645',2,'2013-05-23T23:10:00.000Z','(775) 110-3692','2013-05-23T23:50:00.000Z',0,NULL,NULL,NULL,NULL,14.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(758,263,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(264,'1e2f8a25-8ae9-4ce8-8b64-013f1c479645',2,'2013-05-25T17:40:00.000Z','(775) 110-3692','2013-05-25T18:27:00.000Z',0,NULL,NULL,NULL,NULL,75.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(759,264,21,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(896,759,46,2,6.8);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(897,759,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(760,264,3,2,2,16.95,42,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(898,760,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(899,760,14,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(900,760,47,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(901,760,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(761,264,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(762,264,35,11,2,1.95,3.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(265,'04391a5f-9a1a-40c2-b811-013f1c479646',2,'2013-03-06T00:50:00.000Z','(398) 800-8468','2013-03-06T01:31:00.000Z',0,NULL,NULL,NULL,NULL,20.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(763,265,4,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(764,265,27,9,1,8.95,11.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(902,764,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(903,764,48,1,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(904,764,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(765,265,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(266,'04391a5f-9a1a-40c2-b811-013f1c479646',2,'2013-03-15T01:10:00.000Z','(398) 800-8468','2013-03-15T01:58:00.000Z',0,NULL,NULL,NULL,NULL,18.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(766,266,2,4,1,16.5,18.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(905,766,15,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(906,766,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(267,'04391a5f-9a1a-40c2-b811-013f1c479646',2,'2013-03-15T02:30:00.000Z','(398) 800-8468','2013-03-15T03:09:00.000Z',0,NULL,NULL,NULL,NULL,17.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(767,267,28,9,2,8.95,17.9,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(907,767,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(908,767,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(268,'04391a5f-9a1a-40c2-b811-013f1c479646',2,'2013-04-18T01:15:00.000Z','(398) 800-8468','2013-04-18T01:48:00.000Z',0,NULL,NULL,NULL,NULL,22.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(768,268,5,2,1,16.95,22.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(909,768,38,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(910,768,39,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(911,768,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(269,'04391a5f-9a1a-40c2-b811-013f1c479646',2,'2013-05-02T02:45:00.000Z','(398) 800-8468','2013-05-02T03:24:00.000Z',0,NULL,NULL,NULL,NULL,31.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(769,269,6,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(912,769,16,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(913,769,40,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(914,769,20,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(770,269,29,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(915,770,64,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(771,269,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(270,'04391a5f-9a1a-40c2-b811-013f1c479646',3,'2013-05-23T20:30:00.000Z','(398) 800-8468','2013-05-23T21:14:00.000Z',2,'P.O. Box 144, 564 Hendrerit Avenue','Nulla','MT','49214',82.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(772,270,7,3,2,20.95,41.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(773,270,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(774,270,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(916,774,21,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(917,774,22,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(918,774,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(919,774,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(775,270,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(776,270,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(777,270,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(271,'c494f0e5-d728-4ecb-b2fa-013f1c479647',2,'2013-03-20T22:15:00.000Z','(643) 524-5182','2013-03-20T22:50:00.000Z',0,NULL,NULL,NULL,NULL,22.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(778,271,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(920,778,49,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(921,778,50,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(922,778,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(272,'c494f0e5-d728-4ecb-b2fa-013f1c479647',2,'2013-03-26T00:30:00.000Z','(643) 524-5182','2013-03-26T01:06:00.000Z',0,NULL,NULL,NULL,NULL,56.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(779,272,8,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(923,779,51,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(924,779,23,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(925,779,24,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(926,779,52,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(780,272,9,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(781,272,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(782,272,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(273,'c494f0e5-d728-4ecb-b2fa-013f1c479647',2,'2013-04-01T17:35:00.000Z','(643) 524-5182','2013-04-01T18:13:00.000Z',0,NULL,NULL,NULL,NULL,88.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(783,273,10,4,2,23.45,55.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(927,783,41,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(928,783,42,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(929,783,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(784,273,11,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(930,784,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(931,784,25,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(932,784,26,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(785,273,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(786,273,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(274,'c494f0e5-d728-4ecb-b2fa-013f1c479647',2,'2013-04-26T00:40:00.000Z','(643) 524-5182','2013-04-26T01:20:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(787,274,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(933,787,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(275,'c494f0e5-d728-4ecb-b2fa-013f1c479647',2,'2013-04-26T01:50:00.000Z','(643) 524-5182','2013-04-26T02:29:00.000Z',0,NULL,NULL,NULL,NULL,10.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(788,275,22,7,2,3.95,10.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(934,788,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(935,788,18,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(936,788,27,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(937,788,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(276,'c494f0e5-d728-4ecb-b2fa-013f1c479647',2,'2013-05-06T01:20:00.000Z','(643) 524-5182','2013-05-06T01:57:00.000Z',0,NULL,NULL,NULL,NULL,45.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(789,276,12,2,2,16.95,33.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(790,276,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(938,790,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(791,276,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(277,'c494f0e5-d728-4ecb-b2fa-013f1c479647',4,'2013-05-23T17:15:00.000Z','(643) 524-5182','2013-05-23T17:45:00.000Z',0,NULL,NULL,NULL,NULL,31.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(792,277,13,5,1,26.95,31.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(939,792,28,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(940,792,29,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(278,'c494f0e5-d728-4ecb-b2fa-013f1c479647',2,'2013-05-23T22:50:00.000Z','(643) 524-5182','2013-05-23T23:33:00.000Z',0,NULL,NULL,NULL,NULL,58.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(793,278,2,3,1,14.45,16.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(941,793,44,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(942,793,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(794,278,14,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(943,794,30,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(944,794,45,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(945,794,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(795,278,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(796,278,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(797,278,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(798,278,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(279,'fec96cb2-57bb-4092-863b-013f1c479648',2,'2013-04-23T21:30:00.000Z','(641) 976-2223','2013-04-23T22:04:00.000Z',0,NULL,NULL,NULL,NULL,48.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(799,279,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(800,279,1,3,2,14.45,28.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(801,279,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(802,279,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(280,'fec96cb2-57bb-4092-863b-013f1c479648',2,'2013-05-13T01:05:00.000Z','(641) 976-2223','2013-05-13T01:44:00.000Z',0,NULL,NULL,NULL,NULL,48.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(803,280,15,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(946,803,46,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(947,803,31,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(804,280,2,4,1,16.5,18.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(948,804,32,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(805,280,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(806,280,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(281,'fec96cb2-57bb-4092-863b-013f1c479648',2,'2013-05-13T01:45:00.000Z','(641) 976-2223','2013-05-13T02:29:00.000Z',0,NULL,NULL,NULL,NULL,28.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(807,281,2,4,1,16.5,28.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(949,807,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(950,807,48,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(951,807,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(952,807,49,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(282,'ccd7ebd7-8157-4b45-801f-013f1c479649',3,'2013-04-01T22:40:00.000Z','(942) 240-7629','2013-04-01T23:15:00.000Z',2,'715-6134 Ac St.','Pharetra City','OH','11469',34.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(808,282,16,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(953,808,50,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(809,282,24,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(954,809,61,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(810,282,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(283,'ccd7ebd7-8157-4b45-801f-013f1c479649',2,'2013-04-26T01:00:00.000Z','(942) 240-7629','2013-04-26T01:45:00.000Z',0,NULL,NULL,NULL,NULL,52.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(811,283,17,3,2,20.95,52.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(955,811,33,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(956,811,13,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(284,'ccd7ebd7-8157-4b45-801f-013f1c479649',3,'2013-05-12T22:35:00.000Z','(942) 240-7629','2013-05-12T23:13:00.000Z',2,'715-6134 Ac St.','Pharetra City','OH','11469',12.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(812,284,25,8,1,7.95,12.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(957,812,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(958,812,63,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(959,812,34,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(960,812,14,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(961,812,51,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(285,'db92be00-e192-4523-be7b-013f1c47964a',2,'2013-03-03T17:05:00.000Z','(890) 104-1814','2013-03-03T17:44:00.000Z',0,NULL,NULL,NULL,NULL,80.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(813,285,18,4,2,23.45,59.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(962,813,35,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(963,813,52,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(814,285,19,2,1,16.95,18.3,'hold the liver');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(964,814,36,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(815,285,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(816,285,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(286,'db92be00-e192-4523-be7b-013f1c47964a',3,'2013-03-23T23:05:00.000Z','(890) 104-1814','2013-03-23T23:49:00.000Z',2,'Ap #939-3921 Tempus Ave','Enim City','FL','37684',50.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(817,286,20,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(818,286,2,3,1,14.45,21.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(965,818,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(966,818,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(967,818,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(968,818,16,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(819,286,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(820,286,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(287,'db92be00-e192-4523-be7b-013f1c47964a',3,'2013-04-01T20:15:00.000Z','(890) 104-1814','2013-04-01T20:50:00.000Z',2,'Ap #939-3921 Tempus Ave','Enim City','FL','37684',33);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(821,287,21,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(969,821,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(970,821,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(971,821,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(822,287,26,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(972,822,64,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(823,287,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(288,'db92be00-e192-4523-be7b-013f1c47964a',2,'2013-04-01T22:35:00.000Z','(890) 104-1814','2013-04-01T23:15:00.000Z',0,NULL,NULL,NULL,NULL,66.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(824,288,3,3,2,20.95,55.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(973,824,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(974,824,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(975,824,44,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(976,824,45,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(825,288,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(977,825,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(826,288,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(289,'db92be00-e192-4523-be7b-013f1c47964a',3,'2013-04-03T21:30:00.000Z','(890) 104-1814','2013-04-03T22:05:00.000Z',2,'Ap #939-3921 Tempus Ave','Enim City','FL','37684',33.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(827,289,4,2,1,16.95,22.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(978,827,13,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(979,827,37,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(980,827,38,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(981,827,39,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(828,289,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(982,828,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(983,828,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(829,289,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(290,'db92be00-e192-4523-be7b-013f1c47964a',3,'2013-04-18T01:35:00.000Z','(890) 104-1814','2013-04-18T02:20:00.000Z',2,'Ap #939-3921 Tempus Ave','Enim City','FL','37684',90.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(830,290,2,5,1,17.95,31.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(984,830,40,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(985,830,46,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(986,830,47,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(987,830,14,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(831,290,5,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(988,831,15,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(989,831,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(832,290,6,4,1,23.45,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(990,832,48,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(991,832,20,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(992,832,21,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(993,832,16,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(833,290,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(834,290,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(835,290,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(291,'db92be00-e192-4523-be7b-013f1c47964a',2,'2013-05-05T19:45:00.000Z','(890) 104-1814','2013-05-05T20:30:00.000Z',0,NULL,NULL,NULL,NULL,135.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(836,291,2,5,2,17.95,49.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(994,836,22,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(995,836,17,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(996,836,23,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(997,836,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(837,291,7,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(998,837,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(999,837,24,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1000,837,25,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1001,837,18,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(838,291,2,3,2,14.45,49.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1002,838,49,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1003,838,50,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1004,838,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1005,838,51,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1006,838,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(839,291,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(840,291,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(841,291,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(292,'db92be00-e192-4523-be7b-013f1c47964a',3,'2013-05-13T01:50:00.000Z','(890) 104-1814','2013-05-13T02:33:00.000Z',2,'Ap #939-3921 Tempus Ave','Enim City','FL','37684',33.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(842,292,8,3,1,20.95,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1007,842,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1008,842,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(843,292,29,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1009,843,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1010,843,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(844,292,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(293,'db92be00-e192-4523-be7b-013f1c47964a',3,'2013-05-18T02:05:00.000Z','(890) 104-1814','2013-05-18T02:47:00.000Z',2,'Ap #939-3921 Tempus Ave','Enim City','FL','37684',52.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(845,293,9,3,2,20.95,41.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(846,293,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1011,846,61,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(847,293,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(294,'db92be00-e192-4523-be7b-013f1c47964a',2,'2013-05-25T19:45:00.000Z','(890) 104-1814','2013-05-25T20:24:00.000Z',0,NULL,NULL,NULL,NULL,22.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(848,294,10,1,2,7.65,16.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1012,848,14,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(849,294,22,7,1,3.95,4.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1013,849,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1014,849,63,1,0.45);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(850,294,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(295,'0f9d7ed9-483d-4d68-b947-013f1c47964b',2,'2013-03-17T17:20:00.000Z','(946) 156-4745','2013-03-17T18:02:00.000Z',0,NULL,NULL,NULL,NULL,78.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(851,295,2,4,1,16.5,18.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1015,851,15,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(852,295,11,4,1,23.45,23.45,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(853,295,12,5,1,26.95,31.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1016,853,52,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1017,853,26,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(854,295,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(855,295,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(856,295,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(296,'0f9d7ed9-483d-4d68-b947-013f1c47964b',2,'2013-03-25T17:05:00.000Z','(946) 156-4745','2013-03-25T17:48:00.000Z',0,NULL,NULL,NULL,NULL,25.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(857,296,13,4,1,23.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1018,857,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1019,857,41,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1020,857,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(297,'0f9d7ed9-483d-4d68-b947-013f1c47964b',2,'2013-03-25T23:35:00.000Z','(946) 156-4745','2013-03-26T00:12:00.000Z',0,NULL,NULL,NULL,NULL,74.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(858,297,14,4,2,23.45,63.3,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1021,858,42,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1022,858,27,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1023,858,16,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1024,858,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(859,297,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1025,859,64,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(860,297,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(298,'0f9d7ed9-483d-4d68-b947-013f1c47964b',2,'2013-04-01T23:20:00.000Z','(946) 156-4745','2013-04-02T00:05:00.000Z',0,NULL,NULL,NULL,NULL,17.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(861,298,2,1,1,6.15,8.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1026,861,43,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1027,861,17,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1028,861,28,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1029,861,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(862,298,24,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1030,862,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(863,298,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(299,'0f9d7ed9-483d-4d68-b947-013f1c47964b',2,'2013-04-12T19:45:00.000Z','(946) 156-4745','2013-04-12T20:26:00.000Z',0,NULL,NULL,NULL,NULL,34.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(864,299,15,3,1,20.95,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1031,864,44,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(865,299,16,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(866,299,31,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(867,299,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(300,'0f9d7ed9-483d-4d68-b947-013f1c47964b',2,'2013-04-20T21:30:00.000Z','(946) 156-4745','2013-04-20T22:03:00.000Z',0,NULL,NULL,NULL,NULL,7.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(868,300,25,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1032,868,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1033,868,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(301,'0f9d7ed9-483d-4d68-b947-013f1c47964b',3,'2013-05-14T21:20:00.000Z','(946) 156-4745','2013-05-14T21:55:00.000Z',2,'P.O. Box 130, 5971 Montes, Rd.','Non City','OR','16074',19.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(869,301,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1034,869,45,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1035,869,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1036,869,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1037,869,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(302,'0f9d7ed9-483d-4d68-b947-013f1c47964b',2,'2013-05-21T02:15:00.000Z','(946) 156-4745','2013-05-21T02:47:00.000Z',0,NULL,NULL,NULL,NULL,23.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(870,302,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(871,302,26,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1038,871,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(872,302,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(303,'0f9d7ed9-483d-4d68-b947-013f1c47964b',3,'2013-05-25T22:10:00.000Z','(946) 156-4745','2013-05-25T22:50:00.000Z',2,'P.O. Box 130, 5971 Montes, Rd.','Non City','OR','16074',70.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(873,303,17,3,2,20.95,58.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1039,873,46,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1040,873,47,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1041,873,29,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1042,873,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(874,303,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1043,874,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1044,874,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(875,303,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(304,'e6e6fa3a-5f00-4254-a076-013f1c47964c',2,'2013-03-03T21:10:00.000Z','(348) 943-5910','2013-03-03T21:47:00.000Z',0,NULL,NULL,NULL,NULL,19.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(876,304,18,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(877,304,28,9,1,8.95,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1045,877,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1046,877,30,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1047,877,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(878,304,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(305,'e6e6fa3a-5f00-4254-a076-013f1c47964c',3,'2013-04-04T01:35:00.000Z','(348) 943-5910','2013-04-04T02:17:00.000Z',2,'P.O. Box 129, 5651 Augue, Rd.','Donec','IN','87595',53.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(879,305,19,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1048,879,31,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1049,879,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1050,879,48,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1051,879,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(880,305,20,3,1,20.95,20.95,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(881,305,36,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(882,305,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(306,'e6e6fa3a-5f00-4254-a076-013f1c47964c',2,'2013-05-17T16:00:00.000Z','(348) 943-5910','2013-05-17T16:37:00.000Z',0,NULL,NULL,NULL,NULL,58.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(883,306,21,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1052,883,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1053,883,32,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(884,306,3,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1054,884,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1055,884,33,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1056,884,34,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1057,884,15,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(885,306,38,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(886,306,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(307,'2da740b7-9467-46d1-aca6-013f1c47964d',2,'2013-03-03T17:50:00.000Z','(938) 823-1723','2013-03-03T18:35:00.000Z',0,NULL,NULL,NULL,NULL,65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(887,307,4,5,1,26.95,33.7,'low salt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1058,887,5,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1059,887,16,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1060,887,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(888,307,5,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1061,888,49,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1062,888,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(889,307,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(890,307,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(308,'2da740b7-9467-46d1-aca6-013f1c47964d',2,'2013-04-03T21:00:00.000Z','(938) 823-1723','2013-04-03T21:44:00.000Z',0,NULL,NULL,NULL,NULL,108.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(891,308,6,4,2,23.45,67.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1063,891,35,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1064,891,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1065,891,50,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1066,891,18,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(892,308,7,5,1,26.95,35.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1067,892,51,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1068,892,52,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1069,892,41,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1070,892,42,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1071,892,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(893,308,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(894,308,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(309,'2da740b7-9467-46d1-aca6-013f1c47964d',2,'2013-04-11T02:00:00.000Z','(938) 823-1723','2013-04-11T02:46:00.000Z',0,NULL,NULL,NULL,NULL,31.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(895,309,8,5,1,26.95,31.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1072,895,43,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1073,895,36,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1074,895,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(310,'2da740b7-9467-46d1-aca6-013f1c47964d',2,'2013-04-26T00:30:00.000Z','(938) 823-1723','2013-04-26T01:04:00.000Z',0,NULL,NULL,NULL,NULL,62.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(896,310,9,3,2,20.95,52.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1075,896,6,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1076,896,44,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(897,310,29,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1077,897,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1078,897,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(898,310,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(311,'2da740b7-9467-46d1-aca6-013f1c47964d',3,'2013-05-03T19:00:00.000Z','(938) 823-1723','2013-05-03T19:37:00.000Z',2,'181-761 Libero St.','Curabitur','AZ','95454',8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(899,311,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1079,899,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1080,899,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(312,'2da740b7-9467-46d1-aca6-013f1c47964d',2,'2013-05-06T01:00:00.000Z','(938) 823-1723','2013-05-06T01:40:00.000Z',0,NULL,NULL,NULL,NULL,22.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(900,312,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1081,900,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1082,900,45,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(313,'2da740b7-9467-46d1-aca6-013f1c47964d',2,'2013-05-14T17:30:00.000Z','(938) 823-1723','2013-05-14T18:06:00.000Z',0,NULL,NULL,NULL,NULL,7.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(901,313,22,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1083,901,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(314,'6f424b6d-063c-4b85-b2c6-013f1c47964e',2,'2013-03-05T20:45:00.000Z','(889) 761-0883','2013-03-05T21:19:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(902,314,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1084,902,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(315,'6f424b6d-063c-4b85-b2c6-013f1c47964e',2,'2013-03-06T01:20:00.000Z','(889) 761-0883','2013-03-06T01:53:00.000Z',0,NULL,NULL,NULL,NULL,55.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(903,315,10,4,1,23.45,27.55,'hold the liver');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1085,903,37,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1086,903,38,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(904,315,11,3,1,20.95,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1087,904,39,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(905,315,34,11,2,1.95,3.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(906,315,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(316,'6f424b6d-063c-4b85-b2c6-013f1c47964e',3,'2013-04-03T19:05:00.000Z','(889) 761-0883','2013-04-03T19:42:00.000Z',2,'3903 Sollicitudin Avenue','Adipiscing','VT','77331',99.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(907,316,12,5,2,26.95,71.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1088,907,46,2,9);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1089,907,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(908,316,13,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1090,908,47,1,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(909,316,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(910,316,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(317,'6f424b6d-063c-4b85-b2c6-013f1c47964e',2,'2013-04-05T16:50:00.000Z','(889) 761-0883','2013-04-05T17:38:00.000Z',0,NULL,NULL,NULL,NULL,66.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(911,317,2,5,1,17.95,24.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1091,911,13,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1092,911,14,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1093,911,40,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1094,911,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(912,317,14,5,1,26.95,38.2,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1095,912,20,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1096,912,48,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1097,912,15,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1098,912,49,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(913,317,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(914,317,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(318,'6f424b6d-063c-4b85-b2c6-013f1c47964e',3,'2013-04-14T20:50:00.000Z','(889) 761-0883','2013-04-14T21:33:00.000Z',2,'3903 Sollicitudin Avenue','Adipiscing','VT','77331',26.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(915,318,2,4,1,16.5,26.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1099,915,21,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1100,915,50,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1101,915,22,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1102,915,51,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(319,'6f424b6d-063c-4b85-b2c6-013f1c47964e',2,'2013-05-04T01:15:00.000Z','(889) 761-0883','2013-05-04T01:50:00.000Z',0,NULL,NULL,NULL,NULL,35.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(916,319,15,5,1,26.95,29.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1103,916,52,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(917,319,24,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1104,917,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(918,319,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(320,'6f424b6d-063c-4b85-b2c6-013f1c47964e',3,'2013-05-15T00:10:00.000Z','(889) 761-0883','2013-05-15T00:45:00.000Z',2,'3903 Sollicitudin Avenue','Adipiscing','VT','77331',70.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(919,320,16,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(920,320,17,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1105,920,16,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1106,920,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(921,320,18,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(922,320,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(923,320,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(924,320,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(321,'6f424b6d-063c-4b85-b2c6-013f1c47964e',2,'2013-05-15T01:15:00.000Z','(889) 761-0883','2013-05-15T02:02:00.000Z',0,NULL,NULL,NULL,NULL,70.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(925,321,19,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1107,925,41,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1108,925,42,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(926,321,20,2,2,16.95,39.3,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1109,926,17,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1110,926,43,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(927,321,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(928,321,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(322,'2a68e04e-da3c-401b-807b-013f1c47964f',2,'2013-03-10T19:15:00.000Z','(136) 924-6445','2013-03-10T20:02:00.000Z',0,NULL,NULL,NULL,NULL,42);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(929,322,21,2,2,16.95,42,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1111,929,23,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1112,929,24,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1113,929,25,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1114,929,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(323,'2a68e04e-da3c-401b-807b-013f1c47964f',2,'2013-03-23T19:45:00.000Z','(136) 924-6445','2013-03-23T20:28:00.000Z',0,NULL,NULL,NULL,NULL,26.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(930,323,3,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(931,323,25,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1115,931,61,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(932,323,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(324,'2a68e04e-da3c-401b-807b-013f1c47964f',2,'2013-04-05T23:00:00.000Z','(136) 924-6445','2013-04-05T23:33:00.000Z',0,NULL,NULL,NULL,NULL,25.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(933,324,1,4,1,16.5,16.5,'say ''Hi'' to Doris');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(934,324,26,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1116,934,62,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(935,324,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(325,'2a68e04e-da3c-401b-807b-013f1c47964f',2,'2013-05-01T22:50:00.000Z','(136) 924-6445','2013-05-01T23:27:00.000Z',0,NULL,NULL,NULL,NULL,27.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(936,325,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(937,325,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1117,937,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1118,937,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(938,325,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(326,'2a68e04e-da3c-401b-807b-013f1c47964f',3,'2013-05-15T00:05:00.000Z','(136) 924-6445','2013-05-15T00:40:00.000Z',2,'Ap #538-9663 Enim Avenue','Dictum','OH','52785',26.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(939,326,4,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(327,'2a68e04e-da3c-401b-807b-013f1c47964f',2,'2013-05-20T19:50:00.000Z','(136) 924-6445','2013-05-20T20:34:00.000Z',0,NULL,NULL,NULL,NULL,20.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(940,327,5,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(328,'750460f7-194c-4896-b51f-013f1c479650',3,'2013-03-03T18:10:00.000Z','(490) 193-4579','2013-03-03T18:46:00.000Z',2,'P.O. Box 377, 8310 Id Road','Fusce','WI','09577',8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(941,328,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1119,941,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1120,941,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(329,'750460f7-194c-4896-b51f-013f1c479650',2,'2013-04-02T00:00:00.000Z','(490) 193-4579','2013-04-02T00:43:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(942,329,29,9,1,8.95,8.95,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1121,942,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(330,'750460f7-194c-4896-b51f-013f1c479650',2,'2013-04-12T21:00:00.000Z','(490) 193-4579','2013-04-12T21:38:00.000Z',0,NULL,NULL,NULL,NULL,24.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(943,330,2,1,2,6.15,13.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1122,943,7,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1123,943,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(944,330,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1124,944,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1125,944,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(945,330,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(331,'750460f7-194c-4896-b51f-013f1c479650',3,'2013-05-12T23:50:00.000Z','(490) 193-4579','2013-05-13T00:25:00.000Z',2,'P.O. Box 377, 8310 Id Road','Fusce','WI','09577',33.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(946,331,2,3,1,14.45,28.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1126,946,44,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1127,946,45,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1128,946,46,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1129,946,47,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1130,946,48,1,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(947,331,22,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1131,947,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1132,947,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(948,331,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(332,'6879c677-b50f-4d50-8de4-013f1c479651',2,'2013-03-12T20:15:00.000Z','(445) 454-7004','2013-03-12T20:52:00.000Z',0,NULL,NULL,NULL,NULL,57.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(949,332,6,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(950,332,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1133,950,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1134,950,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(951,332,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(333,'6879c677-b50f-4d50-8de4-013f1c479651',3,'2013-03-12T21:50:00.000Z','(445) 454-7004','2013-03-12T22:21:00.000Z',2,'P.O. Box 777, 6014 Ridiculus Street','At City','NV','38096',58);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(952,333,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(953,333,7,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(954,333,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(955,333,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(956,333,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(957,333,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(334,'6879c677-b50f-4d50-8de4-013f1c479651',2,'2013-04-05T23:30:00.000Z','(445) 454-7004','2013-04-06T00:11:00.000Z',0,NULL,NULL,NULL,NULL,28.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(958,334,8,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(959,334,24,7,1,3.95,3.95,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1135,959,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1136,959,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(960,334,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(335,'6879c677-b50f-4d50-8de4-013f1c479651',2,'2013-04-20T19:35:00.000Z','(445) 454-7004','2013-04-20T20:12:00.000Z',0,NULL,NULL,NULL,NULL,22.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(961,335,2,2,1,12.4,15.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1137,961,49,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(962,335,25,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1138,962,63,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(963,335,34,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(336,'6879c677-b50f-4d50-8de4-013f1c479651',2,'2013-04-20T23:45:00.000Z','(445) 454-7004','2013-04-21T00:30:00.000Z',0,NULL,NULL,NULL,NULL,85.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(964,336,9,5,2,26.95,76.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1139,964,50,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1140,964,26,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1141,964,51,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1142,964,27,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1143,964,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(965,336,26,7,2,3.95,7.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1144,965,64,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(966,336,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(337,'6879c677-b50f-4d50-8de4-013f1c479651',2,'2013-05-05T17:15:00.000Z','(445) 454-7004','2013-05-05T17:57:00.000Z',0,NULL,NULL,NULL,NULL,50.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(967,337,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1145,967,18,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1146,967,52,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1147,967,41,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(968,337,2,3,1,14.45,22.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1148,968,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1149,968,28,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1150,968,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1151,968,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1152,968,44,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(969,337,36,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(970,337,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(338,'870a8e13-b246-407d-82ed-013f1c479652',2,'2013-03-10T21:35:00.000Z','(324) 969-3404','2013-03-10T22:12:00.000Z',0,NULL,NULL,NULL,NULL,91.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(971,338,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1153,971,45,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1154,971,29,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1155,971,13,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(972,338,10,3,2,20.95,41.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(973,338,11,2,1,16.95,22.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1156,973,46,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1157,973,47,1,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(974,338,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(975,338,39,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(976,338,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(339,'870a8e13-b246-407d-82ed-013f1c479652',3,'2013-03-17T22:50:00.000Z','(324) 969-3404','2013-03-17T23:27:00.000Z',2,'P.O. Box 637, 8360 Nam St.','Inville','AK','60569',24.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(977,339,12,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1158,977,30,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1159,977,14,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(340,'870a8e13-b246-407d-82ed-013f1c479652',2,'2013-04-14T20:15:00.000Z','(324) 969-3404','2013-04-14T20:57:00.000Z',0,NULL,NULL,NULL,NULL,31.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(978,340,13,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(979,340,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1160,979,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(980,340,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(341,'870a8e13-b246-407d-82ed-013f1c479652',3,'2013-04-24T01:30:00.000Z','(324) 969-3404','2013-04-24T02:08:00.000Z',2,'P.O. Box 637, 8360 Nam St.','Inville','AK','60569',97.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(981,341,14,3,1,20.95,29.45,'hold the liver');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1161,981,8,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1162,981,48,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1163,981,15,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(982,341,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1164,982,31,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1165,982,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1166,982,32,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1167,982,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(983,341,15,2,2,16.95,39.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1168,983,49,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1169,983,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(984,341,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(985,341,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(986,341,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(342,'870a8e13-b246-407d-82ed-013f1c479652',3,'2013-05-17T17:05:00.000Z','(324) 969-3404','2013-05-17T17:39:00.000Z',2,'P.O. Box 637, 8360 Nam St.','Inville','AK','60569',20.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(987,342,16,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(343,'870a8e13-b246-407d-82ed-013f1c479652',2,'2013-05-20T23:20:00.000Z','(324) 969-3404','2013-05-20T23:59:00.000Z',0,NULL,NULL,NULL,NULL,27.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(988,343,2,2,2,12.4,27.5,'very light on the sauce');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1170,988,9,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1171,988,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(344,'870a8e13-b246-407d-82ed-013f1c479652',2,'2013-05-25T17:00:00.000Z','(324) 969-3404','2013-05-25T17:39:00.000Z',0,NULL,NULL,NULL,NULL,22.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(989,344,17,2,1,16.95,22.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1172,989,50,2,5.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1173,989,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(345,'c6cf303f-a47b-40e9-900a-013f1c479653',3,'2013-03-17T20:20:00.000Z','(956) 442-3863','2013-03-17T21:07:00.000Z',2,'P.O. Box 198, 7996 Nunc St.','Fringilla City','TX','53410',24.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(990,345,18,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1174,990,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1175,990,18,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(346,'c6cf303f-a47b-40e9-900a-013f1c479653',2,'2013-04-06T01:30:00.000Z','(956) 442-3863','2013-04-06T02:06:00.000Z',0,NULL,NULL,NULL,NULL,67.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(991,346,19,3,2,20.95,55.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1176,991,33,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1177,991,51,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1178,991,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1179,991,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(992,346,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1180,992,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(993,346,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(347,'c6cf303f-a47b-40e9-900a-013f1c479653',2,'2013-04-24T01:00:00.000Z','(956) 442-3863','2013-04-24T01:43:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(994,347,29,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1181,994,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(348,'c6cf303f-a47b-40e9-900a-013f1c479653',2,'2013-05-02T01:10:00.000Z','(956) 442-3863','2013-05-02T01:51:00.000Z',0,NULL,NULL,NULL,NULL,111.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(995,348,20,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(996,348,21,5,2,26.95,53.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(997,348,3,4,1,23.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1182,997,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1183,997,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1184,997,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(998,348,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(999,348,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1000,348,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(349,'c6cf303f-a47b-40e9-900a-013f1c479653',2,'2013-05-12T23:20:00.000Z','(956) 442-3863','2013-05-13T00:01:00.000Z',0,NULL,NULL,NULL,NULL,40.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1001,349,4,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1185,1001,10,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1186,1001,41,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1187,1001,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1002,349,5,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1003,349,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1004,349,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(350,'c6cf303f-a47b-40e9-900a-013f1c479653',2,'2013-05-18T01:15:00.000Z','(956) 442-3863','2013-05-18T02:01:00.000Z',0,NULL,NULL,NULL,NULL,44.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1005,350,6,2,2,16.95,44.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1188,1005,42,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1189,1005,13,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1190,1005,43,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1191,1005,44,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(351,'c6cf303f-a47b-40e9-900a-013f1c479653',2,'2013-05-26T00:10:00.000Z','(956) 442-3863','2013-05-26T00:52:00.000Z',0,NULL,NULL,NULL,NULL,73.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1006,351,7,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1007,351,8,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1192,1007,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1193,1007,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1194,1007,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1008,351,9,3,1,20.95,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1195,1008,45,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1196,1008,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1009,351,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1010,351,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1011,351,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(352,'ede004e8-e5cd-4aab-a13c-013f1c479654',2,'2013-04-15T02:35:00.000Z','(429) 164-3030','2013-04-15T03:08:00.000Z',0,NULL,NULL,NULL,NULL,68.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1012,352,10,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1013,352,11,4,1,23.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1197,1013,16,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1014,352,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1015,352,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1016,352,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1017,352,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(353,'ede004e8-e5cd-4aab-a13c-013f1c479654',2,'2013-05-25T22:40:00.000Z','(429) 164-3030','2013-05-25T23:18:00.000Z',0,NULL,NULL,NULL,NULL,33.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1018,353,1,5,1,17.95,17.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1019,353,30,9,1,8.95,11.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1198,1019,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1199,1019,34,2,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1200,1019,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1020,353,35,11,2,1.95,3.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(354,'80b2ff13-7f6f-47c3-8502-013f1c479655',3,'2013-03-03T21:05:00.000Z','(859) 865-2065','2013-03-03T21:42:00.000Z',2,'2219 Cursus Rd.','Amet','CA','96527',56.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1021,354,12,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1201,1021,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1202,1021,18,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1203,1021,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1022,354,13,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1204,1022,11,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1205,1022,35,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1206,1022,19,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1023,354,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1024,354,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(355,'80b2ff13-7f6f-47c3-8502-013f1c479655',3,'2013-03-13T00:10:00.000Z','(859) 865-2065','2013-03-13T00:50:00.000Z',2,'2219 Cursus Rd.','Amet','CA','96527',28.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1025,355,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1207,1025,36,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1208,1025,37,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1209,1025,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1026,355,22,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1210,1026,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1211,1026,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1027,355,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(356,'80b2ff13-7f6f-47c3-8502-013f1c479655',2,'2013-05-01T17:00:00.000Z','(859) 865-2065','2013-05-01T17:38:00.000Z',0,NULL,NULL,NULL,NULL,23.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1028,356,14,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(357,'80b2ff13-7f6f-47c3-8502-013f1c479655',2,'2013-05-12T17:10:00.000Z','(859) 865-2065','2013-05-12T17:49:00.000Z',0,NULL,NULL,NULL,NULL,42.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1029,357,2,3,2,14.45,42.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1212,1029,12,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1213,1029,46,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1214,1029,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1215,1029,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(358,'80b2ff13-7f6f-47c3-8502-013f1c479655',2,'2013-05-25T16:20:00.000Z','(859) 865-2065','2013-05-25T16:59:00.000Z',0,NULL,NULL,NULL,NULL,29.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1030,358,15,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1216,1030,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1217,1030,38,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(359,'80b2ff13-7f6f-47c3-8502-013f1c479655',3,'2013-05-25T21:40:00.000Z','(859) 865-2065','2013-05-25T22:18:00.000Z',2,'2219 Cursus Rd.','Amet','CA','96527',8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1031,359,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1218,1031,63,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(360,'f22e1c05-29bf-4305-9d9a-013f1c479656',3,'2013-04-10T16:35:00.000Z','(945) 533-1951','2013-04-10T17:13:00.000Z',2,'4997 Quam, Rd.','Tincidunt City','GA','37692',23.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1032,360,16,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(361,'f22e1c05-29bf-4305-9d9a-013f1c479656',2,'2013-04-10T20:35:00.000Z','(945) 533-1951','2013-04-10T21:17:00.000Z',0,NULL,NULL,NULL,NULL,29.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1033,361,17,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1219,1033,48,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1220,1033,39,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1221,1033,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(362,'f22e1c05-29bf-4305-9d9a-013f1c479656',2,'2013-04-17T20:45:00.000Z','(945) 533-1951','2013-04-17T21:17:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1034,362,18,1,1,7.65,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1222,1034,49,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1223,1034,40,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1224,1034,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(363,'f22e1c05-29bf-4305-9d9a-013f1c479656',2,'2013-04-26T00:35:00.000Z','(945) 533-1951','2013-04-26T01:13:00.000Z',0,NULL,NULL,NULL,NULL,29.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1035,363,19,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1036,363,24,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1225,1036,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1226,1036,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1037,363,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(364,'f22e1c05-29bf-4305-9d9a-013f1c479656',2,'2013-05-05T23:30:00.000Z','(945) 533-1951','2013-05-06T00:08:00.000Z',0,NULL,NULL,NULL,NULL,23.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1038,364,1,5,1,17.95,17.95,'hold the liver');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1039,364,25,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1227,1039,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1040,364,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(365,'f22e1c05-29bf-4305-9d9a-013f1c479656',2,'2013-05-10T23:00:00.000Z','(945) 533-1951','2013-05-10T23:39:00.000Z',0,NULL,NULL,NULL,NULL,97.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1041,365,2,3,1,14.45,21.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1228,1041,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1229,1041,20,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1230,1041,50,1,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1042,365,2,3,2,14.45,42.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1231,1042,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1232,1042,21,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1233,1042,51,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1234,1042,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1043,365,20,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1044,365,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1045,365,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1046,365,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(366,'f22e1c05-29bf-4305-9d9a-013f1c479656',2,'2013-05-11T02:15:00.000Z','(945) 533-1951','2013-05-11T02:53:00.000Z',0,NULL,NULL,NULL,NULL,30.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1047,366,2,2,1,12.4,16.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1235,1047,52,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1236,1047,16,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1237,1047,41,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1048,366,26,8,1,7.95,8.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1238,1048,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1239,1048,60,1,0.45);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1049,366,33,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(367,'f22e1c05-29bf-4305-9d9a-013f1c479656',3,'2013-05-20T19:05:00.000Z','(945) 533-1951','2013-05-20T19:46:00.000Z',2,'4997 Quam, Rd.','Tincidunt City','GA','37692',8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1050,367,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1240,1050,61,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(368,'f22e1c05-29bf-4305-9d9a-013f1c479656',2,'2013-05-25T16:00:00.000Z','(945) 533-1951','2013-05-25T16:37:00.000Z',0,NULL,NULL,NULL,NULL,6.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1051,368,1,1,1,6.15,6.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(369,'ba818b5c-c1f5-474f-b218-013f1c479657',2,'2013-03-05T20:20:00.000Z','(166) 510-8527','2013-03-05T20:57:00.000Z',0,NULL,NULL,NULL,NULL,44.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1052,369,21,4,1,23.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1241,1052,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1242,1052,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1053,369,28,9,2,8.95,17.9,'very light on the sauce');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1243,1053,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1244,1053,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1054,369,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(370,'ba818b5c-c1f5-474f-b218-013f1c479657',2,'2013-03-10T23:10:00.000Z','(166) 510-8527','2013-03-10T23:50:00.000Z',0,NULL,NULL,NULL,NULL,23.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1055,370,3,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(371,'ba818b5c-c1f5-474f-b218-013f1c479657',2,'2013-03-13T02:30:00.000Z','(166) 510-8527','2013-03-13T03:06:00.000Z',0,NULL,NULL,NULL,NULL,57);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1056,371,4,3,2,20.95,45.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1245,1056,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1246,1056,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1057,371,29,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1247,1057,63,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1058,371,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(372,'ba818b5c-c1f5-474f-b218-013f1c479657',2,'2013-04-02T02:45:00.000Z','(166) 510-8527','2013-04-02T03:30:00.000Z',0,NULL,NULL,NULL,NULL,16.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1059,372,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(373,'ba818b5c-c1f5-474f-b218-013f1c479657',2,'2013-05-20T17:30:00.000Z','(166) 510-8527','2013-05-20T18:02:00.000Z',0,NULL,NULL,NULL,NULL,28.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1060,373,2,2,1,12.4,17.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1248,1060,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1249,1060,22,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1250,1060,43,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1251,1060,19,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1252,1060,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1061,373,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1253,1061,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1254,1061,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1062,373,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(374,'ba818b5c-c1f5-474f-b218-013f1c479657',2,'2013-05-25T17:30:00.000Z','(166) 510-8527','2013-05-25T18:14:00.000Z',0,NULL,NULL,NULL,NULL,77.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1063,374,5,5,1,26.95,31.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1255,1063,44,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1256,1063,13,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1064,374,6,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1257,1064,14,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1258,1064,45,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1065,374,7,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1259,1065,46,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1260,1065,23,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1261,1065,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1066,374,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1067,374,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1068,374,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(375,'af43391d-5eca-4715-bfe5-013f1c479658',2,'2013-03-26T01:00:00.000Z','(921) 573-6588','2013-03-26T01:34:00.000Z',0,NULL,NULL,NULL,NULL,58.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1069,375,8,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1070,375,9,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1262,1070,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1263,1070,24,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1264,1070,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1071,375,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1072,375,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(376,'6a3b0efb-4c23-43d3-a298-013f1c479659',2,'2013-03-17T20:05:00.000Z','(629) 876-2320','2013-03-17T20:42:00.000Z',0,NULL,NULL,NULL,NULL,21.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1073,376,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1074,376,22,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1265,1074,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1075,376,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(377,'6a3b0efb-4c23-43d3-a298-013f1c479659',2,'2013-04-25T23:30:00.000Z','(629) 876-2320','2013-04-26T00:05:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1076,377,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1266,1076,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(378,'6a3b0efb-4c23-43d3-a298-013f1c479659',2,'2013-05-01T17:20:00.000Z','(629) 876-2320','2013-05-01T18:00:00.000Z',0,NULL,NULL,NULL,NULL,31.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1077,378,2,1,1,6.15,7.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1267,1077,48,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1268,1077,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1078,378,10,2,1,16.95,19.65,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1269,1078,49,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1270,1078,15,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1271,1078,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1079,378,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1080,378,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(379,'6a3b0efb-4c23-43d3-a298-013f1c479659',2,'2013-05-26T00:50:00.000Z','(629) 876-2320','2013-05-26T01:26:00.000Z',0,NULL,NULL,NULL,NULL,17.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1081,379,2,3,1,14.45,17.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1272,1081,50,1,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(380,'13144c4f-9a3f-487e-95b2-013f1c47965a',2,'2013-04-24T01:05:00.000Z','(282) 169-7830','2013-04-24T01:42:00.000Z',0,NULL,NULL,NULL,NULL,34.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1082,380,11,2,1,16.95,18.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1273,1082,16,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1083,380,12,1,1,7.65,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1274,1083,25,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1275,1083,17,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1276,1083,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1084,380,34,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1085,380,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(381,'13144c4f-9a3f-487e-95b2-013f1c47965a',2,'2013-05-04T00:30:00.000Z','(282) 169-7830','2013-05-04T01:07:00.000Z',0,NULL,NULL,NULL,NULL,71.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1086,381,13,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1277,1086,51,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1278,1086,52,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1087,381,1,5,1,17.95,17.95,'put all the anchovies on one half, mushrooms on the other half');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1088,381,14,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1279,1088,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1280,1088,42,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1089,381,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1090,381,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1091,381,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(382,'c1592825-a41c-4a7f-b6a2-013f1c47965b',3,'2013-04-04T01:50:00.000Z','(376) 583-5528','2013-04-04T02:28:00.000Z',2,'Ap #791-9237 Convallis Ave','Interdum','LA','74380',26.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1092,382,15,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1281,1092,26,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1282,1092,27,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1283,1092,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1284,1092,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(383,'c1592825-a41c-4a7f-b6a2-013f1c47965b',2,'2013-04-12T17:15:00.000Z','(376) 583-5528','2013-04-12T17:54:00.000Z',0,NULL,NULL,NULL,NULL,25.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1093,383,16,2,1,16.95,19.65,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1285,1093,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1286,1093,19,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1287,1093,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1094,383,24,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1288,1094,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1095,383,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(384,'90ce645e-4991-4d23-83cc-013f1c47965c',2,'2013-03-02T01:30:00.000Z','(880) 539-7849','2013-03-02T02:04:00.000Z',0,NULL,NULL,NULL,NULL,68.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1096,384,17,4,2,23.45,51,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1289,1096,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1290,1096,28,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1291,1096,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1097,384,2,2,1,12.4,13.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1292,1097,44,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1098,384,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1099,384,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(385,'90ce645e-4991-4d23-83cc-013f1c47965c',3,'2013-03-02T01:40:00.000Z','(880) 539-7849','2013-03-02T02:18:00.000Z',2,'608 Nisi Rd.','Volutpat City','LA','26569',32.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1100,385,2,5,1,17.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1293,1100,45,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1294,1100,13,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1295,1100,46,1,4.5);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1101,385,25,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1296,1101,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1297,1101,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1102,385,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(386,'90ce645e-4991-4d23-83cc-013f1c47965c',2,'2013-03-05T17:05:00.000Z','(880) 539-7849','2013-03-05T17:46:00.000Z',0,NULL,NULL,NULL,NULL,24.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1103,386,18,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1298,1103,5,1,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(387,'90ce645e-4991-4d23-83cc-013f1c47965c',2,'2013-04-04T00:40:00.000Z','(880) 539-7849','2013-04-04T01:19:00.000Z',0,NULL,NULL,NULL,NULL,33.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1104,387,19,4,1,23.45,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1299,1104,6,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1300,1104,29,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1301,1104,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1302,1104,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1303,1104,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(388,'90ce645e-4991-4d23-83cc-013f1c47965c',2,'2013-04-14T20:10:00.000Z','(880) 539-7849','2013-04-14T20:48:00.000Z',0,NULL,NULL,NULL,NULL,45.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1105,388,2,3,2,14.45,45.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1304,1105,30,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1305,1105,48,2,6.8);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1306,1105,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(389,'90ce645e-4991-4d23-83cc-013f1c47965c',2,'2013-04-14T23:30:00.000Z','(880) 539-7849','2013-04-15T00:07:00.000Z',0,NULL,NULL,NULL,NULL,106.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1106,389,20,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1307,1106,7,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1308,1106,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1309,1106,31,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1107,389,21,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1310,1107,32,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1311,1107,16,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1108,389,3,3,1,20.95,24.35,'very light on the sauce');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1312,1108,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1313,1108,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1314,1108,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1109,389,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1110,389,33,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1111,389,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(390,'90ce645e-4991-4d23-83cc-013f1c47965c',2,'2013-05-01T22:05:00.000Z','(880) 539-7849','2013-05-01T22:44:00.000Z',0,NULL,NULL,NULL,NULL,62.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1112,390,4,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1315,1112,49,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1316,1112,33,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1317,1112,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1113,390,26,8,1,7.95,11.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1318,1113,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1319,1113,34,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1320,1113,35,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1321,1113,19,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1322,1113,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1114,390,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(391,'90ce645e-4991-4d23-83cc-013f1c47965c',2,'2013-05-02T02:10:00.000Z','(880) 539-7849','2013-05-02T02:52:00.000Z',0,NULL,NULL,NULL,NULL,44.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1115,391,5,2,2,16.95,44.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1323,1115,50,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1324,1115,13,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1325,1115,51,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(392,'90ce645e-4991-4d23-83cc-013f1c47965c',3,'2013-05-20T20:20:00.000Z','(880) 539-7849','2013-05-20T20:58:00.000Z',2,'608 Nisi Rd.','Volutpat City','LA','26569',74.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1116,392,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1117,392,6,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1326,1117,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1327,1117,15,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1328,1117,52,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1329,1117,41,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1330,1117,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1118,392,2,3,1,14.45,21.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1331,1118,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1332,1118,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1333,1118,44,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1119,392,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1120,392,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1121,392,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(393,'8c6a8389-23d1-4570-abd7-013f1c47965d',3,'2013-05-21T02:45:00.000Z','(575) 380-6774','2013-05-21T03:29:00.000Z',2,'955-4287 Consectetuer Rd.','Mauris City','OR','25882',34.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1122,393,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1334,1122,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1335,1122,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1336,1122,18,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1337,1122,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1123,393,27,9,1,8.95,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1338,1123,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1339,1123,45,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1340,1123,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1124,393,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(394,'66aa6f49-f761-4097-922e-013f1c47965e',2,'2013-03-06T02:20:00.000Z','(929) 558-5253','2013-03-06T02:57:00.000Z',0,NULL,NULL,NULL,NULL,9.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1125,394,7,1,1,7.65,9.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1341,1125,8,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1342,1125,19,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1343,1125,13,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(395,'66aa6f49-f761-4097-922e-013f1c47965e',2,'2013-03-10T17:40:00.000Z','(929) 558-5253','2013-03-10T18:18:00.000Z',0,NULL,NULL,NULL,NULL,132);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1126,395,2,3,2,14.45,42.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1344,1126,36,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1345,1126,46,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1346,1126,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1347,1126,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1127,395,8,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1128,395,9,4,2,23.45,63.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1348,1128,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1349,1128,15,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1129,395,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1130,395,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1131,395,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(396,'66aa6f49-f761-4097-922e-013f1c47965e',2,'2013-03-14T20:30:00.000Z','(929) 558-5253','2013-03-14T21:11:00.000Z',0,NULL,NULL,NULL,NULL,50.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1132,396,2,4,1,16.5,28.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1350,1132,37,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1351,1132,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1352,1132,38,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1353,1132,48,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1354,1132,49,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1133,396,10,2,1,16.95,16.95,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1134,396,32,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1135,396,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(397,'66aa6f49-f761-4097-922e-013f1c47965e',3,'2013-03-15T01:10:00.000Z','(929) 558-5253','2013-03-15T01:49:00.000Z',2,'Ap #544-2072 Et Street','Neque City','FL','32111',31.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1136,397,11,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1137,397,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1355,1137,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1356,1137,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1138,397,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(398,'66aa6f49-f761-4097-922e-013f1c47965e',3,'2013-05-03T17:05:00.000Z','(929) 558-5253','2013-05-03T17:40:00.000Z',2,'Ap #544-2072 Et Street','Neque City','FL','32111',35.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1139,398,12,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1357,1139,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1358,1139,39,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1140,398,29,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1359,1140,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1360,1140,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1141,398,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(399,'66aa6f49-f761-4097-922e-013f1c47965e',2,'2013-05-12T16:45:00.000Z','(929) 558-5253','2013-05-12T17:24:00.000Z',0,NULL,NULL,NULL,NULL,48.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1142,399,13,4,1,23.45,37.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1361,1142,50,2,8.2);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1362,1142,18,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1363,1142,51,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1364,1142,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1143,399,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1365,1143,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1366,1143,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1144,399,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(400,'e2e7932b-72bc-41d2-aedf-013f1c47965f',2,'2013-03-02T03:10:00.000Z','(432) 388-1417','2013-03-02T03:47:00.000Z',0,NULL,NULL,NULL,NULL,47.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1145,400,14,4,1,23.45,27.55,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1367,1145,9,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1368,1145,40,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1369,1145,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1146,400,2,2,1,12.4,15.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1370,1146,10,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1371,1146,20,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1372,1146,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1147,400,37,13,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1148,400,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(401,'e2e7932b-72bc-41d2-aedf-013f1c47965f',3,'2013-03-20T17:30:00.000Z','(432) 388-1417','2013-03-20T18:12:00.000Z',2,'2749 Metus Avenue','Suspendisse','WA','37668',104);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1149,401,15,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1373,1149,21,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1374,1149,52,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1150,401,2,3,2,14.45,42.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1375,1150,22,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1376,1150,23,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1377,1150,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1378,1150,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1151,401,16,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1379,1151,41,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1380,1151,24,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1381,1151,42,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1152,401,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1153,401,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1154,401,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(402,'e2e7932b-72bc-41d2-aedf-013f1c47965f',2,'2013-03-25T23:10:00.000Z','(432) 388-1417','2013-03-25T23:45:00.000Z',0,NULL,NULL,NULL,NULL,64.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1155,402,17,5,2,26.95,58.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1382,1155,13,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1156,402,22,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1383,1156,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1384,1156,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1157,402,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(403,'e2e7932b-72bc-41d2-aedf-013f1c47965f',2,'2013-04-12T16:50:00.000Z','(432) 388-1417','2013-04-12T17:32:00.000Z',0,NULL,NULL,NULL,NULL,26.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1158,403,18,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1385,1158,25,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1386,1158,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1387,1158,26,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1388,1158,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(404,'e2e7932b-72bc-41d2-aedf-013f1c47965f',3,'2013-04-17T21:15:00.000Z','(432) 388-1417','2013-04-17T21:47:00.000Z',2,'2749 Metus Avenue','Suspendisse','WA','37668',32.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1159,404,19,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1160,404,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1389,1160,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1390,1160,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1161,404,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(405,'e2e7932b-72bc-41d2-aedf-013f1c47965f',2,'2013-05-06T02:10:00.000Z','(432) 388-1417','2013-05-06T02:48:00.000Z',0,NULL,NULL,NULL,NULL,31.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1162,405,20,5,1,26.95,31.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1391,1162,27,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1392,1162,44,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(406,'d2c20582-40ef-4a60-a0a3-013f1c479660',2,'2013-05-14T23:35:00.000Z','(281) 514-3068','2013-05-15T00:09:00.000Z',0,NULL,NULL,NULL,NULL,56.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1163,406,21,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1164,406,24,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1393,1164,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1394,1164,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1165,406,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(407,'a2800de6-e629-4dbb-8259-013f1c479661',2,'2013-03-04T01:50:00.000Z','(653) 705-1457','2013-03-04T02:30:00.000Z',0,NULL,NULL,NULL,NULL,20.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1166,407,3,1,1,7.65,9.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1395,1166,45,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1396,1166,46,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1397,1166,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1167,407,25,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1398,1167,64,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1168,407,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(408,'a2800de6-e629-4dbb-8259-013f1c479661',3,'2013-04-11T00:00:00.000Z','(653) 705-1457','2013-04-11T00:35:00.000Z',2,'364-6175 Tincidunt Street','Pharetra','VA','80436',35.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1169,408,4,5,1,26.95,35.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1399,1169,47,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1400,1169,48,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1401,1169,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(409,'a2800de6-e629-4dbb-8259-013f1c479661',2,'2013-05-02T00:00:00.000Z','(653) 705-1457','2013-05-02T00:39:00.000Z',0,NULL,NULL,NULL,NULL,7.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1170,409,26,7,2,3.95,7.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1402,1170,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(410,'a2800de6-e629-4dbb-8259-013f1c479661',2,'2013-05-11T00:05:00.000Z','(653) 705-1457','2013-05-11T00:47:00.000Z',0,NULL,NULL,NULL,NULL,59.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1171,410,5,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1403,1171,28,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1404,1171,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1405,1171,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1172,410,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1406,1172,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1173,410,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(411,'a2800de6-e629-4dbb-8259-013f1c479661',2,'2013-05-17T16:50:00.000Z','(653) 705-1457','2013-05-17T17:35:00.000Z',0,NULL,NULL,NULL,NULL,29.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1174,411,6,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1407,1174,49,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1408,1174,50,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(412,'042edc65-192e-40c2-8dc9-013f1c479662',2,'2013-03-03T20:10:00.000Z','(283) 653-0786','2013-03-03T20:48:00.000Z',0,NULL,NULL,NULL,NULL,27.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1175,412,7,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1176,412,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1409,1176,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1177,412,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(413,'042edc65-192e-40c2-8dc9-013f1c479662',2,'2013-03-12T23:45:00.000Z','(283) 653-0786','2013-03-13T00:30:00.000Z',0,NULL,NULL,NULL,NULL,17.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1178,413,29,9,2,8.95,17.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1410,1178,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1411,1178,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(414,'042edc65-192e-40c2-8dc9-013f1c479662',2,'2013-04-12T16:50:00.000Z','(283) 653-0786','2013-04-12T17:26:00.000Z',0,NULL,NULL,NULL,NULL,20.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1179,414,8,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(415,'c2f5bcfe-dbb2-45af-9e61-013f1c479663',2,'2013-03-26T02:30:00.000Z','(168) 424-7326','2013-03-26T03:14:00.000Z',0,NULL,NULL,NULL,NULL,46);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1180,415,2,2,2,12.4,32.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1412,1180,11,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1413,1180,15,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1414,1180,51,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1415,1180,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1181,415,9,1,1,7.65,9.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1416,1181,52,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1417,1181,29,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1418,1181,41,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1182,415,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1183,415,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(416,'84874157-3434-48cc-b659-013f1c479664',2,'2013-04-02T02:50:00.000Z','(585) 279-3277','2013-04-02T03:38:00.000Z',0,NULL,NULL,NULL,NULL,46.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1184,416,10,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(417,'84874157-3434-48cc-b659-013f1c479664',2,'2013-05-01T22:05:00.000Z','(585) 279-3277','2013-05-01T22:41:00.000Z',0,NULL,NULL,NULL,NULL,29.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1185,417,11,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1419,1185,42,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1420,1185,43,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1421,1185,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(418,'ad897050-6f7e-4b2c-ac3c-013f1c479665',2,'2013-04-26T00:15:00.000Z','(709) 650-4546','2013-04-26T00:53:00.000Z',0,NULL,NULL,NULL,NULL,82.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1186,418,12,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1422,1186,12,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1423,1186,44,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1187,418,13,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1188,418,14,4,1,23.45,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1424,1188,30,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1425,1188,45,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1426,1188,46,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1427,1188,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1189,418,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1190,418,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1191,418,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(419,'b134085a-e4d8-4d5a-91df-013f1c479666',2,'2013-03-10T22:10:00.000Z','(272) 138-1745','2013-03-10T22:56:00.000Z',0,NULL,NULL,NULL,NULL,37.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1192,419,2,2,1,12.4,16.45,'hold the liver');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1428,1192,16,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1429,1192,17,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1193,419,1,5,1,17.95,17.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1194,419,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1195,419,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(420,'b134085a-e4d8-4d5a-91df-013f1c479666',2,'2013-04-10T20:20:00.000Z','(272) 138-1745','2013-04-10T20:53:00.000Z',0,NULL,NULL,NULL,NULL,42.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1196,420,15,4,1,23.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1430,1196,18,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1197,420,2,2,1,12.4,13.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1431,1197,19,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1198,420,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1199,420,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(421,'b134085a-e4d8-4d5a-91df-013f1c479666',3,'2013-04-18T01:30:00.000Z','(272) 138-1745','2013-04-18T02:06:00.000Z',2,'P.O. Box 292, 1209 Quis St.','Penatibus','FL','11929',36.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1200,421,16,4,1,23.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1432,1200,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1433,1200,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1201,421,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1434,1201,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1435,1201,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1202,421,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(422,'51b09a06-8d20-4a75-9078-013f1c479667',2,'2013-03-10T22:15:00.000Z','(270) 574-3828','2013-03-10T22:52:00.000Z',0,NULL,NULL,NULL,NULL,17.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1203,422,17,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1204,422,22,7,2,3.95,7.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1436,1204,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1437,1204,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1205,422,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(423,'51b09a06-8d20-4a75-9078-013f1c479667',2,'2013-03-14T20:10:00.000Z','(270) 574-3828','2013-03-14T20:51:00.000Z',0,NULL,NULL,NULL,NULL,82.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1206,423,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1438,1206,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1439,1206,31,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1440,1206,15,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1207,423,18,4,1,23.45,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1441,1207,32,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1442,1207,16,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1443,1207,17,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1444,1207,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1208,423,19,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1445,1208,47,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1446,1208,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1209,423,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1210,423,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1211,423,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(424,'51b09a06-8d20-4a75-9078-013f1c479667',2,'2013-03-20T17:10:00.000Z','(270) 574-3828','2013-03-20T17:50:00.000Z',0,NULL,NULL,NULL,NULL,80.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1212,424,20,4,1,23.45,27.55,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1447,1212,33,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1213,424,21,2,1,16.95,23.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1448,1213,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1449,1213,48,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1450,1213,19,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1451,1213,49,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1214,424,3,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1215,424,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1216,424,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1217,424,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(425,'51b09a06-8d20-4a75-9078-013f1c479667',2,'2013-03-25T22:40:00.000Z','(270) 574-3828','2013-03-25T23:16:00.000Z',0,NULL,NULL,NULL,NULL,43.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1218,425,4,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1452,1218,34,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1453,1218,50,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1454,1218,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1219,425,23,9,1,8.95,11.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1455,1219,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1456,1219,35,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1457,1219,36,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1220,425,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(426,'51b09a06-8d20-4a75-9078-013f1c479667',2,'2013-04-17T19:45:00.000Z','(270) 574-3828','2013-04-17T20:26:00.000Z',0,NULL,NULL,NULL,NULL,34.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1221,426,5,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1222,426,24,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1458,1222,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1223,426,33,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(427,'51b09a06-8d20-4a75-9078-013f1c479667',2,'2013-04-21T00:45:00.000Z','(270) 574-3828','2013-04-21T01:25:00.000Z',0,NULL,NULL,NULL,NULL,61.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1224,427,6,5,1,26.95,31.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1459,1224,13,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1460,1224,14,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1461,1224,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1225,427,7,4,1,23.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1462,1225,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1463,1225,51,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1226,427,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1227,427,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(428,'51b09a06-8d20-4a75-9078-013f1c479667',2,'2013-05-11T00:30:00.000Z','(270) 574-3828','2013-05-11T01:01:00.000Z',0,NULL,NULL,NULL,NULL,31.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1228,428,8,4,1,23.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1464,1228,52,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1229,428,25,7,1,3.95,4.4,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1465,1229,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1466,1229,60,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1467,1229,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1230,428,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(429,'51b09a06-8d20-4a75-9078-013f1c479667',2,'2013-05-11T01:45:00.000Z','(270) 574-3828','2013-05-11T02:26:00.000Z',0,NULL,NULL,NULL,NULL,90.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1231,429,9,5,2,26.95,53.9,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1232,429,10,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1468,1232,5,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1469,1232,15,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1470,1232,41,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1471,1232,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1233,429,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1234,429,38,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(430,'51b09a06-8d20-4a75-9078-013f1c479667',2,'2013-05-23T17:45:00.000Z','(270) 574-3828','2013-05-23T18:25:00.000Z',0,NULL,NULL,NULL,NULL,53.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1235,430,11,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1236,430,26,7,1,3.95,5.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1472,1236,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1473,1236,16,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1474,1236,42,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1237,430,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(431,'51b09a06-8d20-4a75-9078-013f1c479667',2,'2013-05-24T00:30:00.000Z','(270) 574-3828','2013-05-24T01:08:00.000Z',0,NULL,NULL,NULL,NULL,59.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1238,431,12,4,2,23.45,59.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1475,1238,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1476,1238,44,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1477,1238,37,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1478,1238,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(432,'e414e5dc-e3a4-4116-850b-013f1c479668',2,'2013-03-12T16:20:00.000Z','(494) 542-9811','2013-03-12T16:57:00.000Z',0,NULL,NULL,NULL,NULL,27.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1239,432,13,1,1,7.65,9.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1479,1239,17,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1480,1239,45,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1481,1239,38,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1240,432,27,9,1,8.95,15.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1482,1240,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1483,1240,63,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1484,1240,46,1,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1485,1240,47,1,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1486,1240,18,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1487,1240,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1241,432,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(433,'e414e5dc-e3a4-4116-850b-013f1c479668',2,'2013-03-14T22:15:00.000Z','(494) 542-9811','2013-03-14T22:55:00.000Z',0,NULL,NULL,NULL,NULL,40.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1242,433,14,1,1,7.65,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1488,1242,48,2,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1489,1242,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1243,433,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1244,433,2,1,1,6.15,7.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1490,1244,19,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1491,1244,13,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1245,433,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1246,433,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1247,433,32,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(434,'e414e5dc-e3a4-4116-850b-013f1c479668',2,'2013-03-23T16:20:00.000Z','(494) 542-9811','2013-03-23T17:00:00.000Z',0,NULL,NULL,NULL,NULL,27.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1248,434,15,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1492,1248,39,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1493,1248,49,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1494,1248,50,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1495,1248,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(435,'e414e5dc-e3a4-4116-850b-013f1c479668',2,'2013-04-20T19:35:00.000Z','(494) 542-9811','2013-04-20T20:12:00.000Z',0,NULL,NULL,NULL,NULL,33.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1249,435,2,4,1,16.5,18.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1496,1249,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1497,1249,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1250,435,28,9,1,8.95,12.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1498,1250,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1499,1250,51,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1500,1250,52,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1501,1250,41,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1251,435,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(436,'e414e5dc-e3a4-4116-850b-013f1c479668',2,'2013-05-12T23:10:00.000Z','(494) 542-9811','2013-05-12T23:44:00.000Z',0,NULL,NULL,NULL,NULL,30.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1252,436,16,1,2,7.65,19.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1502,1252,15,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1503,1252,42,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1504,1252,16,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1253,436,29,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1505,1253,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1254,436,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(437,'e414e5dc-e3a4-4116-850b-013f1c479668',3,'2013-05-13T00:05:00.000Z','(494) 542-9811','2013-05-13T00:44:00.000Z',2,'8682 Dignissim St.','Sagittis City','MA','86664',28.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1255,437,1,1,1,6.15,6.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1256,437,2,2,1,12.4,17.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1506,1256,40,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1507,1256,43,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1508,1256,44,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1509,1256,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1257,437,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1258,437,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(438,'e414e5dc-e3a4-4116-850b-013f1c479668',2,'2013-05-14T20:20:00.000Z','(494) 542-9811','2013-05-14T20:59:00.000Z',0,NULL,NULL,NULL,NULL,29.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1259,438,17,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1510,1259,45,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1511,1259,46,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(439,'e414e5dc-e3a4-4116-850b-013f1c479668',2,'2013-05-18T01:20:00.000Z','(494) 542-9811','2013-05-18T01:58:00.000Z',0,NULL,NULL,NULL,NULL,19.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1260,439,2,2,1,12.4,19.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1512,1260,47,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1513,1260,17,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1514,1260,20,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1515,1260,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(440,'e414e5dc-e3a4-4116-850b-013f1c479668',2,'2013-05-26T00:40:00.000Z','(494) 542-9811','2013-05-26T01:21:00.000Z',0,NULL,NULL,NULL,NULL,70.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1261,440,2,3,2,14.45,49.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1516,1261,48,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1517,1261,49,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1518,1261,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1519,1261,50,1,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1262,440,30,9,2,8.95,17.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1520,1262,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1521,1262,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1263,440,37,13,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(441,'e375b684-d152-49c7-a640-013f1c479669',2,'2013-04-14T23:35:00.000Z','(341) 395-7156','2013-04-15T00:13:00.000Z',0,NULL,NULL,NULL,NULL,35.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1264,441,18,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1522,1264,51,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1523,1264,21,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1524,1264,22,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1265,441,22,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1525,1265,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1266,441,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(442,'e375b684-d152-49c7-a640-013f1c479669',3,'2013-05-10T21:40:00.000Z','(341) 395-7156','2013-05-10T22:16:00.000Z',2,'6924 Eleifend Av.','Tellus','KY','43609',46.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1267,442,19,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1526,1267,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1527,1267,52,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1268,442,2,4,1,16.5,18.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1528,1268,6,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1529,1268,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1269,442,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1270,442,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(443,'e375b684-d152-49c7-a640-013f1c479669',2,'2013-05-21T00:30:00.000Z','(341) 395-7156','2013-05-21T01:10:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1271,443,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1530,1271,61,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(444,'e375b684-d152-49c7-a640-013f1c479669',2,'2013-05-24T01:05:00.000Z','(341) 395-7156','2013-05-24T01:40:00.000Z',0,NULL,NULL,NULL,NULL,37.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1272,444,2,4,2,16.5,37.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1531,1272,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1532,1272,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(445,'e375b684-d152-49c7-a640-013f1c479669',2,'2013-05-25T17:05:00.000Z','(341) 395-7156','2013-05-25T17:42:00.000Z',0,NULL,NULL,NULL,NULL,56.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1273,445,1,3,2,14.45,28.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1274,445,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1533,1274,23,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1534,1274,41,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1535,1274,42,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1275,445,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1276,445,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(446,'f805ac2d-caba-41f4-b52a-013f1c47966a',2,'2013-04-05T17:15:00.000Z','(708) 211-0792','2013-04-05T17:59:00.000Z',0,NULL,NULL,NULL,NULL,18.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1277,446,20,1,1,7.65,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1536,1277,14,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1537,1277,24,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1278,446,24,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1538,1278,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1539,1278,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1279,446,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(447,'f805ac2d-caba-41f4-b52a-013f1c47966a',2,'2013-04-05T20:15:00.000Z','(708) 211-0792','2013-04-05T20:51:00.000Z',0,NULL,NULL,NULL,NULL,65.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1280,447,21,4,2,23.45,51,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1540,1280,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1541,1280,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1281,447,25,8,1,7.95,11.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1542,1281,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1543,1281,15,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1544,1281,44,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1545,1281,16,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1546,1281,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1282,447,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(448,'f805ac2d-caba-41f4-b52a-013f1c47966a',2,'2013-04-13T00:30:00.000Z','(708) 211-0792','2013-04-13T01:10:00.000Z',0,NULL,NULL,NULL,NULL,26.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1283,448,2,3,1,14.45,26.35,'say ''Hi'' to Doris');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1547,1283,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1548,1283,45,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1549,1283,46,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1550,1283,47,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1551,1283,18,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(449,'f805ac2d-caba-41f4-b52a-013f1c47966a',2,'2013-04-25T21:35:00.000Z','(708) 211-0792','2013-04-25T22:13:00.000Z',0,NULL,NULL,NULL,NULL,7.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1284,449,26,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1552,1284,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1553,1284,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(450,'f805ac2d-caba-41f4-b52a-013f1c47966a',2,'2013-05-12T17:45:00.000Z','(708) 211-0792','2013-05-12T18:22:00.000Z',0,NULL,NULL,NULL,NULL,50.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1285,450,3,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1554,1285,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1555,1285,48,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1286,450,27,9,2,8.95,17.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1556,1286,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1287,450,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(451,'f805ac2d-caba-41f4-b52a-013f1c47966a',2,'2013-05-12T20:45:00.000Z','(708) 211-0792','2013-05-12T21:24:00.000Z',0,NULL,NULL,NULL,NULL,21);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1288,451,4,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1557,1288,49,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1558,1288,50,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1559,1288,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(452,'bab58008-51db-4a69-84d1-013f1c47966b',2,'2013-03-02T03:30:00.000Z','(950) 862-9798','2013-03-02T04:04:00.000Z',0,NULL,NULL,NULL,NULL,21);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1289,452,5,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1560,1289,13,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1561,1289,51,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1562,1289,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(453,'bab58008-51db-4a69-84d1-013f1c47966b',2,'2013-04-24T01:15:00.000Z','(950) 862-9798','2013-04-24T01:55:00.000Z',0,NULL,NULL,NULL,NULL,66.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1290,453,2,3,1,14.45,22.95,'very light on the cheese');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1563,1290,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1564,1290,25,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1565,1290,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1566,1290,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1567,1290,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1568,1290,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1291,453,6,2,2,16.95,39.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1569,1291,42,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1570,1291,43,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1571,1291,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1292,453,35,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1293,453,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(454,'9d8c5bc2-769a-4ab9-9ace-013f1c47966c',2,'2013-03-02T00:35:00.000Z','(510) 118-7374','2013-03-02T01:10:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1294,454,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1572,1294,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1573,1294,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(455,'9d8c5bc2-769a-4ab9-9ace-013f1c47966c',2,'2013-03-04T02:35:00.000Z','(510) 118-7374','2013-03-04T03:15:00.000Z',0,NULL,NULL,NULL,NULL,44.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1295,455,7,2,2,16.95,33.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1296,455,29,9,1,8.95,8.95,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1574,1296,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1575,1296,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1297,455,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(456,'9d8c5bc2-769a-4ab9-9ace-013f1c47966c',2,'2013-03-05T20:10:00.000Z','(510) 118-7374','2013-03-05T20:52:00.000Z',0,NULL,NULL,NULL,NULL,57.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1298,456,8,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1299,456,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1576,1299,61,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1300,456,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(457,'9d8c5bc2-769a-4ab9-9ace-013f1c47966c',2,'2013-04-01T23:40:00.000Z','(510) 118-7374','2013-04-02T00:19:00.000Z',0,NULL,NULL,NULL,NULL,20.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1301,457,9,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(458,'9d8c5bc2-769a-4ab9-9ace-013f1c47966c',2,'2013-04-06T01:30:00.000Z','(510) 118-7374','2013-04-06T02:12:00.000Z',0,NULL,NULL,NULL,NULL,27.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1302,458,10,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1577,1302,26,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1578,1302,44,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1579,1302,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(459,'9d8c5bc2-769a-4ab9-9ace-013f1c47966c',3,'2013-04-12T19:40:00.000Z','(510) 118-7374','2013-04-12T20:19:00.000Z',2,'P.O. Box 235, 8495 Risus. Avenue','Quam','WA','37294',4.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1303,459,22,7,1,3.95,4.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1580,1303,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1581,1303,16,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(460,'9d8c5bc2-769a-4ab9-9ace-013f1c47966c',2,'2013-05-17T19:10:00.000Z','(510) 118-7374','2013-05-17T19:53:00.000Z',0,NULL,NULL,NULL,NULL,27.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1304,460,11,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1582,1304,7,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1583,1304,45,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1584,1304,46,1,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(461,'d7e0378c-77ab-403c-a5a1-013f1c47966d',2,'2013-03-01T23:10:00.000Z','(552) 554-3280','2013-03-01T23:50:00.000Z',0,NULL,NULL,NULL,NULL,27.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1305,461,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1306,461,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1585,1306,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1586,1306,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1307,461,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(462,'d7e0378c-77ab-403c-a5a1-013f1c47966d',2,'2013-03-13T01:50:00.000Z','(552) 554-3280','2013-03-13T02:30:00.000Z',0,NULL,NULL,NULL,NULL,87.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1308,462,1,3,2,14.45,28.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1309,462,12,4,2,23.45,55.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1587,1309,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1588,1309,27,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1310,462,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1311,462,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(463,'d7e0378c-77ab-403c-a5a1-013f1c47966d',2,'2013-04-14T19:30:00.000Z','(552) 554-3280','2013-04-14T20:06:00.000Z',0,NULL,NULL,NULL,NULL,12.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1312,463,1,1,1,6.15,6.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1313,463,24,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1589,1313,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1590,1313,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1314,463,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(464,'d7e0378c-77ab-403c-a5a1-013f1c47966d',2,'2013-05-05T19:35:00.000Z','(552) 554-3280','2013-05-05T20:13:00.000Z',0,NULL,NULL,NULL,NULL,19.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1315,464,13,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1591,1315,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1592,1315,28,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1593,1315,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(465,'d7e0378c-77ab-403c-a5a1-013f1c47966d',2,'2013-05-11T02:45:00.000Z','(552) 554-3280','2013-05-11T03:22:00.000Z',0,NULL,NULL,NULL,NULL,8.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1316,465,2,1,1,6.15,8.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1594,1316,29,2,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1595,1316,47,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(466,'d7e0378c-77ab-403c-a5a1-013f1c47966d',2,'2013-05-15T00:00:00.000Z','(552) 554-3280','2013-05-15T00:39:00.000Z',0,NULL,NULL,NULL,NULL,20.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1317,466,14,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(467,'d7e0378c-77ab-403c-a5a1-013f1c47966d',2,'2013-05-23T19:30:00.000Z','(552) 554-3280','2013-05-23T20:16:00.000Z',0,NULL,NULL,NULL,NULL,22.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1318,467,15,2,1,16.95,22.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1596,1318,19,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1597,1318,48,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1598,1318,49,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(468,'d634a1a7-97c3-4373-bf55-013f1c47966e',2,'2013-03-20T22:15:00.000Z','(487) 913-4567','2013-03-20T22:59:00.000Z',0,NULL,NULL,NULL,NULL,55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1319,468,16,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1599,1319,30,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1600,1319,50,1,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1320,468,17,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1321,468,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1322,468,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(469,'d634a1a7-97c3-4373-bf55-013f1c47966e',2,'2013-03-26T00:30:00.000Z','(487) 913-4567','2013-03-26T01:09:00.000Z',0,NULL,NULL,NULL,NULL,24.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1323,469,18,1,2,7.65,17.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1601,1323,13,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1602,1323,14,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1603,1323,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1324,469,25,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1604,1324,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1325,469,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(470,'d634a1a7-97c3-4373-bf55-013f1c47966e',2,'2013-04-01T17:35:00.000Z','(487) 913-4567','2013-04-01T18:14:00.000Z',0,NULL,NULL,NULL,NULL,24.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1326,470,19,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1605,1326,51,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1606,1326,52,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(471,'d634a1a7-97c3-4373-bf55-013f1c47966e',3,'2013-04-26T01:50:00.000Z','(487) 913-4567','2013-04-26T02:26:00.000Z',2,'3192 Laoreet Rd.','Integer','IA','10919',19.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1327,471,20,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1607,1327,41,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(472,'d634a1a7-97c3-4373-bf55-013f1c47966e',2,'2013-05-05T23:45:00.000Z','(487) 913-4567','2013-05-06T00:26:00.000Z',0,NULL,NULL,NULL,NULL,35.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1328,472,1,1,1,6.15,6.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1329,472,21,4,1,23.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1608,1329,15,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1330,472,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1331,472,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(473,'d634a1a7-97c3-4373-bf55-013f1c47966e',2,'2013-05-06T01:20:00.000Z','(487) 913-4567','2013-05-06T01:57:00.000Z',0,NULL,NULL,NULL,NULL,30.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1332,473,3,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1609,1332,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1610,1332,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1611,1332,43,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1333,473,26,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1612,1333,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1334,473,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(474,'d634a1a7-97c3-4373-bf55-013f1c47966e',3,'2013-05-23T17:15:00.000Z','(487) 913-4567','2013-05-23T18:02:00.000Z',2,'3192 Laoreet Rd.','Integer','IA','10919',8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1335,474,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1613,1335,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(475,'d634a1a7-97c3-4373-bf55-013f1c47966e',2,'2013-05-23T20:45:00.000Z','(487) 913-4567','2013-05-23T21:17:00.000Z',0,NULL,NULL,NULL,NULL,59.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1336,475,4,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1614,1336,44,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1615,1336,31,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1616,1336,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1337,475,28,9,1,8.95,9.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1617,1337,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1618,1337,62,1,0.45);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1338,475,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(476,'f4bce6d7-6a19-41a3-9cd8-013f1c47966f',2,'2013-03-05T20:30:00.000Z','(618) 597-6222','2013-03-05T21:14:00.000Z',0,NULL,NULL,NULL,NULL,40.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1339,476,5,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1619,1339,32,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1620,1339,45,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1340,476,29,9,1,8.95,14.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1621,1340,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1622,1340,33,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1623,1340,16,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1624,1340,46,1,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1625,1340,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1341,476,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(477,'f4bce6d7-6a19-41a3-9cd8-013f1c47966f',2,'2013-03-23T22:00:00.000Z','(618) 597-6222','2013-03-23T22:39:00.000Z',0,NULL,NULL,NULL,NULL,37);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1342,477,6,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1626,1342,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1627,1342,47,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1628,1342,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1343,477,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1629,1343,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1630,1343,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1344,477,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(478,'f4bce6d7-6a19-41a3-9cd8-013f1c47966f',2,'2013-04-14T23:00:00.000Z','(618) 597-6222','2013-04-14T23:39:00.000Z',0,NULL,NULL,NULL,NULL,23.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1345,478,7,2,1,16.95,23.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1631,1345,34,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1632,1345,48,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1633,1345,49,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1634,1345,18,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(479,'f4bce6d7-6a19-41a3-9cd8-013f1c47966f',2,'2013-05-01T17:35:00.000Z','(618) 597-6222','2013-05-01T18:11:00.000Z',0,NULL,NULL,NULL,NULL,34.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1346,479,8,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1635,1346,35,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1636,1346,36,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1347,479,22,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1637,1347,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1348,479,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(480,'f4bce6d7-6a19-41a3-9cd8-013f1c47966f',2,'2013-05-03T22:45:00.000Z','(618) 597-6222','2013-05-03T23:29:00.000Z',0,NULL,NULL,NULL,NULL,23.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1349,480,9,4,1,23.45,23.45,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(481,'f4bce6d7-6a19-41a3-9cd8-013f1c47966f',2,'2013-05-06T01:20:00.000Z','(618) 597-6222','2013-05-06T01:54:00.000Z',0,NULL,NULL,NULL,NULL,42.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1350,481,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1351,481,2,4,1,16.5,24.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1638,1351,19,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1639,1351,50,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1352,481,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1353,481,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(482,'f4bce6d7-6a19-41a3-9cd8-013f1c47966f',3,'2013-05-12T19:40:00.000Z','(618) 597-6222','2013-05-12T20:21:00.000Z',2,'Ap #910-8612 Quisque Avenue','Utville','MD','74665',103.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1354,482,10,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1640,1354,37,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1641,1354,51,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1642,1354,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1355,482,11,5,2,26.95,71.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1643,1355,8,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1644,1355,38,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1645,1355,13,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1646,1355,52,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1356,482,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1357,482,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(483,'f4bce6d7-6a19-41a3-9cd8-013f1c47966f',3,'2013-05-23T23:20:00.000Z','(618) 597-6222','2013-05-24T00:05:00.000Z',2,'Ap #910-8612 Quisque Avenue','Utville','MD','74665',8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1358,483,23,9,1,8.95,8.95,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1647,1358,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1648,1358,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(484,'0a54e14d-8deb-41d3-b00f-013f1c479670',2,'2013-03-26T00:05:00.000Z','(116) 965-7370','2013-03-26T00:45:00.000Z',0,NULL,NULL,NULL,NULL,75.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1359,484,12,4,2,23.45,63.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1649,1359,41,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1650,1359,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1651,1359,15,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1652,1359,42,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1360,484,24,8,1,7.95,10.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1653,1360,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1654,1360,43,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1655,1360,39,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1656,1360,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1361,484,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(485,'0a54e14d-8deb-41d3-b00f-013f1c479670',2,'2013-04-24T02:00:00.000Z','(116) 965-7370','2013-04-24T02:36:00.000Z',0,NULL,NULL,NULL,NULL,81.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1362,485,13,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1657,1362,40,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1658,1362,44,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1659,1362,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1363,485,14,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1660,1363,45,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1661,1363,46,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1662,1363,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1364,485,15,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1663,1364,20,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1664,1364,21,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1365,485,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1366,485,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1367,485,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(486,'0a54e14d-8deb-41d3-b00f-013f1c479670',2,'2013-04-25T20:45:00.000Z','(116) 965-7370','2013-04-25T21:18:00.000Z',0,NULL,NULL,NULL,NULL,43.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1368,486,2,4,1,16.5,18.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1665,1368,22,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1666,1368,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1369,486,16,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1667,1369,23,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1668,1369,47,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1669,1369,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1370,486,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1371,486,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(487,'14f87722-8c15-47c1-99f0-013f1c479671',2,'2013-04-03T17:20:00.000Z','(998) 695-1689','2013-04-03T18:00:00.000Z',0,NULL,NULL,NULL,NULL,96.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1372,487,17,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1670,1372,24,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1671,1372,25,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1672,1372,26,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1673,1372,16,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1674,1372,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1373,487,18,3,2,20.95,41.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1374,487,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1675,1374,27,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1676,1374,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1677,1374,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1678,1374,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1375,487,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1376,487,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1377,487,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(488,'9c8f68ec-f65b-4d16-a919-013f1c479672',2,'2013-03-03T22:30:00.000Z','(376) 235-6524','2013-03-03T23:06:00.000Z',0,NULL,NULL,NULL,NULL,29.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1378,488,19,3,1,20.95,29.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1679,1378,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1680,1378,48,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1681,1378,49,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1682,1378,28,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1683,1378,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(489,'9c8f68ec-f65b-4d16-a919-013f1c479672',2,'2013-05-20T17:05:00.000Z','(376) 235-6524','2013-05-20T17:41:00.000Z',0,NULL,NULL,NULL,NULL,5.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1379,489,25,7,1,3.95,5.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1684,1379,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1685,1379,13,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1686,1379,50,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(490,'23bcfc95-a3cd-4913-80b0-013f1c479673',2,'2013-03-26T01:15:00.000Z','(814) 528-1833','2013-03-26T01:55:00.000Z',0,NULL,NULL,NULL,NULL,35.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1380,490,20,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1687,1380,29,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1688,1380,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1689,1380,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1381,490,26,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1690,1381,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1691,1381,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1382,490,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(491,'23bcfc95-a3cd-4913-80b0-013f1c479673',2,'2013-05-20T21:20:00.000Z','(814) 528-1833','2013-05-20T22:02:00.000Z',0,NULL,NULL,NULL,NULL,21.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1383,491,21,1,1,7.65,8.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1692,1383,9,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1693,1383,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1384,491,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1694,1384,63,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1385,491,34,11,2,1.95,3.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(492,'23bcfc95-a3cd-4913-80b0-013f1c479673',2,'2013-05-23T16:45:00.000Z','(814) 528-1833','2013-05-23T17:28:00.000Z',0,NULL,NULL,NULL,NULL,16.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1386,492,2,1,2,6.15,16.2,'put all the anchovies on one half, mushrooms on the other half');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1695,1386,10,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1696,1386,51,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1697,1386,30,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1698,1386,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(493,'e4d8bc78-fbbd-4504-945c-013f1c479674',2,'2013-03-25T17:05:00.000Z','(594) 147-8651','2013-03-25T17:45:00.000Z',0,NULL,NULL,NULL,NULL,22.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1387,493,3,2,1,16.95,22.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1699,1387,11,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1700,1387,52,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1701,1387,31,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1702,1387,41,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1703,1387,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(494,'e4d8bc78-fbbd-4504-945c-013f1c479674',2,'2013-05-06T00:45:00.000Z','(594) 147-8651','2013-05-06T01:23:00.000Z',0,NULL,NULL,NULL,NULL,24.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1388,494,4,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1704,1388,32,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1705,1388,33,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(495,'03256bb2-877d-4207-997f-013f1c479675',2,'2013-03-03T23:50:00.000Z','(153) 558-2447','2013-03-04T00:33:00.000Z',0,NULL,NULL,NULL,NULL,27.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1389,495,5,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1706,1389,12,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1707,1389,42,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1708,1389,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(496,'03256bb2-877d-4207-997f-013f1c479675',2,'2013-03-05T21:50:00.000Z','(153) 558-2447','2013-03-05T22:27:00.000Z',0,NULL,NULL,NULL,NULL,73.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1390,496,6,4,2,23.45,63.3,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1709,1390,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1710,1390,34,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1711,1390,15,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1712,1390,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1391,496,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1713,1391,64,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1392,496,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(497,'03256bb2-877d-4207-997f-013f1c479675',2,'2013-03-23T17:20:00.000Z','(153) 558-2447','2013-03-23T18:05:00.000Z',0,NULL,NULL,NULL,NULL,18.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1393,497,2,1,1,6.15,8.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1714,1393,44,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1715,1393,16,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1716,1393,35,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1717,1393,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1394,497,29,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1718,1394,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1395,497,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(498,'03256bb2-877d-4207-997f-013f1c479675',2,'2013-03-25T19:05:00.000Z','(153) 558-2447','2013-03-25T19:42:00.000Z',0,NULL,NULL,NULL,NULL,77.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1396,498,7,3,1,20.95,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1719,1396,36,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1397,498,8,4,2,23.45,51,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1720,1397,17,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1398,498,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1399,498,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(499,'03256bb2-877d-4207-997f-013f1c479675',3,'2013-03-25T22:35:00.000Z','(153) 558-2447','2013-03-25T23:19:00.000Z',2,'636 Mi Street','Egestas','OH','62494',45.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1400,499,9,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1401,499,10,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1721,1401,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1722,1401,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1723,1401,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1402,499,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1403,499,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(500,'03256bb2-877d-4207-997f-013f1c479675',2,'2013-04-05T23:50:00.000Z','(153) 558-2447','2013-04-06T00:29:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1404,500,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1724,1404,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(501,'03256bb2-877d-4207-997f-013f1c479675',2,'2013-05-11T02:05:00.000Z','(153) 558-2447','2013-05-11T02:37:00.000Z',0,NULL,NULL,NULL,NULL,13.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1405,501,11,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1406,501,22,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1725,1406,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1726,1406,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1407,501,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(502,'03256bb2-877d-4207-997f-013f1c479675',3,'2013-05-20T22:05:00.000Z','(153) 558-2447','2013-05-20T22:47:00.000Z',2,'636 Mi Street','Egestas','OH','62494',119.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1408,502,12,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1409,502,13,4,2,23.45,67.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1727,1409,45,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1728,1409,46,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1729,1409,13,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1730,1409,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1410,502,14,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1411,502,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1412,502,32,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1413,502,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(503,'03256bb2-877d-4207-997f-013f1c479675',3,'2013-05-26T02:50:00.000Z','(153) 558-2447','2013-05-26T03:32:00.000Z',2,'636 Mi Street','Egestas','OH','62494',96.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1414,503,15,5,1,26.95,35.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1731,1414,37,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1732,1414,47,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1733,1414,14,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1415,503,16,3,2,20.95,52.1,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1734,1415,48,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1735,1415,49,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1736,1415,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1416,503,34,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1417,503,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(504,'e6d2a1d3-ceb4-4df5-8a63-013f1c479676',3,'2013-04-05T22:40:00.000Z','(526) 161-6430','2013-04-05T23:17:00.000Z',2,'4595 Sem St.','Odio City','MI','38863',72);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1418,504,17,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1419,504,18,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1420,504,1,5,2,17.95,35.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1421,504,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1422,504,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1423,504,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(505,'e6d2a1d3-ceb4-4df5-8a63-013f1c479676',2,'2013-04-20T20:35:00.000Z','(526) 161-6430','2013-04-20T21:11:00.000Z',0,NULL,NULL,NULL,NULL,16.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1424,505,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(506,'e6d2a1d3-ceb4-4df5-8a63-013f1c479676',2,'2013-04-23T21:00:00.000Z','(526) 161-6430','2013-04-23T21:45:00.000Z',0,NULL,NULL,NULL,NULL,64.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1425,506,19,5,1,26.95,29.2,'low salt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1737,1425,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1738,1425,15,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1739,1425,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1426,506,20,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1740,1426,50,2,8.2);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1741,1426,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1427,506,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1428,506,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(507,'e6d2a1d3-ceb4-4df5-8a63-013f1c479676',2,'2013-05-10T22:40:00.000Z','(526) 161-6430','2013-05-10T23:24:00.000Z',0,NULL,NULL,NULL,NULL,102.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1429,507,21,4,2,23.45,63.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1742,1429,38,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1743,1429,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1744,1429,51,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1745,1429,17,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1430,507,3,5,1,26.95,35.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1746,1430,52,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1747,1430,41,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1748,1430,42,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1749,1430,43,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1750,1430,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1431,507,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1432,507,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(508,'e6d2a1d3-ceb4-4df5-8a63-013f1c479676',2,'2013-05-21T02:35:00.000Z','(526) 161-6430','2013-05-21T03:21:00.000Z',0,NULL,NULL,NULL,NULL,31.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1433,508,4,5,1,26.95,31.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1751,1433,44,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1752,1433,39,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1753,1433,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(509,'e6d2a1d3-ceb4-4df5-8a63-013f1c479676',2,'2013-05-26T01:05:00.000Z','(526) 161-6430','2013-05-26T01:39:00.000Z',0,NULL,NULL,NULL,NULL,65.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1434,509,5,3,2,20.95,55.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1754,1434,5,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1755,1434,45,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1435,509,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1756,1435,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1757,1435,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1436,509,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(510,'0b98919e-c77a-47ee-a51e-013f1c479677',2,'2013-05-04T00:30:00.000Z','(245) 505-1225','2013-05-04T01:10:00.000Z',0,NULL,NULL,NULL,NULL,73.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1437,510,6,5,2,26.95,53.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1438,510,7,1,2,7.65,15.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1439,510,33,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1440,510,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(511,'b6860179-461c-469e-a1d9-013f1c479678',2,'2013-03-20T20:30:00.000Z','(268) 718-3205','2013-03-20T21:15:00.000Z',0,NULL,NULL,NULL,NULL,7.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1441,511,24,7,1,3.95,7.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1758,1441,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1759,1441,46,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1760,1441,47,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1761,1441,48,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1762,1441,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(512,'11cd5476-e492-4b6a-aa31-013f1c479679',2,'2013-03-25T20:30:00.000Z','(220) 807-9902','2013-03-25T21:05:00.000Z',0,NULL,NULL,NULL,NULL,41.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1442,512,8,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1763,1442,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1764,1442,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1765,1442,40,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1766,1442,49,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1443,512,25,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1767,1443,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1768,1443,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1444,512,35,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(513,'11cd5476-e492-4b6a-aa31-013f1c479679',3,'2013-05-10T22:10:00.000Z','(220) 807-9902','2013-05-10T22:42:00.000Z',2,'P.O. Box 838, 619 Molestie St.','Vestibulum','VT','44952',30.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1445,513,9,6,1,21.45,24.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1769,1445,20,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1770,1445,13,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1446,513,26,7,1,3.95,5.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1771,1446,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1772,1446,14,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1773,1446,15,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1447,513,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
