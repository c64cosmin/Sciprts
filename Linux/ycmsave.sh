function ycmsave(){
    if [ -z "$YCM_EXTRA_CONF_FOLDER" ]; then
        echo "YCM_EXTRA_CONF_FOLDER is not set"
        return 1
    fi

    if [ ! -f ".ycm_extra_conf.py" ]; then
        echo "There is no .ycm_extra_conf.py file here"
        return 1
    fi

    CURRENT_FOLDER=`pwd`

    mkdir -p $YCM_EXTRA_CONF_FOLDER$CURRENT_FOLDER
    cp .ycm_extra_conf.py $YCM_EXTRA_CONF_FOLDER$CURRENT_FOLDER
}
