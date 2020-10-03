# Brute Force
/index.php?page=signin

## What is Brute Force?
A brute force attack, also known as an exhaustive search, is a cryptographic hack that relies on guessing possible combinations of a targeted password until the correct password is discovered. The most basic brute force attack is a dictionary attack, where the attacker works through a dictionary of possible passwords and tries them all. 

## How to get flag
If we try to login with any username and password, data is sent with GET request to server.
```
/index.php?page=signin&username=any_id&password=any_password&Login=Login#
```

In many case, administration id is `admin`, so let's try brute force attack with it. To execute attack, `bruteforce.sh [server_ip]`

## Vulnerability
Guessable id and password are vulnarable by brute force attack.

## How to Fix
1. Use long and complex password.
2. Don't use guessable administration id.
3. Limit abnormal login attempts.
4. Use POST instead of GET for login.

## Resouces
(Brute force attack)[https://en.wikipedia.org/wiki/Brute-force_attack]
(100 worst password)[https://www.forbes.com/sites/daveywinder/2019/12/14/ranked-the-worlds-100-worst-passwords/#413ccca369b4]