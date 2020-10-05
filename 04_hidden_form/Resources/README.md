# hidden form
/?page=recover

## How to get flag
change value of hidden input tag
```
<input type="hidden" name="mail" value="webmaster@borntosec.com" maxlength="15">
```
Click submit button then you can get flag !

## Vulnerability
Hidden input can be manipulated even though it is not visible on screen.
In this case, we can change recipient email address.

## How to Fix
1. Instead of using hidden input value with sensitive info, do it on backend side.
2. Note that hidden form (actually all the front-end code) can be manpulated.

## Resouces
none