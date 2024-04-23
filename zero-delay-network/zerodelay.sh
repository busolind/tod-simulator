seeds=(0 1000 2000 3000 4000 5000 6000 7000 8000 9000)
#seeds=(0)

for s in "${seeds[@]}"; do
    echo $s
    python main.py $s
    sleep 10
done
