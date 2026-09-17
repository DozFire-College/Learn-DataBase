USE Praktika3
GO

CREATE TABLE Users (
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE UserProfiles (
    id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT NOT NULL UNIQUE,
    name NVARCHAR(100) NOT NULL,
    phone NVARCHAR(20),
    email NVARCHAR(100),
    birth_date DATE,
    created_at DATETIME2 NOT NULL DEFAULT SYSDATETIME(),
    is_active BIT NOT NULL DEFAULT 1,
    CONSTRAINT FK_UserProfiles_Users FOREIGN KEY (user_id) REFERENCES Users(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Developers (
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100) NOT NULL,
    founded_date DATE,
    created_at DATETIME2 NOT NULL DEFAULT SYSDATETIME()
);

CREATE TABLE Publishers (
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100) NOT NULL,
    founded_date DATE,
    created_at DATETIME2 NOT NULL DEFAULT SYSDATETIME()
);

CREATE TABLE Genre (
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Games (
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100) NOT NULL,
    developer_id INT NOT NULL,
    publisher_id INT NOT NULL,
    release_date DATE,
    price DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    is_multiplayer BIT NOT NULL DEFAULT 0,
    created_at DATETIME2 NOT NULL DEFAULT SYSDATETIME(),
    CONSTRAINT FK_Games_Developers FOREIGN KEY (developer_id) REFERENCES Developers(id),
    CONSTRAINT FK_Games_Publishers FOREIGN KEY (publisher_id) REFERENCES Publishers(id),
    CONSTRAINT CK_Games_Price CHECK (price >= 0)
);

CREATE TABLE GameGenres (
    game_id INT NOT NULL,
    genre_id INT NOT NULL,
    added_at DATETIME2 NOT NULL DEFAULT SYSDATETIME(),
    CONSTRAINT PK_GameGenres PRIMARY KEY (game_id, genre_id),
    CONSTRAINT FK_GameGenres_Games FOREIGN KEY (game_id) REFERENCES Games(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_GameGenres_Genre FOREIGN KEY (genre_id) REFERENCES Genre(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Libraries (
    id INT PRIMARY KEY IDENTITY(1,1),
    user_profile_id INT NOT NULL,
    game_id INT NOT NULL,
    purchase_date DATE NOT NULL DEFAULT GETDATE(),
    added_at DATETIME2 NOT NULL DEFAULT SYSDATETIME(),
    is_installed BIT NOT NULL DEFAULT 0,
    play_time_hours DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    CONSTRAINT FK_Libraries_UserProfiles FOREIGN KEY (user_profile_id) REFERENCES UserProfiles(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_Libraries_Games FOREIGN KEY (game_id) REFERENCES Games(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT UQ_Libraries_User_Game UNIQUE (user_profile_id, game_id),
    CONSTRAINT CK_Libraries_PlayTime CHECK (play_time_hours >= 0)
);

CREATE TABLE Wallet (
    id INT PRIMARY KEY IDENTITY(1,1),
    user_profile_id INT NOT NULL UNIQUE,
    balance DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    currency NVARCHAR(10) NOT NULL DEFAULT N'RUB',
    is_blocked BIT NOT NULL DEFAULT 0,
    created_at DATETIME2 NOT NULL DEFAULT SYSDATETIME(),
    CONSTRAINT FK_Wallet_UserProfiles FOREIGN KEY (user_profile_id) REFERENCES UserProfiles(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT CK_Wallet_Balance CHECK (balance >= 0)
);

CREATE TABLE Transactions (
    id INT PRIMARY KEY IDENTITY(1,1),
    wallet_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    transaction_type NVARCHAR(20) NOT NULL DEFAULT N'payment',
    transaction_date DATETIME2 NOT NULL DEFAULT SYSDATETIME(),
    description NVARCHAR(255),
    is_successful BIT NOT NULL DEFAULT 1,
    CONSTRAINT FK_Transactions_Wallet FOREIGN KEY (wallet_id) REFERENCES Wallet(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT CK_Transactions_Amount CHECK (amount <> 0),
    CONSTRAINT CK_Transactions_Type CHECK (transaction_type IN (N'payment', N'refund', N'deposit', N'withdrawal'))
);
GO
