#!/usr/bin/env python3

# https://sharepoint.stackexchange.com/a/222942

import requests


url = 'https://login.microsoftonline.com/extSTS.srf'
username = 'santa.claus@owaspsi.onmicrosoft.com'
password = 'NorthPoleH0H'
endpoint = 'owaspsi.sharepoint.com'


data = f'''<s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope" xmlns:a="http://www.w3.org/2005/08/addressing" xmlns:u="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">
<s:Header>
<a:Action s:mustUnderstand="1">http://schemas.xmlsoap.org/ws/2005/02/trust/RST/Issue</a:Action>
<a:ReplyTo>
<a:Address>http://www.w3.org/2005/08/addressing/anonymous</a:Address>
</a:ReplyTo>
<a:To s:mustUnderstand="1">https://login.microsoftonline.com/extSTS.srf</a:To>
<o:Security s:mustUnderstand="1" xmlns:o="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd">
<o:UsernameToken>
<o:Username>{username}</o:Username>
<o:Password>{password}</o:Password>
</o:UsernameToken>
</o:Security>
</s:Header>
<s:Body>
<t:RequestSecurityToken xmlns:t="http://schemas.xmlsoap.org/ws/2005/02/trust">
<wsp:AppliesTo xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy">
<a:EndpointReference>
<a:Address>{endpoint}</a:Address>
</a:EndpointReference>
</wsp:AppliesTo>
<t:KeyType>http://schemas.xmlsoap.org/ws/2005/05/identity/NoProofKey</t:KeyType>
<t:RequestType>http://schemas.xmlsoap.org/ws/2005/02/trust/Issue</t:RequestType>
<t:TokenType>urn:oasis:names:tc:SAML:1.0:assertion</t:TokenType>
</t:RequestSecurityToken>
</s:Body>
</s:Envelope>'''

headers = {
    'Content-Type': 'text/plain; charset=utf-8',
    'Content-Length': str(len(data)),
}

r = requests.post(url, headers=headers, data=bytes(data, 'utf-8'))
assert(r.status_code == 200)
# print(r.status_code)
# print(r.headers)
# print(r.text)

securitytoken = r.text.split('>t=')[1].split('&amp')[0]


url = 'https://owaspsi.sharepoint.com/_vti_bin/idcrl.svc/'
headers = {
    'X-IDCRL_ACCEPTED': 't',
    'Authorization': f'BPOSIDCRL {securitytoken}',
}
r = requests.get(url, headers=headers)
assert(r.status_code == 200)
# print(r.status_code)
# print(r.headers)
# print(r.text)

cookie = r.headers['Set-Cookie'].split(';')[0]
# print(cookie)
