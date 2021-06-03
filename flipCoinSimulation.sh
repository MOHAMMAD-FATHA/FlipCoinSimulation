echo "Welcome to Flip Coin Simulation"

i=1
H=0
T=0
while [ $i -le 11 ]
do
Result=$((RANDOM%2))
if [ ${Result} -eq 0 ]
then
    echo HEADS
    H=$(($H+1))
elif [ ${Result} -eq 1 ]
then
    echo TAILS
    T=$(($T+1))
fi
i=$(($i+1))
done


if [ $T -gt $H ]
then
        echo "Tail wins $T"
else
        echo "Heads wins $H"
fi

