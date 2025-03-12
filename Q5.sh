#!/bin/bash
P_option=$1
S_P=$2

if [ $P_option -lt 1 ] || [ $P_option -gt 3 ]; then
    echo "Pattern Number should be from 1 to 3."
    exit 1
fi

case $P_option in
    1)
    i=0

while [ $i -lt $S_P ]; do
    j=0

    while [ $j -lt $((S_P - i)) ]; do
        echo -n "*"
        j=$((j + 1))
    done

    echo
    i=$((i + 1))
done
        ;;

    2)
       i=0

while [ $i -lt $S_P ]; do
    j=0

    while [ $j -le $i ]; do
        echo -n "*"
        j=$((j + 1))
    done

    j=1

    while [ $j -lt $((S_P - i)) ]; do
        echo -n " "
        j=$((j + 1))
    done

    j=0

    while [ $j -lt $((S_P - i)) ]; do
        echo -n " "
        j=$((j + 1))
    done

    j=0

    while [ $j -le $i ]; do
        echo -n "*"
        j=$((j + 1))
    done

    echo
    i=$((i + 1))
done
        ;;

    3)
 i=0

while [ $i -lt $S_P ]; do
    j=1

    while [ $j -le $i ]; do
        echo -n " "
        j=$((j + 1))
    done

    j=0

    while [ $j -lt $((S_P - i)) ]; do
        echo -n "*"
        j=$((j + 1))
    done

    echo
    i=$((i + 1))
done
        ;;

    *)
        echo "Invalid pattern option :/"
        ;;
esac
