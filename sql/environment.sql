-- MS SQL Server 
 SELECT @@VERSION
{"headers": [""], "values": [["Microsoft SQL Server 2019 (RTM-CU15) (KB5008996) - 15.0.4198.2 (X64) \n\tJan 12 2022 22:30:08 \n\tCopyright (C) 2019 Microsoft Corporation\n\tExpress Edition (64-bit) on Linux (Ubuntu 20.04.1 LTS) <X64>"]]}

-- Oracle 
SELECT * FROM v$version;
{"headers": ["BANNER"], "values": [["Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production"], ["PL/SQL Release 11.2.0.2.0 - Production"], ["CORE\t11.2.0.2.0\tProduction"], ["TNS for Linux: Version 11.2.0.2.0 - Production"], ["NLSRTL Version 11.2.0.2.0 - Production"]]}

-- MySQL
SELECT VERSION();
{"headers": ["VERSION()"], "values": [["8.0.21"]]}
