#!/bin/bash

sed -i 's/127.0.0.1/0.0.0.0/g' /usr/src/app
sed -i 's/localhost/'${HOST}'/g' /usr/src/app
sed -i 's/3000/'${PORT}'/g' /usr/src/app/
exec "$@"