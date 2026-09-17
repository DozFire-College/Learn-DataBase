INSERT INTO Users (name) VALUES
(N'alex_ivanov'),
(N'maria_petrova'),
(N'dmitry_smirnov'),
(N'elena_kuznetsova'),
(N'ivan_popov'),
(N'olga_sokolova'),
(N'sergey_volkov'),
(N'anna_morozova');

-- ============================================
-- 2. UserProfiles
-- ============================================
INSERT INTO UserProfiles (user_id, name, phone, email, birth_date, is_active) VALUES
(1, N'Алексей Иванов',     N'+79001112233', N'alex.ivanov@mail.ru',    '1995-03-15', 1),
(2, N'Мария Петрова',      N'+79002223344', N'maria.petrova@mail.ru',  '1998-07-22', 1),
(3, N'Дмитрий Смирнов',    N'+79003334455', N'dmitry.smirnov@mail.ru', '1992-11-08', 1),
(4, N'Елена Кузнецова',    N'+79004445566', N'elena.kuznetsova@mail.ru','2000-01-30', 1),
(5, N'Иван Попов',         N'+79005556677', N'ivan.popov@mail.ru',     '1990-05-12', 1),
(6, N'Ольга Соколова',     N'+79006667788', N'olga.sokolova@mail.ru',  '1997-09-19', 1),
(7, N'Сергей Волков',      N'+79007778899', N'sergey.volkov@mail.ru',  '1993-12-25', 1),
(8, N'Анна Морозова',      N'+79008889900', N'anna.morozova@mail.ru',  '2001-04-03', 1);

-- ============================================
-- 3. Developers
-- ============================================
INSERT INTO Developers (name, founded_date) VALUES
(N'Valve Corporation',        '1996-08-24'),
(N'CD Projekt Red',           '2002-05-01'),
(N'Rockstar Games',           '1998-12-01'),
(N'Bethesda Game Studios',    '2001-01-01'),
(N'Ubisoft Montreal',         '1997-01-01'),
(N'FromSoftware',             '1986-11-01'),
(N'Naughty Dog',              '1984-09-01'),
(N'Larian Studios',           '1996-01-01');

-- ============================================
-- 4. Publishers
-- ============================================
INSERT INTO Publishers (name, founded_date) VALUES
(N'Valve Corporation',        '1996-08-24'),
(N'CD Projekt',               '1994-05-01'),
(N'Rockstar Games',           '1998-12-01'),
(N'Bethesda Softworks',       '1986-06-01'),
(N'Ubisoft',                  '1986-03-28'),
(N'Bandai Namco Entertainment','1955-01-01'),
(N'Sony Interactive Entertainment','1993-11-16'),
(N'Larian Studios',           '1996-01-01');

-- ============================================
-- 5. Genre
-- ============================================
INSERT INTO Genre (name) VALUES
(N'Action'),
(N'RPG'),
(N'Shooter'),
(N'Adventure'),
(N'Strategy'),
(N'Simulation'),
(N'Racing'),
(N'Horror'),
(N'Open World'),
(N'Indie');

-- ============================================
-- 6. Games
-- ============================================
INSERT INTO Games (name, developer_id, publisher_id, release_date, price, is_multiplayer) VALUES
(N'Counter-Strike 2',          1, 1, '2023-09-27', 0.00,    1),
(N'Half-Life: Alyx',           1, 1, '2020-03-23', 2499.00, 0),
(N'The Witcher 3: Wild Hunt',  2, 2, '2015-05-19', 1999.00, 0),
(N'Cyberpunk 2077',            2, 2, '2020-12-10', 2999.00, 0),
(N'GTA V',                     3, 3, '2013-09-17', 1499.00, 1),
(N'Red Dead Redemption 2',    3, 3, '2018-10-26', 3499.00, 1),
(N'Skyrim',                    4, 4, '2011-11-11', 1299.00, 0),
(N'Starfield',                 4, 4, '2023-09-06', 4999.00, 0),
(N'Assassin''s Creed Valhalla',5, 5, '2020-11-10', 2999.00, 0),
(N'Elden Ring',                6, 6, '2022-02-25', 3999.00, 1),
(N'The Last of Us Part II',    7, 7, '2020-06-19', 3499.00, 0),
(N'Baldur''s Gate 3',          8, 8, '2023-08-03', 3999.00, 1);


INSERT INTO GameGenres (game_id, genre_id) VALUES
(1, 3),  -- CS2: Shooter
(1, 1),  -- CS2: Action
(2, 4),  -- HL:Alyx: Adventure
(2, 3),  -- HL:Alyx: Shooter
(3, 2),  -- Witcher 3: RPG
(3, 9),  -- Witcher 3: Open World
(4, 2),  -- Cyberpunk: RPG
(4, 9),  -- Cyberpunk: Open World
(5, 1),  -- GTA V: Action
(5, 9),  -- GTA V: Open World
(6, 1),  -- RDR2: Action
(6, 9),  -- RDR2: Open World
(7, 2),  -- Skyrim: RPG
(7, 9),  -- Skyrim: Open World
(8, 2),  -- Starfield: RPG
(8, 9),  -- Starfield: Open World
(9, 1),  -- AC Valhalla: Action
(9, 2),  -- AC Valhalla: RPG
(10, 2), -- Elden Ring: RPG
(10, 1), -- Elden Ring: Action
(11, 1), -- TLOU2: Action
(11, 8), -- TLOU2: Horror
(12, 2), -- BG3: RPG
(12, 5); -- BG3: Strategy

INSERT INTO Libraries (user_profile_id, game_id, purchase_date, is_installed, play_time_hours) VALUES
(1, 1,  '2023-10-01', 1, 152.50),
(1, 3,  '2022-06-15', 1, 87.30),
(1, 10, '2023-01-20', 0, 45.00),
(2, 4,  '2021-03-10', 1, 210.75),
(2, 12, '2023-09-01', 1, 98.20),
(3, 5,  '2020-05-05', 1, 320.00),
(3, 6,  '2021-11-11', 1, 145.60),
(4, 10, '2022-03-15', 1, 180.40),
(4, 12, '2023-08-10', 0, 25.00),
(5, 3,  '2019-12-25', 1, 95.00),
(5, 7,  '2018-06-01', 0, 60.30),
(6, 9,  '2021-01-15', 1, 75.80),
(6, 11, '2022-07-20', 1, 40.00),
(7, 1,  '2023-11-01', 1, 88.90),
(7, 8,  '2023-10-15', 1, 55.40),
(8, 2,  '2022-12-01', 1, 30.20),
(8, 4,  '2023-02-14', 1, 110.00);


INSERT INTO Wallet (user_profile_id, balance, currency, is_blocked) VALUES
(1, 5000.00,  N'RUB', 0),
(2, 12500.50, N'RUB', 0),
(3, 3200.00,  N'RUB', 0),
(4, 0.00,     N'RUB', 0),
(5, 7800.25,  N'RUB', 0),
(6, 1500.00,  N'RUB', 1),
(7, 22000.00, N'RUB', 0),
(8, 900.75,   N'RUB', 0);


INSERT INTO Transactions (wallet_id, amount, transaction_type, description, is_successful) VALUES
(1, 5000.00,  N'deposit',    N'Пополнение баланса картой',           1),
(1, -1999.00, N'payment',    N'Покупка The Witcher 3',               1),
(1, 1999.00,  N'refund',     N'Возврат средств за The Witcher 3',    1),
(2, 15000.00, N'deposit',    N'Пополнение через СБП',                1),
(2, -2999.00, N'payment',    N'Покупка Cyberpunk 2077',              1),
(2, -3999.00, N'payment',    N'Покупка Baldur''s Gate 3',            1),
(3, 3000.00,  N'deposit',    N'Пополнение баланса',                  1),
(3, -1499.00, N'payment',    N'Покупка GTA V',                       1),
(3, 200.00,   N'deposit',    N'Бонус за регистрацию',                1),
(4, 1000.00,  N'deposit',    N'Пополнение',                          1),
(4, -1000.00, N'withdrawal', N'Вывод средств на карту',              1),
(5, 8000.00,  N'deposit',    N'Пополнение баланса',                  1),
(5, -1999.00, N'payment',    N'Покупка The Witcher 3',               1),
(5, -1299.00, N'payment',    N'Покупка Skyrim',                      1),
(6, 2000.00,  N'deposit',    N'Пополнение',                          0),
(6, -2999.00, N'payment',    N'Покупка AC Valhalla',                 0),
(7, 25000.00, N'deposit',    N'Крупное пополнение',                  1),
(7, -0.00,    N'payment',    N'Покупка Counter-Strike 2 (бесплатно)',1),
(7, -4999.00, N'payment',    N'Покупка Starfield',                   1),
(8, 1000.00,  N'deposit',    N'Пополнение',                          1),
(8, -2499.00, N'payment',    N'Покупка Half-Life: Alyx',             0);