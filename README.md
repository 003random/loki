<h1 align="center">
  <br>
  <a href="https://github.com/003random/loki"><img src="https://neonxp.gallerycdn.vsassets.io/extensions/neonxp/gotools/0.0.7/1617490636710/Microsoft.VisualStudio.Services.Icons.Default" alt="loki" sty></a>
  <br>
  Loki
  <br>
</h1>

<h4 align="center">Advanced Pentesting & Bug Bounty Framework</h4>

<p align="center">
  <a href="https://github.com/003random/loki/releases">
    <img src="https://img.shields.io/github/release/003random/loki.svg">
  </a>
  <a href="https://travis-ci.com/003random/loki">
    <img src="https://img.shields.io/travis/com/003random/loki.svg">
  </a>
  <a href="https://github.com/003random/loki/issues?q=is%3Aissue+is%3Aclosed">
      <img src="https://img.shields.io/github/issues-closed-raw/003random/loki.svg">
  </a>
</p>

![output](https://i.imgur.com/t2Pan8p.png)


Loki is a modern and advanced pentesting and bug bounty framework written in Go!
Because it uses Go it is super fast, stable and modular.

Loki performs tasks such as portscanning, directory scanning, fetching DNS data and fetching response headers.

As a pentester, Loki is all you need.

Loki is inspired by the rise of popular tools (written in Go) that aim to automate common bug bounty tasks. Very advanced tools such as XSStrike and uro.


## Installation
```
go install -v github.com/003random/loki
```

### Specifying targets
```
./loki target.com
```

### Output hackerone.com
```
loki:loki/ (dev ?:1✗) $ ./loki hackerone.com
[+] checking DNS data for hackerone.com
hackerone.com has address 104.16.99.52
hackerone.com has address 104.16.100.52
hackerone.com has IPv6 address 2606:4700::6810:6434
hackerone.com has IPv6 address 2606:4700::6810:6334
hackerone.com mail is handled by 30 aspmx3.googlemail.com.
hackerone.com mail is handled by 10 aspmx.l.google.com.
hackerone.com mail is handled by 20 alt2.aspmx.l.google.com.
hackerone.com mail is handled by 30 aspmx2.googlemail.com.
hackerone.com mail is handled by 20 alt1.aspmx.l.google.com.

[+] running directory scan on http://hackerone.com/
no directories found...

[+] fetching response headers for hackerone.com
HTTP/1.1 301 Moved Permanently
Date: Fri, 01 Apr 2022 14:13:57 GMT
Connection: keep-alive
Cache-Control: max-age=3600
Expires: Fri, 01 Apr 2022 15:13:57 GMT
Location: https://hackerone.com/
X-Content-Type-Options: nosniff
Server: cloudflare
CF-RAY: 6f51edab3f929781-AMS

[+] running a portscan on hackerone.com
Found open port 22
Found open port 80
Found open port 443
```
