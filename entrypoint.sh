#!/bin/bash

SECRET=$SECRET DBNAME=$DB_NAME DBURL=$DB_URL PORT=80 MONGOOSEDEBUG=$DB_DEBUG ADMINEMAIL=$ADMIN_EMAIL ADMINPASSWORD=$ADMIN_EMAIL STATIC="./build" node ./index.js
