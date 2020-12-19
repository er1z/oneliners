XDEBUG_CONFIG="idekey=session_name"


for i in "$@"
do
case $i in
    --xdebug-host=*)
    XDEBUG_HOST=`echo $i | sed 's/[-a-zA-Z0-9]*=//'`
    ;;
    --xdebug-key=*)
    XDEBUG_KEY=`echo $i | sed 's/[-a-zA-Z0-9]*=//'`
    ;;
    --xdebug-server=*)
    XDEBUG_SERVER=`echo $i | sed 's/[-a-zA-Z0-9]*=//'`
    ;;
    -h|--help)
    show_help
    ;;
    *)
        # unknown option
    ;;
esac
done
