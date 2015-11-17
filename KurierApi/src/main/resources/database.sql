CREATE SEQUENCE USERS_ID_SEQ
START WITH 1
INCREMENT 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

CREATE SEQUENCE ROLE_ID_SEQ
START WITH 1
INCREMENT 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

CREATE SEQUENCE PACKAGE_ID_SEQ
START WITH 1
INCREMENT 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

CREATE SEQUENCE LOCATION_ID_SEQ
START WITH 1
INCREMENT 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

CREATE SEQUENCE STATUS_ID_SEQ
START WITH 1
INCREMENT 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

CREATE TABLE USERS (
  ID           BIGINT DEFAULT NEXTVAL('USERS_ID_SEQ'),
  FIRST_NAME   VARCHAR(20),
  LAST_NAME    VARCHAR(20),
  INDEX_NUMBER INT,
  CREATE_DATE  DATEDATE,
  PASSWORD     VARCHAR(20),
  EMAIL        VARCHAR(20),
  STATUS       VARCHAR(20),
  ROLE_ID      BIGINT REFERENCES ROLE (ID),
  CONSTRAINT USERS_PKEY PRIMARY KEY (ID)
);

CREATE TABLE ROLE (
  ID        BIGINT DEFAULT NEXTVAL('ROLE_ID_SEQ'),
  ROLE_NAME VARCHAR(20),
  CREATE_DATE DATE,
  CONSTRAINT ROLE_PKEY PRIMARY KEY (ID)
);

CREATE TABLE PACKAGE (
  ID BIGINT DEFAULT NEXTVAL('PACKAGE_ID_SEQ'),
  USER_ID BIGINT REFERENCES USERS (ID),
  NAME VARCHAR(20),
  CREATE_DATE DATE,
  DESCRIPTION VARCHAR(60),
  STATUS BIGINT REFERENCES LOCATION (ID),
  LOCATION_ID BIGINT REFERENCES LOCATION (ID),
  CONSTRAINT PACKAGE_PKEY PRIMARY KEY (ID)
);

CREATE TABLE LOCATION (
  ID BIGINT DEFAULT NEXTVAL('LOCATION_ID_SEQ'),
  STREET VARCHAR(30),
  ADDRESS_NO VARCHAR(5),
  CITY VARCHAR(20),
  COUNTRY VARCHAR(20),
  POSTAL_CODE VARCHAR(20),
  CONSTRAINT LOCATION_PKEY PRIMARY KEY (ID)
);

CREATE TABLE STATUS (
  ID BIGINT DEFAULT NEXTVAL('STATUS_ID_SEQ'),
  STATUS_DATE DATE,
  NAME VARCHAR(20),
  CURRENT_LOCATION VARCHAR(30),
  CONSTRAINT STATUS_PKEY PRIMARY KEY (ID)
);




