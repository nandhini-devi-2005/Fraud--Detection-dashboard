CREATE DATABASE fraud_detection;
USE fraud_detection;
CREATE TABLE transactions (
    trans_date_trans_time DATETIME,
    cc_num          BIGINT,
    merchant         VARCHAR(60),
    category         VARCHAR(20),
    amt              DECIMAL(10,2),
    first            VARCHAR(30),
    last             VARCHAR(30),
    gender           CHAR(1),
    city             VARCHAR(30),
    state            CHAR(2),
    zip              INT,
    lat              DECIMAL(9,6),
    `long`           DECIMAL(9,6),
    city_pop         INT,
    job              VARCHAR(70),
    dob              DATE,
    trans_num        VARCHAR(40) PRIMARY KEY,
    merch_lat        DECIMAL(9,6),
    merch_long       DECIMAL(9,6),
    is_fraud         TINYINT,
    trans_month      TINYINT,
    trans_day        TINYINT,
    trans_hour       TINYINT,
    trans_weekday    VARCHAR(10),
    customer_age     TINYINT,
    amount_range     VARCHAR(10)
);
DROP TABLE transactions;
LOAD DATA LOCAL INFILE"D:\Insight\fraud_cleaned.csv"
INTO TABLE transactions
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
SET GLOBAL local_infile = 1;
SHOW TABLES;