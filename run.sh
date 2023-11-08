npm run dev -- --host 0.0.0.0 &
cd /app/src/lib/api
/usr/local/go/bin/go run main.go &
wait -n
exit $?