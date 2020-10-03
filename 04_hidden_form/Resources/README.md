# hidden form
http://192.168.122.111/?page=recover

## How to get flag
change value of hidden input tag
```
<input type="hidden" name="mail" value="webmaster@borntosec.com" maxlength="15">
```
Click submit button then you can get flag !

## Vulnerability
Though Hidden input tag is not visible, anyone can manipulate it. In this case, we can change recipient email address.

## How to Fix
Instead of using hidden input value with sensitive info, do it on backend side.

## Resouces
none