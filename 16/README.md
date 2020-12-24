# Day 16

> It's nearly Christmas and Santa’s very busy getting everything ready. He’s preparing his list of who’s been good. Write a letter to Santa, to let him know that you have been nice.
> You can send him a letter at: http://elfs.owasp.si:3333/

There is a `/send` POST endpoint which seemingly does nothing except responding with `{"status":"OK"}`. However, there are two interesting small things:

1. When sent, the message is packaged in XML tags and header `Content-Type: application/xml` is added. For example, the web form actually sends `<?xml version="1.0" encoding="UTF-8"?><msg>hello world</msg>` payload. This gives a thought that there is an XML parser on the backend, which might be vulnerable to [XXE](https://owasp.org/www-community/vulnerabilities/XML_External_Entity_(XXE)_Processing).

2. If you look at HTML source code, there is a `javascript/client.js` file which contains:

```
(function () {
  // TODO Implement WebSocket client
  // ws = new WebSocket(`ws://${location.host}`);
  // ...
})();
```

Apparently, Santa did not have time to finish Websocket implementation. If you try to send something to Websocket connection, it is sent back to you without any changes.

Interesting, if you post something to the usual `/send` HTTP POST endpoint, you will also get the response, but parsed with backend XML parser.

See the [XXE exploit](solution.py) for this scenario and the flag is:

```
xmas{S3nd_XX3_L3tt3R_t0_S@nTa}
```
