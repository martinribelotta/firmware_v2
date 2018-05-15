#!/bin/sh
DIR=$(dirname $(readlink -f $0))
BASE=$(readlink -f $DIR/../../../../../)
LOG_DIR=$BASE/out
((
cd $BASE
for d in $DIR/Example*
do
    PRJ=$(basename $d)
    L=${LOG_DIR}/${PRJ}.log
    echo "Building $PRJ"
    ((make PROJECT=$d clean all clean ) 2>&1) > $L && echo "${PRJ} OK" || echo "${PRJ} FAIL"
done
) 2>&1 ) | tee ${LOG_DIR}/build-test.log
