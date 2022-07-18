#Вывод краткой информации о текущем пользователе, дате/времени и аптайме.
DATE=$(date)
WHO=$(who -q | head -1)
UPTIME=$(uptime -p)

echo "
---------------------------
Date: $DATE
Users: $WHO
Uptime: $UPTIME" >> log.txt

cat log.txt | tail -4 | grep -E --color 'Date|Users|Uptime|$' 

