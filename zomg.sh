# sets $branch, $tag, $rest
parse_args() {
    while [[ $# -gt 0 ]]; do
        case $1 in
            -b|--branch) branch="$2" ;;
            -t|--tag) tag="$2" ;;
            -c|--cancel) cancel=1 ;;
            *) break ;;
        esac
        shift 2
    done
    rest=("$@")
}

branch=""
tag=""
rest=()
cancel=0
parse_args "$@"

echo "branch is $branch"
echo "tag is $tag"
echo "cancel is $cancel"
echo "rest is $rest"
