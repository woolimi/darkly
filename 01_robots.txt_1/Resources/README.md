# robots.txt_1

## What is robots.txt ?
Web Spiders, Robots, or Crawlers retrieve a web page and then recursively traverse hyperlinks to retrieve further web content. Their accepted behavior is specified by the Robots Exclusion Protocol of the robots.txt file in the `web root directory`.

Our site has a robots.txt like below
```
User-agent: *
Disallow: /whatever
Disallow: /.hidden
```

We are going to see /whatever

## How to get flag
1. /whatever
check htpasswd file
```
root:8621ffdbc5698829397d97767ac13db3
```

2. Use https://hashtoolkit.com/ to decrypt password => `dragon`
Find web content url by using dirb
```
sudo apt install dirb
dirb http://server_ip
```
go to admin page http://server_ip/admin/
id : root , password: dragon

## Vulnerability
Sensitive informations are exposed.

## How to Fix
Instead of using `Disallow` in robots.txt, set noindex in nginx server.
Set proper permisson of sensitive folder and files.

## Resouces
* (OWASP - Review Webserver Metafiles for Information Leakage)[https://owasp.org/www-project-web-security-testing-guide/stable/4-Web_Application_Security_Testing/01-Information_Gathering/03-Review_Webserver_Metafiles_for_Information_Leakage.html]