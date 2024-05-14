#!/bin/sh

FlagSeperator(){
    flag=$1
    limit=$(($(echo $flag | wc -c) - 1))
    add_char=true
    result=""
    if [[ ! -z "$flag" && ${flag:0:1} == "-" ]]; then
        for ((i=0;i<limit;i++)); do
            if [ ${flag:i:2} == "--" ]; then
                add_char=false
                result+=" "
                ((i++))
            elif [ ${flag:i:1} == "-" ]; then
                add_char=true
                result+=" "
            else
                if [ $add_char == true ]; then
                    result+="${flag:i:1} "
                else
                    result+="${flag:i:1}"
                fi
            fi
        done
        echo $result
    else
        exit 1
    fi
}

FlagSeperator $1