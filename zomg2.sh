parse_args() {
    while true ; do
        case "$1" in
            -b|--branch)
                case "$2" in
                    "") shit 2 ;;
                    *) branch="$2" ; shift 2 ;;
                esac ;;
            -t|--tag)
                case "$2" in
                    "") shit 2 ;;
                    *) tag="$2" ; shift 2 ;;
                esac ;;
            -c|--cancel) cancel=1 ; shift ;;
            --) shift ; break ;;
        esac
    done
    rest=("$@")
}

branch=""
tag=""
rest=()
cancel=0

TEMP=`getopt -o b:ct: --long branch:,cancel,tag: -n 'do-exclusively' -- "$@"`
eval set -- "$TEMP"

parse_args "$@"

echo "branch is $branch"
echo "tag is $tag"
echo "cancel is $cancel"
echo "rest is $rest"
