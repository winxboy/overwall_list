#!/bin/sh

root="/usr/share/overwall"
#root="/Users/fang/Documents/GitHub/overwall_list/test"
File="${root}/update ${root}/preload"

# 备份部分
for i in $File
do
    if [ ! -f "${i}.bak" ]; then
        cp $i ${i}.bak
    fi
done

# 防火墙规则部分(CDN)
sed -i 's#https://cdn.jsdelivr.net/gh/yIwIoTT9A21nupT/2aXGmlWs/KkFCtZkeAP/eFw58nNRXXfTwU4#https://github.com/winxboy/overwall_list/blob/main/China_IPList#g' ${root}/update
sed -i 's#https://cdn.jsdelivr.net/gh/yIwIoTT9A21nupT/2aXGmlWs/KkFCtZkeAP/t8eOh94EJIHTXR6#https://github.com/winxboy/overwall_list/blob/main/China_IPv6List#g' ${root}/update
sed -i 's#https://cdn.jsdelivr.net/gh/yIwIoTT9A21nupT/2aXGmlWs/KkFCtZkeAP/avtPeqDKt645Arm#https://github.com/winxboy/overwall_list/blob/main/GFW_List#g' ${root}/update

# 防火墙规则部分(GITHUB)
sed -i 's#https://raw.githubusercontent.com/yIwIoTT9A21nupT/2aXGmlWs/master/KkFCtZkeAP/eFw58nNRXXfTwU4#https://github.com/winxboy/overwall_list/blob/main/China_IPList#g' ${root}/update
sed -i 's#https://raw.githubusercontent.com/yIwIoTT9A21nupT/2aXGmlWs/master/KkFCtZkeAP/t8eOh94EJIHTXR6#https://github.com/winxboy/overwall_list/blob/main/China_IPv6List#g' ${root}/update
sed -i 's#https://raw.githubusercontent.com/yIwIoTT9A21nupT/2aXGmlWs/master/KkFCtZkeAP/avtPeqDKt645Arm#https://github.com/winxboy/overwall_list/blob/main/GFW_List#g' ${root}/update

# 分流域名部分
sed -i 's#https://cdn.jsdelivr.net/gh/yIwIoTT9A21nupT/2aXGmlWs/KkFCtZkeAP#https://github.com/winxboy/overwall_list/Bypass#g' ${root}/preload
sed -i 's#https://raw.githubusercontent.com/yIwIoTT9A21nupT/2aXGmlWs/master/KkFCtZkeAP#https://github.com/winxboy/overwall_list/Bypass#g' ${root}/preload
# NF
sed -i 's#MnwTZoJKZA7F3xf#NF_IPList_Small#g' ${root}/preload
sed -i 's#S1WMOUf0VmdLPT9#NF_IPList_Big#g' ${root}/preload
# TG
sed -i 's#ufk8kHo4ZpsOekg#TG_IPList#g' ${root}/preload
