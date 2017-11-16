SELECT ID FROM INFORMATION_SCHEMA.PROCESSLIST  WHERE COMMAND = 'Query' AND TIME > 60  AND ID != CONNECTION_ID()  AND USER != 'root'  AND COMMAND != 'Binlog Dump'  AND STATE NOT REGEXP '(slave|relay|event)';
