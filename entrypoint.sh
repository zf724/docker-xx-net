#!/bin/sh
{ \
  echo "[listen]"; \
  echo ";监听地址，如果需要允许局域网/公网使用，设为0.0.0.0即可，若共享pac此项必须设置为 0.0.0.0"; \
  echo "ip = ${LISTEN_IP}"; \
  echo ";默认使用8087作为代理端口，如有需要可以修改"; \
  echo "port = ${LISTEN_PORT}"; \
} > manual.ini

if [ ${LISTEN_USERNAME} != "none" ] && [ ${LISTEN_USERNAME} != "NONE" ];then
{ \
  echo ";局域网代理认证用户名，留空不开启认证"; \
  echo "username = ${LISTEN_USERNAME}"; \
  echo ";代理认证密码"; \
  echo "password = ${LISTEN_PASSWORD}"; \
} >> manual.ini
else
{ \
  echo ";局域网代理认证用户名，留空不开启认证"; \
  echo "username ="; \
  echo ";代理认证密码"; \
  echo "password ="; \
} >> manual.ini
fi

{ \
  echo ";启动后是否隐藏 goagent 窗口，0为隐藏（最小化至托盘），1为显示"; \
  echo "visible = 0"; \
  echo ";是否显示详细debug信息"; \
  echo "debuginfo = 0"; \
  echo ""; \
  echo "[gae]"; \
} >> manual.ini

if [ ${GAE_APPID} != "none" ] && [ ${GAE_APPID} != "NONE" ];then
{ \
  echo ";添加你自己的appid，多个用竖线 | 分隔"; \
  echo "appid = ${GAE_APPID}"; \
} >> manual.ini
else
{ \
  echo ";添加你自己的appid，多个用竖线 | 分隔"; \
  echo "appid ="; \
} >> manual.ini
fi

if [ ${GAE_PASSWORD} != "none" ] && [ ${GAE_PASSWORD} != "NONE" ];then
{ \
  echo ";appid密码，无可不填"; \
  echo "password = ${GAE_PASSWORD}"; \
} >> manual.ini
else
{ \
  echo ";appid密码，无可不填"; \
  echo "password ="; \
} >> manual.ini
fi

{ \
  echo ""; \
  echo ";类似于系统 hosts 功能，指定各网站连接方式为 direct(直接通过IP连接) 或 gae(通过gae连接)"; \
  echo "[hosts]"; \
  echo ";表示直接通过IP连接 www.google.com，但非 www 开头的不使用直连"; \
  echo "www.google.com = direct"; \
  echo ";前面加 . 表示只要匹配域名即使用 gae 模式"; \
  echo ".commondatastorage.googleapis.com = gae"; \
  echo ""; \
  echo ""; \
  echo ";下载分流，建议使用默认值"; \
  echo "[autorange]"; \
  echo ";线程数，当观看视频不流畅可适当增加"; \
  echo "threads = 20"; \
  echo ";分块大小，如果IP质量好可以修改 maxsize 为更大的数值"; \
  echo "maxsize = 548576"; \
  echo ""; \
  echo ";pac 自动配置脚本"; \
  echo "[pac]"; \
  echo ";是否启用"; \
  echo "enable = ${PAC_ENABLE}"; \
  echo ";监听地址，如果需要允许局域网/公网使用，设为0.0.0.0，同时设置 [listen] ip = 0.0.0.0 否则无效"; \
  echo "ip = ${PAC_ENABLE}"; \
  echo ";默认使用8086作为代理端口，如有需要可以修改"; \
  echo "port = ${PAC_PORT}"; \
  echo ";pac 文件名"; \
  echo "file = proxy.pac"; \
  echo ";是否开启广告拦截模式"; \
  echo "admode = 1"; \
  echo ";广告拦截规则订阅地址"; \
  echo "adblock = https://easylist-downloads.adblockplus.org/easylistchina.txt"; \
  echo ";被墙网站规则订阅地址"; \
  echo "gfwlist = https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt"; \
  echo ";更新时间，以秒计算"; \
  echo "expired = 86400"; \
  echo ""; \
  echo ";前置代理"; \
  echo "[proxy]"; \
  echo ";是否启用，改为1启用"; \
  echo "enable = ${PROXY_ENABLE}"; \
  echo ";代理类型，支持 HTTP HTTPS SOCK4 SOCK5"; \
  echo "type = ${PROXY_TYPE}"; \
  echo "host = ${PROXY_HOST}"; \
  echo "port = ${PROXY_PORT}"; \
} >> manual.ini

if [ ${PROXY_USER} != "none" ] && [ ${PROXY_USER} != "NONE" ];then
{ \
  echo "user = ${PROXY_USER}"; \
  echo "passwd = ${PROXY_PASSWD}"; \
} >> manual.ini
else
{ \
  echo "user ="; \
  echo "passwd ="; \
} >> manual.ini
fi

{ \
  echo ""; \
  echo "[google_ip]"; \
  echo ";开启 IPv6 选项，1开启，0关闭，慎重！"; \
  echo "use_ipv6 = 0"; \
  echo ";自动调整扫描线程数"; \
  echo "auto_adjust_scan_ip_thread_num = 1"; \
  echo ";扫描线程数，默认50，若出现网络连接缓慢可改小一点"; \
  echo "max_scan_ip_thread_num = 50"; \
  echo ";谷歌IP上限，超过则剔除延时高的IP"; \
  echo "max_good_ip_num = 3000"; \
  echo ";IP连接时间间隔，出现连接不稳定可适当调整"; \
  echo "ip_connect_interval = 8"; \
  echo ";单个IP连接数，建议别改，容易使IP失效"; \
  echo "max_links_per_ip = 1"; \
  echo ""; \
  echo ";连接设置，一般无需修改"; \
  echo "[connect_manager]"; \
  echo ";最大连接线程"; \
  echo "https_max_connect_thread = 10"; \
  echo ";每次添加的新连接池数"; \
  echo "https_new_connect_num = 3"; \
  echo ";最小连接池数值"; \
  echo "https_connection_pool_min = 1"; \
  echo ";最大连接池数值"; \
  echo "https_connection_pool_max = 30"; \
  echo ""; \
  echo "[system]"; \
  echo ";设置成 1 会在data目录生成日志文件 local.log，便调试用"; \
  echo "log_file = ${SYSTEM_LOG_FILE}"; \
  echo ";设置是否在data目录输出扫描IP日志 scan_ip.log，超过3000行会新建日志"; \
  echo "log_scan = 1"; \
} > manual.ini

python proxy.py
