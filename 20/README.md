# Day 20

> Santa is currently very busy preparing for Christmas. But he noticed that elves changed his "naughty list.txt" from his SharePoint folder "https://owaspsi.sharepoint.com/sites/xmas2020/Shared Documents". Can you help him solve the mystery of how did they get access to it?
> Vm0xd1MwMUdiRmhUV0doV1YwZDRWVmxVU205V2JHeDBaVVYwVmxKc2NIaFZNakExWVd4S2MyTklhRlppV0dob1ZrY3hTMU5IVWpaVGJGcE9ZbXhLZVZkV1VrZFhiVlpIVkc1S2FWSnNjSEJWYWtwdlYxWmFjVk51Y0d4U01VcFpWVzEwYjFWR1dYZFhiRkphWWtkU2RsWldXbUZXTVdSMFpFWlNhVlpzY0RaWFZFSlhZakpHUjFOWWNGSmhlbXhXVm14YVlVMXNVbGhsUjNSWFRWZFNlVlJzVlRGV01ERldZak5rVjFaRmEzaFdWRVpUWXpGd1JsZHNVbWxXVm5CWFZtMTBWMU13TUhoVmJHaHNVMFUxVUZsclZURldiRnAwVFZoT1YwMUVSbGRaTUZaaFZqRkplbUZJU21GU1JYQklWbTF6ZUZkV1NuTlViV2hvWld4YVlWWnRNSGRsUjBsNFZtdGthbEp0YUU5V2JYUjNZekZhYzFWdVRsaGlSM2g1VjJ0V2ExWnJNVlpPVldSV1RXNW9TRll3V2xwbGJFWnpVV3hhYkdFd1dUQldWRUpoVXpKT2MyTkZaRlJpVjNod1ZUQldTMDB4V25OYVNHUlRUVmQ0V0ZaSE5VOVdiVXBIWTBab1dtSkdTbGhXVjNoaFZqRldXVnBHUWxaV1JFRTE=

First of all, let's crack this Base64 thing. [Simple script](solution/b64.py) will do the trick, applying Base64 decode a few times. We get some credentials:

```
username:santa.claus@owaspsi.onmicrosoft.compassword:NorthPoleH0H
```

Direct login attempt via <https://login.microsoftonline.com/> did not work -- it asked for MFA which we don't have.

It took some time for trial and error, but the critical part of the solution was from StackOverflow: [REST - Authentication to online Sharepoint](https://sharepoint.stackexchange.com/a/222942).

See how I implemented the [login part](solution/login.py) or the [full solution](solution/solution.py).

Alternatively, you can set the `SPOIDCRL` in your browser and surf the SharePoint installation.

The flag is in <https://owaspsi.sharepoint.com/sites/xmas2020/Shared%20Documents/naughty%20list.txt> when the correct cookie is set:

```
xmas{ro5y_che3k5}
```
