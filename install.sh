if [[ "$OSTYPE" == "linux-gnu" ]]; then
        sudo apt install libssl-dev
elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install openssl
        export PATH="/usr/local/opt/openssl/bin:$PATH"
        export LDFLAGS="-L/usr/local/opt/openssl/lib"
        export CPPFLAGS="-I/usr/local/opt/openssl/include"
fi

if [[ "$OSTYPE" == "linux-gnu" ]]; then
	sudo apt install automake
elif [[ "$OSTYPE" == "darwin"* ]]; then
	brew install automake
fi

git clone https://github.com/firebase/scrypt.git

cd scrypt/
autoreconf -i
./configure
make
