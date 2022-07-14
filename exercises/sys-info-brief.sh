DATE=$(date)
WHO=$(who -q | head -1)
UPTIME=$(uptime -p)

echo "
-----------
Date: $DATE
Users: $WHO
Uptime: $UPTIME" | grep -E --color 'Date|Users|Uptime|$'

echo "
-----------
Date: $DATE
Users: $WHO
Uptime: $UPTIME" | grep -E --color 'Date|Users|Uptime|$' >> ./log.txt
