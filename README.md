# mailcatcher-docker

Simple mailcatcher for docker. I use it for development purposes together with fig. mailcatcher is a mail server for development purposes. You can send mails to it and view it via web interface. The mails are not send to any real email address.

Example fig.yml:
```
mailcatcher:
  image: odaniait/mailcatcher-docker:latest
  ports:
    - "2525:2525"
    - "1080:1080"
```

Afterwords you can access the web interface with your browser via http://127.0.0.1:1080

You can send mails to it by sending it via smtp to port 2525 on 127.0.0.1

You can also use your ip address instead of 127.0.0.1

