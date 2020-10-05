# upload_XSS
/index.php?page=upload

## How to get flag
When we try to upload `real.jpg` and `fake.jpg`, both file give us success upload message. From this, we can guess that the server doesn't check file validation. 

For example, if file extension is jpg, server treat this file as jpg.
This can be a breach of XSS attack.

What if we can upload xss.php and manipulate type of file ? Unfortunately it is possible.

run `sh getflag.sh [server_ip]`

## Vulnerability
Same as other XSS attack. It is very fatal and dangerous. The attacker can snatch client's info or something else...

## How to Fix
Not only check meme type check, image validation check is needed.

In case of php
```PHP
exif_imagetype('path/to/image.jpg');
```

## Resouces
(PHP - POST method uploads))[https://www.php.net/manual/en/features.file-upload.post-method.php]
(What is the best and fastest way to check if the image is valid in PHP?)[https://stackoverflow.com/questions/7393419/what-is-the-best-and-fastest-way-to-check-if-the-image-is-valid-in-php]