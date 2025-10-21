
cd `dirname $0`

TOP='./src/top/.libs/top'
TOP4='./src/top/.libs/top4'
[ ! -e $TOP4 ] && cp -fv $TOP $TOP4

export LD_LIBRARY_PATH=$PWD/library/.libs/

$TOP4

