#!/bin/sh
{ \
  echo "[system]"; \
  echo "version = ${VERSION}"; \
#设置成 1 会在data目录生成日志文件 local.log，便调试用"; \
  echo "log_file = ${SYSTEM_LOG_FILE}"; \
#设置是否在data目录输出扫描IP日志 scan_ip.log，超过3000行会新建日志"; \
  echo "log_scan = 1"; \
  echo ""; \
  echo "[listen]"; \
#监听地址，如果需要允许局域网/公网使用，设为0.0.0.0即可，若共享pac此项必须设置为 0.0.0.0"; \
  echo "ip = ${LISTEN_IP}"; \
#默认使用8087作为代理端口，如有需要可以修改"; \
  echo "port = ${LISTEN_PORT}"; \
} > proxy.ini

if [ ${LISTEN_USERNAME} != "none" ] && [ ${LISTEN_USERNAME} != "NONE" ];then
{ \
#局域网代理认证用户名，留空不开启认证"; \
  echo "username = ${LISTEN_USERNAME}"; \
#代理认证密码"; \
  echo "password = ${LISTEN_PASSWORD}"; \
} >> proxy.ini
else
{ \
#局域网代理认证用户名，留空不开启认证"; \
  echo "username ="; \
#代理认证密码"; \
  echo "password ="; \
} >> proxy.ini
fi

{ \
#启动后是否隐藏 goagent 窗口，0为隐藏（最小化至托盘），1为显示"; \
  echo "visible = 0"; \
#是否显示详细debug信息"; \
  echo "debuginfo = 0"; \
  echo ""; \
  echo "[gae]"; \
  echo "public_appid = xxnet-1|xxnet-2|xxnet-3|xxnet-4|xxnet-5|xxnet-6|xxnet-7|xxnet-8|xxnet-9|xxnet-10|xxnet-11|xxnet-12|xxnet-13|xxnet-14|xxnet-15|xxnet-16|xxnet-17|xxnet-18|xxnet-19|xxnet-20|xxnet-21|xxnet-22|xxnet-23|xxnet-24|xxnet-25|xxnet-26|xxnet-27|xxnet-28|xxnet-29|xxnet-30|xxnet-31|xxnet-32|xxnet-33|xxnet-34|xxnet-35|xxnet-36|xxnet-37|xxnet-38|xxnet-39|xxnet-40|xxnet-41|xxnet-42|xxnet-43|xxnet-44|xxnet-45|xxnet-46|xxnet-47|xxnet-48|xxnet-49|xxnet-50|xxnet-51|xxnet-52|xxnet-53|xxnet-54|xxnet-55|xxnet-56|xxnet-57|xxnet-58|xxnet-59|xxnet-60|xxnet-61|xxnet-62|xxnet-63|xxnet-64|xxnet-65|xxnet-66|xxnet-67|xxnet-68|xxnet-69|xxnet-70|xxnet-71|xxnet-72|xxnet-72|xxnet-73|xxnet-74|xxnet-75|xxnet-76|xxnet-77|xxnet-78|xxnet-79|xxnet-80|xxnet-81|xxnet-82|xxnet-83|xxnet-84|xxnet-85|xxnet-86|xxnet-87|xxnet-88|xxnet-89|xxnet-90|xxnet-91|xxnet-92|xxnet-93|xxnet-94|xxnet-95|xxnet-96|xxnet-97|xxnet-98|xxnet-99|xxnet-100|xxnet-101|xxnet-102|xxnet-103|xxnet-104|xxnet-105|xxnet-106|xxnet-107|xxnet-108|xxnet-109|xxnet-110|xxnet-111|xxnet-112|xxnet-113|xxnet-114|xxnet-115|xxnet-116|xxnet-117|xxnet-118|xxnet-119|xxnet-120|xxnet-121|xxnet-122|xxnet-123|xxnet-124|xxnet-125|xxnet-126|xxnet-127|xxnet-128|xxnet-129|xxnet-130|xxnet-131|xxnet-132|xxnet-133|xxnet-134|xxnet-135|xxnet-136|xxnet-137|xxnet-138|xxnet-139|xxnet-140|xxnet-141|xxnet-142|xxnet-143|xxnet-144|xxnet-145|xxnet-146|xxnet-147|xxnet-148|xxnet-149|xxnet-150|xxnet-151|xxnet-152|xxnet-153|xxnet-154|xxnet-155|xxnet-156|xxnet-157|xxnet-158|xxnet-159|celtic-bazaar-122813|chrome---1231|chrome--1231|chrome-06|chrome-07|chrome-08|chrome-09|chrome-10|chrome-11|chrome-12|chrome-1231|chrome-1231-1231|cool-continuity-122814|coral-muse-122814|curious-memory-122814|dospytang11|dospytang12|dospytang13|feisty-current-122813|glassy-vial-122813|groovy-patrol-122814|jingtao-001|practical-album-122814|proud-storm-122813|sound-invention-122813|starlit-cocoa-122814|third-circle-122813|wyslmt11|wyslmt12|xx-net-agent|xxnet--1229|xxnet-1017|xxnet-1018|xxnet-1019|xxnet-1021|xxnet-1022|xxnet-1023|xxnet-1024|xxnet-1025|xxnet-1026|xxnet-1027|xxnet-1028|xxnet-1029|xxnet-103-1188|xxnet-1030|xxnet-1031|xxnet-1032-1188|xxnet-1033|xxnet-1034|xxnet-1035|xxnet-1037|xxnet-1053|xxnet-1054|xxnet-200-1199|xxnet-201-1199|xxnet-202-1199|xxnet-203-1199|xxnet-204-1199|xxnet-205-1199|xxnet-206-1199|xxnet-207-1199|xxnet-cntchen|xxnet-evachen|xxnet-fgfw|xxnet-fgfw-1|xxnet-fgfw-2|xxnet-lennon|xxnet-xlx01|xxnet-xlx02|xxnet-xlx03|xxnet-xlx04|xxnet-xlx05|xxnet-xlx06|xxnet-xlx07|xxnet-xlx08|xxnet-xlx09|xxnet-xlx10|xxnet-xlx11|xxnet-xlx12|chrome26-1100|chrome27-1100|chrome28-1100|chrome29-1100|chrome30-1100|xxnet-foshan2|xxnet-foshan3|xxnet-foshan4|xxnet-foshan5|xxnet-foshan6|chrome7-1234|chrome8-1234|chrome10-1209|chrome11-1209|chrome12-1209|chrome2-1209|alpine-air-123504|caramel-theory-123504|compact-life-123504|clean-yew-123504|cobalt-sector-123504|eternal-outlook-123504|flash-moonlight-123504|omega-terrain-123504|premium-weft-123504|starlit-ship-123504|saaas-1235|x-micron-123504|chrome6-1234|chrome5-1234|chrome4-1234|chrome3-1234|chrome2-1234|chrome1-1234|chrome0-1234|chrome--1234|chrome---1234|chrome-1234|chrome6-1209|chrome4-1209|chrome3-1209|universal-stone-123514|stoked-dominion-123514|unique-ellipse-123514|trans-gate-123514|innate-summit-123514|able-involution-123514|helpful-ally-123514|river-karma-123514|future-synapse-123514|booming-alchemy-123514|storied-myth-123514|folkloric-stone-123514|cryptic-lattice-123514|dulcet-bucksaw-123514|airy-machine-123514|e-lexicon-123514|seventh-history-123514|upbeat-voice-123514|stately-math-123514|lucid-sweep-123514|nice-azimuth-123514|spry-equator-123515|neural-tome-123515|famous-charge-123515|elated-practice-123515|unique-antonym-123515|sharp-quest-123515|manifest-altar-123515|steel-citizen-123515|fourth-walker-123515|subtle-sublime-123515|galvanized-case-123515|xxnet-izual1|xxnet-izual2|xxnet-izual3|xxnet-izual4|xxnet-izual5|chrome11-1239|chrome10-1239|chrome9-1239|chrome8-1239|chrome7-1239|chrome6-1239|chrome5-1239|chrome4-1239|chrome3-1239|chrome2-1239|chrome0-1239|xx-net008-1197|tangtdjia|xxnet-kittycheny1|xxnet-kittycheny2|xxnet-kittycheny3|xxnet-kittycheny4|xxnet-kittycheny5|xxnet-kittycheny6|xxnet-sdcff1|xxnet-sdcff2|xxnet-sdcff3|xxnet-sdcff4|xxnet-sdcff5|xxnet-sdcff6|xxnet-sdcff7|xxnet-sdcff8|xxnet-sdcff9|xxnet-sdcff10|xxnet-sdcff11|xxnet-sdcff12|rosy-dialect-124115|xxnet-sdcf8-1241|xxnet-sdcf1|xxnet-sdcf2|xxnet-sdcf3|xxnet-sdcf4|xxnet-sdcf5|xxnet-sdcf6|xxnet-sdcf7|xxnet-sdcf8|xxnet-sdcf9|xxnet-sdcf10|xxxnet-1|xxxnet-2-1244|xxxnet-3|xxxnet-4|xxxnet-5|xxxnet-6|xxxnet-7|xxxnet-8|xxxnet-9|xxxnet-10|xxxnet-11|xxxnet-12|xxnet--01|xxnet--02|xxnet--03|xxnet--04|xxnet--05|xxnet-xtunnel|xxnet-maxuyang1|xxnet-maxuyang2|xxnet-maxuyang3|xxnet-maxuyang4|xxnet-maxuyang5|xxnet-maxuyang6|xxnet-maxuyang7|xxnet-maxuyang8|xxnet-maxuyang9|xxnet-maxuyang10|xxnet-maxuyang11|xxnet-maxuyang12|xxnet-3345|xxnet-3346|xxnet-3347|xxnet-3348|xxnet-3349|xxnet-mrhgewnv-1|xxnet-mrhgewnv-2|xxnet-mrhgewnv-3|xxnet-mrhgewnv-4|xxnet-walterclozet1|xxnet-walterclozet2|xxnet-forpublic|xxnet-234-1q|xxnet-starwang01|xxnet-custardcup|xxnet-custardpie|xxnet-custardpowder|xxnet-custards|xxnet-custerite|xxnet-custode|xxnet-lifeguard|xxnet-lifehistory|xxnet-lifeinstinct|xxnet-lifejacket|xxnet-lifenet|goagentunderwood|goagentv320j|xxnet--1248|xxnet--124811|carbon-feat-124818|xxnet9901|xxnet99902|xxnet99903|xxnet99904|xxnet99905|xxnet99906|xxnet99907|xxnet99908|xxnet99909|xxnet99910|xxnet99911|tdztw105|xxnet-environs-124806|xxnet-6825|liumangtu147853447|xxnet-6853|xxnet-6854|xxnet-6855|xxnet-6856|xxnet-6856-1251|xxnet-6857|xxnet-6858|xxnet-6859|xxnet-6870|xxnet-6871|xxnet-6872|organic-berm-125203|xxnet--1252|xxnet-10-1252|xxnet-1252|xxnet-3-1252|xxnet-2-1252|xxnet-4-1252|xxnet-5-1252|xxnet-6-1252|xxnet-7-1252|xxnet-9-1252|xxnet-8-1252|manatsu3115d|nmb48keila|xx-net159|xx-net160|xx-net161|xx-net162|xx-net163|xx-net164|xx-net165|xx-net166|xx-net167|xx-net168|xx-net169|xx-net170|xxnet-f0rrest-cn11|xxnet-f0rrest-cn10|xxnet-1255|xxnet-1256|qzhunb|qzhunb10|qzhunb11|qzhunb12|qzhunb13|qzhunb14|qzhunb15|qzhunb16|qzhunb17|qzhunb18|qzhunb19|qzhunb2|qzhunb20|qzhunb21|qzhunb22|qzhunb23|qzhunb24|qzhunb3|qzhunb4|qzhunb5|qzhunb6|qzhunb7|qzhunb8|qzhunb9|xxnet-tn01|xxnet-tn02|xxnet-tn03|xxnet-tn04|xxnet-tn05|goagentv320i|goagentv320h|xxnet-wich01|xxnet-wich02|xxnet-wich03|xxnet-wich04|xxnet-wich05|xxnet-wich06-1263|xxnet-wich06|xxnet-12641|xxnet-wich1|zhouxingyucn1|zhouxingyucn2|zhouxingyucn3|zhouxingyucn4|zhouxingyucn5|zhouxingyucn6|zhouxingyucn7|zhouxingyucn8|zhouxingyucn9|zhouxingyucn10|zhouxingyucn11|zhouxingyucn12|zhouxingyucn13|zhouxingyucn14|zhouxingyucn15|zhouxingyucn16|zhouxingyucn17|zhouxingyucn18|zhouxingyucn19|zhouxingyucn20|zhouxingyucn21|zhouxingyucn22|zhouxingyucn23|zhouxingyucn24|zhouxingyucn25|xx-net-donation01|xx-net-donation02|xx-net-donation03|xx-net-donation04|xx-net-donation05|xx-net-donation06|xx-net-donation07|xx-net-donation08|xxnet-pnjdonate1|xxnet-pnjdonate2|xxnet-pnjdonate3|xxnet-231|xxnet-232|xxnet-233|xxnet-234|xxnet-235|xxnet-236|xxnet-237|xxnet-238|xxnet-239|xxnet-240|xxnet-241|xxnet-242|xxnet-mokio-001|xxnet-mokio-002|xxnet-jayxa|xxnet-jayxb|xxnet-jayxc|xxnet-jayxd|xxnet-jayxe|xxnet-jayxf|xxnet-jayxg|xxnet-jayxh|xxnet-jayxi|xxnet-jayxj|xxnet-jayxk|xxnet--1265|xxnet-10-1265|xxnet-11-1265|xxnet-12-1265|xxnet-2-1265|xxnet-3-1265|xxnet-4-1265|xxnet-5-1265|xxnet-6-1265|xxnet-7-1265|xxnet-8-1265|xxnet-9-1265|xxnet-1-1265|xxnet-10-1264|xxnet-12-1264|xxnet-2-1264|xxnet-11-1264|xxnet-3-1264|xxnet-4-1264|xxnet-5-1264|xxnet-6-1264|xxnet-8-1264|xxnet-9-1264|xxnet-7-1264|donate2-1265|donate3-1265|donate4-1265|donate5-1265|xxnet-7-1265|xxnet-9-1265|xxnet-1-1265|xxnet-12-1264|donate5-1265|xxnet-371401|xxnet-371400|xxnet-371402|xxnet-371403|xxnet-371404|xxnet-371405|xxnet-371406|xxnet-371407|xxnet-371408|xxnet-371409|xxnet-371410|xxnet-371411|xxnet-skyhifi1|xxnet-skyhifi10|xxnet-skyhifi11|xxnet-skyhifi2-1266|xxnet-skyhifi3|xxnet-skyhifi4|xxnet-skyhifi5|xxnet-skyhifi6|xxnet-skyhifi7|xxnet-skyhifi8|xxnet-skyhifi9|yankop-1662|yankop-1663|yankop-1664|yankop-1665|yankop-1666|yankop-1667|yankop-1668|yankop-1669|xxnet-rcleart|tony0401175803|tony0405040826|tony0412430025|tony0415978520|tony0423203189|tony0426684326|tony0466478249|tony0469059164|tony198911|tony714189010|tony535134|tony68764354|rabbit-000001|rabbit-000002|rabbit-000003|rabbit-000004|rabbit-000005|rabbit-000006|rabbit-000007|rabbit-000008|rabbit-000009|rabbit-000010|rabbit-000011|rabbit-000012|angyrgoagent9|killgfw-004|killgfw-005|killgfw-006|killgfw-007|killgfw-011|killgfw-009|killgfw-012|killgfw-010|killgfw-008|pangzi-1|pangzi-10|pangzi-11|pangzi-12|pangzi-2|pangzi-3|pangzi-4|pangzi-5|pangzi-6|pangzi-7|pangzi-8|pangzi-9|xxnet-907|xxnet-905|xxnet-csjzc|planar-name-127301|planar-name-127305|planar-name-127302|planar-name-127306|planar-name-127307|planar-name-127308|planar-name-127309|planar-name-127310|planar-name-127311|planar-name-127312|planar-name-127313|planar-name-127314|xxnet-enaihei-a|xxnet-enaihei-b|xx-net-123459|xxne-1273|xxnet-123456|xxnet-123457|xxnet-123458|xxnet-123460|xxnet-123461|xxnet-123462|xxnet-123463|xxnet-1234-1273|credible-cosine-127307|hzjxxnet01d|hzjxxnet01e|hzjxxnet01f|hzjxxnet01g|hzjxxnet01h|hzjxxnet01i|hzjxxnet01j|hzjxxnet01l-1273|my-project-hzjxxnet01|my-project-hzjxxnet01b|my-project-hzjxxnet01c|hzjxxnet01k|xxnet-enaihei-c|xxnet-enaihei-d|xxnet-enaihei-e|xxnet-enaihei-f|xxnet-enaihei-g|xxnet-321|xxnet-322|triple-mountain-127310|xxnet-324|infra-ratio-127310|xxnet-326|xxnet-327|xxnet-32-1273|xxnet-329|xxnet-330|xxnet-331|xxnet-332|xxnet-311|woven-amulet-127312|fifth-being-127312|xxnet-my11|xxnet-my1|xxnet-my2|xxnet-my3|xxnet-my4|xxnet-my5|xxnet-my6|xxnet-my7|xxnet-my8|xxnet-my9|xxnet-my10|xxnet-my12|xxnet--1273|xxnet-1--1273|xxnet-11-1273|xxnet-22-1273|xxnet-33-1273|xxnet-sss|xxnet-sss1|xxnet-sss10|xxnet-sss11|xxnet-sss2|xxnet-sss3|xxnet-sss4|xxnet-sss5|xxnet-sss6|xxnet-sss7|xxnet-sss9|xxnet-sss8|xxnet-longer|xxnet-xtkong4|xxnet-xtkong|xxnet-xtkong1|xxnet-xtkong2|xxnet-xtkong3|xxnet-xtkong5|xxnet-xtkong6|xxnet-xtkong7|xxnet--1274|xxnet-kevin12|xxnet-kevin11|xxnet-kevin10|xxnet-kevin9|xxnet-kevin8|xxnet-kevin7|xxnet-kevin6|xxnet-kevin5|xxnet-kevin4|xxnet-kevin3|xxnet-kevin2|xxnet-kevin1|singingfor-1245|test4app7374|manatsu3115d|nmb48keila|xx-net159|xx-net160|xx-net161|xx-net162|xx-net163|xx-net164|xx-net165|xx-net166|xx-net167|xx-net168|xx-net169|xx-net170|xxnet--1267|xxnet-1268|xxnet-1269|xxnet-1270|xxnet-1271|xxnet-1272|xxnet-1273|xxnet-1274|xxnet-1275|xxnet-1276|xxnet-1277|xxnet-1278|xxnet-1291|xxnet-1294|xxnet-1295|xxnet-1296|xxnet-1297|xxnet-1298|xxnet-1299|xxnet-1300|xxnet-1301|xxnet-1302|xxnet-lzskyline-1|xxnet-idforxxnet-1|xxnet-idforxxnet-2|xxnet-idforxxnet-10|xxnet-idforxxnet-11|xxnet-idforxxnet-12|xxnet-idforxxnet-6|xxnet-idforxxnet-3|xxnet-idforxxnet-4|xxnet-idforxxnet-5|xxnet-idforxxnet-8|xxnet-idforxxnet-7|xxnet-idforxxnet-9|xxnet-12099|xxnet-1268841|xxnet-1268842|xxnet--1268|xxnet-294|xxnet-295|xxnet-181|xxnet-182|xxnet-183|xxnet-184|xxnet-185|xxnet-186|xxnet-187|xxnet-188|xxnet-pohsin1|xxnet-pohsin2|lady-160402-1|lady-160402-10|lady-160402-12|rich-operand-126901|xxnet-zjn-1|xxnet--1269|xxnet-1396|xxnet-1397|xxnet-1671|xxnet-1670|xxnet-500|xxnet-1672|xxnet-501|xxnet-1673|xxnet-1674|xxnet-502|xxnet-1675|xxnet-503|xxnet-504|xxnet-505|xxnet-506|xxnet-507|xxnet-508|xxnet-509|xxnet-510|xxnet-511|xxnet-sunqiang00|xxnet-sunqiang01|xxnet-sunqiang02|xxnet-sunqiang03|xxnet-sunqiang04|xxnet-sunqiang05|xxnet-sunqiang06|xxnet-sunqiang07|xxnet-1291|xxnet-1294|xxnet-1295|xxnet-1296|xxnet-1297|xxnet-1298|xxnet-1299|xxnet-1300|xxnet-1301|xxnet-1302|xxnet-lzskyline-1|xxnet-idforxxnet-1|xxnet-idforxxnet-2|xxnet-idforxxnet-10|xxnet-idforxxnet-11|xxnet-idforxxnet-12|xxnet-idforxxnet-6|xxnet-idforxxnet-3|xxnet-idforxxnet-4|xxnet-idforxxnet-5|xxnet-idforxxnet-8|xxnet-idforxxnet-7|xxnet-idforxxnet-9|xxnet-1268842|xxnet--1268|xxnet-294|xxnet-295|xxnet-181|xxnet-182|xxnet-183|xxnet-184|xxnet-185|xxnet-186|xxnet-187|xxnet-188|xxnet-pohsin1|xxnet-pohsin2|lady-160402-1|lady-160402-10|lady-160402-12|rich-operand-126901|xxnet-zjn-1|xxnet--1269|xxnet-1396|xxnet-1397|xxnet-1671|xxnet-1670|xxnet-500|xxnet-1672|xxnet-501|xxnet-1673|xxnet-1674|xxnet-502|xxnet-1675|xxnet-503|xxnet-504|xxnet-505|xxnet-506|xxnet-507|xxnet-508|xxnet-509|xxnet-510|xxnet-511|xxnet-sunqiang00|xxnet-sunqiang01|xxnet-sunqiang02|xxnet-sunqiang03|xxnet-sunqiang04|xxnet-sunqiang05|xxnet-sunqiang06|xxnet-sunqiang07|xxnet-sunqiang08|xxnet-sunqiang09|xxnet-lingdu010|xxnet-lingdu001|xxnet-lingdu002|xxnet-lingdu003|xxnet-lingdu004|xxnet-lingdu005|xxnet-lingdu006|xxnet-lingdu007|xxnet-lingdu008|xxnet-lingdu009|xxnet-lingdu012|yankop-1661|xxnet-1676|xxnet-1680|xxnet-1681|xxnet-1686|xxnet-1684|xxnet-1685|xxnet-1682|xxnet-1679|xxnet-1687|xxnet-1683|xxnet-1677|xxnet-1678|xxnet-12099|xxnet-1268841|xxnet--1289|xxnetp1|xxnetp2|xxnetp3|xxnetp4|xxnetp5|xxnetp6|xxnetp7|xxnetp8|xxnetp9|pnj2014163|pnj201416301|pnj2014163010|pnj201416302|pnj201416303|pnj201416304|pnj201416305|pnj201416306|pnj201416307|pnj201416308|pnj201416309|pnj201416310|pnj201416311|pnj201416312|pnj201416313|pnj201416314|pnj201416315|pnj201416316|pnj201416317|pnj201416319|pnj201416318|pnj201416320|xxnet-wind12|xxnet-wind11|xxnet-wind10|xxnet-wind09|xxnet-wind08|xxnet-wind07|xxnet-wind06|xxnet-wind05|xxnet-wind04|xxnet-wind03|xxnet-wind02|xxnet-wind01|xxnet--1290|xxnet-wuqq-1|xxnet-wuqq-2|xindewagnsutest|xindewagnsutest|xindewagnsutest|xxnet-rs4donate0|xxnet-uwgwo|xx-net-hrhqm|xxnet-public--1293|xx-net-boom1|xx-net-boom10|xx-net-boom11|xx-net-boom12|xx-net-boom2|xx-net-boom3|xx-net-boom5|xx-net-boom4|xx-net-boom6|xx-net-boom7|xx-net-boom8|xx-net-boom9|xinxijishuwyq|xinxijishuwyq1|xinxijishuwyq2|xinxijishuwyq3|xinxijishuwyq4|xinxijishuwyq5|xinxijishuwyq6|xinxijishuwyq7|xinxijishuwyq8|xinxijishuwyq9|xinxijishuwyq10|xinxijishuwyq11|xinxijishuwyq12|xinxijishuwyq13|xinxijishuwyq14|xinxijishuwyq15|xxnet-1-1294|xxnet-2-1294|xxnet-3-1294|xxnet-4-1294|xxnet-5-1294|xxnet-6-1294|xxnet-7-1294|xxnet-8-1294|xxnet-9-1294|yun-id10|yun-id9|yun-id8|yun-id7|xxnet-1ee1|xxnet-1ee2|xxnet-1ee6|xxnet-1ee3|xxnet-1ee5|xxnet-1ee4|xxnet-vision01|xxnet-865180983-01|xxnet-865180983-02|xxnet-865180983-03|xxnet-2016kb|xxnet-2016ke|xxnet-2016kf|xxnet-2016kd|xxnet-2016kh|xxnet-2016ki|xxnet-2016kj|xxnet-2016ka|xxnet-2016kk|xxnet-2016km|xxnet-2016kg|xxnet-2016kc|gap7b01|gap7b02|gap7b03|gap7b04|gap7b05|gap7b06|gap7b07|gap7b08|gap7b09|gap7b10|gap7b11|gap7b12|gap7b13|gap7b14|gap7b15|gap7b16|gap7b17|gap7b18|gap7b19|gap7b20|surezheng198824|xxnet-xuehao|xxnet-ykq1|xxnet-fcxnydew|xxnet-pltznpgu|xxnet-pbpomgjl|xxnet-yagnitdn|xxnet-iceliquid2|xxnet-iceliquid10|xxnet-iceliquid1|xxnet-iceliquid7|xxnet-iceliquid9|xxnet-iceliquid3|xxnet-iceliquid5|xxnet-iceliquid|xxnet-iceliquid11|xxnet-iceliquid8|xxnet-iceliquid4|xxnet-iceliquid6|xxnet-iceliquid13|xxnet-iceliquid14|xxnet-iceliquid16|xxnet-iceliquid15|xxnet-iceliquid12|xxnet-iceliquid17|xxnet-iceliquid19|xxnet-iceliquid21|xxnet-iceliquid23|xxnet-iceliquid18|xxnet-iceliquid20|xxnet-iceliquid22|xxnet-iceliquid28|xxnet-iceliquid26|xxnet-iceliquid24|xxnet-iceliquid25|xxnet-iceliquid29|xxnet-iceliquid31|xxnet-iceliquid33|xxnet-iceliquid35|xxnet-iceliquid27|xxnet-iceliquid32|xxnet-iceliquid30|xxnet-iceliquid34|xx-net-public-000|xx-net-public-001|xx-net-public-002|xx-net-public-004|xx-net-public-003|xx-net-public-005|xx-net-public-006|xx-net-public-007|xx-net-public-009|simon-1283|xxnet-tiny001|xxnet-tiny002|xxnet-1707n1|xxnet-1707n2|xxnet-1707n4|xxnet-1707n5|xxnet-1707n6|xxnet-1707n7|xxnet-1707n9|xxnet-1707n10|xxnet-1707n11|xxnet-1707n12|xxnet-1707n8|xxnet-donate-1|xxnet-donate-2|xxnet-donate-3|xxnet-012|xxnet--1308|xxnet-13081|xxnet-13082|xxnetid101|xxnetid102|xxnetid103|xxnetid104|xxnetid105|xxnetid106|xxnetid107|xxnetid108|xxnetid109|xxnetid110|xxnetid111|xxnetid112|xxnetid113|xxnetid114|xxnetid115|xxnetid116|xxnetid117|xxnetid118|xxnetid119|xxnetid120|xxnetid121|xxnetid122|xxnetid123|xxnetid124|xxnetid125|xxnetid126|xxnetid127|xxnetid129|xxnetid128|xxnetid130|xxnetid131|xxnetid132|xxnetid133|xxnetid134|xxnetid135|xxnetid136|xxnetid140|xxnetid137|xxnetid138|xxnetid139|xx-net-1500|xx-net-1501|xxnet-4011|xxnet-4012|myxxnet3-1285|myxxnet-1264|myxxnet1-1285|myxxnet4-1285|myxxnet2-1285|xxnet-131319|xxnet--1313|xxnet-131323|xxnet-131318|xxnet-131313|xxnet-131311|xxnet-131317|xxnet-131321|xxnet-131312|xxnet-131316|xxnet-131310|xxnet-131315|xxnet-131309|xxnet-131320|xxnet-131314|xxnet-spox-1|xxnet-spox-2|xxnet-1327|xxnet-1328|leowlong1989s8|leospublicid18|leospublicid17|leospublicid16|leospublicid15|leospublicid14|leospublicid13|xx-net11-1329|xx-net12-1329|xxnet-jksoiyrhkh|strv301|strav311|strav317|strav318|xx-net-23333|xxnet-tlzx8|xxnet-tlzx0|xxnet-tlzx2|xxnet-tlzx1|xxnet-tlzx3|xxnet-tlzx4|xxnet-tlzx5|xxnet-tlzx6|xxnet-tlzx7|xxnet-tlzx9|zheng234-1331|zheng345-1331|peerless-kit-133123|helical-land-133123|xxnet-xxnet-1|my-project-017-1332|mp0009-1275|my-project-011-1332|my-project-012-1332|my-project-013-1332|my-project-014-1332|my-project-14-1332|my-project-016-1332|my-project-018|my-project-019-1332|my-project-020-1332|my-project-021|my-project-022|my-project-024|my-project-023|my-project-025|my-project-026|my-project-027|my-project-028|my-project-029|my-project-30-1332|xtunnel001|xtunnel002|double-venture-133123|cellular-block-133123|my-project-11-1331|cogent-silicon-133123|poised-rock-133123|boxwood-axon-133123|helpful-ally-133123|trim-attic-133123|horizontal-ring-133123|rich-suprstate-133209|my-project13-1332|my-project14-1332|my-project-15-1332|my-project-16-1332|my-project-17-1332|xxfreevpn-01|xxfreevpn-02|xxfreevpn-03|xxfreevpn-4|xxfreevpn-05|xxfreevpn-06|xxfreevpn-07|xxfreevpn-08|xxfreevpn|xxfreevpn-10|xxfreevpn-11|xxfreevpn-12|xxnet-6553607|xxnet-6553601|hzc-net10|hzc-net9|xxnet-ian31|xxnet-ian20|xxnet-ian21|xxnet-ian22|xxnet-lhzbxx-001|xxnet-lhzbxx-002|xxnet-lhzbxx-003|xxnet-ysk1|xxnet-ysk2|xxnet-ysk3|xxnet-4869|xxnet1-1345|xxnet10-1345|xxnet2-1345|xxnet3-1345|xxnet4-1345|xxnet5-1345|xxnet6-1345|xxnet7-1345|xxnet8-1345|xxnet9-1345|xxnet-8882|xxnet-8881|xxnet-donate|xxnet-sam|xxnet-999|xxnet-996|xxnet-986|huangzhengjun9|huangzhengjun8|huangzhengjun7|huangzhengjun6|huangzhengjun4|abcdff-5|abcdff-4|abcdff-2|abcdff-1|abcdff-3|xxnet-jamayy05|xxnet-jamayy02|xxnet-jamayy08|xxnet-jamayy09|xxnet-jamayy01|xxnet-jamayy06|xxnet-jamayy03|xxnet-jamayy04|xxnet-jamayy07|xxnet--1357|strong-minutia-135702|astute-task-135723|xxnet-896thy|xxnet-1248903|xxnet-1248904|xxnet-1248905|xxnet-1248906|xxnet-1248907|xxnet-tom|xxnet-5001|xxnet-5002|donate-for-xx-net|xxnet-zhou1|xxnet-zhou2|xxnet-136923|xxnet-136925|xxnet-136924|xxnet-136901|xx-xx0001|xx-xx0004|xx-xx0008|xx-xx0006|xx-xx0010|xx-xx0003|xx-xx0009|xx-xx0007|xx-xx0012|xx-xx0005|xx-xx0002|xx-xx0011|xx-xx0013|xx-xx0014|xx-xx0015|xx-xx0016|xxnet-1370-1370|xxnet-5465|xxnet-203852938|oppj-14|oppj-2|oppj-6|oppj-10|oppj-12|oppj-18|oppj-7|oppj-11|oppj-4|oppj-8|oppj-13|oppj-5|oppj-17|oppj-9|oppj-15|oppj-3|oppj-16|oppj-20|oppj-1|oppj-19|xxnet--1375|xxnet-1382|xxnet-1379|xxnet-1380|xxnet-1384|xxnet-1379-1375|xxnet-1378|xxnet-1376|xxnet-1381|xxnet-1377|xxnet-nome1|xxnet-1383|gfwfighter001|gfwfighter007|gfwfighter006|gfwfighter005|gfwfighter004|gfwfighter003|gfwfighter002|masko1-977|masko2-977|masko3-977|masko4-977|xxnet-050|xxnet0051|liuxiaobo-1104|liuxiaobo1-1384|liuxiaobo2-1384|liuxiaobo3|liuxiaobo4-1384|liuxiaobo5-1384|liuxiaobo6-1384|liuxiaobo7-1384|liuxiaobo8-1384|liuxiaobo9-1384|vpn6-1383|vpn5-1383|my-project-17-1469791366911|my-project-16-1469791357104|my-project-18-1469791544968|diary-1470053225438|lokkingg-1470053234347|yourewb|works-1470053169939|hahazhej|didididw|johnnnn-1470053192524|imacatt-1470053327056|lookeecbb|imadog-1470053319075|makrse-1470053659892|justatest-1470053639545|fucjeektd|jiustsos|xxnet-trsum-001|my-project-597529|my-project-597528|my-project-597527|my-project-597526|my-project-597525|my-project-597524|my-project-597523|my-project-597522|my-project-597521|my-project-597520|xxnet-trsum-003|xxnet-trsum-004|xxnet-trsum-005|xxnet-trsum-006|xxnet-trsum-007|xxnet-trsum-008|xxnet-trsum-009|xxnet-trsum-010|my-project-10-1470318399543|my-project-6-1470318197921|my-project-7-1470318242557|my-project-8-1470318289690|my-project-9-1470318330078|xx-net-1470434775337|xxnet-1470434997049|xxnet-1-1470489237406|xxnet-2-1470489256157|xxnet-3-1470489266796|xxnet-4-1470489307188|xxnet-5-1470489318289|xxnet-d01|xxnet-d02|xxnet-d03|xxnet-d04|xxnet-d05|xxnet-d06|xxnet-1470566028726|xxnet-1470566228993|ghq214901|ghq214801|ghq214701|ghq214601|ghq214501|ghq214401|ghq214301|ghq214201|ghq214101|stlivoe1-1470704581040|xxnet-139905|xxnet-139904|whitescinewoo4xx|xxnet-lolikong8|xxnet-lolikong1|xxnet-lolikong13|xxnet-lolikong9|xxnet-lolikong4|xxnet-lolikong3|xxnet-lolikong6|xxnet-lolikong11|xxnet-lolikong10|xxnet-lolikong12|xxnet-lolikong2|xxnet-lolikong5|xxnet-lolikong7|helloworld-140114|xx-net001-140309|xxnet-608|xxnet-613|xxnet-609|xxnet-607|xxnet-618|xxnet-621|xxnet-612|xxnet-602|xxnet-620|xxnet-614|xxnet-619|xxnet-601|xxnet-610|xxnet-606|xxnet-605|xxnet-617|xxnet-616|xxnet-611|xxnet-603|xxnet-604|xxnet-615|octodile-pus11|octodile-pus10|octodile-pus04|octodile-pus12|octodile-pus03|octodile-pus01|octodile-pus08|octodile-pus09|octodile-pus05|octodile-pus02|octodile-pus07|octodile-pus13|xxnet-yaolong1|xxnet-yaolong2|xxnet-yaolong3|xxnet-mzy6|xxnet-mzy56|xxnet-mzy5|xxnet-mzy|tassader020|tassader019|tassader018|tassader017|tassader011|tassader016|tassader015|tassader014|tassader013|tassader012|tassader010|tassader009|tassader008|tassader006|tassader007|xxnet-100001|xx-net-nm1|xx-net-nm1|xxnet-234ghgs|xxnet-jsdfgf|xxnet-code|xxnet-0828|dsetng10|dsetng6|dsetng7|dsetng8|dsetng9|jeffluo35|guojian0822|appjianguo0822|appjian08225|stephen-1|stephen-2-1265|xxnet-2-142420|xxnet--142420|iron-potion-142510|tset-142510|jzxm01-142511|jzxm02|xxnet-142606|xxnet-142607|xxnet-142603|xxnet-142604|xxnet-142605|xxnet-142608|xxnet-142609|geometric-hull-142604|xxnet-ian19|xxnet-ian20|xxnet-ian23|xxnet-ian24|xxnet-ian25|xxnet-ian26|xxnet-ian27|xxnet-ian28|xxnet-ian29|xxnet-ian30|xxnet-ian32|xxnet-ian33|xxnet-ian34|xxnet-ian35|xxnet-ian36|xxnet-ian37|xxnet-ian38|xxnet-ian39|xxnet-ian13|xxnet-ian14|xxnet-ian15|xxnet-ian16|xxnet-ian17|xxnet-ian18|xxnet-ian01|xxnet-ian11|xxnet-ian12|xxnet-ian10|xxnet-ian09|xxnet-ian08|xxnet-ian07|xxnet-ian06|xxnet-ian05|xxnet-ian04|xxnet-ian03|xxnet-ian02|doit1-142709|doit2-142709|doit3-142709|doit4-142709|doit5-142709|fleet-muse-143000|xxnet-143404|xxnet-143602|xxnet-143604|xxnet-143601|xxnet-143603|xxnet-zld1|xxnet-zld2|xxnet-16091601|xxnet-16091602|xxnet-16091601|xxnet-16091602"; \
} >> proxy.ini

if [ ${GAE_APPID} != "none" ] && [ ${GAE_APPID} != "NONE" ];then
{ \
#添加你自己的appid，多个用竖线 | 分隔"; \
  echo "appid = ${GAE_APPID}"; \
} >> proxy.ini
else
{ \
#添加你自己的appid，多个用竖线 | 分隔"; \
  echo "appid ="; \
} >> proxy.ini
fi

if [ ${GAE_PASSWORD} != "none" ] && [ ${GAE_PASSWORD} != "NONE" ];then
{ \
#appid密码，无可不填"; \
  echo "password = ${GAE_PASSWORD}"; \
} >> proxy.ini
else
{ \
#appid密码，无可不填"; \
  echo "password ="; \
} >> proxy.ini
fi

{ \
  echo ""; \
#类似于系统 hosts 功能，指定各网站连接方式为 direct(直接通过IP连接) 或 gae(通过gae连接)"; \
  echo "[hosts]"; \
#表示直接通过IP连接 www.google.com，但非 www 开头的不使用直连"; \
#前面加 . 表示只要匹配域名即使用 gae 模式"; \
  echo "scholar.google.com = direct"; \
  echo "scholar.google.com.hk = direct"; \
  echo "www.google.com.hk = direct"; \
  echo "www.google.com.tw = direct"; \
  echo "appengine.google.com = gae"; \
  echo "accounts.google.com = gae"; \
  echo "talk.google.com = direct"; \
  echo "talk.l.google.com = direct"; \
  echo "talkx.l.google.com = direct"; \
  echo ".google.com = direct"; \
  echo "www.google.com = gae"; \
  echo ".ytimg.com = direct"; \
  echo ".appspot.com = direct"; \
  echo ".youtube.com = direct"; \
  echo ""; \
#下载分流，建议使用默认值"; \
  echo "[autorange]"; \
#线程数，当观看视频不流畅可适当增加"; \
  echo "threads = 16"; \
#分块大小，如果IP质量好可以修改 maxsize 为更大的数值"; \
  echo "maxsize = 524288"; \
  echo ""; \
#pac 自动配置脚本"; \
  echo "[pac]"; \
#是否启用"; \
  echo "enable = ${PAC_ENABLE}"; \
#监听地址，如果需要允许局域网/公网使用，设为0.0.0.0，同时设置 [listen] ip = 0.0.0.0 否则无效"; \
  echo "ip = ${PAC_ENABLE}"; \
#默认使用8086作为代理端口，如有需要可以修改"; \
  echo "port = ${PAC_PORT}"; \
#pac 文件名"; \
  echo "file = proxy.pac"; \
#是否开启广告拦截模式"; \
  echo "admode = 1"; \
#广告拦截规则订阅地址"; \
  echo "adblock = https://easylist-downloads.adblockplus.org/easylistchina.txt"; \
#被墙网站规则订阅地址"; \
  echo "gfwlist = https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt"; \
#更新时间，以秒计算"; \
  echo "expired = 86400"; \
  echo ""; \
#前置代理"; \
  echo "[proxy]"; \
#是否启用，改为1启用"; \
  echo "enable = ${PROXY_ENABLE}"; \
#代理类型，支持 HTTP HTTPS SOCK4 SOCK5"; \
  echo "type = ${PROXY_TYPE}"; \
  echo "host = ${PROXY_HOST}"; \
  echo "port = ${PROXY_PORT}"; \
} >> proxy.ini

if [ ${PROXY_USER} != "none" ] && [ ${PROXY_USER} != "NONE" ];then
{ \
  echo "user = ${PROXY_USER}"; \
  echo "passwd = ${PROXY_PASSWD}"; \
} >> proxy.ini
else
{ \
  echo "user ="; \
  echo "passwd ="; \
} >> proxy.ini
fi

{ \
  echo ""; \
  echo "[google_ip]"; \
#开启 IPv6 选项，1开启，0关闭，慎重！"; \
  echo "use_ipv6 = 0"; \
#自动调整扫描线程数"; \
  echo "auto_adjust_scan_ip_thread_num = 1"; \
#扫描线程数，默认50，若出现网络连接缓慢可改小一点"; \
  echo "max_scan_ip_thread_num = 50"; \
#谷歌IP上限，超过则剔除延时高的IP"; \
  echo "max_good_ip_num = 3000"; \
#单个IP连接数，建议别改，容易使IP失效"; \
  echo "max_links_per_ip = 1"; \
#IP连接时间间隔，出现连接不稳定可适当调整"; \
  echo "ip_connect_interval = 5"; \
  echo ""; \
#连接设置，一般无需修改"; \
  echo "[connect_manager]"; \
  echo "connect_interval = 40"; \
  echo "max_worker_num = 50"; \
#最大连接线程"; \
  echo "https_max_connect_thread = 20"; \
#每次添加的新连接池数"; \
  echo "https_new_connect_num = 3"; \
#最小连接池数值"; \
  echo "https_connection_pool_min = 1"; \
#最大连接池数值"; \
  echo "https_connection_pool_max = 30"; \
#keep connection pool until no active request timeout
  echo "keep_active_timeout = 600"; \
#the time that HTTPS connection can reuse after last transmit, drop it or send new request to keep it alive
  echo "https_keep_alive = 50"; \
} >> proxy.ini

python proxy.py
