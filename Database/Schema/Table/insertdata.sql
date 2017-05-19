INSERT INTO roles(roleName) VALUES ('Presenter');
INSERT INTO roles(roleName) VALUES ('Organizer');
INSERT INTO roles(roleName) VALUES ('Volunteer');
INSERT INTO roles(roleName) VALUES ('Sponsor');

INSERT INTO tracks(topic) VALUES ('SQL Development');
INSERT INTO tracks(topic) VALUES ('Administration');
INSERT INTO tracks(topic) VALUES ('Architecture');
INSERT INTO tracks(topic) VALUES ('Big Data');
INSERT INTO tracks(topic) VALUES ('Advanced Analysis Techniques');
INSERT INTO tracks(topic) VALUES ('Analytics and Visualization');
INSERT INTO tracks(topic) VALUES ('BI Information Delivery');

INSERT INTO rooms(roomName) VALUES ('Room1');
INSERT INTO rooms(roomName) VALUES ('Room2');
INSERT INTO rooms(roomName) VALUES ('Room3');
INSERT INTO rooms(roomName) VALUES ('Room4');
INSERT INTO rooms(roomName) VALUES ('Room5');

INSERT INTO difficulty(difficultyLevel) VALUES ('Beginner');
INSERT INTO difficulty(difficultyLevel) VALUES ('Intermediate');
INSERT INTO difficulty(difficultyLevel) VALUES ('Advanced');
INSERT INTO difficulty(difficultyLevel) VALUES ('Non-Technical');

INSERT INTO rank(rankName) VALUES ('Platinum Sponsor');
INSERT INTO rank(rankName) VALUES ('Gold Sponsor');
INSERT INTO rank(rankName) VALUES ('Silver Sponsor');
INSERT INTO rank(rankName) VALUES ('Bronze Sponsor');

INSERT INTO sponsors(name, rankID)
VALUES 
('VMWare', (SELECT rankID FROM rank WHERE rankName = 'Platinum Sponsor')),
('Verizon Digital Media Services', (SELECT rankID FROM rank WHERE rankName = 'Platinum Sponsor')),
('Microsoft Corporation (GAP) (GAP Sponsor)', (SELECT rankID FROM rank WHERE rankName = 'Platinum Sponsor')),
('Tintri', (SELECT rankID FROM rank WHERE rankName = 'Platinum Sponsor')),
('Amazon Web Services, LLC', (SELECT rankID FROM rank WHERE rankName = 'Gold Sponsor')),
('Pyramid Analytics (GAP Sponsor)', (SELECT rankID FROM rank WHERE rankName = 'Gold Sponsor')),
('Pure Storage', (SELECT rankID FROM rank WHERE rankName = 'Gold Sponsor')),
('Profisee', (SELECT rankID FROM rank WHERE rankName = 'Gold Sponsor')),
('NetLib Security', (SELECT rankID FROM rank WHERE rankName = 'Silver Sponsor')),
('Melissa Data Corp.', (SELECT rankID FROM rank WHERE rankName = 'Silver Sponsor')),
('Red Gate Software', (SELECT rankID FROM rank WHERE rankName = 'Silver Sponsor')),
('SentryOne', (SELECT rankID FROM rank WHERE rankName = 'Silver Sponsor')),
('Hush Hush', (SELECT rankID FROM rank WHERE rankName = 'Bronze Sponsor')),
('COZYROC', (SELECT rankID FROM rank WHERE rankName = 'Bronze Sponsor')),
('SQLDocKit by Acceleratio Ltd.', (SELECT rankID FROM rank WHERE rankName = 'Bronze Sponsor'));

INSERT INTO region(regionName) VALUES ('Europe/Middle East/Africa');
INSERT INTO region(regionName) VALUES ('Canada/US');
INSERT INTO region(regionName) VALUES ('Latin America');
INSERT INTO region(regionName) VALUES ('Asia Pacific');

INSERT INTO cities(cityName) SELECT 'Lebanon' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Lebanon')
INSERT INTO cities(cityName) SELECT 'Haney' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Haney')
INSERT INTO cities(cityName) SELECT 'Hervey Bay' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Hervey Bay')
INSERT INTO cities(cityName) SELECT 'Lebanon' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Lebanon')
INSERT INTO cities(cityName) SELECT 'Cambridge' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Cambridge')
INSERT INTO cities(cityName) SELECT 'Mill Valley' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Mill Valley')
INSERT INTO cities(cityName) SELECT 'Corvallis' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Corvallis')
INSERT INTO cities(cityName) SELECT 'Milsons Point' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Milsons Point')
INSERT INTO cities(cityName) SELECT 'Bellflower' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Bellflower')
INSERT INTO cities(cityName) SELECT 'Torrance' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Torrance')
INSERT INTO cities(cityName) SELECT 'Coffs Harbour' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Coffs Harbour')
INSERT INTO cities(cityName) SELECT 'Puyallup' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Puyallup')
INSERT INTO cities(cityName) SELECT 'Peterborough' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Peterborough')
INSERT INTO cities(cityName) SELECT 'Baltimore' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Baltimore')
INSERT INTO cities(cityName) SELECT 'Berkeley' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Berkeley')
INSERT INTO cities(cityName) SELECT 'N. Vancouver' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'N. Vancouver')
INSERT INTO cities(cityName) SELECT 'Bremerton' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Bremerton')
INSERT INTO cities(cityName) SELECT 'Gateshead' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Gateshead')
INSERT INTO cities(cityName) SELECT 'Metchosin' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Metchosin')
INSERT INTO cities(cityName) SELECT 'Berkeley' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Berkeley')
INSERT INTO cities(cityName) SELECT 'Burien' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Burien')
INSERT INTO cities(cityName) SELECT 'London' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'London')
INSERT INTO cities(cityName) SELECT 'Santa Monica' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Santa Monica')
INSERT INTO cities(cityName) SELECT 'Bremerton' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Bremerton')
INSERT INTO cities(cityName) SELECT 'Matraville' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Matraville')
INSERT INTO cities(cityName) SELECT 'Santa Cruz' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Santa Cruz')
INSERT INTO cities(cityName) SELECT 'Lebanon' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Lebanon')
INSERT INTO cities(cityName) SELECT 'Colma' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Colma')
INSERT INTO cities(cityName) SELECT 'Leeds' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Leeds')
INSERT INTO cities(cityName) SELECT 'Kirkland' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Kirkland')
INSERT INTO cities(cityName) SELECT 'Oregon City' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Oregon City')
INSERT INTO cities(cityName) SELECT 'Chula Vista' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Chula Vista')
INSERT INTO cities(cityName) SELECT 'Oregon City' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Oregon City')
INSERT INTO cities(cityName) SELECT 'Stoke-on-Trent' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Stoke-on-Trent')
INSERT INTO cities(cityName) SELECT 'West Covina' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'West Covina')
INSERT INTO cities(cityName) SELECT 'Springwood' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Springwood')
INSERT INTO cities(cityName) SELECT 'Portland' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Portland')
INSERT INTO cities(cityName) SELECT 'Silverwater' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Silverwater')
INSERT INTO cities(cityName) SELECT 'London' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'London')
INSERT INTO cities(cityName) SELECT 'Cincinnati' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Cincinnati')
INSERT INTO cities(cityName) SELECT 'Torrance' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Torrance')
INSERT INTO cities(cityName) SELECT 'Townsville' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Townsville')
INSERT INTO cities(cityName) SELECT 'North Sydney' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'North Sydney')
INSERT INTO cities(cityName) SELECT 'Hervey Bay' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Hervey Bay')
INSERT INTO cities(cityName) SELECT 'Walla Walla' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Walla Walla')
INSERT INTO cities(cityName) SELECT 'Wollongong' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Wollongong')
INSERT INTO cities(cityName) SELECT 'Port Macquarie' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Port Macquarie')
INSERT INTO cities(cityName) SELECT 'Bellingham' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Bellingham')
INSERT INTO cities(cityName) SELECT 'London' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'London')
INSERT INTO cities(cityName) SELECT 'Seattle' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Seattle')
INSERT INTO cities(cityName) SELECT 'Los Angeles' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Los Angeles')
INSERT INTO cities(cityName) SELECT 'Everett' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Everett')
INSERT INTO cities(cityName) SELECT 'Berkeley' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Berkeley')
INSERT INTO cities(cityName) SELECT 'Colma' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Colma')
INSERT INTO cities(cityName) SELECT 'Langley' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Langley')
INSERT INTO cities(cityName) SELECT 'London' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'London')
INSERT INTO cities(cityName) SELECT 'El Cajon' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'El Cajon')
INSERT INTO cities(cityName) SELECT 'Burbank' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Burbank')
INSERT INTO cities(cityName) SELECT 'Redmond' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Redmond')
INSERT INTO cities(cityName) SELECT 'Bellingham' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Bellingham')
INSERT INTO cities(cityName) SELECT 'Port Macquarie' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Port Macquarie')
INSERT INTO cities(cityName) SELECT 'Yakima' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Yakima')
INSERT INTO cities(cityName) SELECT 'Burbank' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Burbank')
INSERT INTO cities(cityName) SELECT 'Rhodes' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Rhodes')
INSERT INTO cities(cityName) SELECT 'Woodland Hills' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Woodland Hills')
INSERT INTO cities(cityName) SELECT 'Coffs Harbour' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Coffs Harbour')
INSERT INTO cities(cityName) SELECT 'Sedro Woolley' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Sedro Woolley')
INSERT INTO cities(cityName) SELECT 'Lake Oswego' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Lake Oswego')
INSERT INTO cities(cityName) SELECT 'Marysville' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Marysville')
INSERT INTO cities(cityName) SELECT 'Milton Keynes' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Milton Keynes')
INSERT INTO cities(cityName) SELECT 'Calgary' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Calgary')
INSERT INTO cities(cityName) SELECT 'Townsville' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Townsville')
INSERT INTO cities(cityName) SELECT 'Burbank' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Burbank')
INSERT INTO cities(cityName) SELECT 'Oxford' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Oxford')
INSERT INTO cities(cityName) SELECT 'Townsville' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Townsville')
INSERT INTO cities(cityName) SELECT 'Lynnwood' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Lynnwood')
INSERT INTO cities(cityName) SELECT 'South Melbourne' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'South Melbourne')
INSERT INTO cities(cityName) SELECT 'Issaquah' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Issaquah')
INSERT INTO cities(cityName) SELECT 'Warrnambool' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Warrnambool')
INSERT INTO cities(cityName) SELECT 'Burlingame' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Burlingame')
INSERT INTO cities(cityName) SELECT 'Burien' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Burien')
INSERT INTO cities(cityName) SELECT 'Olympia' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Olympia')
INSERT INTO cities(cityName) SELECT 'Bury' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Bury')
INSERT INTO cities(cityName) SELECT 'North Ryde' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'North Ryde')
INSERT INTO cities(cityName) SELECT 'Stoke-on-Trent' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Stoke-on-Trent')
INSERT INTO cities(cityName) SELECT 'San Diego' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'San Diego')
INSERT INTO cities(cityName) SELECT 'Port Orchard' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Port Orchard')
INSERT INTO cities(cityName) SELECT 'Port Macquarie' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Port Macquarie')
INSERT INTO cities(cityName) SELECT 'Concord' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Concord')
INSERT INTO cities(cityName) SELECT 'Newton' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Newton')
INSERT INTO cities(cityName) SELECT 'Woodland Hills' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Woodland Hills')
INSERT INTO cities(cityName) SELECT 'Newcastle' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Newcastle')
INSERT INTO cities(cityName) SELECT 'Shawnee' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Shawnee')
INSERT INTO cities(cityName) SELECT 'Colma' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Colma')
INSERT INTO cities(cityName) SELECT 'Oak Bay' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Oak Bay')
INSERT INTO cities(cityName) SELECT 'Haney' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Haney')
INSERT INTO cities(cityName) SELECT 'Oakland' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Oakland')
INSERT INTO cities(cityName) SELECT 'Lebanon' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Lebanon')
INSERT INTO cities(cityName) SELECT 'Lane Cove' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Lane Cove')
INSERT INTO cities(cityName) SELECT 'Langley' WHERE NOT EXISTS(SELECT * FROM cities WHERE cityName= 'Langley')

INSERT INTO state(stateName) SELECT 'Oregon' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Oregon')
INSERT INTO state(stateName) SELECT 'British Columbia' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'British Columbia')
INSERT INTO state(stateName) SELECT 'Queensland' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Queensland')
INSERT INTO state(stateName) SELECT 'Oregon' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Oregon')
INSERT INTO state(stateName) SELECT 'England' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'England')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'Oregon' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Oregon')
INSERT INTO state(stateName) SELECT 'New South Wales' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'New South Wales')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'New South Wales' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'New South Wales')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'England' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'England')
INSERT INTO state(stateName) SELECT 'Maryland' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Maryland')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'British Columbia' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'British Columbia')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'England' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'England')
INSERT INTO state(stateName) SELECT 'British Columbia' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'British Columbia')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'England' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'England')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'New South Wales' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'New South Wales')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'Oregon' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Oregon')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'England' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'England')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'Oregon' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Oregon')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'Oregon' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Oregon')
INSERT INTO state(stateName) SELECT 'England' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'England')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'New South Wales' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'New South Wales')
INSERT INTO state(stateName) SELECT 'Oregon' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Oregon')
INSERT INTO state(stateName) SELECT 'New South Wales' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'New South Wales')
INSERT INTO state(stateName) SELECT 'England' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'England')
INSERT INTO state(stateName) SELECT 'Ohio' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Ohio')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'Queensland' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Queensland')
INSERT INTO state(stateName) SELECT 'New South Wales' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'New South Wales')
INSERT INTO state(stateName) SELECT 'Queensland' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Queensland')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'New South Wales' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'New South Wales')
INSERT INTO state(stateName) SELECT 'New South Wales' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'New South Wales')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'England' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'England')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'British Columbia' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'British Columbia')
INSERT INTO state(stateName) SELECT 'England' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'England')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'New South Wales' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'New South Wales')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'New South Wales' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'New South Wales')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'New South Wales' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'New South Wales')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'Oregon' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Oregon')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'England' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'England')
INSERT INTO state(stateName) SELECT 'Alberta' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Alberta')
INSERT INTO state(stateName) SELECT 'Queensland' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Queensland')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'England' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'England')
INSERT INTO state(stateName) SELECT 'Queensland' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Queensland')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'Victoria' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Victoria')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'Victoria' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Victoria')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'England' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'England')
INSERT INTO state(stateName) SELECT 'New South Wales' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'New South Wales')
INSERT INTO state(stateName) SELECT 'England' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'England')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'Washington' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Washington')
INSERT INTO state(stateName) SELECT 'New South Wales' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'New South Wales')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'British Columbia' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'British Columbia')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'New South Wales' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'New South Wales')
INSERT INTO state(stateName) SELECT 'British Columbia' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'British Columbia')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'British Columbia' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'British Columbia')
INSERT INTO state(stateName) SELECT 'British Columbia' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'British Columbia')
INSERT INTO state(stateName) SELECT 'California' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'California')
INSERT INTO state(stateName) SELECT 'Oregon' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'Oregon')
INSERT INTO state(stateName) SELECT 'New South Wales' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'New South Wales')
INSERT INTO state(stateName) SELECT 'British Columbia' WHERE NOT EXISTS(SELECT * FROM state WHERE stateName= 'British Columbia')

INSERT INTO event(eventID, eventDate, eventName, regionID)
VALUES
(626, '5/6/2017', 'Budapest', (SELECT regionID FROM region WHERE regionName = 'Europe/Middle East/Africa')),
(615, '6/3/2017', 'Baltimore', (SELECT regionID FROM region WHERE regionName = 'Canada/US')),
(608, '5/13/2017', 'Bogota', (SELECT regionID FROM region WHERE regionName = 'Latin America')),
(616, '5/20/2017', 'Kiyv', (SELECT regionID FROM region WHERE regionName = 'Europe/Middle East/Africa')),
(588, '6/3/2017', 'New York', (SELECT regionID FROM region WHERE regionName = 'Canada/US')),
(630, '5/20/2017', 'Brisbane', (SELECT regionID FROM region WHERE regionName = 'Asia Pacific')),
(599, '5/27/2017', 'Plovdiv', (SELECT regionID FROM region WHERE regionName = 'Europe/Middle East/Africa')),
(638, '5/27/2017', 'Philadelphia', (SELECT regionID FROM region WHERE regionName = 'Canada/US'));

INSERT INTO addresses(streetAddress, cityID, zipcode, stateID) 
VALUES
((SELECT '10 Napa Ct.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '10 Napa Ct.')), (SELECT cityID FROM cities WHERE cityName = 'Lebanon'), '97355' ,(SELECT stateID FROM state WHERE stateName = 'Oregon')),
((SELECT '1000 Bidweld Street' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1000 Bidweld Street')), (SELECT cityID FROM cities WHERE cityName = 'Haney'), 'V2W 1W2' ,(SELECT stateID FROM state WHERE stateName = 'British Columbia')),
((SELECT '1002 N. Spoonwood Court' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1002 N. Spoonwood Court')), (SELECT cityID FROM cities WHERE cityName = 'Hervey Bay'), '4655' ,(SELECT stateID FROM state WHERE stateName = 'Queensland')),
((SELECT '1003 Matterhorn Ct' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1003 Matterhorn Ct')), (SELECT cityID FROM cities WHERE cityName = 'Lebanon'), '97355' ,(SELECT stateID FROM state WHERE stateName = 'Oregon')),
((SELECT '1005 Matterhorn Ct.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1005 Matterhorn Ct.')), (SELECT cityID FROM cities WHERE cityName = 'Cambridge'), 'CB4 4BZ' ,(SELECT stateID FROM state WHERE stateName = 'England')),
((SELECT '1005 Matterhorn Ct.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1005 Matterhorn Ct.')), (SELECT cityID FROM cities WHERE cityName = 'Mill Valley'), '94941' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1005 Tanager Court' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1005 Tanager Court')), (SELECT cityID FROM cities WHERE cityName = 'Corvallis'), '97330' ,(SELECT stateID FROM state WHERE stateName = 'Oregon')),
((SELECT '1005 Tanager Court' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1005 Tanager Court')), (SELECT cityID FROM cities WHERE cityName = 'Milsons Point'), '2061' ,(SELECT stateID FROM state WHERE stateName = 'New South Wales')),
((SELECT '1006 Deercreek Ln' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1006 Deercreek Ln')), (SELECT cityID FROM cities WHERE cityName = 'Bellflower'), '90706' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1006 Deercreek Ln' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1006 Deercreek Ln')), (SELECT cityID FROM cities WHERE cityName = 'Torrance'), '90505' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '101 Adobe Dr' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '101 Adobe Dr')), (SELECT cityID FROM cities WHERE cityName = 'Coffs Harbour'), '2450' ,(SELECT stateID FROM state WHERE stateName = 'New South Wales')),
((SELECT '101 Adobe Dr' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '101 Adobe Dr')), (SELECT cityID FROM cities WHERE cityName = 'Puyallup'), '98371' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '101, avenue de la Gare' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '101, avenue de la Gare')), (SELECT cityID FROM cities WHERE cityName = 'Peterborough'), 'PB12' ,(SELECT stateID FROM state WHERE stateName = 'England')),
((SELECT '1010 Maple' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1010 Maple')), (SELECT cityID FROM cities WHERE cityName = 'Baltimore'), '21201' ,(SELECT stateID FROM state WHERE stateName = 'Maryland')),
((SELECT '1011 Yolanda Circle' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1011 Yolanda Circle')), (SELECT cityID FROM cities WHERE cityName = 'Berkeley'), '94704' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1011 Yolanda Circle' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1011 Yolanda Circle')), (SELECT cityID FROM cities WHERE cityName = 'N. Vancouver'), 'V7L 4J4' ,(SELECT stateID FROM state WHERE stateName = 'British Columbia')),
((SELECT '1013 Holiday Hills Dr.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1013 Holiday Hills Dr.')), (SELECT cityID FROM cities WHERE cityName = 'Bremerton'), '98312' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '1013 Holiday Hills Dr.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1013 Holiday Hills Dr.')), (SELECT cityID FROM cities WHERE cityName = 'Gateshead'), 'GA10' ,(SELECT stateID FROM state WHERE stateName = 'England')),
((SELECT '1015 Lynwood Drive' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1015 Lynwood Drive')), (SELECT cityID FROM cities WHERE cityName = 'Metchosin'), 'V9' ,(SELECT stateID FROM state WHERE stateName = 'British Columbia')),
((SELECT '1019 Carletto Drive' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1019 Carletto Drive')), (SELECT cityID FROM cities WHERE cityName = 'Berkeley'), '94704' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1019 Mt. Davidson Court' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1019 Mt. Davidson Court')), (SELECT cityID FROM cities WHERE cityName = 'Burien'), '98168' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '1019 Mt. Davidson Court' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1019 Mt. Davidson Court')), (SELECT cityID FROM cities WHERE cityName = 'London'), 'SW8 4BG' ,(SELECT stateID FROM state WHERE stateName = 'England')),
((SELECT '102 Vista Place' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '102 Vista Place')), (SELECT cityID FROM cities WHERE cityName = 'Santa Monica'), '90401' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1020 Book Road' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1020 Book Road')), (SELECT cityID FROM cities WHERE cityName = 'Bremerton'), '98312' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '1020 Carletto Drive' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1020 Carletto Drive')), (SELECT cityID FROM cities WHERE cityName = 'Matraville'), '2036' ,(SELECT stateID FROM state WHERE stateName = 'New South Wales')),
((SELECT '1020 Carletto Drive' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1020 Carletto Drive')), (SELECT cityID FROM cities WHERE cityName = 'Santa Cruz'), '95062' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1023 Hawkins Street' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1023 Hawkins Street')), (SELECT cityID FROM cities WHERE cityName = 'Lebanon'), '97355' ,(SELECT stateID FROM state WHERE stateName = 'Oregon')),
((SELECT '1024 Walnut Blvd.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1024 Walnut Blvd.')), (SELECT cityID FROM cities WHERE cityName = 'Colma'), '94014' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1025 Holly Oak Drive' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1025 Holly Oak Drive')), (SELECT cityID FROM cities WHERE cityName = 'Leeds'), 'LE18' ,(SELECT stateID FROM state WHERE stateName = 'England')),
((SELECT '1025 R St.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1025 R St.')), (SELECT cityID FROM cities WHERE cityName = 'Kirkland'), '98033' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '1025 Yosemite Dr.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1025 Yosemite Dr.')), (SELECT cityID FROM cities WHERE cityName = 'Oregon City'), '97045' ,(SELECT stateID FROM state WHERE stateName = 'Oregon')),
((SELECT '1028 Green View Court' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1028 Green View Court')), (SELECT cityID FROM cities WHERE cityName = 'Chula Vista'), '91910' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1028 Green View Court' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1028 Green View Court')), (SELECT cityID FROM cities WHERE cityName = 'Oregon City'), '97045' ,(SELECT stateID FROM state WHERE stateName = 'Oregon')),
((SELECT '1037 Hayes Court' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1037 Hayes Court')), (SELECT cityID FROM cities WHERE cityName = 'Stoke-on-Trent'), 'AS23' ,(SELECT stateID FROM state WHERE stateName = 'England')),
((SELECT '1039 Adelaide St.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1039 Adelaide St.')), (SELECT cityID FROM cities WHERE cityName = 'West Covina'), '91791' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '104 Hilltop Dr.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '104 Hilltop Dr.')), (SELECT cityID FROM cities WHERE cityName = 'Springwood'), '2777' ,(SELECT stateID FROM state WHERE stateName = 'New South Wales')),
((SELECT '104 Kaski Ln.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '104 Kaski Ln.')), (SELECT cityID FROM cities WHERE cityName = 'Portland'), '97205' ,(SELECT stateID FROM state WHERE stateName = 'Oregon')),
((SELECT '1040 Greenbush Drive' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1040 Greenbush Drive')), (SELECT cityID FROM cities WHERE cityName = 'Silverwater'), '2264' ,(SELECT stateID FROM state WHERE stateName = 'New South Wales')),
((SELECT '1040 Northridge Road' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1040 Northridge Road')), (SELECT cityID FROM cities WHERE cityName = 'London'), 'W1X3SE' ,(SELECT stateID FROM state WHERE stateName = 'England')),
((SELECT '1044 San Carlos' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1044 San Carlos')), (SELECT cityID FROM cities WHERE cityName = 'Cincinnati'), '45202' ,(SELECT stateID FROM state WHERE stateName = 'Ohio')),
((SELECT '1045 Lolita Drive' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1045 Lolita Drive')), (SELECT cityID FROM cities WHERE cityName = 'Torrance'), '90505' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1045 Lolita Drive' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1045 Lolita Drive')), (SELECT cityID FROM cities WHERE cityName = 'Townsville'), '4810' ,(SELECT stateID FROM state WHERE stateName = 'Queensland')),
((SELECT '1047 Las Quebradas Lane' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1047 Las Quebradas Lane')), (SELECT cityID FROM cities WHERE cityName = 'North Sydney'), '2055' ,(SELECT stateID FROM state WHERE stateName = 'New South Wales')),
((SELECT '1048 Burwood Way' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1048 Burwood Way')), (SELECT cityID FROM cities WHERE cityName = 'Hervey Bay'), '4655' ,(SELECT stateID FROM state WHERE stateName = 'Queensland')),
((SELECT '1048 Las Quebradas Lane' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1048 Las Quebradas Lane')), (SELECT cityID FROM cities WHERE cityName = 'Walla Walla'), '99362' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '1048 Las Quebradas Lane' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1048 Las Quebradas Lane')), (SELECT cityID FROM cities WHERE cityName = 'Wollongong'), '2500' ,(SELECT stateID FROM state WHERE stateName = 'New South Wales')),
((SELECT '105 Clark Creek Lane' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '105 Clark Creek Lane')), (SELECT cityID FROM cities WHERE cityName = 'Port Macquarie'), '2444' ,(SELECT stateID FROM state WHERE stateName = 'New South Wales')),
((SELECT '105 Woodruff Ln.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '105 Woodruff Ln.')), (SELECT cityID FROM cities WHERE cityName = 'Bellingham'), '98225' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '1050 Creed Ave' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1050 Creed Ave')), (SELECT cityID FROM cities WHERE cityName = 'London'), 'W10 6BL' ,(SELECT stateID FROM state WHERE stateName = 'England')),
((SELECT '081, boulevard du Montparnasse' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '081, boulevard du Montparnasse')), (SELECT cityID FROM cities WHERE cityName = 'Seattle'), '98104' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '1 Smiling Tree Court' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1 Smiling Tree Court')), (SELECT cityID FROM cities WHERE cityName = 'Los Angeles'), '90012' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '100, rue des Rosiers' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '100, rue des Rosiers')), (SELECT cityID FROM cities WHERE cityName = 'Everett'), '98201' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '1002 N. Spoonwood Court' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1002 N. Spoonwood Court')), (SELECT cityID FROM cities WHERE cityName = 'Berkeley'), '94704' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1005 Fremont Street' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1005 Fremont Street')), (SELECT cityID FROM cities WHERE cityName = 'Colma'), '94014' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1005 Valley Oak Plaza' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1005 Valley Oak Plaza')), (SELECT cityID FROM cities WHERE cityName = 'Langley'), 'V3A 4R2' ,(SELECT stateID FROM state WHERE stateName = 'British Columbia')),
((SELECT '1005 Valley Oak Plaza' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1005 Valley Oak Plaza')), (SELECT cityID FROM cities WHERE cityName = 'London'), 'SW6 SBY' ,(SELECT stateID FROM state WHERE stateName = 'England')),
((SELECT '1007 Cardinet Dr.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1007 Cardinet Dr.')), (SELECT cityID FROM cities WHERE cityName = 'El Cajon'), '92020' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1008 Lydia Lane' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1008 Lydia Lane')), (SELECT cityID FROM cities WHERE cityName = 'Burbank'), '91502' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '101 Candy Rd.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '101 Candy Rd.')), (SELECT cityID FROM cities WHERE cityName = 'Redmond'), '98052' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '1011 Green St.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1011 Green St.')), (SELECT cityID FROM cities WHERE cityName = 'Bellingham'), '98225' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '1013 Buchanan Rd' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1013 Buchanan Rd')), (SELECT cityID FROM cities WHERE cityName = 'Port Macquarie'), '2444' ,(SELECT stateID FROM state WHERE stateName = 'New South Wales')),
((SELECT '1013 Buchanan Rd' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1013 Buchanan Rd')), (SELECT cityID FROM cities WHERE cityName = 'Yakima'), '98901' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '1016 Park Avenue' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1016 Park Avenue')), (SELECT cityID FROM cities WHERE cityName = 'Burbank'), '91502' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1019 Book Road' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1019 Book Road')), (SELECT cityID FROM cities WHERE cityName = 'Rhodes'), '2138' ,(SELECT stateID FROM state WHERE stateName = 'New South Wales')),
((SELECT '1019 Buchanan Road' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1019 Buchanan Road')), (SELECT cityID FROM cities WHERE cityName = 'Woodland Hills'), '91364' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1019 Candy Rd.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1019 Candy Rd.')), (SELECT cityID FROM cities WHERE cityName = 'Coffs Harbour'), '2450' ,(SELECT stateID FROM state WHERE stateName = 'New South Wales')),
((SELECT '1019 Chance Drive' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1019 Chance Drive')), (SELECT cityID FROM cities WHERE cityName = 'Sedro Woolley'), '98284' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '1019 Kenwal Rd.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1019 Kenwal Rd.')), (SELECT cityID FROM cities WHERE cityName = 'Lake Oswego'), '97034' ,(SELECT stateID FROM state WHERE stateName = 'Oregon')),
((SELECT '1019 Pennsylvania Blvd' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1019 Pennsylvania Blvd')), (SELECT cityID FROM cities WHERE cityName = 'Marysville'), '98270' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '102 Vista Place' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '102 Vista Place')), (SELECT cityID FROM cities WHERE cityName = 'Milton Keynes'), 'MK8 8DF' ,(SELECT stateID FROM state WHERE stateName = 'England')),
((SELECT '10203 Acorn Avenue' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '10203 Acorn Avenue')), (SELECT cityID FROM cities WHERE cityName = 'Calgary'), 'T2P 2G8' ,(SELECT stateID FROM state WHERE stateName = 'Alberta')),
((SELECT '1023 Hawkins Street' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1023 Hawkins Street')), (SELECT cityID FROM cities WHERE cityName = 'Townsville'), '4810' ,(SELECT stateID FROM state WHERE stateName = 'Queensland')),
((SELECT '1023 Riveria Way' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1023 Riveria Way')), (SELECT cityID FROM cities WHERE cityName = 'Burbank'), '91502' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1023 Riviera Way' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1023 Riviera Way')), (SELECT cityID FROM cities WHERE cityName = 'Oxford'), 'OX1' ,(SELECT stateID FROM state WHERE stateName = 'England')),
((SELECT '1025 Yosemite Dr.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1025 Yosemite Dr.')), (SELECT cityID FROM cities WHERE cityName = 'Townsville'), '4810' ,(SELECT stateID FROM state WHERE stateName = 'Queensland')),
((SELECT '1026 Mt. Wilson Pl.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1026 Mt. Wilson Pl.')), (SELECT cityID FROM cities WHERE cityName = 'Lynnwood'), '98036' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '1026 Mt. Wilson Pl.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1026 Mt. Wilson Pl.')), (SELECT cityID FROM cities WHERE cityName = 'South Melbourne'), '3205' ,(SELECT stateID FROM state WHERE stateName = 'Victoria')),
((SELECT '1028 Indigo Ct.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1028 Indigo Ct.')), (SELECT cityID FROM cities WHERE cityName = 'Issaquah'), '98027' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '1028 Indigo Ct.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1028 Indigo Ct.')), (SELECT cityID FROM cities WHERE cityName = 'Warrnambool'), '3280' ,(SELECT stateID FROM state WHERE stateName = 'Victoria')),
((SELECT '1028 Royal Oak Rd.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1028 Royal Oak Rd.')), (SELECT cityID FROM cities WHERE cityName = 'Burlingame'), '94010' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1029 Birchwood Dr' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1029 Birchwood Dr')), (SELECT cityID FROM cities WHERE cityName = 'Burien'), '98168' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '1029 Birchwood Dr' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1029 Birchwood Dr')), (SELECT cityID FROM cities WHERE cityName = 'Olympia'), '98501' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '1030 Ambush Dr.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1030 Ambush Dr.')), (SELECT cityID FROM cities WHERE cityName = 'Bury'), 'PE17' ,(SELECT stateID FROM state WHERE stateName = 'England')),
((SELECT '1032 Buena Vista' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1032 Buena Vista')), (SELECT cityID FROM cities WHERE cityName = 'North Ryde'), '2113' ,(SELECT stateID FROM state WHERE stateName = 'New South Wales')),
((SELECT '1032 Coats Road' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1032 Coats Road')), (SELECT cityID FROM cities WHERE cityName = 'Stoke-on-Trent'), 'AS23' ,(SELECT stateID FROM state WHERE stateName = 'England')),
((SELECT '1035 Arguello Blvd.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1035 Arguello Blvd.')), (SELECT cityID FROM cities WHERE cityName = 'San Diego'), '92102' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1036 Mason Dr' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1036 Mason Dr')), (SELECT cityID FROM cities WHERE cityName = 'Port Orchard'), '98366' ,(SELECT stateID FROM state WHERE stateName = 'Washington')),
((SELECT '1039 Adelaide St.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1039 Adelaide St.')), (SELECT cityID FROM cities WHERE cityName = 'Port Macquarie'), '2444' ,(SELECT stateID FROM state WHERE stateName = 'New South Wales')),
((SELECT '104 Hilltop Dr.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '104 Hilltop Dr.')), (SELECT cityID FROM cities WHERE cityName = 'Concord'), '94519' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1040 Greenbush Drive' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1040 Greenbush Drive')), (SELECT cityID FROM cities WHERE cityName = 'Newton'), 'V2L3W8' ,(SELECT stateID FROM state WHERE stateName = 'British Columbia')),
((SELECT '1040 Northridge Road' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1040 Northridge Road')), (SELECT cityID FROM cities WHERE cityName = 'Woodland Hills'), '91364' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1042 Hooftrail Way' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1042 Hooftrail Way')), (SELECT cityID FROM cities WHERE cityName = 'Newcastle'), '2300' ,(SELECT stateID FROM state WHERE stateName = 'New South Wales')),
((SELECT '1046 Cloverleaf Circle' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1046 Cloverleaf Circle')), (SELECT cityID FROM cities WHERE cityName = 'Shawnee'), 'V8Z 4N5' ,(SELECT stateID FROM state WHERE stateName = 'British Columbia')),
((SELECT '1046 San Carlos Avenue' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1046 San Carlos Avenue')), (SELECT cityID FROM cities WHERE cityName = 'Colma'), '94014' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1047 Las Quebradas Lane' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1047 Las Quebradas Lane')), (SELECT cityID FROM cities WHERE cityName = 'Oak Bay'), 'V8P' ,(SELECT stateID FROM state WHERE stateName = 'British Columbia')),
((SELECT '1048 Burwood Way' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1048 Burwood Way')), (SELECT cityID FROM cities WHERE cityName = 'Haney'), 'V2W 1W2' ,(SELECT stateID FROM state WHERE stateName = 'British Columbia')),
((SELECT '105 Woodruff Ln.' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '105 Woodruff Ln.')), (SELECT cityID FROM cities WHERE cityName = 'Oakland'), '94611' ,(SELECT stateID FROM state WHERE stateName = 'California')),
((SELECT '1050 Creed Ave' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1050 Creed Ave')), (SELECT cityID FROM cities WHERE cityName = 'Lebanon'), '97355' ,(SELECT stateID FROM state WHERE stateName = 'Oregon')),
((SELECT '1050 Greenhills Circle' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1050 Greenhills Circle')), (SELECT cityID FROM cities WHERE cityName = 'Lane Cove'), '1597' ,(SELECT stateID FROM state WHERE stateName = 'New South Wales')),
((SELECT '1050 Greenhills Circle' WHERE NOT EXISTS(SELECT * FROM addresses WHERE streetAddress= '1050 Greenhills Circle')), (SELECT cityID FROM cities WHERE cityName = 'Langley'), 'V3A 4R2' ,(SELECT stateID FROM state WHERE stateName = 'British Columbia'));

INSERT INTO person(firstName, lastName, emailAddress, addressID)
VALUES
('Amanda', 'Long', 'ALong@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '10 Napa Ct.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Lebanon')) AND (zipcode = '97355')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Oregon')) ))),
('Christian', 'Shan', 'CShan@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1000 Bidweld Street') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Haney')) AND (zipcode = 'V2W 1W2')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'British Columbia')) ))),
('Troy', 'Sara', 'TSara@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1002 N. Spoonwood Court') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Hervey Bay')) AND (zipcode = '4655')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Queensland')) ))),
('Kaitlyn', 'Baker', 'KBaker@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1003 Matterhorn Ct') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Lebanon')) AND (zipcode = '97355')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Oregon')) ))),
('Suzanne', 'Ma', 'SMa@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1005 Matterhorn Ct.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Cambridge')) AND (zipcode = 'CB4 4BZ')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'England')) ))),
('Anna', 'Jones', 'AJones@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1005 Matterhorn Ct.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Mill Valley')) AND (zipcode = '94941')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Carlos', 'Baker', 'CBaker@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1005 Tanager Court') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Corvallis')) AND (zipcode = '97330')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Oregon')) ))),
('Tanya', 'Munoz', 'TMunoz@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1005 Tanager Court') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Milsons Point')) AND (zipcode = '2061')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'New South Wales')) ))),
('Tabitha', 'Gill', 'TGill@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1006 Deercreek Ln') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Bellflower')) AND (zipcode = '90706')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Alexis', 'Lee', 'ALee@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1006 Deercreek Ln') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Torrance')) AND (zipcode = '90505')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Erick', 'Suri', 'ESuri@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '101 Adobe Dr') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Coffs Harbour')) AND (zipcode = '2450')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'New South Wales')) ))),
('Marcus', 'Evans', 'MEvans@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '101 Adobe Dr') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Puyallup')) AND (zipcode = '98371')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Marcus', 'Clark', 'MClark@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '101, avenue de la Gare') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Peterborough')) AND (zipcode = 'PB12')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'England')) ))),
('Gilbert', 'Xu', 'GXu@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1010 Maple') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Baltimore')) AND (zipcode = '21201')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Maryland')) ))),
('Paula', 'Rubio', 'PRubio@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1011 Yolanda Circle') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Berkeley')) AND (zipcode = '94704')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Julian', 'Isla', 'JIsla@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1011 Yolanda Circle') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'N. Vancouver')) AND (zipcode = 'V7L 4J4')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'British Columbia')) ))),
('Jesse', 'Scott', 'JScott@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1013 Holiday Hills Dr.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Bremerton')) AND (zipcode = '98312')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Naomi', 'Sanz', 'NSanz@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1013 Holiday Hills Dr.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Gateshead')) AND (zipcode = 'GA10')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'England')) ))),
('Isabella', 'Lee', 'ILee@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1015 Lynwood Drive') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Metchosin')) AND (zipcode = 'V9')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'British Columbia')) ))),
('Dawn', 'Yuan', 'DYuan@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1019 Carletto Drive') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Berkeley')) AND (zipcode = '94704')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Olivia', 'Blue', 'OBlue@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1019 Mt. Davidson Court') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Burien')) AND (zipcode = '98168')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Emmanuel', 'Lopez', 'ELopez@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1019 Mt. Davidson Court') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'London')) AND (zipcode = 'SW8 4BG')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'England')) ))),
('Nathan', 'Yang', 'NYang@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '102 Vista Place') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Santa Monica')) AND (zipcode = '90401')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Gabrielle', 'Wood', 'GWood@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1020 Book Road') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Bremerton')) AND (zipcode = '98312')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Katrina', 'Anand', 'KAnand@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1020 Carletto Drive') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Matraville')) AND (zipcode = '2036')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'New South Wales')) ))),
('Anthony', 'Jones', 'AJones@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1020 Carletto Drive') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Santa Cruz')) AND (zipcode = '95062')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Natalie', 'Reed', 'NReed@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1023 Hawkins Street') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Lebanon')) AND (zipcode = '97355')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Oregon')) ))),
('Dakota', 'Ross', 'DRoss@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1024 Walnut Blvd.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Colma')) AND (zipcode = '94014')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Shawn', 'Goel', 'SGoel@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1025 Holly Oak Drive') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Leeds')) AND (zipcode = 'LE18')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'England')) ))),
('Nicole', 'Diaz', 'NDiaz@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1025 R St.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Kirkland')) AND (zipcode = '98033')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Wyatt', 'Davis', 'WDavis@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1025 Yosemite Dr.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Oregon City')) AND (zipcode = '97045')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Oregon')) ))),
('Christy', 'Huang', 'CHuang@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1028 Green View Court') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Chula Vista')) AND (zipcode = '91910')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Sydney', 'Evans', 'SEvans@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1028 Green View Court') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Oregon City')) AND (zipcode = '97045')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Oregon')) ))),
('Katherine', 'Baker', 'KBaker@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1037 Hayes Court') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Stoke-on-Trent')) AND (zipcode = 'AS23')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'England')) ))),
('Edward', 'Wood', 'EWood@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1039 Adelaide St.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'West Covina')) AND (zipcode = '91791')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Johnny', 'Rai', 'JRai@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '104 Hilltop Dr.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Springwood')) AND (zipcode = '2777')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'New South Wales')) ))),
('Emily', 'Moore', 'EMoore@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '104 Kaski Ln.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Portland')) AND (zipcode = '97205')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Oregon')) ))),
('Randy', 'Yang', 'RYang@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1040 Greenbush Drive') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Silverwater')) AND (zipcode = '2264')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'New South Wales')) ))),
('Roy', 'Ruiz', 'RRuiz@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1040 Northridge Road') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'London')) AND (zipcode = 'W1X3SE')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'England')) ))),
('Marshall', 'Sun', 'MSun@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1044 San Carlos') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Cincinnati')) AND (zipcode = '45202')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Ohio')) ))),
('Gabriella', 'Perez', 'GPerez@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1045 Lolita Drive') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Torrance')) AND (zipcode = '90505')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Erika', 'Gill', 'EGill@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1045 Lolita Drive') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Townsville')) AND (zipcode = '4810')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Queensland')) ))),
('Kathryn', 'Shen', 'KShen@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1047 Las Quebradas Lane') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'North Sydney')) AND (zipcode = '2055')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'New South Wales')) ))),
('Sharon', 'Yuan', 'SYuan@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1048 Burwood Way') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Hervey Bay')) AND (zipcode = '4655')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Queensland')) ))),
('Victoria', 'Lee', 'VLee@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1048 Las Quebradas Lane') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Walla Walla')) AND (zipcode = '99362')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Brenda', 'Arun', 'BArun@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1048 Las Quebradas Lane') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Wollongong')) AND (zipcode = '2500')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'New South Wales')) ))),
('Alex', 'Scott', 'AScott@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '105 Clark Creek Lane') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Port Macquarie')) AND (zipcode = '2444')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'New South Wales')) ))),
('Yolanda', 'Luo', 'YLuo@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '105 Woodruff Ln.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Bellingham')) AND (zipcode = '98225')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Martin', 'Vance', 'MVance@gmail.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1050 Creed Ave') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'London')) AND (zipcode = 'W10 6BL')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'England')) ))),
('Jeremy', 'Roberts', 'JRoberts@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '081, boulevard du Montparnasse') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Seattle')) AND (zipcode = '98104')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Amanda', 'Ramirez', 'ARamirez@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1 Smiling Tree Court') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Los Angeles')) AND (zipcode = '90012')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Jada', 'Nelson', 'JNelson@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '100, rue des Rosiers') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Everett')) AND (zipcode = '98201')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Hunter', 'Wright', 'HWright@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1002 N. Spoonwood Court') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Berkeley')) AND (zipcode = '94704')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Sierra', 'Wright', 'SWright@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1005 Fremont Street') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Colma')) AND (zipcode = '94014')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Sarah', 'Simmons', 'SSimmons@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1005 Valley Oak Plaza') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Langley')) AND (zipcode = 'V3A 4R2')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'British Columbia')) ))),
('Mandar', 'Samant', 'MSamant@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1005 Valley Oak Plaza') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'London')) AND (zipcode = 'SW6 SBY')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'England')) ))),
('Isaiah', 'Rogers', 'IRogers@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1007 Cardinet Dr.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'El Cajon')) AND (zipcode = '92020')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Ian', 'Foster', 'IFoster@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1008 Lydia Lane') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Burbank')) AND (zipcode = '91502')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Ben', 'Miller', 'BMiller@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '101 Candy Rd.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Redmond')) AND (zipcode = '98052')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Sarah', 'Barnes', 'SBarnes@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1011 Green St.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Bellingham')) AND (zipcode = '98225')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Casey', 'Martin', 'CMartin@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1013 Buchanan Rd') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Port Macquarie')) AND (zipcode = '2444')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'New South Wales')) ))),
('Victoria', 'Murphy', 'VMurphy@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1013 Buchanan Rd') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Yakima')) AND (zipcode = '98901')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Sydney', 'Rogers', 'SRogers@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1016 Park Avenue') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Burbank')) AND (zipcode = '91502')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Marvin', 'Hernandez', 'MHernandez@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1019 Book Road') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Rhodes')) AND (zipcode = '2138')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'New South Wales')) ))),
('Carlos', 'Carter', 'CCarter@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1019 Buchanan Road') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Woodland Hills')) AND (zipcode = '91364')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Rebekah', 'Garcia', 'RGarcia@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1019 Candy Rd.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Coffs Harbour')) AND (zipcode = '2450')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'New South Wales')) ))),
('Haley', 'Henderson', 'HHenderson@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1019 Chance Drive') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Sedro Woolley')) AND (zipcode = '98284')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Jacob', 'Taylor', 'JTaylor@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1019 Kenwal Rd.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Lake Oswego')) AND (zipcode = '97034')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Oregon')) ))),
('Seth', 'Martin', 'SMartin@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1019 Pennsylvania Blvd') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Marysville')) AND (zipcode = '98270')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Larry', 'Suarez', 'LSuarez@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '102 Vista Place') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Milton Keynes')) AND (zipcode = 'MK8 8DF')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'England')) ))),
('Garrett', 'Vargas', 'GVargas@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '10203 Acorn Avenue') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Calgary')) AND (zipcode = 'T2P 2G8')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Alberta')) ))),
('Abby', 'Martinez', 'AMartinez@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1023 Hawkins Street') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Townsville')) AND (zipcode = '4810')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Queensland')) ))),
('Justin', 'Thomas', 'JThomas@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1023 Riveria Way') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Burbank')) AND (zipcode = '91502')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Evelyn', 'Martinez', 'EMartinez@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1023 Riviera Way') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Oxford')) AND (zipcode = 'OX1')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'England')) ))),
('Pamela', 'Chapman', 'PChapman@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1025 Yosemite Dr.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Townsville')) AND (zipcode = '4810')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Queensland')) ))),
('Kayla', 'Griffin', 'KGriffin@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1026 Mt. Wilson Pl.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Lynnwood')) AND (zipcode = '98036')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Jill', 'Navarro', 'JNavarro@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1026 Mt. Wilson Pl.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'South Melbourne')) AND (zipcode = '3205')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Victoria')) ))),
('Nathan', 'Walker', 'NWalker@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1028 Indigo Ct.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Issaquah')) AND (zipcode = '98027')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Tabitha', 'Moreno', 'TMoreno@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1028 Indigo Ct.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Warrnambool')) AND (zipcode = '3280')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Victoria')) ))),
('Mason', 'Sanchez', 'MSanchez@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1028 Royal Oak Rd.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Burlingame')) AND (zipcode = '94010')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Natasha', 'Navarro', 'NNavarro@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1029 Birchwood Dr') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Burien')) AND (zipcode = '98168')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Kevin', 'Russell', 'KRussell@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1029 Birchwood Dr') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Olympia')) AND (zipcode = '98501')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Katelyn', 'Rivera', 'KRivera@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1030 Ambush Dr.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Bury')) AND (zipcode = 'PE17')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'England')) ))),
('Alfredo', 'Ortega', 'AOrtega@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1032 Buena Vista') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'North Ryde')) AND (zipcode = '2113')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'New South Wales')) ))),
('Andrea', 'Campbell', 'ACampbell@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1032 Coats Road') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Stoke-on-Trent')) AND (zipcode = 'AS23')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'England')) ))),
('Jeremy', 'Peterson', 'JPeterson@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1035 Arguello Blvd.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'San Diego')) AND (zipcode = '92102')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Arianna', 'Ramirez', 'ARamirez@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1036 Mason Dr') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Port Orchard')) AND (zipcode = '98366')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Washington')) ))),
('Mario', 'Sharma', 'MSharma@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1039 Adelaide St.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Port Macquarie')) AND (zipcode = '2444')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'New South Wales')) ))),
('Adam', 'Collins', 'ACollins@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '104 Hilltop Dr.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Concord')) AND (zipcode = '94519')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Taylor', 'Martin', 'TMartin@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1040 Greenbush Drive') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Newton')) AND (zipcode = 'V2L3W8')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'British Columbia')) ))),
('Gabriel', 'Collins', 'GCollins@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1040 Northridge Road') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Woodland Hills')) AND (zipcode = '91364')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Randall', 'Martin', 'RMartin@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1042 Hooftrail Way') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Newcastle')) AND (zipcode = '2300')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'New South Wales')) ))),
('Samantha', 'Jenkins', 'SJenkins@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1046 Cloverleaf Circle') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Shawnee')) AND (zipcode = 'V8Z 4N5')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'British Columbia')) ))),
('Justin', 'Simmons', 'JSimmons@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1046 San Carlos Avenue') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Colma')) AND (zipcode = '94014')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Ethan', 'Winston', 'EWinston@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1047 Las Quebradas Lane') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Oak Bay')) AND (zipcode = 'V8P')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'British Columbia')) ))),
('Hunter', 'Roberts', 'HRoberts@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1048 Burwood Way') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Haney')) AND (zipcode = 'V2W 1W2')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'British Columbia')) ))),
('Nathaniel', 'Murphy', 'NMurphy@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '105 Woodruff Ln.') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Oakland')) AND (zipcode = '94611')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'California')) ))),
('Charles', 'Wilson', 'CWilson@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1050 Creed Ave') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Lebanon')) AND (zipcode = '97355')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'Oregon')) ))),
('Carrie', 'Alvarez', 'CAlvarez@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1050 Greenhills Circle') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Lane Cove')) AND (zipcode = '1597')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'New South Wales')) ))),
('Paige', 'Alexander', 'PAlexander@yahoo.com', (SELECT addressID FROM addresses WHERE((streetAddress = '1050 Greenhills Circle') AND (cityID = (SELECT cityID FROM cities WHERE cityName= 'Langley')) AND (zipcode = 'V3A 4R2')  AND (stateID = (SELECT stateID FROM state WHERE stateName= 'British Columbia')) )));
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'A dive into Data Quality Services',	'Steve Simon',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'A Dynamic World Demands Dynamic SQL',	'Jeremiah Peschka',	'Intermediate',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'A Dynamic World Demands Dynamic SQL',	'Jeremiah Peschka',	'Intermediate',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Absolute Introductory Session on SQL Server 2014 In-Memory Optimized Databases (Hekaton)',	'Kevin Goff',	'Beginner',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'AlwaysOn: Improve reliability and reporting performance with one cool tech',	'Chris Seferlis',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'An introduction to Data Mining',	'Steve Simon',	'Intermediate',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'An Introduction to Database Design',	'Mohammad Yusuf',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Autogenerating a process data warehouse',	'Kennie Pontoppidan',	'Advanced',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Automate your daily checklist with PBM and CMS',	'John Sterrett',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Automated Installing and Configuration of SQL2014/SQL2012 AlwaysOn Across Multiple Datacenters',	'Thomas Grohser',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Automated Installing and Configuration of SQL2014/SQL2012 AlwaysOn Across Multiple Datacenters',	'Thomas Grohser',	'Intermediate',	'Kiev'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Automating Execution Plan Analysis',	'Joe Chang',	'Advanced',	'Kiev'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Automating Execution Plan Analysis',	'Joe Chang',	'Advanced',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Automating SQL Server using PowerShell',	'Michael Wharton',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Balanced Scorecards using SSRS',	'Sunil Kadimdiwan',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Baselines and Performance Monitoring with PAL',	'Mike Walsh',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Basic Database Design',	'John Miner',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Basic Database Programming',	'John Miner',	'Beginner',	'Kiev'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Become a BI Independent Consultant!',	'James Serra',	'Beginner',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Becoming a Top DBA--Learning Automation in SQL Server',	'Joseph DAntoni',	'Beginner',	'Kiev'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Best Practices Document',	'Paresh Motiwala',	'Intermediate',	'Kiev'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Best Practices for Efficient SSRS Report Creation',	'Mickey Stuewe',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Biggest Loser: Database Edition',	'John Miner',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Building a BI Solution in the Cloud',	'Stacia Misner',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Building an Effective Data Warehouse Architecture',	'James Serra',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Building an Effective Data Warehouse Architecture with the cloud and MPP',	'James Serra',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Bulk load and minimal logged inserts',	'David Peter Hansen',	'Advanced',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Business Analytics with SQL Server & Power Map:Everything you want to know but were afraid to ask',	'Steve Simon',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Challenges to designing financial warehouses, lessons learnt',	'Steve Simon',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Change Data Capture in SQL Server 2008/2012',	'Kevin Goff',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Changing Your Habits to Improve the Performance of Your T-SQL',	'Mickey Stuewe',	'Beginner',	'Kiev'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Clusters Your Way: #SANLess Clusters for Physical, Virtual, and Cloud Environments',	'Allan Hirt and SIOS Technology',	'Beginner',	'Kiev'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Clusters Your Way: #SANLess Clusters for Physical, Virtual, and Cloud Environments',	'Allan Hirt',	'Non-Technical',	'Kiev'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Coffee Break',	'SQLSatruday 364',	'Non-Technical',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Creating A Performance Health Repository - using MDW',	'Robert Pearl',	'Beginner',	'Kiev'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Creating efficient and effective SSRS BI Solutions',	'Steve Simon',	'Intermediate',	'Kiev'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Creating efficient and effective SSRS BI Solutions',	'Steve Simon',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Data Partitioning',	'John Flannery',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Data Tier Application Testing with NUnit and Distributed Replay',	'John Flannery',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Database design for mere developers',	'Steve Simon',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Database design for mere developers',	'Steve Simon',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Database Design: Solving Problems Before they Start!',	'Edward Pollack',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Database Modeling and Design',	'Mohammad Yusuf',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Database Virtualization and Drinking out of the Fire Hose',	'Michael Corey',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'DAX and the tabular model',	'Steve Simon',	'Intermediate',	'Kiev'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'DBA FOR DUMMIES',	'Robert Pearl',	'Beginner',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Dealing With Difficult People',	'Gigi Bell',	'Beginner',	'Kiev'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Development Lifecycle with SQL Server Data Tools and DACFx',	'John Flannery',	'Intermediate',	'Kiev'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Did You Vote Today? A DBAs Guide to Cluster Quorum',	'Allan Hirt',	'Advanced',	'Kiev'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Dimensional Modeling Design Patterns: Beyond Basics',	'Jason Horner',	'Intermediate',	'Kiev'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Dimensional Modeling Design Patterns: Beyond Basics',	'Jason Horner',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Diving Into Query Execution Plans',	'Edward Pollack',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Dynamic SQL: Writing Efficient Queries on the Fly',	'Edward Pollack',	'Beginner',	'Kiev'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Easy Architecture Design for HA and DR',	'Brent Ozar',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Enhancing your career: Building your personal brand',	'James Serra',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Establishing a SLA',	'Thomas Grohser',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'ETL not ELT! Common mistakes and misconceptions about SSIS',	'Paul Rizza',	'Advanced',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Event Kickoff and Networking',	'SQLSaturday 364',	'Non-Technical',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Execution Plans: What Can You Do With Them?',	'Grant Fritchey',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Faster, Better Decisions with Self Service Business Analytics',	'Sayed Saeed',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Full Text Indexing Basics',	'John Miner',	'Beginner',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Get your Mining Model Predictions out to all',	'Steve Simon',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Getting a job with Microsoft',	'Paul Rizza',	'Non-Technical',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Graph Databases for SQL Server Professionals',	'Stéphane Fréchette',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Hacking Exposé - Using SSL to Protect SQL Connections',	'Chris Bell',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Hacking the SSIS 2012 Catalog',	'Andy Leonard',	'Beginner',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Hidden in plain sight: master your tools',	'Varsham Papikian',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Highly Available SQL Server in Windows Azure IaaS',	'David Bermingham',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'How to Make a LOT More Money as a Consultant',	'James Serra',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'How to Think Like the Engine',	'Brent Ozar',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Hybrid Cloud Scenarios with SQL Server 2014',	'George Walters',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Hybrid Solutions: The Future of SQL Server Disaster Recovery',	'Allan Hirt',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Implementing Data Warehouse Patterns with the Microsoft BI Tools',	'Kevin Goff',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Inroduction to Triggers',	'Jack Corbett',	'Beginner',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Integrating Reporting Services with SharePoint',	'Kevin Goff',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Integration Services (SSIS) for the DBA',	'David Peter Hansen',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Introducing Power BI',	'Stacia Misner',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Introduction to Database Recovery',	'John Flannery',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Introduction to High Availability with SQL Server',	'John Sterrett',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Introduction to Powershell for DBAs',	'John Sterrett',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Introduction to SQL Server - Part 1',	'Brandon Leach',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Introduction to SQL Server - Part 2',	'Brandon Leach',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Is That A Failover Cluster On Your Laptop/Desktop?',	'Allan Hirt',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Leaving the Windows Open',	'Jeremiah Peschka',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Lunch Break',	'SQLSaturday 364',	'Non-Technical',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Lunchtime Keynote',	'SQLSaturday 364',	'Non-Technical',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Master Data Services Best Practices',	'Steve Simon',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Master Data Services Disaster Recovery',	'Steve Simon',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Mind your language!! Cursors are a dirty word',	'Steve Simon',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Modern Data Warehousing',	'James Serra',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Monitoring Server health via Reporting Services dashboards',	'Steve Simon',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Monitoring SQL Server using Extended Events',	'Hilary Cotter',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Multidimensional vs Tabular - May the Best Model Win',	'Stacia Misner',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Murder They Wrote',	'Jason Brimhall',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Never Have to Say "Mayday!!!" Again',	'Mike Walsh',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Now you see it! Now you don’t! Conjuring many reports utilizing only one SSRS report.',	'Steve Simon',	'Intermediate',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Optimal Infrastructure Strategies for Cisco UCS, Nexus and SQL Server',	'Kevin Schenega',	'Non-Technical',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Optimizing Protected Indexes',	'Chris Bell',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Partitioning as a design pattern',	'Kennie Pontoppidan',	'Advanced',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Power BI Components in Microsofts Self-Service BI Suite',	'Todd Chittenden',	'Beginner',	'New York'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Power to the people!!',	'Steve Simon',	'Intermediate',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'PowerShell Basics for SQLServer',	'Michael Wharton',	'Beginner',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'PowerShell for the Reluctant DBA / Developer',	'Jason Horner',	'Beginner',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Prevent Recovery Amnesia – Forget the Backups',	'Chris Bell',	'Beginner',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Query Optimization Crash Course',	'Edward Pollack',	'Beginner',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Raffle',	'SQLSaturday 364',	'Non-Technical',	''	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Rapid Application Development with Master Data Services',	'Steve Simon',	'Intermediate',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Recovery and Backup for Beginners',	'Mike Hillwig',	'Beginner',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Reduce, Reuse, Recycle: Automating Your BI Framework',	'Stacia Misner',	'Intermediate',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Registrations',	'SQLSaturday 364',	'Non-Technical',	''	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Replicaton Technologies',	'Hilary Cotter',	'Advanced',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Reporting Services for Mere DBAs',	'Jason Brimhall',	'Intermediate',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Scaling with SQL Server Service Broker',	'Hilary Cotter',	'Advanced',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Scaling with SQL Server Service Broker',	'Hilary Cotter',	'Advanced',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Self-Service Data Integration with Power Query',	'Stéphane Fréchette',	'Beginner',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Shortcuts to Building SSIS in .Net',	'Paul Rizza',	'Beginner',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'So You Want To Be A Consultant?',	'Allan Hirt',	'Beginner',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'SQL anti patterns',	'Kennie Pontoppidan',	'Advanced',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'SQL Server 2012/2014 Columnstore index',	'Kevin Goff',	'Intermediate',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'SQL Server 2012/2014 Performance Tuning All Up',	'George Walters',	'Intermediate',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'SQL Server 2014 Data Access Layers',	'Steve Simon',	'Intermediate',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'SQL Server 2014 New Features',	'George Walters',	'Intermediate',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'SQL Server AlwaysOn Availability Groups',	'George Walters',	'Beginner',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'SQL Server and the Cloud',	'David Peter Hansen',	'Beginner',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'SQL Server Compression and what it can do for you',	'Jason Brimhall',	'Advanced',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'SQL Server Reporting Services 2014 on Steroids!!',	'Steve Simon',	'Intermediate',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'SQL Server Reporting Services Best Practices',	'Steve Simon',	'Intermediate',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'SQL Server Reporting Services, attendees choose',	'Kevin Goff',	'Intermediate',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'SQL Server Storage Engine under the hood',	'Thomas Grohser',	'Intermediate',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'SQL Server Storage internals: Looking under the hood.',	'Brandon Leach',	'Advanced',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'SSIS 2014 Data Flow Tuning Tips and Tricks',	'Andy Leonard',	'Beginner',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Standalone to High-Availability Clusters over Lunch—with Time to Spare',	'Carl Berglund',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Stress testing SQL Server',	'Hilary Cotter',	'Advanced',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Table partitioning for Azure SQL Databases',	'John Miner',	'Beginner',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Testing',	'Melissa Riley',	'Beginner',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'The future of the data professional',	'Adam Jorgensen',	'Beginner',	'Kiyv'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'The Quest for the Golden Record:MDM Best Practices',	'Dennis Messina',	'Beginner',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'The Quest to Find Bad Data With Data Profiling',	'Richie Rump',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'The Spy Who Loathed Me - An Intro to SQL Security',	'Chris Bell',	'Beginner',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Tired of the CRUD? Automate it!',	'Jack Corbett',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Top 5 Ways to Improve Your triggers',	'Aaron Bertrand',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Tricks that have saved my bacon',	'Greg Moore',	'Beginner',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'T-SQL : Bad Habits & Best Practices',	'Aaron Bertrand',	'Beginner',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'T-SQL for Application Developers - Attendees chose',	'Kevin Goff',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Tune Queries By Fixing Bad Parameter Sniffing',	'Grant Fritchey',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Using Extended Events in SQL Server',	'Jason Brimhall',	'Advanced',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Watch Brent Tune Queries',	'Brent Ozar',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'What every SQL Server DBA needs to know about Windows Server 10 Technical Preview',	'David Bermingham',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'What exactly is big data and why should I care?',	'James Serra',	'Beginner',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'What is it like to work for Microsoft?',	'James Serra',	'Beginner',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'What’s new in SQL Server Integration Services 2012',	'Kevin Goff',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Why do we shun using tools for DBA job?',	'Paresh Motiwala',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Why OLAP? Building SSAS cubes and benefits of OLAP',	'Kevin Goff',	'Intermediate',	'Budapest'	 );
INSERT INTO presentations(title, presenter, difficulty, event) VALUES ( 	'Youre Doing It Wrong!!',	'Mike Walsh',	'Intermediate',	'Budapest'	 );
