CREATE TABLE <databaseName>.sdbl(`DateTime` DateTime64(6,'Europe/Moscow'),
                                  `duration` Int32,
                                  `ProcessID` Int32,
                                  `Level` Int32,
                                  `ProcessName` String,
                                  `ComputerName` String,
                                  `ConnectID` Int32,
                                  `User` String,
                                  `Context` String,
                                  `message` String,
                                  `file` String) ENGINE = MergeTree() PARTITION BY toYYYYMM(DateTime)
ORDER BY (DateTime);