# robots.txt_2

## What is robots.txt ?
Web Spiders, Robots, or Crawlers retrieve a web page and then recursively traverse hyperlinks to retrieve further web content. Their accepted behavior is specified by the Robots Exclusion Protocol of the robots.txt file in the `web root directory`.

Our site has a robots.txt like below
```
User-agent: *
Disallow: /whatever
Disallow: /.hidden
```

We are going to see /.hidden

## How to get flag
download .hidden directories(wget) and use grep to find flag

```
sh getflag.sh [server_ip]
```

## Vulnerability
Sensitive informations are exposed.

## How to Fix
Instead of using `Disallow` in robots.txt, set noindex in nginx server.
Set proper permisson of sensitive folder and files.

## Resouces
* (OWASP - Review Webserver Metafiles for Information Leakage)[https://owasp.org/www-project-web-security-testing-guide/stable/4-Web_Application_Security_Testing/01-Information_Gathering/03-Review_Webserver_Metafiles_for_Information_Leakage.html]
