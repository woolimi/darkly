# Cookies

## What is Cookies
HTTP is a stateless protocol, meaning that it doesn’t hold any reference to requests being sent by the same user. In order to fix this issue, sessions were created and appended to HTTP requests.

The most used session storage mechanism in browsers is cookie storage. Cookies can be set by the server, by including a `Set-Cookie` header in the HTTP response or via JavaScript.

Cookies can be used for a multitude of reasons, such as:
* session management
* personalization
* tracking

## How to get flag
Change value of cookie `I_am_admin` in inspection mode(Application tab) from "68934a3e9455fa72420237eb05902327" to "b326b5062b2f0e69046810717534cb09". Those are the values can be decrypted & encrypted with [this site](https://hashtoolkit.com/)

```
// from
I_am_admin=68934a3e9455fa72420237eb05902327
// to
I_am_admin=b326b5062b2f0e69046810717534cb09
```

Then you can get flag with alert message.

## Vulnerability
Anyone can be admin by changing cookies

## How to Fix
Better not to save important data in cookies. Save in Database.

## Resouces
* (OWASP - Testing for Cookies Attributes)[https://owasp.org/www-project-web-security-testing-guide/stable/4-Web_Application_Security_Testing/06-Session_Management_Testing/02-Testing_for_Cookies_Attributes.html]

