# Brute Force
/?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c

## How to get flag
If you inspect this page, you can find comment.
```HTML
<!--
You must cumming from : "https://www.nsa.gov/" to go to the next step
-->
<!--
Let's use this browser : "ft_bornToSec". It will help you a lot.
-->
```

Those are the hints that we should set referer "https://www.nsa.gov/" and set user-agent "ft_bornToSec". 

To get flag, 
```
sh getflag.sh [server_ip]
```

## Vulnerability
None

## How to Fix
Nothing to fix. Just note that `referer` and `uger-agent` can be manipulated. 

## Resouces
(referer)[https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referer]
(user-agent)[https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/User-Agent]