ssh ubuntu@13.48.27.146 << EOF
echo 'version: "2"
services:
  admin-ui:
    container_name: admin
    restart: always
    image: nilsemil/resto-order-admin-ui:v12
    environment:
      - WS_URL=https://admin.tellimus.com
      - SOCKET_URL=https://admin.tellimus.com
    ports:
      - "9500:80"
  admin-ui-loputoo:
    container_name: admin-deloputoo
    restart: always
    image: nilsemil/resto-order-admin-ui:v12
    environment:
      - WS_URL=https://loputoo-admin.tellimus.com
      - SOCKET_URL=https://loputoo-admin.tellimus.com
    ports:
      - "9501:80"
  admin-ui-demo:
    container_name: admin-demo
    restart: always
    image: nilsemil/resto-order-admin-ui:v12
    environment:
      - WS_URL=https://demo-admin.tellimus.com
      - SOCKET_URL=https://demo-admin.tellimus.com
    ports:
      - "9502:80"' > docker-compose.yml

docker-compose up -d
EOF
ssh ubuntu@13.48.27.146
