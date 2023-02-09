p=1 # phase
a=1 # minimum 1 answer needed
d="" # domain
t="$2" # ip_list
    while (( p < 10 ))
        do
        for d in $(cat $1)
            do
                a=$( ping -c 2 $d | grep "packet loss" | cut -d , -f 3 | cut -d "." -f 1  )
                #echo $a
                if [[ $a -ne " 0" ]]
                    then
                        echo "$d, packet loss: $a %, phase: $p"

                fi
            done
            p=$(( p + 1 ))
        done
