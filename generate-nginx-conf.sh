echo "" > ./build/default.conf
for k in $(jq -c '.[]' clients.json); do
    serverConfig=$(bash generate-site.sh $( echo $k | jq -c -r '.domain') $( echo $k | jq -c -r '.domainAdmin') $( echo $k | jq -c -r '.apiPort') $( echo $k | jq -c -r '.adminUiPort') $( echo $k | jq -c -r '.clientUiPort'))
    echo $serverConfig >> ./build/default.conf
done

$SHELL
