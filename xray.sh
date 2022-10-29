#!/bin/sh
if [ ! -f UUID ]; then
  UUID="9a522f44-41e5-4c4d-923e-ed000710d1ca7"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

