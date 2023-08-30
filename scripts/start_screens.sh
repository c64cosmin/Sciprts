function AddScreenCommand {
    screen -t "$2" bash
    screen -X stuff "$1\n"
}

if [ "$2" = "%%%%%" ]; then
    MAX_IT=`cat $1 | wc -l`
    IT=2
    while [ $IT -lt $MAX_IT ]; do
        WindowName=`head -n $IT $1 | tail -n 1`
        CommandLine=`head -n $(($IT + 1)) $1 | tail -n 1`
        AddScreenCommand "$CommandLine" "$WindowName"
        echo "$CommandLine" "$WindowName"
        IT=$(($IT + 2))
    done
fi

if [ -z "$1" ]; then
    echo "Usage:"
    echo "$0 [-h] file"
    exit 0
fi

if [ "$1" = "-h" ]; then
    echo "Example file:"
    echo ""
    echo "ScreenSessionName"
    echo "Window Title 1"
    echo "./command1.sh a b c"
    echo "Window Title 2"
    echo "./command2.sh abc"
    exit 0
fi

screen --version > /dev/null
if [ $? -ne 1 ]; then
    echo "screen not installed"
    exit 1
fi
screen -list | grep VDI > /dev/null
if [ $? -ne 1 ]; then echo "Screen already exists" ; exit 1 ; fi

SessionName=`head -n 1 $1`
screen -dmS "$SessionName" -s /bin/bash bash -c "$0 $1 %%%%%"
