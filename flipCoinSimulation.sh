echo "Welcome to Flip Coin Simulation"

i=1
H=0
T=0

while [ $i -le 21 ]
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
A=$(($T-$H))
B=$(($H-$T))
done

echo $A
echo $B

if [ $A -eq 2 ]
then
        echo "Tail wins by 2 points $T"
elif [ $B -eq 2 ]
then
        echo "Head wins by 2 points $H"
fi
