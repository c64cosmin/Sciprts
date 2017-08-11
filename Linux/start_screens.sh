if [ "$1" = "SCREEN" ]; then
$0 COMMAND "./start_api.sh" API
$0 COMMAND "./start_conductor.sh" Conductor
$0 COMMAND "tail -f /var/log/vdibroker/api.py.log" API_Logs
$0 COMMAND "tail -f /var/log/vdibroker/Conductor.py.log" Conductor_Logs
fi

if [ "$1" = "COMMAND" ]; then
    screen -t "$3" bash
    screen -X stuff "$2\n"
fi

screen --version > /dev/null
if [ $? -ne 1 ]; then exit 1 ; fi
screen -list | grep VDI > /dev/null
if [ $? -ne 1 ]; then echo "Screen already exists" ; exit 1 ; fi
screen -dmS VDI -s /bin/bash bash -c "$0 SCREEN" 
