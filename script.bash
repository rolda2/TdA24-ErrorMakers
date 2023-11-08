echo "installing go version 1.21.4..." 
apk add --no-cache --virtual .build-deps bash gcc musl-dev openssl go 

# download go tar 
wget -O go.tgz https://dl.google.com/go/go1.21.4.src.tar.gz 
tar -C /usr/local -xzf go.tgz 
cd /usr/local/go/src/

# compile code
./make.bash 
export PATH="/usr/local/go/bin:$PATH"
export GOPATH=/opt/go/ 
export PATH=$PATH:$GOPATH/bin 
apk del .build-deps 
go version