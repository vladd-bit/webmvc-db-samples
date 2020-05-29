
DROP DATABASE WebMVC;
CREATE DATABASE WebMVC;

--
-- Name: _useraccount; Type: TABLE; Schema: WebMVC; Owner: postgres
--
DROP TABLE IF EXISTS user_account;
CREATE TABLE user_account (
  "id" bigserial UNIQUE,
  "username" varchar(40) NOT NULL UNIQUE,
  "passwordSalt" varchar(500) NOT NULL,
  "passwordHash" varchar(500) NOT NULL,
  "sessionKey" varchar(255) NULL,
  "email" varchar(60) NOT NULL UNIQUE,
  "failedAttempt" smallint NOT NULL DEFAULT 0,
  "locked" smallint NOT NULL DEFAULT 0,
  "lastLogin" timestamp NULL,
  "accessLevel" SMALLINT NOT NULL DEFAULT 0,
  "dateCreated" timestamp NOT NULL,
  "dateUpdated" timestamp NOT NULL,
  PRIMARY KEY (id) 
);

ALTER TABLE user_account OWNER TO postgres;
