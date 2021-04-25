# MysqlHoneypot

一个针对较高版本Firefox密码文件盗取的MYSQL蜜罐。

**Use MySQL honeypot to get something secret, like the passwords stored in Firefox.**

The file *evalServer_for_win.py* can run a malicious server, which acts like a MYSQL and can send the payload `load data local infile`.  The program is designed to steal the uninvited guest's passwords stored in Firefox (key4.db and logins.json) without any protection. 

After that, you can use [firepwn](https://github.com/lclevy/firepwd) to decrypt files and get passwords manually if there is no master key for protection!

If you want to trap Firefox on linux, just modify *main.py* and use *evalServer_for_linux.py*, which is mainly **designed for Kali Linux** because of its popularity. 

### evalServer_for_win.py

![process](pic/process.png)

**Cautions:** 

* I am sure that **on MYSQL client 5.7.26 it works** but on higher versions (like 8.0.12) it is prone to cause mistakes.
* To get all things related, an uninvited guest must **interact** with the fake MYSQL server **at least 4 times for windows / 3 times for linux** ! The more the stupid guest interacts with the server, the more information your can get! 

缺陷：在一段时间内仅限于对单个客户端的攻击等。

## Dokcer setup

```bash
docker-compose up -d  # running on Linux     ## docker-compose down
docker compose up -d  # running on Windows   ## docker compose down
```

## DEMO

![exp](pic/exp.gif)
