CREATE TABLE <databaseName>.excp(`DateTime` DateTime,
                                  `duration` Int32,
                                  `Level` Int32,
                                  `Process` String,
                                  `ProcessName` String,
                                  `OSThread` Int32,
                                  `ClientID` Int32,
                                  `ApplicationName` String,
                                  `ComputerName` String,
                                  `ConnectID` Int32,
                                  `SessionID` Int32,
                                  `User` String,
                                  `DBMS` String,
                                  `DataBase` String,
                                  `dbpid` Int32,
                                  `Exception` String,
                                  `Description` String,
                                  `Context` String) ENGINE = MergeTree() PARTITION BY toYYYYMM(DateTime)
ORDER BY (DateTime);