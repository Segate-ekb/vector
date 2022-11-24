CREATE TABLE <databaseName>.dbmssql(`DateTime` DateTime64(6,'Europe/Moscow'),
                                  `duration` Int32,
                                  `ProcessID` Int32,
                                  `Level` Int32,
                                  `ProcessName` String,
                                  `ConnectID` Int32,
                                  `User` String,
                                  `dbpid` Int32,
                                --   `Sql` String, здоровенные куски текста
                                --   `planSQLText` String, здоровенные куски текста
                                  `Context` String,
                                  `message` String,
                                  `file` String) ENGINE = MergeTree() PARTITION BY toYYYYMM(DateTime)
ORDER BY (DateTime);