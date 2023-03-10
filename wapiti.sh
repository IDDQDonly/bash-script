                                           
echo "wapiti-getcookie started"
echo "send url"

read url

wapiti-getcookie -u $url -c cookie.json 

echo "cookie.json created"
echo "started wapiti"
echo "send Header AuthID"

read authid

wapiti  -u $url -m "cookieflags:post,blindsql:post,xss:post,exec:post,csp:post,file:post,http_headers:>
