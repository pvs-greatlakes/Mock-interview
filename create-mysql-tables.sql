use employees;

CREATE TABLE EMPLOYEE (
                    EMP_ID            CHAR(6) NOT NULL,
                    DEPT_ID          CHAR(4) NOT NULL,
                    FIRST_NAME  CHAR(20) NOT NULL,
                    LAST_NAME  CHAR(20),
                    AGE INT,  
                    SEX CHAR(1),
                    INCOME FLOAT,
                    DOJ DATETIME);

CREATE TABLE DEPARTMENT(
                        DEPT_ID          CHAR(4) NOT NULL,
                        DEPT_NAME  CHAR(20),
                        EMP_ID            CHAR(6) NOT NULL);

CREATE TABLE IF NOT EXISTS leaves
(
    EMP_ID CHAR(6) NOT NULL,
    LEAVE_START_DATE DATE,
    LEAVE_END_DATE DATE,
    LEAVE_DAYS TINYINT NOT NULL);


