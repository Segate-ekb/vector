CREATE TABLE tjournal.dbmssql(`DateTime` DateTime,
                                  `duration` Int32,
                                  `Level` Int32,
                                  `ProcessName` String,
                                  `ConnectID` Int32,
                                  `User` String,
                                  `dbpid` Int32,
                                --   `Sql` String, здоровенные куски текста
                                --   `planSQLText` String, здоровенные куски текста
                                  `Context` String) ENGINE = MergeTree() PARTITION BY toYYYYMM(DateTime)
ORDER BY (DateTime);