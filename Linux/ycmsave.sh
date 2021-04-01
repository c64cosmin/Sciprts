function ycmsave(){
    if [ -z "$YCM_EXTRA_CONF_FOLDER" ]; then
        echo "YCM_EXTRA_CONF_FOLDER is not set"
        return 1
    fi

    if [ ! -f ".ycm_extra_conf.py" ] && [ ! -f "compile_commands.json" ]; then
        echo "There is no .ycm_extra_conf.py or compile_commands.json file here"
        return 1
    fi

    CURRENT_FOLDER=`pwd`

    mkdir -p $YCM_EXTRA_CONF_FOLDER$CURRENT_FOLDER
    if [ -f ".ycm_extra_conf.py" ]; then
        cp .ycm_extra_conf.py $YCM_EXTRA_CONF_FOLDER$CURRENT_FOLDER
    fi
    if [ -f "compile_commands.json" ]; then
        cp compile_commands.json $YCM_EXTRA_CONF_FOLDER$CURRENT_FOLDER
    fi
}
