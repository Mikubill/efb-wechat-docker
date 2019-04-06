efb-wechat-docker

EFB WeChat Slave Docker Ver. 

## build

* use docker hub ci version

```
docker pull mikubill/efbwechat
```

* build it locally

```
git clone https://github.com/mikubill/efb-wechat-docker.git
cd efb-wechat-docker && docker build -t mikubill/efbwechat .
```

## usage

* step 1

```
docker run -d -t --name "efbwechat" -e TOKEN={} -e ADMIN={} mikubill/efbwechat
```

TOKEN: Telegram Bot Token (@botfather)

ADMIN: Your Telegram ID (@idbot)

将里面的 token 和 admin 的值分别换为 bottoken 和 Chat ID

* step 2

```
docker logs -f efbwechat 
```

Scan the QRCode to login

打开手机微信扫码，扫描屏幕上的二维码，然后确认登录。


