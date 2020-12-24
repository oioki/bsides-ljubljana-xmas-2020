# Day 13

> Someone was monitoring weird transmissions on Santa’s network, fortunately their systems are outdated so you might have some luck decoding the message.

[tcp-xmas.pcap](tcp-xmas.pcap)

We can try to open the file in Wireshark. However, according to Statistics / Conversations / TCP, there are 6028 TCP conversations. That's way too much, so we can try another way.

Let's do the same trick with longest strings. And the longest one is actually:

```
$ strings tcp-xmas.pcap  | awk '{ print length, $0 }' | sort -n -s | cut -d" " -f2- | tail -1
["Dot","DotDotDotDash","Dot","DashDot","DashDotDotDotDotDash","Dash","DashDotDashDot","DotDashDashDot","DotDotDashDashDotDash","DotDashDashDashDash","DotDotDot","DashDotDotDotDotDash","DashDotDashDot","Dot","DotDashDotDot","Dot","DashDotDotDot","DotDashDot","DotDash","Dash","DotDot","DashDot","DashDashDot","DashDotDotDotDotDash","DotDashDashDashDash","DotDotDotDashDash","DotDotDotDashDash","DashDashDotDotDot","DashDotDotDotDotDash","DashDotDotDash","DashDash","DotDash","DotDotDot"]
```

This looks very much like Morse code. Let's convert it to usual Morse format:

```
. ...- . -. -....- - -.-. .--. ..--.- .---- ... -....- -.-. . .-.. . -... .-. .- - .. -. --. -....- .---- ...-- ...-- --... -....- -..- -- .- ...
```

Then use some [online decoder](https://morsedecoder.com/) and we get a flag:

```
xmas{EVEN-TCP_1S-CELEBRATING-1337-XMAS}
```
