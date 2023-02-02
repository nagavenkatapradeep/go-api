-- `go-api`.albums definition

CREATE TABLE `albums` (
  `ID` int NOT NULL COMMENT 'Album ID',
  `Title` varchar(100) DEFAULT NULL,
  `Artist` varchar(100) DEFAULT NULL,
  `Year` year DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `go-api-qa`.albums ADD CONSTRAINT id PRIMARY KEY (ID);
