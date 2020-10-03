# Feedback HTML injection
/index.php?page=feedback

## How to get flag
Server doesn't check html tag in name input, except `<script>` tag.

Put name value like below
```
alert
<img src='aaa' onerror="alert(document.cookie)">
```

## Vulnerability
Stored Cross-site Scripting (XSS) is the most dangerous type of Cross Site Scripting. Web applications that allow users to store data are potentially exposed to this type of attack.

This vulnerability can be used to conduct a number of browser-based attacks including:

* Hijacking another user’s browser
* Capturing sensitive information viewed by application users
* Pseudo defacement of the application
* Port scanning of internal hosts (“internal” in relation to the users of the web application)
* Directed delivery of browser-based exploits
* Other malicious activities

## How to Fix
Always validate user input and filtering server output. 

## Resouces
(Testing for Stored Cross Site Scripting)[https://owasp.org/www-project-web-security-testing-guide/stable/4-Web_Application_Security_Testing/07-Input_Validation_Testing/02-Testing_for_Stored_Cross_Site_Scripting.html]
(url-encoder)[https://www.freeformatter.com/url-encoder.html#ad-output]
(html escape)[https://www.freeformatter.com/html-escape.html]


