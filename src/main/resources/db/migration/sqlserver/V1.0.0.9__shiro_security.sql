CREATE TABLE SEC_USER (
    ID          INT NOT NULL PRIMARY KEY IDENTITY,
    [LOGIN]     VARCHAR(50),
    [PASSWORD]  VARCHAR(255),
    SALT        VARCHAR(255),
    [NAME]      VARCHAR(100)
);

CREATE TABLE SEC_ROLE (
    ID          INT NOT NULL PRIMARY KEY IDENTITY,
    [NAME]      VARCHAR(255)
);

CREATE TABLE SEC_USER_ROLE(
    [USER_ID]	INT NOT NULL PRIMARY KEY IDENTITY,
    ROLE_ID     INT
);

CREATE TABLE SEC_PERMISSION(
    ID          INT NOT NULL PRIMARY KEY IDENTITY,
    VALUE       VARCHAR(255) NOT NULL,
    ROLE_ID     INT NOT NULL
);