# Day 2

> Santa's checklist website for presents he already put in his sleigh keeps crashing. Can you help him find out what the problem is? Url for the website is: https://sleigh.owasp.si

When visiting given URL [https://sleigh.owasp.si/], we get "ERR_TOO_MANY_REDIRECTS" error in the browser.

Let's inspect HTTP headers:

```
$ curl -i https://sleigh.owasp.si/
HTTP/2 301 
date: Thu, 24 Dec 2020 12:59:17 GMT
content-type: text/html
set-cookie: __cfduid=da209f6d07db090ad01fd3fd6fc09d0f61608814757; expires=Sat, 23-Jan-21 12:59:17 GMT; path=/; domain=.owasp.si; HttpOnly; SameSite=Lax; Secure
location: https://sleigh.owasp.si/2
x-forwarded-code: x
cf-cache-status: DYNAMIC
cf-request-id: 07366e1dcb000072f9078b9000000001
expect-ct: max-age=604800, report-uri="https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct"
report-to: {"endpoints":[{"url":"https:\/\/a.nel.cloudflare.com\/report?s=f52U51ladSSkPJxsLo%2Btl8HgsfsHEWZryo9wAt5Q1DahHt5hWHk%2BXFoB29N2mz%2FWG%2B0huqJNkhiKbOOa2idnbkROlJcO8izMZ796HrEBhXk%3D"}],"group":"cf-nel","max_age":604800}
nel: {"report_to":"cf-nel","max_age":604800}
server: cloudflare
cf-ray: 606a7fa94a4e72f9-AMS
```

Strange thing is `x-forwarded-code: x`. We know beforehand that `x` should be the first letter of the flag. Probably, the redirect chain contains the flag in this header. Checking this hypothesis with a [simple script](./solution.py), we get a flag:

```
xmas{7w1nklin9}
```
