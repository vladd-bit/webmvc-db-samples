CREATE DATABASE WebMVC;

USE WebMVC
GO
CREATE TABLE userAccount (
	id bigint IDENTITY (1,1) UNIQUE NOT NULL,
	username varchar(40) UNIQUE NOT NULL,
	password_salt varchar(250) NOT NULL DEFAULT '',
	password_hash varchar(250) NOT NULL DEFAULT '',
	session_key varchar(128) NOT NULL DEFAULT '',
	email varchar(255) UNIQUE NOT NULL DEFAULT '',
	join_date datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	failed_attempt smallint NOT NULL DEFAULT '0',
	locked bit NOT NULL DEFAULT '0',
	last_login datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	access_level tinyint NOT NULL DEFAULT '2',
	operating_system varchar(50) NOT NULL DEFAULT '',
	date_created datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT PK_account_id PRIMARY KEY CLUSTERED (id),
	CONSTRAINT account_username UNIQUE (username),
);

