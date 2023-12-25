# BMW settings
# Artifactory 7 pub host settins
export PUB_HOSTED_URL=https://packages.orbit.bmwgroup.net/artifactory/api/pub/mobile20-pub-virtual
export UNPUB_TOKEN=cmVmdGtuOjAxOjE3MzA5ODc4NDM6dUt3cEl5Mkt1Q1l1bGl0Zmt3QjVXZ0M4ajJo
# Artifactory proxy settings
MY_Q_NUM='qxz3lb2'
MY_Q_PWD='publicstaticvoidmainString' 
PROXY_URL='${MY_Q_NUM}:${MY_Q_PWD}@proxy.cn.sub:8080'
export HTTP_PROXY=http://${PROXY_URL}
export HTTPS_PROXY="${HTTP_PROXY}"
export http_proxy="${HTTP_PROXY}"
export https_proxy="${HTTP_PROXY}"
export no_proxy="localhost,127.0.0.1,.cn.sub,.bmwgroup.net"

alias bmwproxy="
export HTTP_PROXY=http://${PROXY_URL}
export HTTPS_PROXY="${HTTP_PROXY}"
export http_proxy="${HTTP_PROXY}"
export https_proxy="${HTTP_PROXY}"
export no_proxy="localhost,127.0.0.1,.cn.sub,.bmwgroup.net"
mv ~/.ssh/config.bak ~/.ssh/config
"

alias cocopods_bmw="
git config --global http.proxy http://qxz3lb2:publicstaticvoidmainString@proxy.cn.sub:8080
git config --global https.proxy http://qxz3lb2:publicstaticvoidmainString@proxy.cn.sub:8080
git config --global http.proxyAuthMethod 'basic'
git config --global https.proxyAuthMethod 'basic'
"

alias testbmw="
echo 'BMW'
"
