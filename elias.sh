#!/usr/bin/env bash

clear

G='\033[0;32m'
N='\033[0m'

echo -e "${G}"
figlet -f slant 'Network Radar'
echo ""

echo -e "         ,-."
echo -e "        / \\ . ..-,O"
echo -e "       : \\ --''_..-'.'"
echo -e "       | . .-' . '."
echo -e "       . ..'"
echo -e "        \\ . / .."
echo -e "         \\ . ' ."
echo -e "          , . \\"
echo -e "         ,|,. -.\\"
echo -e "        '. -.....-"
echo -e "         | |"
echo -e "         |__|"
echo -e "         /\\"
echo -e "        //\\\\"
echo -e "       //  \\\\"
echo -e "      //  ||  \\\\"
echo -e "   '--------------'"
echo ""

# اسم الأداة
echo -e "\033[2;36m"
figlet -f small "ELIAS TOOL'S"
echo -e "${N}"
echo ""

sudo tcpdump -i any -n -l 2>/dev/null |
awk '
function wanted(x) {
    return (x ~ /^192\.168\./ ||
            x ~ /^149\.154\./ ||
            x ~ /^91\.108\./ ||
            x ~ /^2001:b28/ ||
            x ~ /^2001:67c/ ||
            x ~ /^fe80/)
}

function color(n) {
    return "\033[" ((n % 8 == 0) ? 31 :
                    (n % 8 == 1) ? 32 :
                    (n % 8 == 2) ? 33 :
                    (n % 8 == 3) ? 34 :
                    (n % 8 == 4) ? 35 :
                    (n % 8 == 5) ? 36 :
                    (n % 8 == 6) ? 91 : 95) "m"
}

{
    src = $3
    dst = $5

    gsub(/:$/, "", src)
    gsub(/:$/, "", dst)

    if (wanted(src) || wanted(dst)) {

        key = src " -> " dst

        if (!(key in seen)) {
            seen[key] = 1
            count++

            printf "%s[ %d ] %s -> %s\033[0m\n",
                   color(count), count, src, dst

            fflush()
        }
    }
}'

دلوقتي العداد هيطلع:

[ 1 ] ...
[ 2 ] ...
[ 3 ] ...
[ 4 ] ...

بدون "001" و"002" و"003".
